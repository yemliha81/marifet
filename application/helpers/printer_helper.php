<?php
require __DIR__ . '\..\..\autoload.php';
use Mike42\Escpos\Printer;
use Mike42\Escpos\EscposImage;
use Mike42\Escpos\PrintConnectors\WindowsPrintConnector;
		
function replaceStr($s) {
	$tr = array('ş','Ş','ı','İ','ğ','Ğ','ü','Ü','ö','Ö','Ç','ç','%','₺');
	$eng = array('s','S','i','I','g','G','u','U','o','O','C','c','', '');
	$s = str_replace($tr,$eng,$s);
 
	return $s;
}

function print_rows($array, $order_id, $printer_name){
	$connector = new WindowsPrintConnector($printer_name);
	//$logo = EscposImage::load( __DIR__ . "/../../img/panda.jpg", false);
	$printer = new Printer($connector);
	$printer->getPrintConnector()->write(PRINTER::ESC . "B" . chr(5) . chr(1));
	/* Print top logo */
	$printer -> setJustification(Printer::JUSTIFY_CENTER);
	//$printer -> bitImage($logo);
	$printer -> text(  "Marifet Döner Sirinevler\n" );
	$printer -> text(  "Fis No: ".$order_id."\n" );
	$printer -> text(  date("d-m-Y H:i")."\n" );
	$printer -> setJustification(Printer::JUSTIFY_LEFT);
	$printer -> feed(2);
	$printer -> setEmphasis(true);
	$printer -> text(  "Urun                      Fiyat   Adet     Tutar\n" );
	$printer -> setEmphasis(false);
	$printer -> text("------------------------------------------------");
	$total = 0.00;
	
	foreach($array as $key => $val){
		$printer -> text( rowsArrange( substr( replaceStr($val['pro_name']),0,20  ), $val['qty'], $val['price'])."\n" );
		
		$total += ($val['qty'] * $val['price']);
		
	}
	
	$printer -> text("------------------------------------------------");
	$printer -> setEmphasis(true);
	$printer -> text(str_pad("TOPLAM",38," ").str_pad((number_format($total,2)),10," ",STR_PAD_LEFT));
	$printer -> setEmphasis(false);

	$printer -> feed(2);
	//$printer -> text($date . "\n");
	$printer -> setJustification(Printer::JUSTIFY_CENTER);
	//$printer -> bitImage($logo);
	$printer -> text(  "Afiyet olsun\n" );
	$printer -> text(  "Bilgi Fisidir, mali degeri yoktur.\n" );
	/* Cut the receipt and open the cash drawer */
	
	$printer -> cut();
	$printer -> pulse();
	
	$printer -> close();
}

function rowsArrange($pro_name, $qty, $price){
	return str_pad($pro_name,23," ") . str_pad($price,8," ", STR_PAD_LEFT). str_pad($qty,7," ", STR_PAD_LEFT) . str_pad(number_format(($qty*$price),2),10," ",STR_PAD_LEFT);
}


function print_report($json_array, $printer_name){

$rows = json_decode($json_array, true);
//$printer_ip = trim($post['printer_ip']);

$connector = new WindowsPrintConnector($printer_name);

$date = date("d-m-Y H:i:s", time());

/* Start the printer */
//$logo = EscposImage::load("resources/escpos-php.png", false);
$printer = new Printer($connector);
$printer->getPrintConnector()->write(PRINTER::ESC . "B" . chr(5) . chr(1));
/* Print top logo */
//$printer -> setJustification(Printer::JUSTIFY_CENTER);
//$printer -> bitImage($logo);


foreach($rows as $key => $val){
	if(!empty($val['type'])){
		if($val['type'] == 'header'){
			$printer -> setJustification(Printer::JUSTIFY_CENTER);
			$printer -> selectPrintMode(Printer::MODE_DOUBLE_WIDTH);			
			$printer -> text( replaceStr($val['title']) );
			$printer -> selectPrintMode();
			$printer -> feed();
		}
		if($val['type'] == 'row'){
			$printer -> setJustification(Printer::JUSTIFY_LEFT);
			$printer -> text( new item( replaceStr(substr($val['title'], 0, 20)),'','', replaceStr($val['value']) ) );
		}
		
		if($val['type'] == 'bold_row'){
			$printer -> setJustification(Printer::JUSTIFY_LEFT);
			$printer -> feed();
			$printer -> setEmphasis(true);
			$printer -> text( new item( replaceStr(substr($val['title'], 0, 20)),'','', replaceStr($val['value']) ) );
			$printer -> setEmphasis(false);
		}
		
		if($val['type'] == 'total'){
			$printer -> setJustification(Printer::JUSTIFY_LEFT);
			$printer -> feed();
			$printer -> selectPrintMode(Printer::MODE_DOUBLE_WIDTH);
			$printer -> text( replaceStr(new total(substr($val['title'], 0, 20),replaceStr($val['value']) ) ));
			$printer -> selectPrintMode();
		}
		
		if($val['type'] == 'kitchen'){
			$printer -> setJustification(Printer::JUSTIFY_LEFT);
			$printer -> selectPrintMode(Printer::MODE_DOUBLE_WIDTH);
			$printer -> text( new kitchen(substr(replaceStr($val['title']), 0, 20),replaceStr($val['value']) ) );
			$printer -> selectPrintMode();
		}
		
		if($val['type'] == 'cancel'){
			$printer -> setJustification(Printer::JUSTIFY_LEFT);
			$printer -> selectPrintMode(Printer::MODE_DOUBLE_WIDTH);
			$printer -> text( new cancel(replaceStr($val['title']) ));
			$printer -> selectPrintMode();
		}
		
		if($val['type'] == 'tableCell'){
			$printer -> setJustification(Printer::JUSTIFY_LEFT);
			$printer -> text( new item( replaceStr(substr($val['cell1'], 0, 20)), replaceStr($val['cell2']), replaceStr($val['cell3']), replaceStr($val['cell4']) ) );
			
		}
		
		if($val['type'] == 'productCell'){
			$printer -> setJustification(Printer::JUSTIFY_LEFT);
			$printer -> text( new item2( replaceStr(substr($val['cell1'], 0, 34)), replaceStr($val['cell2']), replaceStr($val['cell3']) ) );
			
		}
		
		if($val['type'] == 'line'){
			$printer -> setJustification(Printer::JUSTIFY_LEFT);
			$printer -> text( replaceStr($val['title']) );
			$printer -> feed();
		}
		
		if($val['type'] == 'tableCell2'){
			$printer -> setJustification(Printer::JUSTIFY_LEFT);
			$printer -> text( new item3( replaceStr(substr($val['cell1'], 0, 20)), replaceStr($val['cell2']), replaceStr($val['cell3']) ) );
			
		}
		
	}
}




$printer -> feed(2);
//$printer -> text($date . "\n");

/* Cut the receipt and open the cash drawer */
$printer -> cut();
$printer -> pulse();

$printer -> close();

}

