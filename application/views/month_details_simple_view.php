<style>
	td{padding:7.5px;}
</style>
			<div class="" style="">
				<div class="row dn" style="display:none;">
					<?php foreach($payments as $key => $val){ ?>
						<?php 
							if($val['payment_type'] == 'cash'){ $cash[] = $val['paid_price']; $type = 'Nakit';} 
							if($val['payment_type'] == 'credit'){ $credit[] = $val['paid_price']; $type = 'Kredi Kartı';} 
							if($val['payment_type'] == 'open'){ $open[] = $val['paid_price']; $type = 'Açık Hesap';} 
							if($val['payment_type'] == 'out'){ $out[] = $val['paid_price']; $type = 'Masraf';} 
							if($val['payment_type'] == 'discount'){ $discount[] = $val['paid_price']; $type = 'İndirim';} 
							if($val['payment_type'] == 'mealCard'){ $mealCard[] = $val['paid_price']; $type = 'Yemek Kartı';} 
						?>
						<?php $total += $val['paid_price'];?>
						
					<?php } ?>
					<?php foreach($list as $key => $val){ 
							$people[] = $val['people']['person'];
						 }
					 ?>		 
				</div>
				<div class="row" style="margin:20px 0 0 0;" >
				<?php //debug($mealcard_subPayments);?>
					<div class="col-xs-12">
						<div class="row rowT">
						
							<div class="text-center">
								<h3><b><?php echo $titleText;?></b></h3>
							</div>
						
							<div class="col-sm-12">
							<div class="boxT1" style="background:#e74c3c; color:#fff;">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-line-chart fa-3x"></i>
									</div>
									<div class="col-xs-9">
										<div class="text-right">
										<?php $ttx5 =  number_format(  ($total - array_sum($discount)) ,2,",","." ) ;?>
											<span class="priceS <?php if( strlen($ttx) > 8 ){ echo 'f24'; }else{ echo 'f30'; }?>">
												<?php echo $ttx5;?>
											</span> 
											<span>₺</span>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="text-right"><span><b>Toplam Net Satış</b></span></div>
										<div class="text-right"><span><b class="f13" style="color:#000;">İndirim, iade ve iptaller hariçtir</b></span></div>
									</div>
								</div>
							</div>
							<div class="boxT1" style="background:#58c49e;color:#fff;">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-money fa-3x"></i>
									</div>
									<div class="col-xs-9">
										<div class="text-right">
										<?php $ttx =  number_format( array_sum($cash) ,2,",","." ) ;?>
											<span class="priceS <?php if( strlen($ttx) > 8 ){ echo 'f24'; }else{ echo 'f30'; }?>">
												<?php echo $ttx;?>
											</span> 
											<span>₺</span>
										</div>
										<div class="text-right"><span><b>Nakit</b></span></div>
									</div>
								</div>
							</div>
							<div class="boxT1" style="background:#666666;color:#fff;">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-credit-card-alt fa-3x"></i>
									</div>
									<div class="col-xs-9">
										<div class="text-right">
										<?php $ttx1 =  number_format( array_sum($credit) ,2,",","." ) ;?>
											<span class="priceS <?php if( strlen($ttx1) > 8 ){ echo 'f24'; }else{ echo 'f30'; }?>">
												<?php echo $ttx1;?>
											</span> 
											<span>₺</span>
										</div>
										<div class="text-right"><span><b>Kredi Kartları Toplam</b></span></div>
									</div>
								</div>
							</div>
							
						
						
					</div>
			<div class="clearfix"></div>
			
			<div class="prrx col-xs-12">
							<div style="text-align:center;margin-top:25px; padding-bottom:15px; margin-bottom:15px;">
								<h2 style="font-weight:bold;">Ürün Satışları</h2>
							</div>
							<div>
								
								<table class="table-bordered" style="width:100%;">
									<thead>
										<tr style="background:#f3f3f3;">
											<td><b>Ürün</b></td>
											<td><b>Kg</b></td>
											<td><b>Adet</b></td>
											<td><b>%</b></td>
											<td><b>Tutar</b></td>
										</tr>
									</thead>
									<tbody>
									<?php foreach($proList as $key => $val){ ?>
										<?php if($val['gr']>0){
											$kg[$key] = number_format((($val['gr']*$val['count']) / 1000),2);
										}else{
											$kg[$key] = 0;
										}?>
										<tr>
											<td><?php echo $val['pro_name'];?></td>
											<td><?php if($val['gr'] > 0){echo $kg[$key];}?></td>
											<td><?php echo $val['count'];?></td>
											<td><?php echo number_format((float)((($val['price']*$val['count']) / $total) * 100 ), 2,",",".");?></td>
											<td><?php echo number_format((float)($val['tot_price']), 2,",",".");?> ₺</td>
										</tr>
										<?php $totalKg += $kg[$key];?>
										<?php $totalPP += $val['tot_price'];?>
									<?php } ?>
										
										
										<tr  style="background:#f3f3f3;">
											<td><?php if($totalKg > 0){echo '<b>Toplam Kilo</b>';}?></td>
											<td><?php if($totalKg > 0){echo $totalKg.' Kg';}?></td>
											<td></td>
											<td><b>Brüt Toplam</b></td>
											<td><?php echo number_format(($totalPP), 2,",",".");?> ₺</td>
										</tr>
										<tr  style="background:#f3f3f3;">
											<td></td>
											<td></td>
											<td></td>
											<td><b>İndirim</b></td>
											<td><?php echo number_format(($discount), 2,",",".");?> ₺</td>
										</tr>
										<tr  style="background:#f3f3f3;">
											<td></td>
											<td></td>
											<td></td>
											<td><b>Net Toplam</b></td>
											<td><b><?php echo number_format(($totalPP - $discount), 2,",",".");?> ₺</b></td>
										</tr>
									</tbody>
								</table>
								
								<div style="clear:both;"></div>
							</div>
						</div>
			
			</div>


	<input type="hidden" class="reportDetail" value='<?php echo json_encode($row);?>' />		
	<input type="hidden" class="reportDetail2" value='<?php echo json_encode($row2);?>' />		