/* A wrapper to do organise item names & prices into columns */
class item
{
    private $name;
    private $cell1;
    private $cell2;
    private $price;
   

    public function __construct($name = '',$cell1='', $cell2 = '', $price = '')
    {
        $this -> name = $name;
        $this -> cell1 = $cell1;
        $this -> cell2 = $cell2;
        $this -> price = $price;
        //$this -> dollarSign = $dollarSign;
    }
    
    public function __toString()
    {
        
        $name = str_pad($this -> name, 25);
        $cell1 = str_pad($this -> cell1, 5);
        $cell2 = str_pad($this -> cell2, 5," ",STR_PAD_LEFT);
        
        
        $price = str_pad($this -> price,13," ",STR_PAD_LEFT);
        return "$name$cell1$cell2$price\n";
    }
}

class item2
{
    private $cell1;
    private $cell2;
    private $cell3;
   

    public function __construct($cell1='', $cell2 = '', $cell3 = '')
    {
        $this -> cell1 = $cell1;
        $this -> cell2 = $cell2;
        $this -> cell3 = $cell3;
    }
    
    public function __toString()
    {
        
        $cell1 = str_pad($this -> cell1, 34);
        $cell2 = str_pad($this -> cell2, 4," ",STR_PAD_LEFT);
        $cell3 = str_pad($this -> cell3,10," ",STR_PAD_LEFT);
        return "$cell1$cell2$cell3\n";
    }
}

class item3
{
    private $cell1;
    private $cell2;
    private $cell3;
   

    public function __construct($cell1='', $cell2 = '', $cell3 = '')
    {
        $this -> cell1 = $cell1;
        $this -> cell2 = $cell2;
        $this -> cell3 = $cell3;
    }
    
    public function __toString()
    {
        
        $cell1 = str_pad($this -> cell1, 30);
        $cell2 = str_pad($this -> cell2, 8," ",STR_PAD_LEFT);
        $cell3 = str_pad($this -> cell3,10," ",STR_PAD_LEFT);
        return "$cell1$cell2$cell3\n";
    }
}

class total
{
    private $name;
    private $price;
   

    public function __construct($name = '', $price = '')
    {
        $this -> name = $name;
        $this -> price = $price;
        //$this -> dollarSign = $dollarSign;
    }
    
    public function __toString()
    {
        
        $name = str_pad($this -> name, 12);
        
        
        $price = str_pad($this -> price,12," ",STR_PAD_LEFT);
        return "$name$price\n";
    }
}

class kitchen
{
    private $name;
    private $price;
   

    public function __construct($name = '', $price = '')
    {
        $this -> name = $name;
        $this -> price = $price;
        //$this -> dollarSign = $dollarSign;
    }
    
    public function __toString()
    {
        
        $name = str_pad($this -> name, 20);
        $price = str_pad($this -> price,4," ",STR_PAD_LEFT);
        return "$name$price\n";
    }
}

class cancel
{
    private $name;
   

    public function __construct($name = '', $price = '')
    {
        $this -> name = $name;
        //$this -> dollarSign = $dollarSign;
    }
    
    public function __toString()
    {
        
        $name = str_pad($this -> name, 24);
        return "$name\n";
    }
}