<script type="text/javascript">
	$(".details").click(function(){
		$(".dn").slideToggle();
	});
	$(".dayEndPost").click(function(){
		var day_id = $(this).attr("day_id");
		$.ajax({
			type : 'get',
			url : '<?php echo DAY_END_POST;?>'+day_id,
			success : function(response){
				if(response == 'success'){
					alert("Gün sonu yapılmıştır!");
					window.location.href = '<?php echo MAIN_BOARD;?>';
				}else{
					alert(response);
				}
			}
		});
	});
$(".dayEndPrint").click(function(){
	printDiv('printDiv1');
});	
$(".dayEndPrint2").click(function(){
	printDiv('printDiv2');
});	
function printDiv(divID) 
{

  var divToPrint=document.getElementById(divID);

  var newWin=window.open('','Print-Window');

  newWin.document.open();

  newWin.document.write('<html>\
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">\
  <style type="text/css">\
  body{font-size:13px;font-family:Arial;padding:10px; margin:0;}\
  #cartDiv{border-top:1px solid #666;border-bottom:1px solid #666;}\
  table tr td{font-size:13px}\
  input{border:0;background:#fff; width:40px;}\
  .hidePrint{display:none;}\
  .rightPrint{display:inline-block; float:right;}\
  .enjoyTxt{margin-top:85px;}\
  .clearfix{clear:both;}\
  td{padding-right:0; padding-left:0;}\
  .showKitchen{display:none;}\
  </style>\
  <body  onload="window.print();">'+divToPrint.innerHTML+'</body></html>');

  newWin.document.close();
  setTimeout(function(){newWin.close();},10);

}

$(document).on("click", ".ordDetails", function(){
	var order_id = $(this).attr("order_id");
	$('#orderModal').modal('show');
	
	$.ajax({
		type : 'post',
		url : '<?php echo GET_ORDER_DETAILS;?>',
		data : {"order_id" : order_id},
		success : function(response){
			$(".adisResp").html(response);
		}
	});
	
});
</script>