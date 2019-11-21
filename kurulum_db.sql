-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 20 Eyl 2019, 17:10:48
-- Sunucu sürümü: 10.4.6-MariaDB
-- PHP Sürümü: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kurulum_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `aaaa_reports_table`
--

CREATE TABLE `aaaa_reports_table` (
  `id` int(11) NOT NULL,
  `store_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `day_start_time` bigint(20) NOT NULL,
  `day_end_time` bigint(20) NOT NULL,
  `day_report` text COLLATE utf8_unicode_ci NOT NULL,
  `exported` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `aaaa_reports_table`
--

INSERT INTO `aaaa_reports_table` (`id`, `store_id`, `day_start_time`, `day_end_time`, `day_report`, `exported`) VALUES
(1, 'sirinevler', 1568987882, 1568992055, '{\"store_id\":\"sirinevler\",\"day\":{\"day_start_time\":\"1568987882\",\"day_end_time\":\"1568992055\"},\"order_details\":[{\"porsion_id\":\"6\",\"pro_name\":\"Doner 55-60 Gr  \",\"total_p\":\"18.00\",\"total_qty\":\"3\",\"total_kg\":\"172.50\"},{\"porsion_id\":\"9\",\"pro_name\":\"Doner 150-155 Gr  \",\"total_p\":\"48.00\",\"total_qty\":\"4\",\"total_kg\":\"610.00\"},{\"porsion_id\":\"10\",\"pro_name\":\"Doner 250 Gr  \",\"total_p\":\"40.00\",\"total_qty\":\"2\",\"total_kg\":\"500.00\"},{\"porsion_id\":\"12\",\"pro_name\":\"Doner 1000 Gr  \",\"total_p\":\"160.00\",\"total_qty\":\"2\",\"total_kg\":\"2000.00\"},{\"porsion_id\":\"15\",\"pro_name\":\"Cola Kutu  \",\"total_p\":\"3.50\",\"total_qty\":\"1\",\"total_kg\":\"0.00\"},{\"porsion_id\":\"16\",\"pro_name\":\"Meyve Suyu  \",\"total_p\":\"7.00\",\"total_qty\":\"2\",\"total_kg\":\"0.00\"},{\"porsion_id\":\"17\",\"pro_name\":\"\\u015ealgam  \",\"total_p\":\"2.50\",\"total_qty\":\"1\",\"total_kg\":\"0.00\"}],\"order_payments\":[{\"payment_type\":\"cash\",\"total_paid\":\"175.50\"},{\"payment_type\":\"credit\",\"total_paid\":\"103.50\"}]}', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `aaa_printers_table`
--

CREATE TABLE `aaa_printers_table` (
  `id` int(11) NOT NULL,
  `printer_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `printer_ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `printer_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `aaa_printers_table`
--

INSERT INTO `aaa_printers_table` (`id`, `printer_name`, `printer_ip`, `printer_type`) VALUES
(7, 'Kasa', 'marifetKasa', 'usb');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `aaa_print_table`
--

CREATE TABLE `aaa_print_table` (
  `id` int(11) NOT NULL,
  `printerName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `printer_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `imgName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `htmlBody` text COLLATE utf8_unicode_ci NOT NULL,
  `jsonArray` text COLLATE utf8_unicode_ci NOT NULL,
  `isPrinted` int(2) NOT NULL,
  `insertTime` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `aaa_print_table`
--

INSERT INTO `aaa_print_table` (`id`, `printerName`, `printer_type`, `imgName`, `htmlBody`, `jsonArray`, `isPrinted`, `insertTime`) VALUES
(1, 'marifetKasa', 'usb', '20-09-2019-1803335d84ea4516e5b.png', '\n					\n					<div style=\"font-weight:bold;\">\n																								<div style=\"text-align:center;\"><b><h1 style=\"font-weight:bold;\">Posopos</h1></b></div>\n						<div style=\"text-align:center;\"><h2 style=\"font-weight:bold;\">Marfiet Döner</h2></div>\n						<div>Gün Sonu Raporu</div>\n						<div>\n							20-09-2019 16:58 - 20-09-2019 18:03													</div>\n												\n						<div style=\"text-align:center;margin-top:25px;border-bottom:1px dashed #000; padding-bottom:15px; margin-bottom:15px;\">\n							<h2 style=\"font-weight:bold;\">Gelirler</h2>\n													</div>\n													<div>\n								<span style=\"float:left;display:inline-block;font-weight:bold;\">Nakit</span>\n								<span style=\"float:right;display:inline-block;\"> 175,50 ₺</span>\n								<div style=\"clear:both;\"></div>\n															</div>\n																			<div>\n								<span style=\"float:left;display:inline-block;font-weight:bold;\">Kredi Kartları Toplam</span>\n								<span style=\"float:right;display:inline-block;\"> 103,50 ₺</span>\n								<div style=\"clear:both;\"></div>\n															</div>\n																																				<div>\n							<span style=\"float:left;display:inline-block;font-weight:bold;\">Toplam Genel</span>\n							<span style=\"float:right;display:inline-block;\"> 279,00 ₺</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n												<div style=\"text-align:center;margin-top:25px;border-bottom:1px dashed #000; padding-bottom:15px; margin-bottom:15px;\">\n							<h2 style=\"font-weight:bold;\">Ciroya Yansımayan İşlemler</h2>\n						</div>\n																		<div>\n							<span style=\"float:left;display:inline-block;\">İptaller Toplamı</span>\n							<span style=\"float:right;display:inline-block;\"> 0,00 ₺</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n												<div>\n							<span style=\"float:left;display:inline-block;\">İndirimler Toplamı</span>\n							<span style=\"float:right;display:inline-block;\"> 0,00 ₺</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n												<div>\n							<span style=\"float:left;display:inline-block;\">İkramlar Toplamı</span>\n							<span style=\"float:right;display:inline-block;\"> 0,00 ₺</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n																		<div style=\"text-align:center;margin-top:25px;border-bottom:1px dashed #000; padding-bottom:15px; margin-bottom:15px;\">\n							<h2 style=\"font-weight:bold;\">Adisyon &amp; Ciro Derinliği</h2>\n						</div>\n												<div>\n							<span style=\"float:left;display:inline-block;\">Adisyon Sayısı</span>\n							<span style=\"float:right;display:inline-block;\"> 5</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n												<div>\n							<span style=\"float:left;display:inline-block;\">Ciro / Adisyon</span>\n														<span style=\"float:right;display:inline-block;\"> 55,80 ₺</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n												<div>\n							<span style=\"float:left;display:inline-block;\">Kişi Sayısı</span>\n							<span style=\"float:right;display:inline-block;\"> 0</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n												<div>\n							<span style=\"float:left;display:inline-block;\">Ciro / Kişi</span>\n																													<span style=\"float:right;display:inline-block;\"> 0,00 ₺</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n																		<div class=\"prrx\">\n							<div style=\"text-align:center;margin-top:25px; padding-bottom:15px; margin-bottom:15px;\">\n								<h2 style=\"font-weight:bold;\">Ürün Satışları</h2>\n							</div>\n																												<div>\n								<div class=\"\">\n										<div class=\"row\" style=\"border-bottom:1px solid #000;\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Ürün</span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">Kg</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">Adet</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">%</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\">Tutar</span></div>\n										</div>\n																													<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Doner 55-60 Gr  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">0.17</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">3</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">6,45</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 18,00 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Doner 150-155 Gr  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">0.61</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">4</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">17,20</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 48,00 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Doner 250 Gr  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">0.50</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">2</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">14,34</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 40,00 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Doner 1000 Gr  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">2.00</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">2</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">57,35</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 160,00 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Cola Kutu  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\"></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1,25</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 3,50 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Meyve Suyu  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\"></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">2</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">2,51</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 7,00 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Şalgam  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\"></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">0,90</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 2,50 ₺</span></div>\n										</div>\n																																							<div class=\"row\" style=\"border-top:1px solid #000;margin-top:10px; padding-top:10px;\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Toplam Kilo</span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">3.28 Kg</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\"></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\"></div>\n											<div class=\"col-xs-2\"></div>\n										</div>\n								</div>\n								<div style=\"clear:both;\"></div>\n							</div>\n						</div>\n						\n												\n						<div style=\"text-align:center;margin-top:25px;border-bottom:1px dashed #000; padding-bottom:15px; margin-bottom:15px;\">\n							<h2 style=\"font-weight:bold;\">Ürün Satışları <br> ( Grup Bazında )</h2>\n						</div>\n												\n																		<div>\n							<div class=\"\">\n																	<div class=\"row\">\n										<div class=\"col-xs-6\"><span style=\"float:left;display:inline-block;\">Satış </span></div>\n										<div class=\"col-xs-2\" style=\"white-space:nowrap;\">% 100,00</div>\n										<div class=\"col-xs-4\"><span style=\"float:right;display:inline-block;\"> 279,00 ₺</span></div>\n									</div>\n																									<div class=\"row\">\n									<div class=\"col-xs-6\"><span style=\"float:left;display:inline-block;\">İndirim</span></div>\n									<div class=\"col-xs-2\" style=\"white-space:nowrap;\">% 0,00</div>\n									<div class=\"col-xs-4\"><span style=\"float:right;display:inline-block;\"> 0,00 ₺</span></div>\n								</div>\n																<div class=\"row\">\n									<div class=\"col-xs-6\"><h1 style=\"font-weight:bold;\"><span style=\"float:left;display:inline-block;\">TOPLAM</span></h1></div>\n									\n									<div class=\"col-xs-6\" style=\"white-space:nowrap;\"><h1 style=\"font-weight:bold;\"><span style=\"float:right;display:inline-block;\"> 279,00 TL</span></h1></div>\n								</div>\n															</div> <br><br><br>\n							<div style=\"clear:both; border-bottom:1px solid #000;\"></div>\n						</div>\n						\n					</div>\n					', '[{\"print_type\":\"report\"},{\"type\":\"header\",\"title\":\"Posopos\"},{\"type\":\"header\",\"title\":\"G\\u00fcn Sonu Raporu\"},{\"type\":\"line\",\"title\":\"------20-09-2019 16:58 - 20-09-2019 18:03------\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"header\",\"title\":\"Gelirler\"},{\"type\":\"row\",\"title\":\"Nakit\",\"value\":\"175,50\"},{\"type\":\"row\",\"title\":\"Kredi Kartlar\\u0131 Toplam\",\"value\":\"103,50\"},{\"type\":\"row\",\"title\":\"Toplam Genel\",\"value\":\"279,00\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"header\",\"title\":\"Ciroya Yansimayanlar\"},{\"type\":\"row\",\"title\":\"\\u0130ptaller Toplam\\u0131\",\"value\":\"0,00\"},{\"type\":\"row\",\"title\":\"\\u0130ndirimler Toplam\\u0131\",\"value\":\"0,00\"},{\"type\":\"row\",\"title\":\"\\u0130kramlar Toplam\\u0131\",\"value\":\"0,00\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"header\",\"title\":\"Adisyon & Ciro Derinli\\u011fi\"},{\"type\":\"row\",\"title\":\"Adisyon Say\\u0131s\\u0131\",\"0\":\"\",\"1\":\"\",\"value\":5},{\"type\":\"row\",\"title\":\"Ciro \\/ Adisyon\",\"value\":\"55,80\"},{\"type\":\"row\",\"title\":\"Ki\\u015fi Say\\u0131s\\u0131\",\"value\":0},{\"type\":\"row\",\"title\":\"Ciro \\/ Ki\\u015fi\",\"value\":\"0,00\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"header\",\"title\":\"\\u00dcr\\u00fcn Sat\\u0131\\u015flar\\u0131\"},{\"type\":\"tableCell\",\"cell1\":\"Urun\",\"cell2\":\"Adet\",\"cell3\":\"Yuzde\",\"cell4\":\"Tutar\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 55-60 Gr  \",\"cell2\":\"3\",\"cell3\":\"6,45\",\"cell4\":\"18,00\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 150-155 Gr  \",\"cell2\":\"4\",\"cell3\":\"17,20\",\"cell4\":\"48,00\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 250 Gr  \",\"cell2\":\"2\",\"cell3\":\"14,34\",\"cell4\":\"40,00\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 1000 Gr  \",\"cell2\":\"2\",\"cell3\":\"57,35\",\"cell4\":\"160,00\"},{\"type\":\"tableCell\",\"cell1\":\"Cola Kutu  \",\"cell2\":\"1\",\"cell3\":\"1,25\",\"cell4\":\"3,50\"},{\"type\":\"tableCell\",\"cell1\":\"Meyve Suyu  \",\"cell2\":\"2\",\"cell3\":\"2,51\",\"cell4\":\"7,00\"},{\"type\":\"tableCell\",\"cell1\":\"\\u015ealgam  \",\"cell2\":\"1\",\"cell3\":\"0,90\",\"cell4\":\"2,50\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"header\",\"title\":\"\\u00dcr\\u00fcn Sat\\u0131\\u015flar\\u0131 (Kg)\"},{\"type\":\"tableCell\",\"cell1\":\"Urun\",\"cell2\":\"Adet\",\"cell3\":\"\",\"cell4\":\"Kg\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 55-60 Gr  \",\"cell2\":\"3\",\"cell4\":\"0.17 Kg\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 150-155 Gr  \",\"cell2\":\"4\",\"cell4\":\"0.61 Kg\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 250 Gr  \",\"cell2\":\"2\",\"cell4\":\"0.50 Kg\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 1000 Gr  \",\"cell2\":\"2\",\"cell4\":\"2.00 Kg\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"tableCell\",\"cell1\":\"Toplam Kg\",\"cell2\":\"\",\"cell3\":\"\",\"cell4\":\"3.28 Kg\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"header\",\"title\":\"Kategori Satislari\"},{\"type\":\"tableCell2\",\"cell1\":\"Kategori\",\"cell2\":\"Yuzde\",\"cell3\":\"Tutar\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"tableCell2\",\"cell1\":\"Sat\\u0131\\u015f \",\"cell2\":\"100,00\",\"cell3\":\"279,00\"},{\"type\":\"tableCell2\",\"cell1\":\"\\u0130ndirim\",\"cell2\":\"0,00\",\"cell3\":\"0,00\"},{\"type\":\"bold_row\",\"title\":\"TOPLAM\",\"0\":\"\",\"1\":\"\",\"value\":\"279,00\"}]', 0, 1568991813),
(2, 'marifetKasa', 'usb', '20-09-2019-1806305d84eaf642b8c.png', '\n					\n					<div style=\"font-weight:bold;\">\n																								<div style=\"text-align:center;\"><b><h1 style=\"font-weight:bold;\">BulutkasaPos</h1></b></div>\n						<div style=\"text-align:center;\"><h2 style=\"font-weight:bold;\">Marfiet Döner</h2></div>\n						<div>Gün Sonu Raporu</div>\n						<div>\n							20-09-2019 16:58 - 20-09-2019 18:06													</div>\n												\n						<div style=\"text-align:center;margin-top:25px;border-bottom:1px dashed #000; padding-bottom:15px; margin-bottom:15px;\">\n							<h2 style=\"font-weight:bold;\">Gelirler</h2>\n													</div>\n													<div>\n								<span style=\"float:left;display:inline-block;font-weight:bold;\">Nakit</span>\n								<span style=\"float:right;display:inline-block;\"> 175,50 ₺</span>\n								<div style=\"clear:both;\"></div>\n															</div>\n																			<div>\n								<span style=\"float:left;display:inline-block;font-weight:bold;\">Kredi Kartları Toplam</span>\n								<span style=\"float:right;display:inline-block;\"> 103,50 ₺</span>\n								<div style=\"clear:both;\"></div>\n															</div>\n																																				<div>\n							<span style=\"float:left;display:inline-block;font-weight:bold;\">Toplam Genel</span>\n							<span style=\"float:right;display:inline-block;\"> 279,00 ₺</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n												<div style=\"text-align:center;margin-top:25px;border-bottom:1px dashed #000; padding-bottom:15px; margin-bottom:15px;\">\n							<h2 style=\"font-weight:bold;\">Ciroya Yansımayan İşlemler</h2>\n						</div>\n																		<div>\n							<span style=\"float:left;display:inline-block;\">İptaller Toplamı</span>\n							<span style=\"float:right;display:inline-block;\"> 0,00 ₺</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n												<div>\n							<span style=\"float:left;display:inline-block;\">İndirimler Toplamı</span>\n							<span style=\"float:right;display:inline-block;\"> 0,00 ₺</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n												<div>\n							<span style=\"float:left;display:inline-block;\">İkramlar Toplamı</span>\n							<span style=\"float:right;display:inline-block;\"> 0,00 ₺</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n																		<div style=\"text-align:center;margin-top:25px;border-bottom:1px dashed #000; padding-bottom:15px; margin-bottom:15px;\">\n							<h2 style=\"font-weight:bold;\">Adisyon &amp; Ciro Derinliği</h2>\n						</div>\n												<div>\n							<span style=\"float:left;display:inline-block;\">Adisyon Sayısı</span>\n							<span style=\"float:right;display:inline-block;\"> 5</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n												<div>\n							<span style=\"float:left;display:inline-block;\">Ciro / Adisyon</span>\n														<span style=\"float:right;display:inline-block;\"> 55,80 ₺</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n												<div>\n							<span style=\"float:left;display:inline-block;\">Kişi Sayısı</span>\n							<span style=\"float:right;display:inline-block;\"> 0</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n												<div>\n							<span style=\"float:left;display:inline-block;\">Ciro / Kişi</span>\n																													<span style=\"float:right;display:inline-block;\"> 0,00 ₺</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n																		<div class=\"prrx\">\n							<div style=\"text-align:center;margin-top:25px; padding-bottom:15px; margin-bottom:15px;\">\n								<h2 style=\"font-weight:bold;\">Ürün Satışları</h2>\n							</div>\n																												<div>\n								<div class=\"\">\n										<div class=\"row\" style=\"border-bottom:1px solid #000;\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Ürün</span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">Kg</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">Adet</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">%</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\">Tutar</span></div>\n										</div>\n																													<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Doner 55-60 Gr  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">0.17</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">3</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">6,45</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 18,00 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Doner 150-155 Gr  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">0.61</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">4</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">17,20</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 48,00 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Doner 250 Gr  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">0.50</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">2</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">14,34</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 40,00 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Doner 1000 Gr  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">2.00</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">2</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">57,35</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 160,00 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Cola Kutu  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\"></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1,25</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 3,50 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Meyve Suyu  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\"></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">2</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">2,51</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 7,00 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Şalgam  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\"></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">0,90</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 2,50 ₺</span></div>\n										</div>\n																																							<div class=\"row\" style=\"border-top:1px solid #000;margin-top:10px; padding-top:10px;\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Toplam Kilo</span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">3.28 Kg</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\"></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\"></div>\n											<div class=\"col-xs-2\"></div>\n										</div>\n								</div>\n								<div style=\"clear:both;\"></div>\n							</div>\n						</div>\n						\n												\n						<div style=\"text-align:center;margin-top:25px;border-bottom:1px dashed #000; padding-bottom:15px; margin-bottom:15px;\">\n							<h2 style=\"font-weight:bold;\">Ürün Satışları <br> ( Grup Bazında )</h2>\n						</div>\n												\n																		<div>\n							<div class=\"\">\n																	<div class=\"row\">\n										<div class=\"col-xs-6\"><span style=\"float:left;display:inline-block;\">Satış </span></div>\n										<div class=\"col-xs-2\" style=\"white-space:nowrap;\">% 100,00</div>\n										<div class=\"col-xs-4\"><span style=\"float:right;display:inline-block;\"> 279,00 ₺</span></div>\n									</div>\n																									<div class=\"row\">\n									<div class=\"col-xs-6\"><span style=\"float:left;display:inline-block;\">İndirim</span></div>\n									<div class=\"col-xs-2\" style=\"white-space:nowrap;\">% 0,00</div>\n									<div class=\"col-xs-4\"><span style=\"float:right;display:inline-block;\"> 0,00 ₺</span></div>\n								</div>\n																<div class=\"row\">\n									<div class=\"col-xs-6\"><h1 style=\"font-weight:bold;\"><span style=\"float:left;display:inline-block;\">TOPLAM</span></h1></div>\n									\n									<div class=\"col-xs-6\" style=\"white-space:nowrap;\"><h1 style=\"font-weight:bold;\"><span style=\"float:right;display:inline-block;\"> 279,00 TL</span></h1></div>\n								</div>\n															</div> <br><br><br>\n							<div style=\"clear:both; border-bottom:1px solid #000;\"></div>\n						</div>\n						\n					</div>\n					', '[{\"print_type\":\"report\"},{\"type\":\"header\",\"title\":\"BulutkasaPos\"},{\"type\":\"header\",\"title\":\"G\\u00fcn Sonu Raporu\"},{\"type\":\"line\",\"title\":\"------20-09-2019 16:58 - 20-09-2019 18:06------\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"header\",\"title\":\"Gelirler\"},{\"type\":\"row\",\"title\":\"Nakit\",\"value\":\"175,50\"},{\"type\":\"row\",\"title\":\"Kredi Kartlar\\u0131 Toplam\",\"value\":\"103,50\"},{\"type\":\"row\",\"title\":\"Toplam Genel\",\"value\":\"279,00\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"header\",\"title\":\"Ciroya Yansimayanlar\"},{\"type\":\"row\",\"title\":\"\\u0130ptaller Toplam\\u0131\",\"value\":\"0,00\"},{\"type\":\"row\",\"title\":\"\\u0130ndirimler Toplam\\u0131\",\"value\":\"0,00\"},{\"type\":\"row\",\"title\":\"\\u0130kramlar Toplam\\u0131\",\"value\":\"0,00\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"header\",\"title\":\"Adisyon & Ciro Derinli\\u011fi\"},{\"type\":\"row\",\"title\":\"Adisyon Say\\u0131s\\u0131\",\"0\":\"\",\"1\":\"\",\"value\":5},{\"type\":\"row\",\"title\":\"Ciro \\/ Adisyon\",\"value\":\"55,80\"},{\"type\":\"row\",\"title\":\"Ki\\u015fi Say\\u0131s\\u0131\",\"value\":0},{\"type\":\"row\",\"title\":\"Ciro \\/ Ki\\u015fi\",\"value\":\"0,00\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"header\",\"title\":\"\\u00dcr\\u00fcn Sat\\u0131\\u015flar\\u0131\"},{\"type\":\"tableCell\",\"cell1\":\"Urun\",\"cell2\":\"Adet\",\"cell3\":\"Yuzde\",\"cell4\":\"Tutar\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 55-60 Gr  \",\"cell2\":\"3\",\"cell3\":\"6,45\",\"cell4\":\"18,00\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 150-155 Gr  \",\"cell2\":\"4\",\"cell3\":\"17,20\",\"cell4\":\"48,00\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 250 Gr  \",\"cell2\":\"2\",\"cell3\":\"14,34\",\"cell4\":\"40,00\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 1000 Gr  \",\"cell2\":\"2\",\"cell3\":\"57,35\",\"cell4\":\"160,00\"},{\"type\":\"tableCell\",\"cell1\":\"Cola Kutu  \",\"cell2\":\"1\",\"cell3\":\"1,25\",\"cell4\":\"3,50\"},{\"type\":\"tableCell\",\"cell1\":\"Meyve Suyu  \",\"cell2\":\"2\",\"cell3\":\"2,51\",\"cell4\":\"7,00\"},{\"type\":\"tableCell\",\"cell1\":\"\\u015ealgam  \",\"cell2\":\"1\",\"cell3\":\"0,90\",\"cell4\":\"2,50\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"header\",\"title\":\"\\u00dcr\\u00fcn Sat\\u0131\\u015flar\\u0131 (Kg)\"},{\"type\":\"tableCell\",\"cell1\":\"Urun\",\"cell2\":\"Adet\",\"cell3\":\"\",\"cell4\":\"Kg\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 55-60 Gr  \",\"cell2\":\"3\",\"cell4\":\"0.17 Kg\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 150-155 Gr  \",\"cell2\":\"4\",\"cell4\":\"0.61 Kg\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 250 Gr  \",\"cell2\":\"2\",\"cell4\":\"0.50 Kg\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 1000 Gr  \",\"cell2\":\"2\",\"cell4\":\"2.00 Kg\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"tableCell\",\"cell1\":\"Toplam Kg\",\"cell2\":\"\",\"cell3\":\"\",\"cell4\":\"3.28 Kg\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"header\",\"title\":\"Kategori Satislari\"},{\"type\":\"tableCell2\",\"cell1\":\"Kategori\",\"cell2\":\"Yuzde\",\"cell3\":\"Tutar\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"tableCell2\",\"cell1\":\"Sat\\u0131\\u015f \",\"cell2\":\"100,00\",\"cell3\":\"279,00\"},{\"type\":\"tableCell2\",\"cell1\":\"\\u0130ndirim\",\"cell2\":\"0,00\",\"cell3\":\"0,00\"},{\"type\":\"bold_row\",\"title\":\"TOPLAM\",\"0\":\"\",\"1\":\"\",\"value\":\"279,00\"}]', 0, 1568991990),
(3, 'marifetKasa', 'usb', '20-09-2019-1808305d84eb6e58b0a.png', '\n					\n					<div style=\"font-weight:bold;\">\n																								<div style=\"text-align:center;\"><b><h1 style=\"font-weight:bold;\">BulutkasaPos</h1></b></div>\n						<div style=\"text-align:center;\"><h2 style=\"font-weight:bold;\">Marfiet Döner</h2></div>\n						<div>Gün Sonu Raporu</div>\n						<div>\n							20-09-2019 18:07 - 20-09-2019 18:08													</div>\n												\n						<div style=\"text-align:center;margin-top:25px;border-bottom:1px dashed #000; padding-bottom:15px; margin-bottom:15px;\">\n							<h2 style=\"font-weight:bold;\">Gelirler</h2>\n													</div>\n													<div>\n								<span style=\"float:left;display:inline-block;font-weight:bold;\">Nakit</span>\n								<span style=\"float:right;display:inline-block;\"> 322,00 ₺</span>\n								<div style=\"clear:both;\"></div>\n															</div>\n																																										<div>\n							<span style=\"float:left;display:inline-block;font-weight:bold;\">Toplam Genel</span>\n							<span style=\"float:right;display:inline-block;\"> 322,00 ₺</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n												<div style=\"text-align:center;margin-top:25px;border-bottom:1px dashed #000; padding-bottom:15px; margin-bottom:15px;\">\n							<h2 style=\"font-weight:bold;\">Ciroya Yansımayan İşlemler</h2>\n						</div>\n																		<div>\n							<span style=\"float:left;display:inline-block;\">İptaller Toplamı</span>\n							<span style=\"float:right;display:inline-block;\"> 0,00 ₺</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n												<div>\n							<span style=\"float:left;display:inline-block;\">İndirimler Toplamı</span>\n							<span style=\"float:right;display:inline-block;\"> 0,00 ₺</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n												<div>\n							<span style=\"float:left;display:inline-block;\">İkramlar Toplamı</span>\n							<span style=\"float:right;display:inline-block;\"> 0,00 ₺</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n																		<div style=\"text-align:center;margin-top:25px;border-bottom:1px dashed #000; padding-bottom:15px; margin-bottom:15px;\">\n							<h2 style=\"font-weight:bold;\">Adisyon &amp; Ciro Derinliği</h2>\n						</div>\n												<div>\n							<span style=\"float:left;display:inline-block;\">Adisyon Sayısı</span>\n							<span style=\"float:right;display:inline-block;\"> 1</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n												<div>\n							<span style=\"float:left;display:inline-block;\">Ciro / Adisyon</span>\n														<span style=\"float:right;display:inline-block;\"> 322,00 ₺</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n												<div>\n							<span style=\"float:left;display:inline-block;\">Kişi Sayısı</span>\n							<span style=\"float:right;display:inline-block;\"> 0</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n												<div>\n							<span style=\"float:left;display:inline-block;\">Ciro / Kişi</span>\n																													<span style=\"float:right;display:inline-block;\"> 0,00 ₺</span>\n							<div style=\"clear:both;\"></div>\n						</div>\n																		<div class=\"prrx\">\n							<div style=\"text-align:center;margin-top:25px; padding-bottom:15px; margin-bottom:15px;\">\n								<h2 style=\"font-weight:bold;\">Ürün Satışları</h2>\n							</div>\n																												<div>\n								<div class=\"\">\n										<div class=\"row\" style=\"border-bottom:1px solid #000;\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Ürün</span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">Kg</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">Adet</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">%</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\">Tutar</span></div>\n										</div>\n																													<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Porsiyon 200 gr  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">0.20</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">6,21</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 20,00 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Doner 55-60 Gr  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">0.06</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1,86</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 6,00 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Doner 90-95 Gr  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">0.09</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">2,80</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 9,00 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Doner 120-125 Gr  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">0.12</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">3,73</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 12,00 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Doner 150-155 Gr  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">0.15</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">4,66</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 15,00 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Doner 250 Gr  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">0.25</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">6,99</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 22,50 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Doner 500 Gr  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">0.50</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">13,98</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 45,00 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Doner 1000 Gr  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1.00</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">27,95</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 90,00 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Ayran  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\"></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">0,62</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 2,00 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Cola Şişe  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\"></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">0,78</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 2,50 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Cola Kutu  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\"></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1,09</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 3,50 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Meyve Suyu  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\"></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1,09</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 3,50 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Şalgam  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\"></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">0,78</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 2,50 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Su  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\"></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">0,47</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 1,50 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">soda  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\"></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">0,47</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 1,50 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Doner 185 - 190 Gr  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">0.19</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">5,59</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 18,00 ₺</span></div>\n										</div>\n																																																	<div class=\"row\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Doner 750 Gr  </span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">0.75</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">1</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">20,96</div>\n											<div class=\"col-xs-2\"><span style=\"float:right;display:inline-block;\"> 67,50 ₺</span></div>\n										</div>\n																																							<div class=\"row\" style=\"border-top:1px solid #000;margin-top:10px; padding-top:10px;\">\n											<div class=\"col-xs-4\"><span style=\"float:left;display:inline-block;\">Toplam Kilo</span></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\">3.31 Kg</div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\"></div>\n											<div class=\"col-xs-2\" style=\"white-space:nowrap;\"></div>\n											<div class=\"col-xs-2\"></div>\n										</div>\n								</div>\n								<div style=\"clear:both;\"></div>\n							</div>\n						</div>\n						\n												\n						<div style=\"text-align:center;margin-top:25px;border-bottom:1px dashed #000; padding-bottom:15px; margin-bottom:15px;\">\n							<h2 style=\"font-weight:bold;\">Ürün Satışları <br> ( Grup Bazında )</h2>\n						</div>\n												\n																		<div>\n							<div class=\"\">\n																	<div class=\"row\">\n										<div class=\"col-xs-6\"><span style=\"float:left;display:inline-block;\">Satış </span></div>\n										<div class=\"col-xs-2\" style=\"white-space:nowrap;\">% 100,00</div>\n										<div class=\"col-xs-4\"><span style=\"float:right;display:inline-block;\"> 322,00 ₺</span></div>\n									</div>\n																									<div class=\"row\">\n									<div class=\"col-xs-6\"><span style=\"float:left;display:inline-block;\">İndirim</span></div>\n									<div class=\"col-xs-2\" style=\"white-space:nowrap;\">% 0,00</div>\n									<div class=\"col-xs-4\"><span style=\"float:right;display:inline-block;\"> 0,00 ₺</span></div>\n								</div>\n																<div class=\"row\">\n									<div class=\"col-xs-6\"><h1 style=\"font-weight:bold;\"><span style=\"float:left;display:inline-block;\">TOPLAM</span></h1></div>\n									\n									<div class=\"col-xs-6\" style=\"white-space:nowrap;\"><h1 style=\"font-weight:bold;\"><span style=\"float:right;display:inline-block;\"> 322,00 TL</span></h1></div>\n								</div>\n															</div> <br><br><br>\n							<div style=\"clear:both; border-bottom:1px solid #000;\"></div>\n						</div>\n						\n					</div>\n					', '[{\"print_type\":\"report\"},{\"type\":\"header\",\"title\":\"BulutkasaPos\"},{\"type\":\"header\",\"title\":\"G\\u00fcn Sonu Raporu\"},{\"type\":\"line\",\"title\":\"------20-09-2019 18:07 - 20-09-2019 18:08------\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"header\",\"title\":\"Gelirler\"},{\"type\":\"row\",\"title\":\"Nakit\",\"value\":\"322,00\"},{\"type\":\"row\",\"title\":\"Toplam Genel\",\"value\":\"322,00\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"header\",\"title\":\"Ciroya Yansimayanlar\"},{\"type\":\"row\",\"title\":\"\\u0130ptaller Toplam\\u0131\",\"value\":\"0,00\"},{\"type\":\"row\",\"title\":\"\\u0130ndirimler Toplam\\u0131\",\"value\":\"0,00\"},{\"type\":\"row\",\"title\":\"\\u0130kramlar Toplam\\u0131\",\"value\":\"0,00\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"header\",\"title\":\"Adisyon & Ciro Derinli\\u011fi\"},{\"type\":\"row\",\"title\":\"Adisyon Say\\u0131s\\u0131\",\"0\":\"\",\"1\":\"\",\"value\":1},{\"type\":\"row\",\"title\":\"Ciro \\/ Adisyon\",\"value\":\"322,00\"},{\"type\":\"row\",\"title\":\"Ki\\u015fi Say\\u0131s\\u0131\",\"value\":0},{\"type\":\"row\",\"title\":\"Ciro \\/ Ki\\u015fi\",\"value\":\"0,00\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"header\",\"title\":\"\\u00dcr\\u00fcn Sat\\u0131\\u015flar\\u0131\"},{\"type\":\"tableCell\",\"cell1\":\"Urun\",\"cell2\":\"Adet\",\"cell3\":\"Yuzde\",\"cell4\":\"Tutar\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"tableCell\",\"cell1\":\"Porsiyon 200 gr  \",\"cell2\":\"1\",\"cell3\":\"6,21\",\"cell4\":\"20,00\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 55-60 Gr  \",\"cell2\":\"1\",\"cell3\":\"1,86\",\"cell4\":\"6,00\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 90-95 Gr  \",\"cell2\":\"1\",\"cell3\":\"2,80\",\"cell4\":\"9,00\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 120-125 Gr  \",\"cell2\":\"1\",\"cell3\":\"3,73\",\"cell4\":\"12,00\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 150-155 Gr  \",\"cell2\":\"1\",\"cell3\":\"4,66\",\"cell4\":\"15,00\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 250 Gr  \",\"cell2\":\"1\",\"cell3\":\"6,99\",\"cell4\":\"22,50\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 500 Gr  \",\"cell2\":\"1\",\"cell3\":\"13,98\",\"cell4\":\"45,00\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 1000 Gr  \",\"cell2\":\"1\",\"cell3\":\"27,95\",\"cell4\":\"90,00\"},{\"type\":\"tableCell\",\"cell1\":\"Ayran  \",\"cell2\":\"1\",\"cell3\":\"0,62\",\"cell4\":\"2,00\"},{\"type\":\"tableCell\",\"cell1\":\"Cola \\u015ei\\u015fe  \",\"cell2\":\"1\",\"cell3\":\"0,78\",\"cell4\":\"2,50\"},{\"type\":\"tableCell\",\"cell1\":\"Cola Kutu  \",\"cell2\":\"1\",\"cell3\":\"1,09\",\"cell4\":\"3,50\"},{\"type\":\"tableCell\",\"cell1\":\"Meyve Suyu  \",\"cell2\":\"1\",\"cell3\":\"1,09\",\"cell4\":\"3,50\"},{\"type\":\"tableCell\",\"cell1\":\"\\u015ealgam  \",\"cell2\":\"1\",\"cell3\":\"0,78\",\"cell4\":\"2,50\"},{\"type\":\"tableCell\",\"cell1\":\"Su  \",\"cell2\":\"1\",\"cell3\":\"0,47\",\"cell4\":\"1,50\"},{\"type\":\"tableCell\",\"cell1\":\"soda  \",\"cell2\":\"1\",\"cell3\":\"0,47\",\"cell4\":\"1,50\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 185 - 190 Gr  \",\"cell2\":\"1\",\"cell3\":\"5,59\",\"cell4\":\"18,00\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 750 Gr  \",\"cell2\":\"1\",\"cell3\":\"20,96\",\"cell4\":\"67,50\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"header\",\"title\":\"\\u00dcr\\u00fcn Sat\\u0131\\u015flar\\u0131 (Kg)\"},{\"type\":\"tableCell\",\"cell1\":\"Urun\",\"cell2\":\"Adet\",\"cell3\":\"\",\"cell4\":\"Kg\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"tableCell\",\"cell1\":\"Porsiyon 200 gr  \",\"cell2\":\"1\",\"cell4\":\"0.20 Kg\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 55-60 Gr  \",\"cell2\":\"1\",\"cell4\":\"0.06 Kg\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 90-95 Gr  \",\"cell2\":\"1\",\"cell4\":\"0.09 Kg\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 120-125 Gr  \",\"cell2\":\"1\",\"cell4\":\"0.12 Kg\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 150-155 Gr  \",\"cell2\":\"1\",\"cell4\":\"0.15 Kg\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 250 Gr  \",\"cell2\":\"1\",\"cell4\":\"0.25 Kg\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 500 Gr  \",\"cell2\":\"1\",\"cell4\":\"0.50 Kg\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 1000 Gr  \",\"cell2\":\"1\",\"cell4\":\"1.00 Kg\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 185 - 190 Gr  \",\"cell2\":\"1\",\"cell4\":\"0.19 Kg\"},{\"type\":\"tableCell\",\"cell1\":\"Doner 750 Gr  \",\"cell2\":\"1\",\"cell4\":\"0.75 Kg\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"tableCell\",\"cell1\":\"Toplam Kg\",\"cell2\":\"\",\"cell3\":\"\",\"cell4\":\"3.31 Kg\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"header\",\"title\":\"Kategori Satislari\"},{\"type\":\"tableCell2\",\"cell1\":\"Kategori\",\"cell2\":\"Yuzde\",\"cell3\":\"Tutar\"},{\"type\":\"line\",\"title\":\"------------------------------------------------\"},{\"type\":\"tableCell2\",\"cell1\":\"Sat\\u0131\\u015f \",\"cell2\":\"100,00\",\"cell3\":\"322,00\"},{\"type\":\"tableCell2\",\"cell1\":\"\\u0130ndirim\",\"cell2\":\"0,00\",\"cell3\":\"0,00\"},{\"type\":\"bold_row\",\"title\":\"TOPLAM\",\"0\":\"\",\"1\":\"\",\"value\":\"322,00\"}]', 0, 1568992110);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `about_us_table`
--

CREATE TABLE `about_us_table` (
  `id` int(11) NOT NULL,
  `page_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_content` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin_table`
--

CREATE TABLE `admin_table` (
  `admin_id` int(11) NOT NULL,
  `user_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin_insert_time` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `branches_table`
--

CREATE TABLE `branches_table` (
  `branch_id` int(11) NOT NULL,
  `br_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `br_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `br_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `br_town` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `br_phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `br_phone2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `br_whatsapp` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `br_email` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `br_pass` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `br_latitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `br_longitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `br_status` int(11) NOT NULL,
  `br_openinghour` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `br_closehour` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `open` int(11) NOT NULL,
  `isactive` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cats_table`
--

CREATE TABLE `cats_table` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cat_seo_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cat_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `up_cat` int(11) NOT NULL,
  `cat_status` int(11) NOT NULL,
  `cat_insert_time` bigint(20) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cats_table2`
--

CREATE TABLE `cats_table2` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cat_seo_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cat_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `up_cat` int(11) NOT NULL,
  `cat_status` int(11) NOT NULL,
  `cat_insert_time` bigint(20) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `cats_table2`
--

INSERT INTO `cats_table2` (`cat_id`, `cat_name`, `cat_seo_name`, `cat_img`, `up_cat`, `cat_status`, `cat_insert_time`, `sort`) VALUES
(1, 'Örnek Grup', 'ornek-grup', '', 0, 0, 1560498730, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `city`
--

CREATE TABLE `city` (
  `CityID` int(11) NOT NULL,
  `CityName` varchar(100) NOT NULL,
  `PlateNo` varchar(2) NOT NULL,
  `PhoneCode` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `city`
--

INSERT INTO `city` (`CityID`, `CityName`, `PlateNo`, `PhoneCode`) VALUES
(1, 'ADANA', '1', '322'),
(2, 'ADIYAMAN', '2', '416'),
(3, 'AFYONKARAHİSAR', '3', '272'),
(4, 'AĞRI', '4', '472'),
(5, 'AKSARAY', '68', '382'),
(6, 'AMASYA', '5', '358'),
(7, 'ANKARA', '6', '312'),
(8, 'ANTALYA', '7', '242'),
(9, 'ARDAHAN', '75', '478'),
(10, 'ARTVİN', '8', '466'),
(11, 'AYDIN', '9', '256'),
(12, 'BALIKESİR', '10', '266'),
(13, 'BARTIN', '74', '378'),
(14, 'BATMAN', '72', '488'),
(15, 'BAYBURT', '69', '458'),
(16, 'BİLECİK', '11', '228'),
(17, 'BİNGÖL', '12', '426'),
(18, 'BİTLİS', '13', '434'),
(19, 'BOLU', '14', '374'),
(20, 'BURDUR', '15', '248'),
(21, 'BURSA', '16', '224'),
(22, 'ÇANAKKALE', '17', '286'),
(23, 'ÇANKIRI', '18', '376'),
(24, 'ÇORUM', '19', '364'),
(25, 'DENİZLİ', '20', '258'),
(26, 'DİYARBAKIR', '21', '412'),
(27, 'DÜZCE', '81', '380'),
(28, 'EDİRNE', '22', '284'),
(29, 'ELAZIĞ', '23', '424'),
(30, 'ERZİNCAN', '24', '446'),
(31, 'ERZURUM', '25', '442'),
(32, 'ESKİŞEHİR', '26', '222'),
(33, 'GAZİANTEP', '27', '342'),
(34, 'GİRESUN', '28', '454'),
(35, 'GÜMÜŞHANE', '29', '456'),
(36, 'HAKKARİ', '30', '438'),
(37, 'HATAY', '31', '326'),
(38, 'IĞDIR', '76', '476'),
(39, 'ISPARTA', '32', '246'),
(40, 'İSTANBUL', '34', '212-216'),
(41, 'İZMİR', '35', '232'),
(42, 'KAHRAMANMARAŞ', '46', '344'),
(43, 'KARABÜK', '78', '370'),
(44, 'KARAMAN', '70', '338'),
(45, 'KARS', '36', '474'),
(46, 'KASTAMONU', '37', '366'),
(47, 'KAYSERİ', '38', '352'),
(48, 'KIRIKKALE', '71', '318'),
(49, 'KIRKLARELİ', '39', '288'),
(50, 'KIRŞEHİR', '40', '386'),
(51, 'KİLİS', '79', '348'),
(52, 'KOCAELİ', '41', '262'),
(53, 'KONYA', '42', '332'),
(54, 'KÜTAHYA', '43', '274'),
(55, 'MALATYA', '44', '422'),
(56, 'MANİSA', '45', '236'),
(57, 'MARDİN', '47', '482'),
(58, 'MERSİN', '33', '324'),
(59, 'MUĞLA', '48', '252'),
(60, 'MUŞ', '49', '436'),
(61, 'NEVŞEHİR', '50', '384'),
(62, 'NİĞDE', '51', '388'),
(63, 'ORDU', '52', '452'),
(64, 'OSMANİYE', '80', '328'),
(65, 'RİZE', '53', '464'),
(66, 'SAKARYA', '54', '264'),
(67, 'SAMSUN', '55', '362'),
(68, 'SİİRT', '56', '484'),
(69, 'SİNOP', '57', '368'),
(70, 'SİVAS', '58', '346'),
(71, 'ŞANLIURFA', '63', '414'),
(72, 'ŞIRNAK', '73', '486'),
(73, 'TEKİRDAĞ', '59', '282'),
(74, 'TOKAT', '60', '356'),
(75, 'TRABZON', '61', '462'),
(76, 'TUNCELİ', '62', '428'),
(77, 'UŞAK', '64', '276'),
(78, 'VAN', '65', '432'),
(79, 'YALOVA', '77', '226'),
(80, 'YOZGAT', '66', '354'),
(81, 'ZONGULDAK', '67', '372');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `companies_table`
--

CREATE TABLE `companies_table` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `company_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_mail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `company_phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `company_insert_time` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customers_table`
--

CREATE TABLE `customers_table` (
  `customer_id` int(11) NOT NULL,
  `full_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `seo_full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `town` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `insert_time` bigint(20) NOT NULL,
  `total_debt` decimal(7,2) NOT NULL,
  `customer_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `customers_table`
--

INSERT INTO `customers_table` (`customer_id`, `full_name`, `seo_full_name`, `phone`, `phone2`, `email`, `password`, `address`, `town`, `insert_time`, `total_debt`, `customer_status`) VALUES
(1, 'OZAN BEY', 'ozan-bey', '0-532-760-2030', NULL, '', '', NULL, NULL, 1549648345, '0.00', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customer_addresses_table`
--

CREATE TABLE `customer_addresses_table` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `town_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `address_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `customer_addresses_table`
--

INSERT INTO `customer_addresses_table` (`id`, `customer_id`, `city_id`, `town_id`, `district_id`, `address_name`, `address`) VALUES
(1, 1, 0, 0, 0, 'Adres 1', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `days_table`
--

CREATE TABLE `days_table` (
  `day_id` int(11) NOT NULL,
  `day_start_time` bigint(20) NOT NULL,
  `day_end_time` bigint(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `depos_table`
--

CREATE TABLE `depos_table` (
  `depo_id` int(11) NOT NULL,
  `depo_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `district`
--

CREATE TABLE `district` (
  `DistrictID` int(11) NOT NULL,
  `TownID` int(11) NOT NULL,
  `DistrictName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `district`
--

INSERT INTO `district` (`DistrictID`, `TownID`, `DistrictName`) VALUES
(1, 1, 'ALADAĞ'),
(2, 1, 'MADENLİ'),
(3, 2, 'BÜYÜKMANGIT'),
(4, 2, 'CEYHAN'),
(5, 2, 'EMEK'),
(6, 2, 'KÖSRELİ'),
(7, 2, 'MUSTAFABEYLİ'),
(8, 2, 'NAMIKKEMAL'),
(9, 2, 'SANAYİ'),
(10, 2, 'TÜRLÜBAŞ'),
(11, 3, 'HUZUREVLERİ'),
(12, 3, 'MAHFESIĞMAZ'),
(13, 3, 'SALBAŞ'),
(14, 4, 'AKKAYA'),
(15, 4, 'FEKE'),
(16, 5, 'İMAMOĞLU'),
(17, 5, 'SAYGEÇİT'),
(18, 6, 'KARAİSALI'),
(19, 7, 'KARATAŞ'),
(20, 8, 'HACIBEYLİ'),
(21, 8, 'KAHVELİ'),
(22, 8, 'KOZAN'),
(23, 9, 'AKÇATEKİR'),
(24, 9, 'GÖKBEZ'),
(25, 9, 'POZANTI'),
(26, 10, 'SAİMBEYLİ'),
(27, 11, 'BAKLALI'),
(28, 11, 'BURUK'),
(29, 11, 'İNCİRLİK'),
(30, 11, 'OSMANGAZİ'),
(31, 11, 'REMZİOĞUZARIK'),
(32, 12, 'AKKAPI'),
(33, 12, 'DENİZLİ'),
(34, 12, 'EMEK'),
(35, 12, 'FEVZİPAŞA'),
(36, 12, 'GAZİPAŞA'),
(37, 12, 'GÜLBAHÇESİ'),
(38, 12, 'GÜRSELPAŞA'),
(39, 12, 'HADIRLI'),
(40, 12, 'HÜKÜMET'),
(41, 12, 'KARAYUSUFLU'),
(42, 12, 'KURUKÖPRÜ'),
(43, 12, 'KÜÇÜKDİKİLİ'),
(44, 12, 'MAVİ BULVAR YURT'),
(45, 12, 'MEYDAN'),
(46, 12, 'SAYDAM'),
(47, 12, 'ŞAKİRPAŞA'),
(48, 12, 'YAĞCAMİ'),
(49, 12, 'YEŞİLEVLER'),
(50, 12, 'YEŞİLOBA'),
(51, 12, 'YEŞİLYURT'),
(52, 12, 'ZİYAPAŞA'),
(53, 13, 'DAMLALI'),
(54, 13, 'TUFANBEYLİ'),
(55, 14, 'KALEMLİ'),
(56, 14, 'YUMURTALIK'),
(57, 15, 'ABDİOĞLU'),
(58, 15, 'ALİHOCALI'),
(59, 15, 'BAHÇELİEVLER'),
(60, 15, 'DOĞANKENT'),
(61, 15, 'HAVUTLU'),
(62, 15, 'İNCİRLİK'),
(63, 15, 'KARACAOĞLAN'),
(64, 15, 'KARŞIYAKA'),
(65, 15, 'KAZIMKARABEKİR'),
(66, 15, 'KERESTECİLER'),
(67, 15, 'PTTEVLERİ'),
(68, 15, 'YAKAPINAR'),
(69, 15, 'YAMAÇLI'),
(70, 15, 'YAVUZLAR'),
(71, 16, 'BESNİ'),
(72, 16, 'ÇAKIRHÜYÜK'),
(73, 16, 'MERKEZKÖYLER'),
(74, 16, 'SUVARLI'),
(75, 16, 'ŞAMBAYAT'),
(76, 17, 'ÇELİKHAN'),
(77, 17, 'MERKEZKÖYLER'),
(78, 18, 'GERGER'),
(79, 18, 'MERKEZKÖYLER'),
(80, 19, 'BELÖREN'),
(81, 19, 'GÖLBAŞI'),
(82, 19, 'HARMANLI'),
(83, 19, 'MERKEZKÖYLER'),
(84, 20, 'AKINCILAR'),
(85, 20, 'KAHTA'),
(86, 20, 'MERKEZKÖYLER'),
(87, 21, 'AKPINAR'),
(88, 21, 'ESKİSARAY'),
(89, 21, 'İMAMAĞA'),
(90, 21, 'KÖMÜR'),
(91, 21, 'KUYUCAK'),
(92, 21, 'MERKEZ KÖYLER'),
(93, 21, 'SÜMEREVLER'),
(94, 21, 'YENİSANAYİ'),
(95, 22, 'MERKEZKÖYLER'),
(96, 22, 'SAMSAT'),
(97, 23, 'MERKEZKÖYLER'),
(98, 23, 'SİNCİK'),
(99, 24, 'MERKEZKÖYLER'),
(100, 24, 'TUT'),
(101, 25, 'BAŞMAKÇI'),
(102, 25, 'MERKEZKÖYLER'),
(103, 26, 'BAYAT'),
(104, 26, 'MERKEZKÖYLER'),
(105, 27, 'BOLVADİN'),
(106, 27, 'MERKEZKÖYLER'),
(107, 28, 'ÇAY'),
(108, 28, 'MERKEZKÖYLER'),
(109, 29, 'ÇOBANLAR'),
(110, 29, 'MERKEZKÖYLER'),
(111, 30, 'DAZKIRI'),
(112, 30, 'MERKEZKÖYLER'),
(113, 31, 'DİNAR'),
(114, 31, 'MERKEZKÖYLER'),
(115, 32, 'EMİRDAĞ'),
(116, 32, 'MERKEZKÖYLER'),
(117, 33, 'EVCİLER'),
(118, 33, 'MERKEZKÖYLER'),
(119, 34, 'HOCALAR'),
(120, 34, 'MERKEZKÖYLER'),
(121, 35, 'İHSANİYE'),
(122, 35, 'MERKEZKÖYLER'),
(123, 36, 'İSCEHİSAR'),
(124, 36, 'MERKEZKÖYLER'),
(125, 37, 'KIZILÖREN'),
(126, 37, 'MERKEZKÖYLER'),
(127, 38, 'BEYYAZI'),
(128, 38, 'ÇARŞI'),
(129, 38, 'DUMLUPINAR'),
(130, 38, 'ERKMEN'),
(131, 38, 'HARBİŞ'),
(132, 38, 'IŞIKLAR'),
(133, 38, 'MERKEZKÖYLER'),
(134, 38, 'SAHİPATA'),
(135, 38, 'SÜLÜMENLİ'),
(136, 39, 'MERKEZKÖYLER'),
(137, 39, 'SANDIKLI'),
(138, 40, 'MERKEZKÖYLER'),
(139, 40, 'SİNANPAŞA'),
(140, 40, 'TAŞOLUK'),
(141, 40, 'TINAZTEPE'),
(142, 41, 'MERKEZKÖYLER'),
(143, 41, 'SULTANDAĞI'),
(144, 42, 'MERKEZKÖYLER'),
(145, 42, 'ŞUHUT'),
(146, 43, 'DİYADİN'),
(147, 43, 'MERKEZKÖYLER'),
(148, 44, 'DOĞUBAYAZIT'),
(149, 44, 'MERKEZKÖYLER'),
(150, 45, 'ELEŞKİRT'),
(151, 45, 'MERKEZKÖYLER'),
(152, 45, 'TAHİR'),
(153, 46, 'HAMUR'),
(154, 46, 'MERKEZKÖYLER'),
(155, 47, 'FEVZİÇAKMAK'),
(156, 47, 'KAZIMKARABEKİR'),
(157, 47, 'MERKEZKÖYLER'),
(158, 48, 'DEDELİ'),
(159, 48, 'MERKEZKÖYLER'),
(160, 48, 'PATNOS'),
(161, 48, 'SARISU'),
(162, 49, 'MERKEZKÖYLER'),
(163, 49, 'TAŞLIÇAY'),
(164, 50, 'MERKEZKÖYLER'),
(165, 50, 'TUTAK'),
(166, 51, 'AĞAÇÖREN'),
(167, 51, 'MERKEZKÖYLER'),
(168, 52, 'ESKİL'),
(169, 52, 'MERKEZKÖYLER'),
(170, 53, 'GÜLAĞAÇ'),
(171, 53, 'MERKEZKÖYLER'),
(172, 54, 'GÜZELYURT'),
(173, 54, 'MERKEZKÖYLER'),
(174, 55, 'BAĞLIKAYA'),
(175, 55, 'ÇARŞI'),
(176, 55, 'HELVADERE'),
(177, 55, 'MERKEZKÖYLER'),
(178, 55, 'SANAYİ'),
(179, 55, 'TAŞPINAR'),
(180, 55, 'YEŞİLOVA'),
(181, 56, 'BALCI'),
(182, 56, 'MERKEZKÖYLER'),
(183, 56, 'ORTAKÖY'),
(184, 57, 'MERKEZKÖYLER'),
(185, 57, 'SARIYAHŞİ'),
(186, 58, 'SULTANHANI'),
(187, 59, 'GÖYNÜCEK'),
(188, 59, 'MERKEZKÖYLER'),
(189, 60, 'GÜMÜŞHACIKÖY'),
(190, 60, 'MERKEZKÖYLER'),
(191, 61, 'HAMAMÖZÜ'),
(192, 61, 'MERKEZKÖYLER'),
(193, 62, 'DEREBOYU'),
(194, 62, 'GENERALHİKMETAKINCI'),
(195, 62, 'GÖKMEDRESE'),
(196, 62, 'MERKEZKÖYLER'),
(197, 63, 'MERKEZKÖYLER'),
(198, 63, 'MERZİFON'),
(199, 64, 'MERKEZKÖYLER'),
(200, 64, 'SULUOVA'),
(201, 65, 'MERKEZKÖYLER'),
(202, 65, 'TAŞOVA'),
(203, 66, 'AKYURT'),
(204, 67, 'ALTINDAĞ'),
(205, 67, 'AYDINLIKEVLER'),
(206, 67, 'DIŞKAPI'),
(207, 67, 'HASKÖY'),
(208, 67, 'İSKİTLER'),
(209, 67, 'SAMANPAZARI'),
(210, 67, 'TELSİZLER'),
(211, 67, 'ULUBEY'),
(212, 67, 'ULUS'),
(213, 68, 'AYAŞ'),
(214, 69, 'BALA'),
(215, 70, 'BEYPAZARI'),
(216, 71, 'ÇAMLIDERE'),
(217, 72, '100.YIL'),
(218, 72, 'AHLATLIBEL'),
(219, 72, 'BAHÇELİEVLER'),
(220, 72, 'BALGAT'),
(221, 72, 'BİLKENT'),
(222, 72, 'BİRLİK'),
(223, 72, 'CEBECİ'),
(224, 72, 'ÇANKAYA'),
(225, 72, 'ÇAYYOLU'),
(226, 72, 'DİKMEN'),
(227, 72, 'ESAT'),
(228, 72, 'KARATAŞ'),
(229, 72, 'KAVAKLIDERE'),
(230, 72, 'MALTEPE'),
(231, 72, 'ÖVEÇLER'),
(232, 72, 'YENİŞEHİR'),
(233, 72, 'YILDIZ'),
(234, 72, 'ZAFERTEPE'),
(235, 73, 'ÇUBUK'),
(236, 74, 'ELMADAĞ'),
(237, 74, 'HASANOĞLAN'),
(238, 75, '30AĞUSTOS'),
(239, 75, 'BAHÇEKAPI'),
(240, 75, 'ELVANKENT'),
(241, 75, 'ERYAMANEVLERİ'),
(242, 75, 'ETİMESGUT'),
(243, 75, 'GÖKSU'),
(244, 75, 'GÜZELKENT'),
(245, 75, 'YURTÇU'),
(246, 76, 'EVREN'),
(247, 77, 'GÖLBAŞI'),
(248, 78, 'GÜDÜL'),
(249, 79, 'HAYMANA'),
(250, 80, 'KAZAN'),
(251, 81, 'KALECİK'),
(252, 82, 'AKTEPE'),
(253, 82, 'BAĞLUM'),
(254, 82, 'ESERTEPE'),
(255, 82, 'ETLİK'),
(256, 82, 'HASKÖY SUBAYEVLERİ'),
(257, 82, 'KALABA'),
(258, 82, 'SANATORYUM'),
(259, 82, 'ŞENLİK'),
(260, 82, 'UFUKTEPE'),
(261, 83, 'KIZILCAHAMAM'),
(262, 83, 'YEŞİLKÖY'),
(263, 84, 'ABİDİNPAŞA'),
(264, 84, 'AKDERE'),
(265, 84, 'BOĞAZİÇİ'),
(266, 84, 'DEMİRLİBAHÇE'),
(267, 84, 'GÜLVEREN'),
(268, 84, 'HÜSEYİNGAZİ'),
(269, 84, 'KAYAŞ'),
(270, 84, 'LALAHAN'),
(271, 84, 'MAMAK'),
(272, 85, 'NALLIHAN'),
(273, 86, 'POLATLI'),
(274, 87, 'PURSAKLAR'),
(275, 88, 'AHİEVRAN'),
(276, 88, 'ÇARŞI'),
(277, 88, 'ERTUĞRULGAZİ'),
(278, 88, 'FATİH'),
(279, 88, 'MEVLANA'),
(280, 88, 'PLEVNE'),
(281, 88, 'SİNCAN'),
(282, 88, 'TEMELLİ'),
(283, 88, 'ULUBATLI'),
(284, 88, 'YENİKENT'),
(285, 89, 'ŞEREFLİKOÇHİSAR'),
(286, 90, 'A.O.ÇİFTLİĞİ'),
(287, 90, 'BATIKENT'),
(288, 90, 'DEMETEVLER'),
(289, 90, 'İVEDİK OSB'),
(290, 90, 'KARŞIYAKA'),
(291, 90, 'MACUNKÖY'),
(292, 90, 'OSTİM'),
(293, 90, 'ŞENTEPE'),
(294, 90, 'YENİMAHALLE'),
(295, 91, 'AKSEKİ'),
(296, 91, 'CEVİZLİ'),
(297, 92, 'AKSU'),
(298, 93, 'ALANYA'),
(299, 93, 'AVSALLAR'),
(300, 93, 'DEMİRTAŞ'),
(301, 93, 'KESTEL'),
(302, 93, 'MAHMUTLAR'),
(303, 94, 'DAVAZLAR'),
(304, 94, 'DEMRE'),
(305, 94, 'KALE'),
(306, 95, 'DÖŞEMEALTI'),
(307, 96, 'AKÇAY'),
(308, 96, 'ELMALI'),
(309, 97, 'FİNİKE'),
(310, 98, 'GAZİPAŞA'),
(311, 99, 'GÜNDOĞMUŞ'),
(312, 100, 'AYDINKENT'),
(313, 101, 'CEMRE'),
(314, 101, 'GÖMBE'),
(315, 101, 'KALKAN'),
(316, 101, 'KAŞ'),
(317, 101, 'KINIK'),
(318, 101, 'OVA'),
(319, 101, 'YEŞİLKÖY'),
(320, 102, 'BELDİBİ'),
(321, 102, 'BEYCİK'),
(322, 102, 'ÇAMYUVA'),
(323, 102, 'GÖYNÜK'),
(324, 102, 'KEMER'),
(325, 102, 'TEKİROVA'),
(326, 103, 'AHATLI'),
(327, 103, 'ALTINOVA'),
(328, 103, 'DOKUMA'),
(329, 103, 'DURALİLER'),
(330, 103, 'DÜDENBAŞI'),
(331, 103, 'ERENKÖY'),
(332, 103, 'SÜTÇÜLER'),
(333, 103, 'VARSAK'),
(334, 103, 'YENİEMEK'),
(335, 104, 'ARAPSUYU'),
(336, 104, 'LİMAN'),
(337, 105, 'KORKUTELİ'),
(338, 106, 'KUMLUCA'),
(339, 106, 'MAVİKENT'),
(340, 107, 'ÇOLAKLI'),
(341, 107, 'MANAVGAT'),
(342, 107, 'SİDE'),
(343, 107, 'TAŞAĞIL'),
(344, 108, 'BAHÇELİEVLER'),
(345, 108, 'ÇARŞI'),
(346, 108, 'ESKİSANAYİ'),
(347, 108, 'FENER'),
(348, 108, 'GENÇLİK'),
(349, 108, 'KIZILTOPRAK'),
(350, 108, 'LARA'),
(351, 108, 'MELTEM'),
(352, 108, 'MEYDANKAVAĞI'),
(353, 109, 'SERİK'),
(354, 110, 'ÇILDIR'),
(355, 110, 'MERKEZKÖYLER'),
(356, 111, 'DAMAL'),
(357, 111, 'MERKEZKÖYLER'),
(358, 112, 'GÖLE'),
(359, 112, 'MERKEZKÖYLER'),
(360, 113, 'HANAK'),
(361, 113, 'MERKEZKÖYLER'),
(362, 114, 'ARDAHAN'),
(363, 114, 'HASKÖY'),
(364, 114, 'MERKEZKÖYLER'),
(365, 114, 'YANLIZÇAM'),
(366, 115, 'MERKEZKÖYLER'),
(367, 115, 'POSOF'),
(368, 116, 'ARDANUÇ'),
(369, 116, 'MERKEZKÖYLER'),
(370, 117, 'ARHAVİ'),
(371, 117, 'MERKEZKÖYLER'),
(372, 118, 'BORÇKA'),
(373, 118, 'MERKEZKÖYLER'),
(374, 119, 'HOPA'),
(375, 119, 'MERKEZKÖYLER'),
(376, 120, 'KEMALPAŞA'),
(377, 120, 'MERKEZKÖYLER'),
(378, 121, 'ARTVİN'),
(379, 121, 'MERKEZKÖYLER'),
(380, 122, 'GÖKTAŞ'),
(381, 122, 'MERKEZKÖYLER'),
(382, 123, 'MERKEZKÖYLER'),
(383, 123, 'ŞAVŞAT'),
(384, 124, 'MERKEZKÖYLER'),
(385, 124, 'YUSUFELİ'),
(386, 125, 'BOZDOĞAN'),
(387, 126, 'ÇUBUKDAĞI'),
(388, 127, 'ÇİNE'),
(389, 128, 'AKYENİKÖY'),
(390, 128, 'YENİHİSAR'),
(391, 129, 'ÇARŞI'),
(392, 129, 'KURTULUŞ'),
(393, 129, 'SANAYİ'),
(394, 129, 'UMURLU'),
(395, 130, 'GERMENCİK'),
(396, 130, 'ORTAKLAR'),
(397, 131, 'İNCİRLİOVA'),
(398, 132, 'KARACASU'),
(399, 133, 'KARPUZLU'),
(400, 134, 'KOÇARLI'),
(401, 135, 'KÖŞK'),
(402, 136, 'KUŞADASI'),
(403, 137, 'KUYUCAK'),
(404, 138, 'NAZİLLİ'),
(405, 138, 'SÜMER'),
(406, 139, 'SÖKE'),
(407, 140, 'SULTANHİSAR'),
(408, 141, 'YENİPAZAR'),
(409, 142, 'ALTIEYLÜL'),
(410, 142, 'ERTUĞRUL'),
(411, 142, 'GÜNDOĞAN'),
(412, 142, 'KONAKPINAR'),
(413, 142, 'PAMUKÇU'),
(414, 142, 'PLEVNE'),
(415, 143, 'ALİBEYADASI'),
(416, 143, 'ALTINOVA'),
(417, 143, 'AYVALIK'),
(418, 143, 'KÜÇÜKKÖY'),
(419, 144, 'BALYA'),
(420, 144, 'PATLAK'),
(421, 145, 'AKSAKAL'),
(422, 145, 'BANDIRMA'),
(423, 145, 'DOĞRUCA'),
(424, 145, 'EDİNCİK'),
(425, 146, 'BİGADİÇ'),
(426, 146, 'ÇAĞIŞ'),
(427, 146, 'SALMANLI'),
(428, 147, 'BURHANİYE'),
(429, 147, 'ÇORUK'),
(430, 147, 'PELİTKÖY'),
(431, 148, 'DURSUNBEY'),
(432, 148, 'HACILAR'),
(433, 149, 'AKÇAY'),
(434, 149, 'ALTINOLUK'),
(435, 149, 'EDREMİT'),
(436, 150, 'BELKIS'),
(437, 150, 'ERDEK'),
(438, 151, 'DURSUNLU'),
(439, 151, 'GÖMEÇ'),
(440, 151, 'KARAAĞAÇ'),
(441, 152, 'GÖNEN'),
(442, 152, 'HASANBEY'),
(443, 152, 'SARIKÖY'),
(444, 153, 'HAVRAN'),
(445, 153, 'TEMAŞALIK'),
(446, 154, 'BÜYÜKYENİCE'),
(447, 154, 'GÖKÇEYAZI'),
(448, 154, 'İVRİNDİ'),
(449, 154, 'KAYAPA'),
(450, 154, 'KORUCU'),
(451, 154, 'SARICA'),
(452, 155, 'ATATÜRK'),
(453, 155, 'KARESİ'),
(454, 155, 'SAKARYA'),
(455, 155, 'ŞAMLI'),
(456, 156, 'KEPSUT'),
(457, 156, 'SERVET'),
(458, 157, 'KAYACA'),
(459, 157, 'MANYAS'),
(460, 158, 'AVŞA'),
(461, 158, 'MARMARA'),
(462, 159, 'KARAÇAM'),
(463, 159, 'SARIBEYLER'),
(464, 159, 'SAVAŞTEPE'),
(465, 160, 'MANDIRA'),
(466, 160, 'SINDIRGI'),
(467, 161, 'GÖBEL'),
(468, 161, 'KAYIKÇI'),
(469, 161, 'SUSURLUK'),
(470, 162, 'AMASRA'),
(471, 162, 'MERKEZKÖYLER'),
(472, 163, 'KURUCAŞİLE'),
(473, 163, 'MERKEZKÖYLER'),
(474, 164, 'DEMİRCİLER'),
(475, 164, 'KOZCAĞIZ'),
(476, 164, 'MERKEZKÖYLER'),
(477, 164, 'YENİSANAYİ'),
(478, 165, 'KUMLUCA'),
(479, 165, 'MERKEZKÖYLER'),
(480, 165, 'ULUS'),
(481, 166, 'BEŞİRİ'),
(482, 166, 'MERKEZKÖYLER'),
(483, 167, 'GERCÜŞ'),
(484, 167, 'MERKEZKÖYLER'),
(485, 168, 'HASANKEYF'),
(486, 168, 'MERKEZKÖYLER'),
(487, 169, 'KOZLUK'),
(488, 169, 'MERKEZKÖYLER'),
(489, 170, 'ÇARŞI'),
(490, 170, 'GAP'),
(491, 170, 'KÜLTÜR'),
(492, 170, 'MERKEZKÖYLER'),
(493, 170, 'PETROL'),
(494, 171, 'MERKEZKÖYLER'),
(495, 171, 'SASON'),
(496, 172, 'AYDINTEPE'),
(497, 172, 'MERKEZKÖYLER'),
(498, 173, 'DEMİRÖZÜ'),
(499, 173, 'MERKEZKÖYLER'),
(500, 174, 'BAYBURT'),
(501, 174, 'MADEN'),
(502, 174, 'MERKEZKÖYLER'),
(503, 175, 'BOZÜYÜK'),
(504, 175, 'DODURGA'),
(505, 175, 'MERKEZKÖYLER'),
(506, 176, 'GÖLPAZARI'),
(507, 176, 'MERKEZKÖYLER'),
(508, 177, 'İNHİSAR'),
(509, 177, 'MERKEZKÖYLER'),
(510, 178, 'BİLECİK'),
(511, 178, 'MERKEZKÖYLER'),
(512, 179, 'MERKEZKÖYLER'),
(513, 179, 'OSMANELİ'),
(514, 180, 'MERKEZKÖYLER'),
(515, 180, 'PAZARYERİ'),
(516, 181, 'MERKEZKÖYLER'),
(517, 181, 'SÖĞÜT'),
(518, 182, 'MERKEZKÖYLER'),
(519, 182, 'YENİPAZAR'),
(520, 183, 'ADAKLI'),
(521, 183, 'MERKEZKÖYLER'),
(522, 184, 'GENÇ'),
(523, 184, 'MERKEZKÖYLER'),
(524, 185, 'KARLIOVA'),
(525, 185, 'MERKEZKÖYLER'),
(526, 186, 'KİĞI'),
(527, 186, 'MERKEZKÖYLER'),
(528, 187, 'AĞAÇELİ'),
(529, 187, 'BİNGÖL'),
(530, 187, 'MERKEZKÖYLER'),
(531, 187, 'SANCAK'),
(532, 188, 'MERKEZKÖYLER'),
(533, 188, 'SOLHAN'),
(534, 189, 'MERKEZKÖYLER'),
(535, 189, 'YAYLADERE'),
(536, 190, 'MERKEZKÖYLER'),
(537, 190, 'YEDİSU'),
(538, 191, 'ADİLCEVAZ'),
(539, 191, 'MERKEZKÖYLER'),
(540, 192, 'AHLAT'),
(541, 192, 'MERKEZKÖYLER'),
(542, 192, 'OVAKIŞLA'),
(543, 193, 'GÜROYMAK'),
(544, 193, 'MERKEZKÖYLER'),
(545, 194, 'HİZAN'),
(546, 194, 'MERKEZKÖYLER'),
(547, 195, 'BİTLİS'),
(548, 195, 'BÖLÜKYAZI'),
(549, 195, 'MERKEZKÖYLER'),
(550, 196, 'GEYİKPINAR'),
(551, 196, 'MERKEZKÖYLER'),
(552, 196, 'MEYDAN'),
(553, 196, 'MUTKİ'),
(554, 197, 'MERKEZKÖYLER'),
(555, 197, 'TATVAN'),
(556, 197, 'YELKENLİ'),
(557, 198, 'DÖRTDİVAN'),
(558, 198, 'MERKEZKÖYLER'),
(559, 199, 'GEREDE'),
(560, 199, 'MERKEZKÖYLER'),
(561, 200, 'GÖYNÜK'),
(562, 200, 'MERKEZKÖYLER'),
(563, 201, 'KIBRISCIK'),
(564, 201, 'MERKEZKÖYLER'),
(565, 202, 'GÖKÇESU'),
(566, 202, 'MENGEN'),
(567, 202, 'MERKEZKÖYLER'),
(568, 203, 'AŞAĞISOKU'),
(569, 203, 'İHSANİYE'),
(570, 203, 'KARACASU'),
(571, 203, 'KARAMANLI'),
(572, 203, 'MERKEZKÖYLER'),
(573, 204, 'MERKEZKÖYLER'),
(574, 204, 'MUDURNU'),
(575, 205, 'MERKEZKÖYLER'),
(576, 205, 'SEBEN'),
(577, 206, 'MERKEZKÖYLER'),
(578, 206, 'YENİÇAĞA'),
(579, 207, 'AĞLASUN'),
(580, 207, 'MERKEZKÖYLER'),
(581, 208, 'DİRMİL'),
(582, 208, 'MERKEZKÖYLER'),
(583, 209, 'BUCAK'),
(584, 209, 'KIZILKAYA'),
(585, 209, 'KOCAALİLER'),
(586, 209, 'MERKEZKÖYLER'),
(587, 210, 'ÇAVDIR'),
(588, 210, 'MERKEZKÖYLER'),
(589, 211, 'ÇELTİKÇİ'),
(590, 211, 'MERKEZKÖYLER'),
(591, 212, 'GÖLHİSAR'),
(592, 212, 'MERKEZKÖYLER'),
(593, 213, 'KARAMANLI'),
(594, 213, 'MERKEZKÖYLER'),
(595, 214, 'KEMER'),
(596, 214, 'MERKEZKÖYLER'),
(597, 215, 'BAHÇELİEVLER'),
(598, 215, 'ÇEŞMEDAMI'),
(599, 215, 'MERKEZKÖYLER'),
(600, 215, 'SANAYİ'),
(601, 215, 'YENİCE'),
(602, 216, 'MERKEZKÖYLER'),
(603, 216, 'TEFENNİ'),
(604, 217, 'MERKEZKÖYLER'),
(605, 217, 'YEŞİLOVA'),
(606, 218, 'BÜYÜKORHAN'),
(607, 219, 'GEMLİK'),
(608, 220, 'GÜRSU'),
(609, 221, 'HARMANCIK'),
(610, 222, 'İNEGÖL'),
(611, 223, 'İZNİK'),
(612, 224, 'KARACABEY'),
(613, 225, 'KELES'),
(614, 226, 'KESTEL'),
(615, 227, 'MUDANYA'),
(616, 228, 'MUSTAFAKEMALPAŞA'),
(617, 229, 'ALAATTİNBEY'),
(618, 229, 'ALTINŞEHİR'),
(619, 229, 'ATAEVLER'),
(620, 229, 'BALAT'),
(621, 229, 'BEŞEVLER'),
(622, 229, 'ÇALI'),
(623, 229, 'ERTUĞRUL'),
(624, 229, 'GÖRÜKLE'),
(625, 229, 'HASANAĞA'),
(626, 229, 'İHSANİYE'),
(627, 229, 'İZMİRYOLBOYU'),
(628, 229, 'KONAK'),
(629, 229, 'NİLÜFERKÖY'),
(630, 229, 'NİLÜFERORGANİZESANAYİ'),
(631, 229, 'ORGANİZESANAYİ'),
(632, 229, 'ÜÇEVLER'),
(633, 230, 'ORHANELİ'),
(634, 231, 'ORHANGAZİ'),
(635, 232, 'ALEMDAR'),
(636, 232, 'ALTIPARMAK'),
(637, 232, 'BAĞLARBAŞI'),
(638, 232, 'BAHAR'),
(639, 232, 'BALIKLI'),
(640, 232, 'ÇARŞI'),
(641, 232, 'ÇEKİRGE'),
(642, 232, 'DEMİRTAŞ'),
(643, 232, 'DOSAB'),
(644, 232, 'EMEK'),
(645, 232, 'HAMİTLER'),
(646, 232, 'HİSAR'),
(647, 232, 'HÜDAVENDİGAR'),
(648, 232, 'HÜRRİYET'),
(649, 232, 'KÜPLÜPINAR'),
(650, 232, 'MAKSEM'),
(651, 232, 'OSMANGAZİKÖY'),
(652, 232, 'OVAAKÇA'),
(653, 232, 'PANAYIR'),
(654, 232, 'ULUMAHALLE'),
(655, 232, 'YUNUSELİ'),
(656, 233, 'YENİŞEHİR'),
(657, 234, 'ARABAYATAĞI'),
(658, 234, 'BEYAZIT'),
(659, 234, 'DAVUTKADI'),
(660, 234, 'DUAÇINAR'),
(661, 234, 'ESENEVLER'),
(662, 234, 'ORTABAĞLAR'),
(663, 234, 'SETBAŞI'),
(664, 234, 'YILDIRIM'),
(665, 235, 'AYVACIK'),
(666, 235, 'KÜÇÜKKUYU'),
(667, 235, 'MERKEZKÖYLER'),
(668, 236, 'BAYRAMİÇ'),
(669, 236, 'EVCİLER'),
(670, 236, 'MERKEZKÖYLER'),
(671, 236, 'YİĞİTLER'),
(672, 237, 'BİGA'),
(673, 237, 'GÜMÜŞÇAY'),
(674, 237, 'KARABİGA'),
(675, 237, 'MERKEZKÖYLER'),
(676, 238, 'BOZCAADA'),
(677, 239, 'ÇAN'),
(678, 239, 'MERKEZKÖYLER'),
(679, 240, 'ECEABAT'),
(680, 240, 'MERKEZKÖYLER'),
(681, 241, 'EZİNE'),
(682, 241, 'GEYİKLİ'),
(683, 241, 'MERKEZKÖYLER'),
(684, 242, 'EVREŞE'),
(685, 242, 'GELİBOLU'),
(686, 242, 'MERKEZKÖYLER'),
(687, 243, 'İMROZ'),
(688, 243, 'MERKEZKÖYLER'),
(689, 244, 'LAPSEKİ'),
(690, 244, 'MERKEZKÖYLER'),
(691, 244, 'UMURBEY'),
(692, 245, 'BARBAROS'),
(693, 245, 'CEVATPAŞA'),
(694, 245, 'KEPEZ'),
(695, 245, 'MERKEZKÖYLER'),
(696, 246, 'KALKIM'),
(697, 246, 'MERKEZKÖYLER'),
(698, 246, 'YENİCE'),
(699, 247, 'ATKARACALAR'),
(700, 247, 'MERKEZKÖYLER'),
(701, 248, 'BAYRAMÖREN'),
(702, 248, 'MERKEZKÖYLER'),
(703, 249, 'ÇERKEŞ'),
(704, 249, 'MERKEZKÖYLER'),
(705, 250, 'ELDİVAN'),
(706, 250, 'MERKEZKÖYLER'),
(707, 251, 'ILGAZ'),
(708, 251, 'MERKEZKÖYLER'),
(709, 252, 'KIZILIRMAK'),
(710, 252, 'MERKEZKÖYLER'),
(711, 253, 'KORGUN'),
(712, 253, 'MERKEZKÖYLER'),
(713, 254, 'KURŞUNLU'),
(714, 254, 'MERKEZKÖYLER'),
(715, 255, 'ÇARŞI'),
(716, 255, 'MERKEZKÖYLER'),
(717, 255, 'TAŞMESCİT'),
(718, 256, 'MERKEZKÖYLER'),
(719, 256, 'ORTA'),
(720, 257, 'MERKEZKÖYLER'),
(721, 257, 'ŞABANÖZÜ'),
(722, 258, 'MERKEZKÖYLER'),
(723, 258, 'YAPRAKLI'),
(724, 259, 'ALACA'),
(725, 259, 'MERKEZKÖYLER'),
(726, 260, 'BAYAT'),
(727, 260, 'MERKEZKÖYLER'),
(728, 261, 'BOĞAZKALE'),
(729, 261, 'MERKEZKÖYLER'),
(730, 262, 'DODURGA'),
(731, 262, 'MERKEZKÖYLER'),
(732, 263, 'İSKİLİP'),
(733, 263, 'MERKEZKÖYLER'),
(734, 264, 'KARGI'),
(735, 264, 'MERKEZKÖYLER'),
(736, 265, 'LAÇİN'),
(737, 265, 'MERKEZKÖYLER'),
(738, 266, 'MECİTÖZÜ'),
(739, 266, 'MERKEZKÖYLER'),
(740, 267, 'GÜLABİBEY'),
(741, 267, 'KARAKEÇİLİ'),
(742, 267, 'MERKEZKÖYLER'),
(743, 267, 'ULUKAVAK'),
(744, 267, 'YENİYOL'),
(745, 268, 'KARAÖREN'),
(746, 268, 'MERKEZKÖYLER'),
(747, 269, 'MERKEZKÖYLER'),
(748, 269, 'ORTAKÖY'),
(749, 270, 'MERKEZKÖYLER'),
(750, 270, 'OSMANCIK'),
(751, 271, 'MERKEZKÖYLER'),
(752, 271, 'SUNGURLU'),
(753, 272, 'MERKEZKÖYLER'),
(754, 272, 'UĞURLUDAĞ'),
(755, 273, 'ACIPAYAM'),
(756, 274, 'BABADAĞ'),
(757, 275, 'BAKLAN'),
(758, 276, 'BEKİLLİ'),
(759, 277, 'BEYAĞAÇ'),
(760, 278, 'BOZKURT'),
(761, 279, 'BULDAN'),
(762, 280, 'ÇAL'),
(763, 281, 'ÇAMELİ'),
(764, 282, 'ÇARDAK'),
(765, 283, 'ÇİVRİL'),
(766, 284, 'GÜNEY'),
(767, 285, 'HONAZ'),
(768, 286, 'KALE'),
(769, 287, 'ADALET'),
(770, 287, 'GÜMÜŞLER'),
(771, 287, 'SARAYLAR'),
(772, 287, 'SÜMER'),
(773, 287, 'ÜÇLER'),
(774, 287, 'ÜZERLİK'),
(775, 288, 'AKKÖY'),
(776, 288, 'ÇEŞMEBAŞI'),
(777, 288, 'İSTİKLAL'),
(778, 288, 'KARŞIYAKA'),
(779, 288, 'KINIKLI'),
(780, 289, 'SARAYKÖY'),
(781, 290, 'SERİNHİSAR'),
(782, 291, 'TAVAS'),
(783, 292, 'ALİPINAR'),
(784, 292, 'KÖRHAT'),
(785, 292, 'SELAHATTİNEYYUBİ'),
(786, 293, 'BİSMİL'),
(787, 294, 'ÇERMİK'),
(788, 295, 'ÇINAR'),
(789, 296, 'ÇÜNGÜŞ'),
(790, 297, 'DİCLE'),
(791, 298, 'EĞİL'),
(792, 299, 'ERGANİ'),
(793, 300, 'HANİ'),
(794, 301, 'HAZRO'),
(795, 302, 'KAYAPINAR'),
(796, 303, 'KOCAKÖY'),
(797, 304, 'KULP'),
(798, 305, 'LİCE'),
(799, 306, 'SİLVAN'),
(800, 307, 'BALIKÇILARBAŞI'),
(801, 307, 'SURİÇİ'),
(802, 308, 'CUMHURİYET'),
(803, 308, 'ŞEHİTLİK'),
(804, 308, 'YENİŞEHİR'),
(805, 309, 'AKÇAKOCA'),
(806, 309, 'MERKEZKÖYLER'),
(807, 310, 'CUMAYERİ'),
(808, 310, 'MERKEZKÖYLER'),
(809, 311, 'ÇİLİMLİ'),
(810, 311, 'MERKEZKÖYLER'),
(811, 312, 'GÖLYAKA'),
(812, 312, 'MERKEZ KÖYLER'),
(813, 313, 'GÜMÜŞOVA'),
(814, 313, 'MERKEZKÖYLER'),
(815, 314, 'KAYNAŞLI'),
(816, 314, 'MERKEZKÖYLER'),
(817, 315, 'AZİZİYEGÜNLÜ'),
(818, 315, 'BEYCİLER'),
(819, 315, 'BEYKÖY'),
(820, 315, 'BOĞAZİÇİ'),
(821, 315, 'KALICIKONUTLAR'),
(822, 315, 'KONURALP'),
(823, 316, 'MERKEZKÖYLER'),
(824, 316, 'YIĞILCA'),
(825, 317, 'ENEZ'),
(826, 317, 'MERKEZKÖYLER'),
(827, 318, 'HASKÖY'),
(828, 318, 'HAVSA'),
(829, 318, 'MERKEZKÖYLER'),
(830, 319, 'İPSALA'),
(831, 319, 'MERKEZKÖYLER'),
(832, 320, 'KEŞAN'),
(833, 320, 'MECİDİYE'),
(834, 320, 'MERKEZKÖYLER'),
(835, 320, 'YERLİSU'),
(836, 321, 'LALAPAŞA'),
(837, 321, 'MERKEZKÖYLER'),
(838, 322, 'KÜPLÜ'),
(839, 322, 'MERİÇ'),
(840, 322, 'MERKEZKÖYLER'),
(841, 323, 'EDİRNE'),
(842, 323, 'MERKEZKÖYLER'),
(843, 324, 'MERKEZKÖYLER'),
(844, 324, 'SÜLOĞLU'),
(845, 325, 'AŞÇIOĞLU'),
(846, 325, 'ÇÖPKÖY'),
(847, 325, 'HAMİDİYE'),
(848, 325, 'KIRCASALİH'),
(849, 325, 'MERKEZKÖYLER'),
(850, 325, 'UZUNKÖPRÜ'),
(851, 326, 'AĞIN'),
(852, 326, 'MERKEZKÖYLER'),
(853, 327, 'ALACAKAYA'),
(854, 327, 'MERKEZKÖYLER'),
(855, 328, 'ARICAK'),
(856, 328, 'MERKEZKÖYLER'),
(857, 329, 'BASKİL'),
(858, 329, 'MERKEZKÖYLER'),
(859, 330, 'KARAKOÇAN'),
(860, 330, 'MERKEZKÖYLER'),
(861, 331, 'KEBAN'),
(862, 331, 'MERKEZKÖYLER'),
(863, 332, 'KOVANCILAR'),
(864, 332, 'MERKEZKÖYLER'),
(865, 333, 'MADEN'),
(866, 333, 'MERKEZKÖYLER'),
(867, 334, 'ABDULLAHPAŞA'),
(868, 334, 'AKSARAY'),
(869, 334, 'DOĞUKENT'),
(870, 334, 'HANKENDİ'),
(871, 334, 'HARPUT'),
(872, 334, 'İZZETPAŞA'),
(873, 334, 'MERKEZKÖYLER'),
(874, 334, 'MOLLAKENDİ'),
(875, 334, 'MUSTAFAPAŞA'),
(876, 334, 'NAİLBEY'),
(877, 334, 'SÜRSÜRÜ'),
(878, 335, 'BEYHANI'),
(879, 335, 'MERKEZKÖYLER'),
(880, 335, 'PALU'),
(881, 336, 'MERKEZKÖYLER'),
(882, 336, 'SİVRİCE'),
(883, 337, 'ÇAYIRLI'),
(884, 337, 'MERKEZKÖYLER'),
(885, 338, 'İLİÇ'),
(886, 338, 'MERKEZKÖYLER'),
(887, 339, 'KEMAH'),
(888, 339, 'MERKEZKÖYLER'),
(889, 340, 'BAŞPINAR'),
(890, 340, 'DUTLUCA'),
(891, 340, 'KEMALİYE'),
(892, 340, 'MERKEZKÖYLER'),
(893, 341, 'AKŞEMSETTİN'),
(894, 341, 'BAHÇELİEVLER'),
(895, 341, 'MERKEZKÖYLER'),
(896, 342, 'MERKEZKÖYLER'),
(897, 342, 'OTLUKBELİ'),
(898, 343, 'MERKEZKÖYLER'),
(899, 343, 'REFAHİYE'),
(900, 344, 'MERKEZKÖYLER'),
(901, 344, 'TERCAN'),
(902, 345, 'ALTINBAŞAK'),
(903, 345, 'MERKEZKÖYLER'),
(904, 345, 'ÜZÜMLÜ'),
(905, 346, 'AŞKALE'),
(906, 347, 'ILICA'),
(907, 348, 'ÇAT'),
(908, 349, 'HINIS'),
(909, 350, 'HORASAN'),
(910, 351, 'İSPİR'),
(911, 352, 'KARAÇOBAN'),
(912, 353, 'KARAYAZI'),
(913, 354, 'KÖPRÜKÖY'),
(914, 355, 'NARMAN'),
(915, 356, 'OLTU'),
(916, 357, 'OLUR'),
(917, 358, 'PALANDÖKEN'),
(918, 358, 'YILDIZKENT'),
(919, 359, 'PASİNLER'),
(920, 360, 'PAZARYOLU'),
(921, 361, 'ŞENKAYA'),
(922, 362, 'TEKMAN'),
(923, 363, 'TORTUM'),
(924, 364, 'UZUNDERE'),
(925, 365, 'MUMCU'),
(926, 365, 'TERMİNAL'),
(927, 365, 'YAKUTİYE'),
(928, 366, 'ALPU'),
(929, 367, 'BEYLİKOVA'),
(930, 368, 'ÇİFTELER'),
(931, 369, 'GÜNYÜZÜ'),
(932, 370, 'HAN'),
(933, 371, 'İNÖNÜ'),
(934, 372, 'MAHMUDİYE'),
(935, 373, 'MİHALGAZİ'),
(936, 374, 'DİNEK'),
(937, 375, 'ALANÖNÜ'),
(938, 375, 'ARİFİYE'),
(939, 375, 'BÜYÜKDERE'),
(940, 375, 'EMEK'),
(941, 375, 'GÖKMEYDAN'),
(942, 375, 'HUZUR'),
(943, 375, 'KANLIPINAR'),
(944, 375, 'KURTULUŞ'),
(945, 375, 'ODUNPAZARIKÖY'),
(946, 375, 'ORHANGAZİ'),
(947, 375, 'SULTANDERE'),
(948, 375, 'SÜMER'),
(949, 375, 'VADİŞEHİR'),
(950, 375, 'VİŞNELİK'),
(951, 375, 'YENİKENT'),
(952, 376, 'SARICAKAYA'),
(953, 377, 'SEYİTGAZİ'),
(954, 378, 'SİVRİHİSAR'),
(955, 379, 'BAHÇELİEVLER'),
(956, 379, 'CUMHURİYE'),
(957, 379, 'ÇAMLICA'),
(958, 379, 'ÇUKURHİSAR'),
(959, 379, 'FATİH'),
(960, 379, 'FEVZİÇAKMAK'),
(961, 379, 'HACIALİBEY'),
(962, 379, 'MUTTALİP'),
(963, 379, 'SAZOVA'),
(964, 379, 'TEPEBAŞIKÖY'),
(965, 379, 'ULUÖNDER'),
(966, 379, 'YEŞİLTEPE'),
(967, 380, 'ARABAN'),
(968, 381, 'İSLAHİYE'),
(969, 382, 'KARKAMIŞ'),
(970, 383, 'NİZİP'),
(971, 384, 'NURDAĞI'),
(972, 385, 'OĞUZELİ'),
(973, 385, 'YEŞİLDERE'),
(974, 386, 'ALAYBEY'),
(975, 386, 'DÜZTEPE'),
(976, 386, 'HOŞGÖR'),
(977, 386, 'KARATAŞ'),
(978, 386, 'KONAK'),
(979, 386, 'PERİLİKAYA'),
(980, 386, 'ŞAHİNBEY'),
(981, 386, 'TABAKHANE'),
(982, 387, 'ÇIKSORUT'),
(983, 387, 'EMEK'),
(984, 387, 'GAZİKENT'),
(985, 387, 'İBRAHİMLİ'),
(986, 387, 'İNCİLİPINAR'),
(987, 387, 'KARŞIYAKA'),
(988, 387, 'KÜSGET'),
(989, 387, 'MERVE'),
(990, 387, 'ORGANİZE'),
(991, 387, 'ŞEHİTKAMİL'),
(992, 388, 'YAVUZELİ'),
(993, 389, 'ALUCRA'),
(994, 389, 'MERKEZKÖYLER'),
(995, 390, 'BULANCAK'),
(996, 390, 'KOVANLIK'),
(997, 390, 'MERKEZKÖYLER'),
(998, 391, 'ÇAMOLUK'),
(999, 391, 'MERKEZKÖYLER'),
(1000, 392, 'ÇANAKÇI'),
(1001, 393, 'DERELİ'),
(1002, 393, 'MERKEZKÖYLER'),
(1003, 394, 'DOĞANKENT'),
(1004, 394, 'MERKEZKÖYLER'),
(1005, 395, 'ESPİYE'),
(1006, 395, 'MERKEZKÖYLER'),
(1007, 396, 'EYNESİL'),
(1008, 396, 'MERKEZKÖYLER'),
(1009, 397, 'GÖRELE'),
(1010, 397, 'MERKEZKÖYLER'),
(1011, 398, 'GÜCE'),
(1012, 398, 'MERKEZKÖYLER'),
(1013, 399, 'KEŞAP'),
(1014, 399, 'MERKEZKÖYLER'),
(1015, 400, 'AKSU'),
(1016, 400, 'BATLAMA'),
(1017, 400, 'MERKEZKÖYLER'),
(1018, 401, 'MERKEZKÖYLER'),
(1019, 401, 'PİRAZİZ'),
(1020, 402, 'MERKEZKÖYLER'),
(1021, 402, 'ŞEBİNKARAHİSAR'),
(1022, 403, 'MERKEZKÖYLER'),
(1023, 403, 'TİREBOLU'),
(1024, 404, 'MERKEZKÖYLER'),
(1025, 404, 'YAĞLIDERE'),
(1026, 405, 'KELKİT'),
(1027, 405, 'MERKEZKÖYLER'),
(1028, 406, 'KÖSE'),
(1029, 406, 'MERKEZKÖYLER'),
(1030, 407, 'KÜRTÜN'),
(1031, 407, 'MERKEZKÖYLER'),
(1032, 408, 'GÜMÜŞHANE'),
(1033, 408, 'MERKEZKÖYLER'),
(1034, 409, 'MERKEZKÖYLER'),
(1035, 409, 'ŞİRAN'),
(1036, 410, 'MERKEZKÖYLER'),
(1037, 410, 'TORUL'),
(1038, 411, 'ÇIĞLI'),
(1039, 411, 'ÇUKURCA'),
(1040, 411, 'MERKEZKÖYLER'),
(1041, 412, 'HAKKARİ'),
(1042, 412, 'MERKEZKÖYLER'),
(1043, 413, 'MERKEZKÖYLER'),
(1044, 413, 'ŞEMDİNLİ'),
(1045, 414, 'ESENDERE'),
(1046, 414, 'MERKEZKÖYLER'),
(1047, 414, 'YÜKSEKOVA'),
(1048, 415, 'ALTINÖZÜ'),
(1049, 416, 'ESENTEPE'),
(1050, 416, 'HARAPARASI'),
(1051, 416, 'KANATLI'),
(1052, 416, 'KIŞLASARAY'),
(1053, 417, 'ARSUZ'),
(1054, 418, 'BELEN'),
(1055, 419, 'DEFNE'),
(1056, 420, 'DÖRTYOL'),
(1057, 421, 'ERZİN'),
(1058, 422, 'HASSA'),
(1059, 423, 'AZGANLIK'),
(1060, 423, 'CUMHURİYET'),
(1061, 423, 'MEYDAN'),
(1062, 423, 'SANAYİ'),
(1063, 423, 'TEPELER'),
(1064, 424, 'KIRIKHAN'),
(1065, 425, 'KUMLU'),
(1066, 426, 'PAYAS'),
(1067, 427, 'REYHANLI'),
(1068, 428, 'SAMANDAĞ'),
(1069, 429, 'YAYLADAĞI'),
(1070, 430, 'ARALIK'),
(1071, 430, 'MERKEZKÖYLER'),
(1072, 431, 'KARAKOYUNLU'),
(1073, 431, 'MERKEZKÖYLER'),
(1074, 432, 'IĞDIR'),
(1075, 432, 'MERKEZKÖYLER'),
(1076, 433, 'MERKEZKÖYLER'),
(1077, 433, 'TUZLUCA'),
(1078, 434, 'AKSU'),
(1079, 434, 'MERKEZKÖYLER'),
(1080, 435, 'ATABEY'),
(1081, 435, 'MERKEZKÖYLER'),
(1082, 436, 'EĞİRDİR'),
(1083, 436, 'MERKEZKÖYLER'),
(1084, 437, 'GELENDOST'),
(1085, 437, 'MERKEZKÖYLER'),
(1086, 438, 'GÖNEN'),
(1087, 438, 'MERKEZKÖYLER'),
(1088, 439, 'KEÇİBORLU'),
(1089, 439, 'MERKEZKÖYLER'),
(1090, 440, 'ÇELEBILER'),
(1091, 440, 'KEPECİ'),
(1092, 440, 'KUTLUBEY'),
(1093, 440, 'MERKEZKÖYLER'),
(1094, 440, 'SANAYİ'),
(1095, 441, 'MERKEZKÖYLER'),
(1096, 441, 'SENİRKENT'),
(1097, 442, 'MERKEZKÖYLER'),
(1098, 442, 'SÜTÇÜLER'),
(1099, 443, 'MERKEZKÖYLER'),
(1100, 443, 'ŞARKİKARAAĞAÇ'),
(1101, 444, 'MERKEZKÖYLER'),
(1102, 444, 'ULUBORLU'),
(1103, 445, 'MERKEZKÖYLER'),
(1104, 445, 'YALVAÇ'),
(1105, 446, 'MERKEZKÖYLER'),
(1106, 446, 'YENİŞARBADEMLİ'),
(1107, 447, 'BURGAZADA'),
(1108, 447, 'BÜYÜKADA'),
(1109, 447, 'HEYBELİADA'),
(1110, 447, 'KINALIADA'),
(1111, 448, 'ARNAVUTKÖY'),
(1112, 448, 'BAKLALI'),
(1113, 448, 'BOĞAZKÖY'),
(1114, 448, 'BOLLUCA'),
(1115, 448, 'HADIMKÖY'),
(1116, 448, 'HARAÇÇI'),
(1117, 448, 'TAŞOLUK'),
(1118, 449, 'ATATÜRK'),
(1119, 449, 'FERHATPAŞA'),
(1120, 449, 'İÇERENKÖY'),
(1121, 449, 'KAYIŞDAĞI'),
(1122, 449, 'KÜÇÜKBAKKALKÖY'),
(1123, 449, 'MUSTAFAKEMAL'),
(1124, 449, 'ÖRNEK'),
(1125, 449, 'YENİÇAMLICA'),
(1126, 449, 'YENİSAHRA'),
(1127, 450, 'AMBARLI'),
(1128, 450, 'AVCILAR'),
(1129, 450, 'FİRUZKÖY'),
(1130, 450, 'GÜMÜŞPALA'),
(1131, 451, 'BAĞCILAR'),
(1132, 451, 'GÜNEŞLİ'),
(1133, 451, 'MAHMUTBEY'),
(1134, 452, 'BAHÇELİEVLER'),
(1135, 452, 'ŞİRİNEVLER'),
(1136, 452, 'YENİBOSNA'),
(1137, 453, 'ATAKÖY'),
(1138, 453, 'CEVİZLİK'),
(1139, 453, 'FLORYA'),
(1140, 453, 'KARTALTEPE'),
(1141, 453, 'OSMANİYE'),
(1142, 453, 'YEŞİLKÖY'),
(1143, 453, 'ZEYTİNLİK'),
(1144, 453, 'ZUHURATBABA'),
(1145, 454, 'ALTINŞEHİR'),
(1146, 454, 'BAHÇEŞEHİR'),
(1147, 454, 'BAŞAKŞEHİR'),
(1148, 454, 'İKİTELLİ'),
(1149, 454, 'ŞAMLAR'),
(1150, 455, 'ALTINTEPSİ'),
(1151, 455, 'MURATPAŞA'),
(1152, 455, 'NUMUNEBAĞ'),
(1153, 455, 'YILDIRIM'),
(1154, 456, 'ABBASAĞA'),
(1155, 456, 'AKATLAR'),
(1156, 456, 'ARNAVUTKÖY'),
(1157, 456, 'BEBEK'),
(1158, 456, 'ETİLER'),
(1159, 456, 'GAYRETTEPE'),
(1160, 456, 'LEVAZIM'),
(1161, 456, 'LEVENT'),
(1162, 456, 'ORTAKÖY'),
(1163, 456, 'TÜRKALİ'),
(1164, 457, 'ANADOLUHİSARI'),
(1165, 457, 'BEYKOZ'),
(1166, 457, 'ÇAVUŞBAŞI'),
(1167, 457, 'ÇUBUKLU'),
(1168, 457, 'GÖKSU'),
(1169, 457, 'PAŞABAHÇE'),
(1170, 457, 'POLONEZKÖY'),
(1171, 457, 'TOKATKÖY'),
(1172, 458, 'BEYLİKDÜZÜ'),
(1173, 458, 'GÜRPINAR'),
(1174, 458, 'YAKUPLU'),
(1175, 459, 'ARAPCAMİ'),
(1176, 459, 'CİHANGİR'),
(1177, 459, 'HALICIOĞLU'),
(1178, 459, 'İSTİKLAL'),
(1179, 459, 'KASIMPAŞA'),
(1180, 459, 'KEMANKEŞ'),
(1181, 459, 'PÜRTELAŞ'),
(1182, 459, 'TAKSİM'),
(1183, 459, 'TARLABAŞI'),
(1184, 460, 'BÜYÜKÇEKMECE'),
(1185, 460, 'CELALİYE'),
(1186, 460, 'KUMBURGAZ'),
(1187, 460, 'MİMARSİNAN'),
(1188, 460, 'TEPECİK'),
(1189, 461, 'ÇATALCA'),
(1190, 462, 'ALEMDAĞ'),
(1191, 462, 'ÇEKMEKÖY'),
(1192, 462, 'ÖMERLİ'),
(1193, 462, 'TAŞDELEN'),
(1194, 463, 'ATIŞALANI'),
(1195, 463, 'ESENLER'),
(1196, 463, 'KARABAYIR'),
(1197, 463, 'SANAYİ'),
(1198, 464, 'ESENYURT'),
(1199, 464, 'İNCİRTEPE'),
(1200, 464, 'KIRAÇ'),
(1201, 464, 'MEHTERÇEŞME'),
(1202, 464, 'SAADETDERE'),
(1203, 464, 'SANAYİ'),
(1204, 465, 'ALİBEYKÖY'),
(1205, 465, 'ÇIRÇIR'),
(1206, 465, 'EYÜP'),
(1207, 465, 'GÖKTÜRK'),
(1208, 465, 'IŞIKLAR'),
(1209, 465, 'KEMERBURGAZ'),
(1210, 465, 'RAMİ'),
(1211, 465, 'YEŞİLPINAR'),
(1212, 466, 'AKSARAY'),
(1213, 466, 'BALAT'),
(1214, 466, 'BAYAZIT'),
(1215, 466, 'EMİNÖNÜ'),
(1216, 466, 'İSKENDERPAŞA'),
(1217, 466, 'KARAGÜMRÜK'),
(1218, 466, 'KOCAMUSTAFAPAŞA'),
(1219, 466, 'KUMKAPI'),
(1220, 466, 'MAHMUTPAŞA'),
(1221, 466, 'SİRKECİ'),
(1222, 466, 'SULTANAHMET'),
(1223, 466, 'ŞEHREMİNİ'),
(1224, 466, 'TAHTAKALE'),
(1225, 466, 'TOPKAPI'),
(1226, 466, 'VEFA'),
(1227, 466, 'YEDİKULE'),
(1228, 466, 'ZEYREK'),
(1229, 467, 'GAZİOSMANPAŞA'),
(1230, 467, 'KÜÇÜKKÖY'),
(1231, 467, 'MEVLANA'),
(1232, 467, 'YILDIZTABYA'),
(1233, 468, 'AKINCILAR'),
(1234, 468, 'GÜNGÖREN'),
(1235, 468, 'SANAYİ'),
(1236, 468, 'TOZKOPARAN'),
(1237, 469, 'BOSTANCI'),
(1238, 469, 'CADDEBOSTAN'),
(1239, 469, 'CAFERAĞA'),
(1240, 469, 'EĞİTİM'),
(1241, 469, 'ERENKÖY'),
(1242, 469, 'FENERBAHÇE'),
(1243, 469, 'FENERYOLU'),
(1244, 469, 'FİKİRTEPE'),
(1245, 469, 'GÖZTEPE'),
(1246, 469, 'KOŞUYOLU'),
(1247, 469, 'KOZYATAĞI'),
(1248, 469, 'MERDİVENKÖY'),
(1249, 469, 'ONDOKUZMAYIS'),
(1250, 469, 'OSMANAĞA'),
(1251, 469, 'RASİMPAŞA'),
(1252, 469, 'SAHRAYICEDİT'),
(1253, 469, 'SUADİYE'),
(1254, 470, 'ÇAĞLAYAN'),
(1255, 470, 'ÇELİKTEPE'),
(1256, 470, 'GÜLTEPE'),
(1257, 470, 'GÜRSEL'),
(1258, 470, 'HAMİDİYE'),
(1259, 470, 'KAĞITHANE MERKEZ'),
(1260, 470, 'SEYRANTEPE'),
(1261, 470, 'ŞİRİNTEPE'),
(1262, 471, 'ATALAR'),
(1263, 471, 'ESENTEPE'),
(1264, 471, 'KARTAL'),
(1265, 471, 'ORHANTEPE'),
(1266, 471, 'SOĞANLIK'),
(1267, 471, 'TOPSELVİ'),
(1268, 471, 'UĞUR MUMCU'),
(1269, 471, 'YAKACIK'),
(1270, 472, 'ATAKENT'),
(1271, 472, 'HALKALI'),
(1272, 472, 'KÜÇÜKÇEKMECE'),
(1273, 472, 'SEFAKÖY'),
(1274, 473, 'AYDINEVLER'),
(1275, 473, 'BÜYÜKBAKKALKÖY'),
(1276, 473, 'CEVİZLİ'),
(1277, 473, 'FEYZULLAH'),
(1278, 473, 'GÜLSUYU'),
(1279, 473, 'İDEALTEPE'),
(1280, 473, 'KÜÇÜKYALI'),
(1281, 473, 'YALI'),
(1282, 473, 'ZÜMRÜTEVLER'),
(1283, 474, 'BAHÇELİEVLER'),
(1284, 474, 'ÇAMÇEŞME'),
(1285, 474, 'ÇARŞI'),
(1286, 474, 'ÇINARDERE'),
(1287, 474, 'ESENYALI'),
(1288, 474, 'KURNA'),
(1289, 474, 'ŞEYHLİ'),
(1290, 474, 'YAYALAR'),
(1291, 474, 'YENİŞEHİR'),
(1292, 475, 'EYÜPSULTAN'),
(1293, 475, 'OSMANGAZİ'),
(1294, 475, 'SARIGAZİ'),
(1295, 475, 'YENİDOĞAN'),
(1296, 476, 'BAHÇEKÖY'),
(1297, 476, 'BÜYÜKDERE'),
(1298, 476, 'EMİRGAN'),
(1299, 476, 'İSTİNYE'),
(1300, 476, 'MASLAK'),
(1301, 476, 'RUMELİHİSARI'),
(1302, 476, 'SARIYER'),
(1303, 476, 'TARABYA'),
(1304, 476, 'YENİKÖY'),
(1305, 477, 'BÜYÜKÇAVUŞLU'),
(1306, 477, 'ÇANTA'),
(1307, 477, 'DEĞİRMENKÖY'),
(1308, 477, 'GÜMÜŞYAKA'),
(1309, 477, 'KAVAKLI'),
(1310, 477, 'KÖYLER'),
(1311, 477, 'ORTAKÖY'),
(1312, 477, 'SELİMPAŞA'),
(1313, 477, 'SİLİVRİ'),
(1314, 478, 'MEHMETAKİF'),
(1315, 478, 'MİMARSİNAN'),
(1316, 478, 'NECİPFAZIL'),
(1317, 478, 'TURGUTREİS'),
(1318, 479, 'SULTANÇİFTLİĞİ'),
(1319, 479, 'SULTANGAZİ'),
(1320, 479, 'ZÜBEYDEHANIM'),
(1321, 480, 'AĞVA'),
(1322, 480, 'AHMETLİ'),
(1323, 480, 'ŞİLE'),
(1324, 481, 'BOZKURT'),
(1325, 481, 'CUMHURİYET'),
(1326, 481, 'DUATEPE'),
(1327, 481, 'ESENTEPE'),
(1328, 481, 'FERİKÖY'),
(1329, 481, 'HALASKARGAZİ'),
(1330, 481, 'HARBİYE'),
(1331, 481, 'MECİDİYEKÖY'),
(1332, 481, 'MEŞRUTİYET'),
(1333, 481, 'OKMEYDANI'),
(1334, 481, 'PANGALTI'),
(1335, 481, 'TEŞVİKİYE'),
(1336, 482, 'AKFIRAT'),
(1337, 482, 'AYDINLI'),
(1338, 482, 'ÇARŞI'),
(1339, 482, 'İÇMELER'),
(1340, 482, 'MİMARSİNAN'),
(1341, 482, 'ORHANLI'),
(1342, 482, 'TERSANELER'),
(1343, 483, 'AŞAĞIDUDULLU'),
(1344, 483, 'ATAKENT'),
(1345, 483, 'ATATÜRK'),
(1346, 483, 'ÇAKMAK'),
(1347, 483, 'ESENŞEHİR'),
(1348, 483, 'IHLAMURKUYU'),
(1349, 483, 'İNKILAP'),
(1350, 483, 'KAZIMKARABEKİR'),
(1351, 483, 'NAMIKKEMAL'),
(1352, 483, 'YUKARIDUDULLU'),
(1353, 484, 'ACIBADEM'),
(1354, 484, 'ALTUNİZADE'),
(1355, 484, 'BAHÇELİEVLER'),
(1356, 484, 'BEYLERBEYİ'),
(1357, 484, 'BULGURLU'),
(1358, 484, 'CUMHURİYET'),
(1359, 484, 'ÇENGELKÖY'),
(1360, 484, 'FERAH'),
(1361, 484, 'KANDİLLİ'),
(1362, 484, 'KİRAZLITEPE'),
(1363, 484, 'KUZGUNCUK'),
(1364, 484, 'MİMARSİNAN'),
(1365, 484, 'MURATREİS'),
(1366, 484, 'SELİMİYE'),
(1367, 484, 'ÜNALAN'),
(1368, 484, 'YAVUZTÜRK'),
(1369, 485, 'ÇIRPICI'),
(1370, 485, 'SEYİTNİZAM'),
(1371, 485, 'TELSİZ'),
(1372, 485, 'TOPKAPI'),
(1373, 486, 'ALİAĞA'),
(1374, 486, 'HELVACI'),
(1375, 487, 'BALÇOVA'),
(1376, 488, 'BAYINDIR'),
(1377, 488, 'CANLI'),
(1378, 488, 'ÇIRPI'),
(1379, 489, 'ALPASLAN'),
(1380, 489, 'BAYRAKLI'),
(1381, 489, 'GÜMÜŞPALA'),
(1382, 489, 'MANAVKUYU'),
(1383, 489, 'SOĞUKKUYU'),
(1384, 490, 'BERGAMA'),
(1385, 491, 'BEYDAĞ'),
(1386, 492, 'ALTINDAĞ'),
(1387, 492, 'ATATÜRK'),
(1388, 492, 'BORNOVA'),
(1389, 492, 'ÇAMDİBİ'),
(1390, 492, 'IŞIKKENT'),
(1391, 492, 'KAZIMDİRİK'),
(1392, 492, 'NALDÖKEN'),
(1393, 492, 'PINARBAŞI'),
(1394, 493, 'BUCA'),
(1395, 493, 'EVKA1'),
(1396, 493, 'İŞÇİEVLERİ'),
(1397, 493, 'KAYNAKLAR'),
(1398, 493, 'ŞİRİNYER'),
(1399, 494, 'ALAÇATI'),
(1400, 494, 'ÇEŞME'),
(1401, 495, 'BÜYÜKÇİĞLİ'),
(1402, 495, 'ÇİĞLİ'),
(1403, 495, 'EGEKENT'),
(1404, 495, 'HARMANDALI'),
(1405, 496, 'DİKİLİ'),
(1406, 497, 'BAĞARASI'),
(1407, 497, 'FOÇA'),
(1408, 497, 'YENİFOÇA'),
(1409, 498, 'GAZİEMİR'),
(1410, 499, 'GÜZELBAHÇE'),
(1411, 500, 'FAHRETTİNALTAY'),
(1412, 500, 'HATAY'),
(1413, 500, 'KARABAĞLAR'),
(1414, 500, 'KİBAR'),
(1415, 500, 'YEŞİLYURT'),
(1416, 500, 'ZİNCİRLİKUYU'),
(1417, 501, 'KARABURUN'),
(1418, 501, 'MORDOĞAN'),
(1419, 502, 'ALAYBEY'),
(1420, 502, 'CUMHURİYET'),
(1421, 502, 'DENİZBOSTANLISI'),
(1422, 502, 'İMBATLI'),
(1423, 502, 'KARŞIYAKA'),
(1424, 502, 'NERGİZ'),
(1425, 502, 'YALI'),
(1426, 503, 'ARMUTLU'),
(1427, 503, 'BAĞYURDU'),
(1428, 503, 'KEMALPAŞA'),
(1429, 503, 'ÖREN'),
(1430, 503, 'ULUCAK'),
(1431, 504, 'KINIK'),
(1432, 505, 'KİRAZ'),
(1433, 506, 'ALSANCAK'),
(1434, 506, 'BASMANE'),
(1435, 506, 'EŞREFPAŞA'),
(1436, 506, 'GÜLTEPE'),
(1437, 506, 'GÜRÇEŞME'),
(1438, 506, 'GÜZELYALI'),
(1439, 506, 'KAHRAMANLAR'),
(1440, 506, 'KEMERALTI'),
(1441, 506, 'KONAK'),
(1442, 506, 'KÜÇÜKYALI'),
(1443, 506, 'PASAPORT'),
(1444, 506, 'YENİŞEHİR'),
(1445, 507, 'ATAKÖY'),
(1446, 507, 'DEĞİRMENDERE'),
(1447, 507, 'DEVELİ'),
(1448, 507, 'GÖRECE'),
(1449, 507, 'GÜMÜLDÜR'),
(1450, 507, 'KISIK'),
(1451, 507, 'MENDERES'),
(1452, 507, 'ÖZDERE'),
(1453, 507, 'TEKELİ'),
(1454, 508, 'MENEMEN'),
(1455, 509, 'NARLIDERE'),
(1456, 510, 'ÖDEMİŞ'),
(1457, 511, 'DOĞANBEY'),
(1458, 511, 'SEFERİHİSAR'),
(1459, 511, 'ÜRKMEZ'),
(1460, 512, 'SELÇUK'),
(1461, 513, 'TİRE'),
(1462, 514, 'AYRANCILAR'),
(1463, 514, 'ÇAYBAŞI'),
(1464, 514, 'PANCAR'),
(1465, 514, 'SUBAŞI'),
(1466, 514, 'TORBALI'),
(1467, 514, 'YAZIBAŞI'),
(1468, 514, 'YENİKÖYOSB'),
(1469, 515, 'BADEMLER'),
(1470, 515, 'BALIKLIOVA'),
(1471, 515, 'ÇEŞMEALTI'),
(1472, 515, 'İSKELE'),
(1473, 515, 'İYTE'),
(1474, 515, 'KUŞÇULAR'),
(1475, 515, 'ÖZBEK'),
(1476, 515, 'URLA'),
(1477, 515, 'ZEYTİNALANI'),
(1478, 516, 'AFŞİN'),
(1479, 517, 'ANDIRIN'),
(1480, 517, 'ÇOKAK'),
(1481, 518, 'ÇAĞLAYANCERİT'),
(1482, 519, 'ADLİYE'),
(1483, 519, 'AĞABEYLİ'),
(1484, 519, 'SANAYİ'),
(1485, 519, 'SÜTÇÜİMAM'),
(1486, 520, 'EKİNÖZÜ'),
(1487, 521, 'ELBİSTAN'),
(1488, 522, 'GÖKSUN'),
(1489, 523, 'NURHAK'),
(1490, 524, 'BİNEVLER'),
(1491, 524, 'HACIBAYRAM'),
(1492, 524, 'SÜLEYMANLI'),
(1493, 525, 'PAZARCIK'),
(1494, 526, 'TÜRKOĞLU'),
(1495, 527, 'EFLANİ'),
(1496, 527, 'MERKEZKÖYLER'),
(1497, 528, 'ESKİPAZAR'),
(1498, 528, 'MERKEZKÖYLER'),
(1499, 529, '100.YIL'),
(1500, 529, 'BAYIR'),
(1501, 529, 'BEŞBİNEVLER'),
(1502, 529, 'KAYABAŞI'),
(1503, 529, 'MERKEZKÖYLER'),
(1504, 529, 'YENİŞEHİR'),
(1505, 530, 'MERKEZKÖYLER'),
(1506, 530, 'OVACIK'),
(1507, 531, 'MERKEZKÖYLER'),
(1508, 531, 'SAFRANBOLU'),
(1509, 532, 'MERKEZKÖYLER'),
(1510, 532, 'YENİCE'),
(1511, 533, 'AYRANCI'),
(1512, 533, 'MERKEZKÖYLER'),
(1513, 534, 'BAŞYAYLA'),
(1514, 534, 'MERKEZKÖYLER'),
(1515, 535, 'ERMENEK'),
(1516, 535, 'KAZANCI'),
(1517, 535, 'MERKEZKÖYLER'),
(1518, 536, 'KAZIMKARABEKİR'),
(1519, 536, 'MERKEZKÖYLER'),
(1520, 537, 'AKÇAŞEHİR'),
(1521, 537, 'HİSAR'),
(1522, 537, 'MERKEZKÖYLER'),
(1523, 537, 'SUDURAĞI'),
(1524, 537, 'SÜMER'),
(1525, 538, 'GÖKTEPE'),
(1526, 538, 'MERKEZKÖYLER'),
(1527, 538, 'SARIVELİLER'),
(1528, 539, 'AKYAKA'),
(1529, 539, 'MERKEZKÖYLER'),
(1530, 540, 'ARPAÇAY'),
(1531, 540, 'MERKEZKÖYLER'),
(1532, 541, 'DİGOR'),
(1533, 541, 'MERKEZKÖYLER'),
(1534, 542, 'KAĞIZMAN'),
(1535, 542, 'MERKEZKÖYLER'),
(1536, 543, 'KARS'),
(1537, 543, 'MERKEZKÖYLER'),
(1538, 544, 'MERKEZKÖYLER'),
(1539, 544, 'SARIKAMIŞ'),
(1540, 545, 'MERKEZKÖYLER'),
(1541, 545, 'SELİM'),
(1542, 546, 'MERKEZKÖYLER'),
(1543, 546, 'SUSUZ'),
(1544, 547, 'ABANA'),
(1545, 547, 'MERKEZKÖYLER'),
(1546, 548, 'AĞLI'),
(1547, 548, 'MERKEZKÖYLER'),
(1548, 549, 'ARAÇ'),
(1549, 549, 'MERKEZKÖYLER'),
(1550, 550, 'AZDAVAY'),
(1551, 550, 'MERKEZKÖYLER'),
(1552, 551, 'BOZKURT'),
(1553, 551, 'MERKEZKÖYLER'),
(1554, 552, 'CİDE'),
(1555, 552, 'MERKEZKÖYLER'),
(1556, 553, 'ÇATALZEYTİN'),
(1557, 553, 'MERKEZKÖYLER'),
(1558, 554, 'DADAY'),
(1559, 554, 'MERKEZKÖYLER'),
(1560, 555, 'DEVREKANİ'),
(1561, 555, 'MERKEZKÖYLER'),
(1562, 556, 'DOĞANYURT'),
(1563, 556, 'MERKEZKÖYLER'),
(1564, 557, 'GÖKÇEAĞAÇ'),
(1565, 557, 'MERKEZKÖYLER'),
(1566, 558, 'İHSANGAZİ'),
(1567, 558, 'MERKEZKÖYLER'),
(1568, 559, 'İNEBOLU'),
(1569, 559, 'MERKEZKÖYLER'),
(1570, 560, 'KÜRE'),
(1571, 560, 'MERKEZKÖYLER'),
(1572, 561, 'AKMESCİT'),
(1573, 561, 'CEBRAİL'),
(1574, 561, 'KUZEYKENT'),
(1575, 561, 'MERKEZKÖYLER'),
(1576, 562, 'MERKEZKÖYLER'),
(1577, 562, 'PINARBAŞI'),
(1578, 563, 'MERKEZKÖYLER'),
(1579, 563, 'SEYDİLER'),
(1580, 564, 'MERKEZKÖYLER'),
(1581, 564, 'ŞENPAZAR'),
(1582, 565, 'MERKEZKÖYLER'),
(1583, 565, 'TAŞKÖPRÜ'),
(1584, 566, 'MERKEZKÖYLER'),
(1585, 566, 'TOSYA'),
(1586, 567, 'AKKIŞLA'),
(1587, 568, 'BÜNYAN'),
(1588, 569, 'DEVELİ'),
(1589, 570, 'FELAHİYE'),
(1590, 571, 'HACILAR'),
(1591, 571, 'HACILAR KÖYLER'),
(1592, 572, 'İNCESU'),
(1593, 573, 'ANKARAYOLU KÖYLER'),
(1594, 573, 'ARGINCIK'),
(1595, 573, 'BEYAZŞEHİR'),
(1596, 573, 'ERKİLET'),
(1597, 573, 'ERKİLET KÖYLER'),
(1598, 573, 'FEVZİ ÇAKMAK'),
(1599, 573, 'GÜNEŞLİ'),
(1600, 573, 'KAZIM KARABEKİR'),
(1601, 573, 'SANAYİ'),
(1602, 573, 'VALİLİK'),
(1603, 573, 'YENİ MAHALLE'),
(1604, 573, 'YENİŞEHİR'),
(1605, 574, 'BATTALGAZİ'),
(1606, 574, 'BELSİN'),
(1607, 574, 'ÇARŞI'),
(1608, 574, 'GESİ'),
(1609, 574, 'GÜRPINAR'),
(1610, 574, 'HİSARCIK-KIRANARDI'),
(1611, 574, 'HÜRRİYET'),
(1612, 574, 'İLDEM'),
(1613, 574, 'KAZIM KARABEKİR'),
(1614, 574, 'KILIÇASLAN'),
(1615, 574, 'MİMARSİNAN'),
(1616, 575, 'ÇUKUR'),
(1617, 576, 'PINARBAŞI'),
(1618, 577, 'SARIOĞLAN'),
(1619, 578, 'SARIZ'),
(1620, 579, 'TALAS'),
(1621, 579, 'TALAS KÖYLER'),
(1622, 580, 'TOMARZA'),
(1623, 581, 'YAHYALI'),
(1624, 582, 'YEŞİLHİSAR'),
(1625, 583, 'BAHŞILI'),
(1626, 583, 'MERKEZKÖYLER'),
(1627, 584, 'BALIŞEYH'),
(1628, 584, 'MERKEZKÖYLER'),
(1629, 585, 'ÇELEBİ'),
(1630, 585, 'MERKEZKÖYLER'),
(1631, 586, 'DELİCE'),
(1632, 586, 'MERKEZKÖYLER'),
(1633, 587, 'KARAKEÇİLİ'),
(1634, 587, 'MERKEZKÖYLER'),
(1635, 588, 'KESKİN'),
(1636, 588, 'MERKEZKÖYLER'),
(1637, 589, 'FABRİKALAR'),
(1638, 589, 'MERKEZKÖYLER'),
(1639, 589, 'SANAYİ'),
(1640, 589, 'TEPEBAŞI'),
(1641, 589, 'YUVA'),
(1642, 590, 'MERKEZKÖYLER'),
(1643, 590, 'SULAKYURT'),
(1644, 591, 'MERKEZKÖYLER'),
(1645, 591, 'YAHŞİHAN'),
(1646, 592, 'ALPULLU'),
(1647, 592, 'BABAESKİ'),
(1648, 592, 'MERKEZKÖYLER'),
(1649, 593, 'DEMİRKÖY'),
(1650, 593, 'İĞNEADA'),
(1651, 593, 'MERKEZKÖYLER'),
(1652, 594, 'KOFÇAZ'),
(1653, 594, 'MERKEZKÖYLER'),
(1654, 595, 'AHMETBEY'),
(1655, 595, 'BÜYÜKKARIŞTIRAN'),
(1656, 595, 'EVRENSEKİZ'),
(1657, 595, 'LÜLEBURGAZ'),
(1658, 595, 'MERKEZKÖYLER'),
(1659, 596, 'DEREKÖY'),
(1660, 596, 'İNECE'),
(1661, 596, 'KIRKLARELİ'),
(1662, 596, 'MERKEZKÖYLER'),
(1663, 596, 'ÜSKÜP'),
(1664, 597, 'MERKEZKÖYLER'),
(1665, 597, 'PEHLİVANKÖY'),
(1666, 598, 'MERKEZKÖYLER'),
(1667, 598, 'PINARHİSAR'),
(1668, 599, 'MERKEZKÖYLER'),
(1669, 599, 'SERGEN'),
(1670, 599, 'VİZE'),
(1671, 600, 'AKÇAKENT'),
(1672, 600, 'KÖSEFAKILI'),
(1673, 600, 'MERKEZKÖYLER'),
(1674, 601, 'AKPINAR'),
(1675, 601, 'MERKEZKÖYLER'),
(1676, 602, 'BOZTEPE'),
(1677, 602, 'MERKEZKÖYLER'),
(1678, 603, 'ÇİÇEKDAĞI'),
(1679, 603, 'MERKEZKÖYLER'),
(1680, 604, 'KAMAN'),
(1681, 604, 'MERKEZKÖYLER'),
(1682, 605, 'ÇARŞI'),
(1683, 605, 'MERKEZKÖYLER'),
(1684, 606, 'MERKEZKÖYLER'),
(1685, 606, 'MUCUR'),
(1686, 607, 'ELBEYLİ'),
(1687, 607, 'MERKEZKÖYLER'),
(1688, 608, 'KİLİS'),
(1689, 608, 'MERKEZKÖYLER'),
(1690, 609, 'MERKEZKÖYLER'),
(1691, 609, 'MUSABEYLİ'),
(1692, 610, 'MERKEZKÖYLER'),
(1693, 610, 'POLATELİ'),
(1694, 611, 'BAHÇECİK'),
(1695, 611, 'BAŞİSKELE'),
(1696, 611, 'KULLAR'),
(1697, 611, 'SEYMEN'),
(1698, 611, 'YENİKÖY'),
(1699, 611, 'YUVACIK'),
(1700, 612, 'ÇAYIROVA'),
(1701, 613, 'DARICA'),
(1702, 614, 'DERİNCE'),
(1703, 615, 'DİLOVASI'),
(1704, 616, 'GEBZE'),
(1705, 617, 'DEĞİRMENDERE'),
(1706, 617, 'GÖLCÜK'),
(1707, 618, 'ALİKAHYA'),
(1708, 618, 'ÇARŞI'),
(1709, 618, 'GÜNDOĞDU'),
(1710, 618, 'İZMİT'),
(1711, 618, 'SAHİL'),
(1712, 618, 'SARAYBAHÇE'),
(1713, 618, 'YENİDOĞAN'),
(1714, 618, 'YENİŞEHİR'),
(1715, 619, 'KANDIRA'),
(1716, 620, 'KARAMÜRSEL'),
(1717, 621, 'ARSLANBEY'),
(1718, 621, 'BÜYÜKDERBENT'),
(1719, 621, 'KÖSEKÖY'),
(1720, 621, 'MAŞUKİYE'),
(1721, 621, 'SUADİYE'),
(1722, 621, 'UZUNÇİFTLİK'),
(1723, 621, 'UZUNTARLA'),
(1724, 622, 'HEREKE'),
(1725, 622, 'KÖRFEZ'),
(1726, 623, 'AHIRLI'),
(1727, 624, 'AKÖREN'),
(1728, 625, 'ADSIZ'),
(1729, 625, 'İSTASYON'),
(1730, 625, 'KURUÇAY'),
(1731, 626, 'ALTINEKİN'),
(1732, 627, 'BEYŞEHİR'),
(1733, 628, 'BOZKIR'),
(1734, 629, 'CİHANBEYLİ'),
(1735, 630, 'ÇELTİK'),
(1736, 631, 'ÇUMRA'),
(1737, 632, 'DERBENT'),
(1738, 633, 'DEREBUCAK'),
(1739, 634, 'DOĞANHİSAR'),
(1740, 635, 'EMİRGAZİ'),
(1741, 636, 'AYDINLAR'),
(1742, 636, 'EREĞLİ'),
(1743, 637, 'GÜNEYSINIR'),
(1744, 638, 'HADİM'),
(1745, 639, 'HALKAPINAR'),
(1746, 640, 'HÜYÜK'),
(1747, 641, 'ILGIN'),
(1748, 642, 'KADINHANI'),
(1749, 643, 'KARAPINAR'),
(1750, 644, 'ERENLER'),
(1751, 644, 'KARATAY'),
(1752, 644, 'MEVLANA'),
(1753, 644, 'SELİMİYE'),
(1754, 645, 'KULU'),
(1755, 646, 'ALAADDİN'),
(1756, 646, 'LALEBAHÇE'),
(1757, 646, 'MERAM'),
(1758, 646, 'TAŞCAMİ'),
(1759, 647, 'SARAYÖNÜ'),
(1760, 648, 'AYDINLIK'),
(1761, 648, 'BOSNA'),
(1762, 648, 'CUMHURİYET'),
(1763, 648, 'FATİH'),
(1764, 648, 'HOROZLUHAN'),
(1765, 648, 'MİMAR SİNAN'),
(1766, 648, 'NALÇACI'),
(1767, 648, 'SELÇUKLU'),
(1768, 648, 'YAZIR'),
(1769, 649, 'SEYDISEHIR'),
(1770, 650, 'TAŞKENT'),
(1771, 651, 'TUZLUKÇU'),
(1772, 652, 'YALIHÜYÜK'),
(1773, 653, 'YUNAK'),
(1774, 654, 'ALTINTAŞ'),
(1775, 654, 'MERKEZKÖYLER'),
(1776, 655, 'ASLANAPA'),
(1777, 655, 'MERKEZKÖYLER'),
(1778, 656, 'ÇAVDARHİSAR'),
(1779, 656, 'MERKEZKÖYLER'),
(1780, 657, 'DOMANİÇ'),
(1781, 657, 'MERKEZKÖYLER'),
(1782, 658, 'DUMLUPINAR'),
(1783, 658, 'MERKEZKÖYLER'),
(1784, 659, 'EMET'),
(1785, 659, 'MERKEZKÖYLER'),
(1786, 660, 'GEDİZ'),
(1787, 660, 'MERKEZKÖYLER'),
(1788, 661, 'HİSARCIK'),
(1789, 661, 'MERKEZKÖYLER'),
(1790, 662, 'ALİPAŞA'),
(1791, 662, 'BÖREKÇİLER'),
(1792, 662, 'HAMİDİYE'),
(1793, 662, 'MERKEZKÖYLER'),
(1794, 662, 'SEYİTÖMER'),
(1795, 663, 'MERKEZKÖYLER'),
(1796, 663, 'PAZARLAR'),
(1797, 664, 'MERKEZKÖYLER'),
(1798, 664, 'SİMAV'),
(1799, 665, 'MERKEZKÖYLER'),
(1800, 665, 'ŞAPHANE'),
(1801, 666, 'MERKEZKÖYLER'),
(1802, 666, 'TAVŞANLI'),
(1803, 667, 'AKÇADAĞ'),
(1804, 668, 'ARAPGİR'),
(1805, 669, 'ARGUVAN'),
(1806, 670, 'BATTALGAZİ'),
(1807, 670, 'BEYDAĞI'),
(1808, 670, 'DABAKHANE'),
(1809, 670, 'HANIMINÇİFTLİĞİ'),
(1810, 670, 'KANALBOYU'),
(1811, 670, 'KAPALIÇARŞI'),
(1812, 670, 'ORDUZU'),
(1813, 670, 'SITMAPINARI'),
(1814, 670, 'TAŞTEPE'),
(1815, 671, 'DARENDE'),
(1816, 672, 'DOĞANŞEHİR'),
(1817, 673, 'DOĞANYOL'),
(1818, 674, 'HEKİMHAN'),
(1819, 675, 'KALE'),
(1820, 676, 'KULUNCAK'),
(1821, 677, 'PÖTÜRGE'),
(1822, 678, 'YAZIHAN'),
(1823, 679, 'BOSTANBAŞI'),
(1824, 679, 'ÇAVUŞOĞLU'),
(1825, 679, 'DİLEK'),
(1826, 679, 'GÜNDÜZBEY'),
(1827, 679, 'KARAKAVAK'),
(1828, 679, 'ÖZALPER'),
(1829, 679, 'ŞAHNAHAN'),
(1830, 679, 'TOPSÖĞÜT'),
(1831, 679, 'YAKINCA'),
(1832, 679, 'YEŞİLTEPE'),
(1833, 679, 'YEŞİLYURT'),
(1834, 680, 'AHMETLİ'),
(1835, 680, 'GÖKKAYA'),
(1836, 681, 'AKHİSAR'),
(1837, 682, 'ALAŞEHİR'),
(1838, 682, 'KAVAKLIDERE'),
(1839, 682, 'KEMALİYE'),
(1840, 682, 'KİLLİK'),
(1841, 682, 'PİYADELER'),
(1842, 682, 'ULUDERBENT'),
(1843, 682, 'YEŞİLYURT'),
(1844, 683, 'DEMİRCİ'),
(1845, 683, 'DURHASAN'),
(1846, 683, 'MAHMUTLAR'),
(1847, 684, 'GÖLMARMARA'),
(1848, 685, 'ÇİÇEKLİ'),
(1849, 685, 'GÖRDES'),
(1850, 685, 'GÜNEŞLİ'),
(1851, 685, 'KAYACIK'),
(1852, 686, 'BAKIR'),
(1853, 686, 'GELENBE'),
(1854, 686, 'İLYASLAR'),
(1855, 686, 'KARAKURT'),
(1856, 686, 'KIRKAĞAÇ'),
(1857, 687, 'KÖPRÜBAŞI'),
(1858, 688, 'KULA'),
(1859, 689, 'ADALA'),
(1860, 689, 'DURASILLI'),
(1861, 689, 'POYRAZ'),
(1862, 689, 'SALİHLİ'),
(1863, 689, 'SART'),
(1864, 690, 'SARIGÖL'),
(1865, 691, 'ALİBEYLİ'),
(1866, 691, 'BÜYÜKBELEN'),
(1867, 691, 'DİLEK'),
(1868, 691, 'GÖKÇEKÖY'),
(1869, 691, 'GÜMÜLCELİ'),
(1870, 691, 'HACIRAHMANLI'),
(1871, 691, 'HALİTPAŞA'),
(1872, 691, 'İSHAKÇELEBİ'),
(1873, 691, 'KOLDERE'),
(1874, 691, 'KUMKUYUCAK'),
(1875, 691, 'MÜTEVELLİ'),
(1876, 691, 'NURİYE'),
(1877, 691, 'PAŞAKÖY'),
(1878, 691, 'SARUHANLI'),
(1879, 692, 'SELENDİ'),
(1880, 693, 'AVDAN'),
(1881, 693, 'CENKYERİ'),
(1882, 693, 'SOMA'),
(1883, 693, 'TURGUTALP'),
(1884, 693, 'YAĞCILI'),
(1885, 694, 'AŞAĞIÇOBANİSA'),
(1886, 694, 'ÇARŞI'),
(1887, 694, 'HACIHALİLLER'),
(1888, 694, 'KARAAĞAÇLI'),
(1889, 694, 'KARAKÖY'),
(1890, 694, 'KARAOĞLANLI'),
(1891, 694, 'KUZEY'),
(1892, 694, 'SANCAKLIBOZKÖY'),
(1893, 694, 'ŞEHZADELER'),
(1894, 695, 'DERBENT'),
(1895, 695, 'TURGUTLU'),
(1896, 695, 'URGANLI'),
(1897, 696, '50.YIL'),
(1898, 696, 'LALELİ'),
(1899, 696, 'MURADİYE'),
(1900, 696, 'TEVFİKİYE'),
(1901, 696, 'ÜÇPINAR'),
(1902, 696, 'YUNUSEMRE'),
(1903, 697, 'GÖKÇE'),
(1904, 697, 'İSTASYON'),
(1905, 697, 'KABALA'),
(1906, 697, 'NUR'),
(1907, 697, 'SAVURKAPI'),
(1908, 698, 'DARGEÇİT'),
(1909, 699, 'DERİK'),
(1910, 700, 'KIZILTEPE'),
(1911, 701, 'MAZIDAĞI'),
(1912, 702, 'ESKİMİDYAT'),
(1913, 702, 'HÜKÜMET'),
(1914, 703, 'NUSAYBİN'),
(1915, 704, 'ÖMERLİ'),
(1916, 705, 'SAVUR'),
(1917, 706, 'YEŞİLLİ'),
(1918, 707, 'BARIŞ'),
(1919, 707, 'CAMİİŞERİF'),
(1920, 707, 'ÇANKAYA'),
(1921, 707, 'HAL'),
(1922, 707, 'HUZURKENT'),
(1923, 707, 'KARACAİLYAS'),
(1924, 707, 'MİTHATPAŞA'),
(1925, 707, 'NUSRATİYE'),
(1926, 708, 'ANAMUR'),
(1927, 708, 'GÖKTAŞ'),
(1928, 708, 'İSKELE'),
(1929, 709, 'AYDINCIK'),
(1930, 710, 'BOZYAZI'),
(1931, 711, 'ÇAMLIYAYLA'),
(1932, 712, 'ERDEMLİ'),
(1933, 713, 'GÜLNAR'),
(1934, 714, 'DAVULTEPE'),
(1935, 714, 'MEZİTLİ'),
(1936, 715, 'MUT'),
(1937, 716, 'GAZİ'),
(1938, 716, 'PAZARKAŞI'),
(1939, 716, 'SİLİFKE'),
(1940, 717, '82EVLER'),
(1941, 717, 'AKŞEMSETTİN'),
(1942, 717, 'ALTAYLILAR'),
(1943, 717, 'ANIT'),
(1944, 717, 'AŞAĞI KÖYLER'),
(1945, 717, 'BAHÇE'),
(1946, 717, 'BEYDEĞİRMENİ'),
(1947, 717, 'CAMİNUR'),
(1948, 717, 'ÇAMLIYAYLA'),
(1949, 717, 'KAVAKLI'),
(1950, 717, 'KIZILMURAT'),
(1951, 717, 'TARSUS'),
(1952, 717, 'YOLBOYU'),
(1953, 717, 'YUKARI KÖYLER'),
(1954, 718, 'AKBELEN'),
(1955, 718, 'ALSANCAK'),
(1956, 718, 'ÇAVUŞLU'),
(1957, 718, 'HALKKENT'),
(1958, 718, 'SAĞLIK'),
(1959, 718, 'TOROSLAR'),
(1960, 719, 'BAHÇELİEVLER'),
(1961, 719, 'BARBAROS'),
(1962, 719, 'CUMHURİYET'),
(1963, 719, 'EGRİÇAM'),
(1964, 719, 'GAZİ'),
(1965, 719, 'HÜRRİYET'),
(1966, 719, 'YENİŞEHİR'),
(1967, 720, 'BODRUM'),
(1968, 721, 'DALAMAN'),
(1969, 722, 'DATÇA'),
(1970, 723, 'FETHİYE'),
(1971, 724, 'KAVAKLIDERE'),
(1972, 725, 'KÖYCEĞİZ'),
(1973, 726, 'MARMARİS'),
(1974, 727, 'MENTEŞE'),
(1975, 728, 'MİLAS'),
(1976, 729, 'ORTACA'),
(1977, 730, 'SEYDİKEMER'),
(1978, 731, 'ULA'),
(1979, 732, 'YATAĞAN'),
(1980, 733, 'BULANIK'),
(1981, 733, 'ERENTEPE'),
(1982, 733, 'MERKEZKÖYLER'),
(1983, 734, 'HASKÖY'),
(1984, 734, 'MERKEZKÖYLER'),
(1985, 735, 'KORKUT'),
(1986, 735, 'MERKEZKÖYLER'),
(1987, 736, 'AKTUZLA'),
(1988, 736, 'KARAHASAN'),
(1989, 736, 'MALAZGİRT'),
(1990, 736, 'MERKEZKÖYLER'),
(1991, 736, 'NURETTİN(KONAKKURAN)'),
(1992, 737, 'MERKEZ'),
(1993, 737, 'MERKEZKÖYLER'),
(1994, 738, 'ÇAYLAR'),
(1995, 738, 'MERKEZKÖYLER'),
(1996, 738, 'VARTO'),
(1997, 739, 'ACIGÖL'),
(1998, 739, 'KARAPINAR'),
(1999, 739, 'MERKEZKÖYLER'),
(2000, 739, 'TATLARİN'),
(2001, 740, 'AVANOS'),
(2002, 740, 'ÇALIŞ'),
(2003, 740, 'KALABA'),
(2004, 740, 'MERKEZKÖYLER'),
(2005, 740, 'ÖZKONAK'),
(2006, 741, 'DERİNKUYU'),
(2007, 741, 'MERKEZKÖYLER'),
(2008, 742, 'GÜLŞEHİR'),
(2009, 742, 'MERKEZKÖYLER'),
(2010, 743, 'HACIBEKTAŞ'),
(2011, 743, 'MERKEZKÖYLER'),
(2012, 744, 'KOZAKLI'),
(2013, 744, 'MERKEZKÖYLER'),
(2014, 745, 'CAMİCEDİT'),
(2015, 745, 'ÇARŞI'),
(2016, 745, 'GÖRE'),
(2017, 745, 'GÖREME'),
(2018, 745, 'KAVAK'),
(2019, 745, 'KAYMAKLI'),
(2020, 745, 'MERKEZKÖYLER'),
(2021, 745, 'NAR'),
(2022, 745, 'SULUSARAY'),
(2023, 745, 'UÇHİSAR'),
(2024, 746, 'MERKEZKÖYLER'),
(2025, 746, 'ORTAHİSAR'),
(2026, 746, 'ÜRGÜP'),
(2027, 747, 'ALTUNHİSAR'),
(2028, 747, 'KARAKAPI'),
(2029, 747, 'KEÇİKALESİ'),
(2030, 747, 'MERKEZKÖYLER'),
(2031, 748, 'BOR'),
(2032, 748, 'MERKEZKÖYLER'),
(2033, 749, 'ÇAMARDI'),
(2034, 749, 'MERKEZKÖYLER'),
(2035, 750, 'MERKEZKÖYLER'),
(2036, 750, 'ÖZYURT'),
(2037, 751, 'AFETEVLERİ'),
(2038, 751, 'MERKEZKÖYLER'),
(2039, 751, 'SUNGURBEY'),
(2040, 752, 'MERKEZKÖYLER'),
(2041, 752, 'ULUKIŞLA'),
(2042, 753, 'AKKUŞ'),
(2043, 754, 'BAHCELİEVLER'),
(2044, 754, 'DÜZ MAHALLE'),
(2045, 754, 'SARAYCIK'),
(2046, 755, 'AYBASTI'),
(2047, 756, 'ÇAMAŞ'),
(2048, 757, 'ÇATALPINAR'),
(2049, 758, 'ÇAYBAŞI'),
(2050, 759, 'FATSA'),
(2051, 760, 'GÖLKÖY'),
(2052, 761, 'GÜLYALI'),
(2053, 762, 'GÜRGENTEPE'),
(2054, 763, 'İKİZCE'),
(2055, 764, 'KARADÜZ'),
(2056, 765, 'KABATAŞ'),
(2057, 766, 'KORGAN'),
(2058, 767, 'KUMRU'),
(2059, 768, 'MESUDİYE'),
(2060, 769, 'PERŞEMBE'),
(2061, 770, 'ULUBEY'),
(2062, 771, 'ÜNYE'),
(2063, 772, 'BAHÇE'),
(2064, 772, 'MERKEZKÖYLER'),
(2065, 773, 'DÜZİÇİ'),
(2066, 773, 'MERKEZKÖYLER'),
(2067, 774, 'HASANBEYLİ'),
(2068, 774, 'MERKEZKÖYLER'),
(2069, 775, 'CEMALPAŞA'),
(2070, 775, 'KADİRLİ'),
(2071, 775, 'MERKEZKÖYLER'),
(2072, 776, 'ATATÜRK'),
(2073, 776, 'MERKEZKÖYLER'),
(2074, 777, 'MERKEZKÖYLER'),
(2075, 777, 'SUMBAS'),
(2076, 778, 'MERKEZKÖYLER'),
(2077, 778, 'TOPRAKKALE'),
(2078, 779, 'ARDEŞEN'),
(2079, 779, 'MERKEZKÖYLER'),
(2080, 780, 'ÇAMLIHEMŞİN'),
(2081, 780, 'MERKEZKÖYLER'),
(2082, 781, 'BÜYÜKKÖY'),
(2083, 781, 'ÇAYELİ'),
(2084, 781, 'MERKEZKÖYLER'),
(2085, 782, 'DEREPAZARI'),
(2086, 782, 'MERKEZKÖYLER'),
(2087, 783, 'FINDIKLI'),
(2088, 783, 'MERKEZKÖYLER'),
(2089, 784, 'GÜNEYSU'),
(2090, 784, 'MERKEZKÖYLER'),
(2091, 785, 'HEMŞİN'),
(2092, 785, 'MERKEZKÖYLER'),
(2093, 786, 'İKİZDERE'),
(2094, 786, 'MERKEZKÖYLER'),
(2095, 787, 'İYİDERE'),
(2096, 787, 'MERKEZKÖYLER'),
(2097, 788, 'KALKANDERE'),
(2098, 788, 'MERKEZKÖYLER'),
(2099, 789, 'GÜNDOĞDU(HAMİDİYE)'),
(2100, 789, 'MERKEZKÖYLER'),
(2101, 789, 'RİZE'),
(2102, 790, 'MERKEZKÖYLER'),
(2103, 790, 'PAZAR'),
(2104, 791, 'ADAPAZARI'),
(2105, 791, 'KARAMAN'),
(2106, 792, 'AKYAZI'),
(2107, 793, 'ARİFİYE'),
(2108, 794, 'ERENLER'),
(2109, 795, 'FERİZLİ'),
(2110, 796, 'GEYVE'),
(2111, 797, 'HENDEK'),
(2112, 798, 'KARAPÜRÇEK'),
(2113, 799, 'KARASU'),
(2114, 800, 'KAYNARCA'),
(2115, 801, 'KOCAALİ'),
(2116, 802, 'PAMUKOVA'),
(2117, 803, 'SAPANCA'),
(2118, 804, 'SERDİVAN'),
(2119, 804, 'YAZLIK'),
(2120, 805, 'SÖĞÜTLÜ'),
(2121, 806, 'TARAKLI'),
(2122, 807, 'ONDOKUZ MAYIS BALLICA'),
(2123, 808, 'ALAÇAM'),
(2124, 809, 'ASARCIK'),
(2125, 810, 'ATAKUM'),
(2126, 810, 'KURUPELİT'),
(2127, 811, 'AYVACIK'),
(2128, 812, 'BAFRA'),
(2129, 813, 'CANİK'),
(2130, 814, 'ÇARŞAMBA'),
(2131, 815, 'HAVZA'),
(2132, 816, 'BAHÇELİEVLER'),
(2133, 816, 'İSTASYON'),
(2134, 816, 'KADIKÖY'),
(2135, 816, 'KALE'),
(2136, 816, 'LİMAN'),
(2137, 816, 'RASATHANE'),
(2138, 816, 'UNKAPANI'),
(2139, 816, 'YEŞİLKENT'),
(2140, 817, 'KAVAK'),
(2141, 818, 'LADİK'),
(2142, 819, 'SALIPAZARI'),
(2143, 820, 'AŞAĞIÇİNİK'),
(2144, 820, 'BÜYÜKLÜ'),
(2145, 820, 'KUTLUKENT'),
(2146, 820, 'TEKKEKÖY'),
(2147, 821, 'TERME'),
(2148, 822, 'VEZİRKÖPRÜ'),
(2149, 823, 'YAKAKENT'),
(2150, 824, 'BAYKAN'),
(2151, 824, 'DİLEKTEPE(ZİYARET)'),
(2152, 824, 'MERKEZKÖYLER'),
(2153, 825, 'BAĞGÖZE'),
(2154, 825, 'ERUH'),
(2155, 825, 'MERKEZKÖYLER'),
(2156, 826, 'KURTALAN'),
(2157, 826, 'MERKEZKÖYLER'),
(2158, 827, 'MERKEZKÖYLER'),
(2159, 827, 'SİİRT'),
(2160, 828, 'MERKEZKÖYLER'),
(2161, 828, 'PERVARİ'),
(2162, 829, 'CEVİZLİK'),
(2163, 829, 'MERKEZKÖYLER'),
(2164, 829, 'ÖZPINAR'),
(2165, 829, 'ŞİRVAN'),
(2166, 830, 'AYDINLAR'),
(2167, 830, 'MERKEZKÖYLER'),
(2168, 831, 'AYANCIK'),
(2169, 831, 'MERKEZKÖYLER'),
(2170, 832, 'BOYABAT'),
(2171, 832, 'MERKEZKÖYLER'),
(2172, 833, 'DİKMEN'),
(2173, 833, 'MERKEZKÖYLER'),
(2174, 834, 'DURAĞAN'),
(2175, 834, 'MERKEZKÖYLER'),
(2176, 835, 'ERFELEK'),
(2177, 835, 'MERKEZKÖYLER'),
(2178, 836, 'GERZE'),
(2179, 836, 'MERKEZKÖYLER'),
(2180, 837, 'MERKEZKÖYLER'),
(2181, 837, 'SİNOP'),
(2182, 838, 'MERKEZKÖYLER'),
(2183, 838, 'SARAYDÜZÜ'),
(2184, 839, 'MERKEZKÖYLER'),
(2185, 839, 'TÜRKELİ'),
(2186, 840, 'AKINCILAR'),
(2187, 840, 'MERKEZKÖYLER'),
(2188, 841, 'ALTINYAYLA'),
(2189, 841, 'MERKEZKÖYLER'),
(2190, 842, 'DİVRİĞİ'),
(2191, 842, 'MERKEZKÖYLER'),
(2192, 843, 'DOĞANŞAR'),
(2193, 843, 'MERKEZKÖYLER'),
(2194, 844, 'ÇEPNİ');
INSERT INTO `district` (`DistrictID`, `TownID`, `DistrictName`) VALUES
(2195, 844, 'EĞERCİ'),
(2196, 844, 'GEMEREK'),
(2197, 844, 'iNKIŞLA'),
(2198, 844, 'MERKEZKÖYLER'),
(2199, 844, 'SIZIR'),
(2200, 844, 'YENİÇUBUK'),
(2201, 845, 'GÖLOVA'),
(2202, 845, 'MERKEZKÖYLER'),
(2203, 846, 'GÜRÜN'),
(2204, 846, 'MERKEZKÖYLER'),
(2205, 847, 'HAFİK'),
(2206, 847, 'MERKEZKÖYLER'),
(2207, 848, 'İMRANLI'),
(2208, 848, 'MERKEZKÖYLER'),
(2209, 849, 'KANGAL'),
(2210, 849, 'MERKEZKÖYLER'),
(2211, 850, 'KOYULHİSAR'),
(2212, 850, 'MERKEZKÖYLER'),
(2213, 851, 'ALİBABA'),
(2214, 851, 'AYDOĞAN'),
(2215, 851, 'ÇARŞI'),
(2216, 851, 'KÜMBET'),
(2217, 851, 'MERKEZ-KÖYLER'),
(2218, 851, 'YENİŞEHİR'),
(2219, 852, 'MERKEZKÖYLER'),
(2220, 852, 'SUŞEHRİ'),
(2221, 853, 'MERKEZKÖYLER'),
(2222, 853, 'ŞARKIŞLA'),
(2223, 854, 'MERKEZKÖYLER'),
(2224, 854, 'ULAŞ'),
(2225, 855, 'MERKEZKÖYLER'),
(2226, 855, 'YILDIZELİ'),
(2227, 856, 'MERKEZKÖYLER'),
(2228, 856, 'ZARA'),
(2229, 857, 'AKÇAKALE'),
(2230, 858, 'BİRECİK'),
(2231, 859, 'BOZOVA'),
(2232, 859, 'YAYLAK'),
(2233, 860, 'CEYLANPINAR'),
(2234, 861, 'ÇARŞI'),
(2235, 861, 'EYYÜBİYE'),
(2236, 862, 'HALFETİ'),
(2237, 863, 'BAĞLARBAŞI'),
(2238, 863, 'BAHÇELİEVLER'),
(2239, 863, 'ŞAİRNABİ'),
(2240, 863, 'YENİŞEHİR'),
(2241, 864, 'HARRAN'),
(2242, 865, 'HİLVAN'),
(2243, 866, 'KARAKÖPRÜ'),
(2244, 867, 'SİVEREK'),
(2245, 868, 'SURUÇ'),
(2246, 869, 'VİRANŞEHİR'),
(2247, 870, 'BEYTÜŞŞEBAP'),
(2248, 870, 'MERKEZKÖYLER'),
(2249, 871, 'CİZRE'),
(2250, 871, 'MERKEZKÖYLER'),
(2251, 872, 'GÜÇLÜKONAK'),
(2252, 872, 'MERKEZKÖYLER'),
(2253, 873, 'İDİL'),
(2254, 873, 'MERKEZKÖYLER'),
(2255, 874, 'MERKEZKÖYLER'),
(2256, 874, 'ŞIRNAK'),
(2257, 875, 'MERKEZKÖYLER'),
(2258, 875, 'SİLOPİ'),
(2259, 876, 'MERKEZKÖYLER'),
(2260, 876, 'ULUDERE'),
(2261, 877, 'ÇERKEZKÖY'),
(2262, 878, 'ÇORLU'),
(2263, 878, 'SİLAHTAR'),
(2264, 879, 'MARMARACIK'),
(2265, 880, 'HAYRABOLU'),
(2266, 881, 'KAPAKLI'),
(2267, 882, 'MALKARA'),
(2268, 883, 'MARMARAEREĞLİSİ'),
(2269, 884, 'MURATLI'),
(2270, 885, 'SARAY'),
(2271, 886, 'ALTINOVA'),
(2272, 886, 'AYDOĞDU'),
(2273, 886, 'ESKİCAMİ'),
(2274, 886, 'KUMBAĞ'),
(2275, 886, 'SÜLEYMANPAŞA'),
(2276, 887, 'ŞARKÖY'),
(2277, 888, 'ALMUS'),
(2278, 888, 'MERKEZKÖYLER'),
(2279, 889, 'ARTOVA'),
(2280, 889, 'MERKEZKÖYLER'),
(2281, 890, 'BAŞÇİFTLİK'),
(2282, 890, 'MERKEZKÖYLER'),
(2283, 891, 'ERBAA'),
(2284, 891, 'KARAYAKA'),
(2285, 891, 'MERKEZKÖYLER'),
(2286, 892, 'GEYRAS'),
(2287, 892, 'GÖKDERE'),
(2288, 892, 'KARŞIYAKA'),
(2289, 892, 'MERKEZKÖYLER'),
(2290, 893, 'GÖKÇELİ'),
(2291, 893, 'MERKEZKÖYLER'),
(2292, 893, 'NİKSAR'),
(2293, 894, 'MERKEZKÖYLER'),
(2294, 894, 'PAZAR'),
(2295, 895, 'BEREKETLİ'),
(2296, 895, 'MERKEZKÖYLER'),
(2297, 895, 'REŞADİYE'),
(2298, 896, 'MERKEZKÖYLER'),
(2299, 896, 'SULUSARAY'),
(2300, 897, 'MERKEZKÖYLER'),
(2301, 897, 'TURHAL'),
(2302, 898, 'MERKEZKÖYLER'),
(2303, 898, 'YEŞİLYURT'),
(2304, 899, 'MERKEZKÖYLER'),
(2305, 899, 'ZİLE'),
(2306, 900, 'AKÇAABAT'),
(2307, 901, 'ARAKLI'),
(2308, 902, 'ARSİN'),
(2309, 903, 'BEŞİKDÜZÜ'),
(2310, 904, 'ÇARŞIBAŞI'),
(2311, 905, 'ÇAYKARA'),
(2312, 906, 'DERNEKPAZARI'),
(2313, 907, 'DÜZKÖY'),
(2314, 908, 'HAYRAT'),
(2315, 909, 'KÖPRÜBAŞI'),
(2316, 910, 'MAÇKA'),
(2317, 911, 'OF'),
(2318, 912, 'BEŞİRLİ'),
(2319, 912, 'BOSTANCI'),
(2320, 912, 'BOZTEPE'),
(2321, 912, 'ÇARŞI'),
(2322, 912, 'ERDOĞDU'),
(2323, 913, 'SÜRMENE'),
(2324, 914, 'ŞALPAZARI'),
(2325, 915, 'TONYA'),
(2326, 916, 'VAKFIKEBİR'),
(2327, 917, 'YOMRA'),
(2328, 918, 'ÇEMİŞGEZEK'),
(2329, 918, 'MERKEZKÖYLER'),
(2330, 919, 'HOZAT'),
(2331, 919, 'MERKEZKÖYLER'),
(2332, 920, 'MAZGİRT'),
(2333, 920, 'MERKEZKÖYLER'),
(2334, 921, 'MERKEZKÖYLER'),
(2335, 921, 'TUNCELİ'),
(2336, 922, 'MERKEZKÖYLER'),
(2337, 922, 'NAZIMİYE'),
(2338, 923, 'MERKEZKÖYLER'),
(2339, 923, 'OVACIK'),
(2340, 924, 'MERKEZKÖYLER'),
(2341, 924, 'PERTEK'),
(2342, 925, 'MERKEZKÖYLER'),
(2343, 925, 'PÜLÜMÜR'),
(2344, 926, 'BANAZ'),
(2345, 926, 'MERKEZKÖYLER'),
(2346, 927, 'EŞME'),
(2347, 927, 'MERKEZKÖYLER'),
(2348, 928, 'KARAHALLI'),
(2349, 928, 'MERKEZKÖYLER'),
(2350, 929, 'CUMHURİYET'),
(2351, 929, 'MERKEZKÖYLER'),
(2352, 930, 'MERKEZKÖYLER'),
(2353, 930, 'SİVASLI'),
(2354, 931, 'MERKEZKÖYLER'),
(2355, 931, 'ULUBEY'),
(2356, 932, 'BAHÇESARAY'),
(2357, 933, 'BAŞKALE'),
(2358, 934, 'ÇALDIRAN'),
(2359, 935, 'ÇATAK'),
(2360, 936, 'GÜMÜŞDERE'),
(2361, 936, 'SÜPHAN'),
(2362, 937, 'ERCİŞ'),
(2363, 938, 'GEVAŞ'),
(2364, 939, 'GÜRPINAR'),
(2365, 940, 'ERÇEK'),
(2366, 940, 'VALİMİTATBEY'),
(2367, 941, 'MURADİYE'),
(2368, 942, 'ÖZALP'),
(2369, 943, 'SARAY'),
(2370, 944, 'İSKELE'),
(2371, 944, 'İSTASYON'),
(2372, 945, 'ALTINOVA'),
(2373, 945, 'MERKEZKÖYLER'),
(2374, 946, 'ARMUTLU'),
(2375, 946, 'MERKEZKÖYLER'),
(2376, 947, 'ÇINARCIK'),
(2377, 947, 'MERKEZKÖYLER'),
(2378, 948, 'ÇİFTLİKKÖY'),
(2379, 948, 'MERKEZKÖYLER'),
(2380, 949, 'BAĞLARBAŞI'),
(2381, 949, 'MERKEZKÖYLER'),
(2382, 950, 'MERKEZKÖYLER'),
(2383, 950, 'TERMAL'),
(2384, 951, 'AKDAĞMADENİ'),
(2385, 951, 'MERKEZKÖYLER'),
(2386, 952, 'AYDINCIK'),
(2387, 952, 'MERKEZKÖYLER'),
(2388, 953, 'BOĞAZLIYAN'),
(2389, 953, 'MERKEZKÖYLER'),
(2390, 954, 'ÇANDIR'),
(2391, 954, 'MERKEZKÖYLER'),
(2392, 955, 'ÇAYIRALAN'),
(2393, 955, 'MERKEZKÖYLER'),
(2394, 956, 'ÇEKEREK'),
(2395, 956, 'MERKEZKÖYLER'),
(2396, 957, 'KADIŞEHRİ'),
(2397, 957, 'MERKEZKÖYLER'),
(2398, 958, 'MERKEZKÖYLER'),
(2399, 958, 'YOZGAT'),
(2400, 959, 'MERKEZKÖYLER'),
(2401, 959, 'SARAYKENT'),
(2402, 960, 'MERKEZKÖYLER'),
(2403, 960, 'SARIKAYA'),
(2404, 961, 'MERKEZKÖYLER'),
(2405, 961, 'SORGUN'),
(2406, 962, 'MERKEZKÖYLER'),
(2407, 962, 'ŞEFAATLİ'),
(2408, 963, 'MERKEZKÖYLER'),
(2409, 963, 'YENİFAKILI'),
(2410, 964, 'MERKEZKÖYLER'),
(2411, 964, 'YERKÖY'),
(2412, 965, 'ALAPLI'),
(2413, 965, 'MERKEZKÖYLER'),
(2414, 966, 'ÇAYCUMA'),
(2415, 966, 'HİSARÖNÜ(FİLYOS)'),
(2416, 966, 'MERKEZKÖYLER'),
(2417, 966, 'PERŞEMBE'),
(2418, 966, 'SALTUKOVA'),
(2419, 967, 'DEVREK'),
(2420, 967, 'EĞERCİ'),
(2421, 967, 'MERKEZKÖYLER'),
(2422, 968, 'KARADENİZEREĞLİ'),
(2423, 968, 'MERKEZKÖYLER'),
(2424, 968, 'ORMANLI'),
(2425, 969, 'GÖKÇEBEY'),
(2426, 969, 'MERKEZKÖYLER'),
(2427, 970, 'KİLİMLİ'),
(2428, 970, 'MERKEZKÖYLER'),
(2429, 971, 'KOZLU'),
(2430, 971, 'MERKEZKÖYLER'),
(2431, 972, 'BEYCUMA'),
(2432, 972, 'MERKEZKÖYLER'),
(2433, 972, 'ZONGULDAK');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `footer_settings_table`
--

CREATE TABLE `footer_settings_table` (
  `id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `workHours` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gallery_table`
--

CREATE TABLE `gallery_table` (
  `img_id` int(11) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `publish` int(11) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitchens_table`
--

CREATE TABLE `kitchens_table` (
  `kitchen_id` int(11) NOT NULL,
  `kitchen_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kitchen_insert_time` bigint(20) NOT NULL,
  `kitchen_ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitchen_cats_table`
--

CREATE TABLE `kitchen_cats_table` (
  `id` int(11) NOT NULL,
  `kitchen_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu_cats_table`
--

CREATE TABLE `menu_cats_table` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cat_bg` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_status` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `menu_cats_table`
--

INSERT INTO `menu_cats_table` (`cat_id`, `cat_name`, `cat_bg`, `cat_status`, `type`, `sort`) VALUES
(1, 'Satış ', NULL, 0, 1, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu_cat_product_table`
--

CREATE TABLE `menu_cat_product_table` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `menu_cat_product_table`
--

INSERT INTO `menu_cat_product_table` (`id`, `cat_id`, `pro_id`) VALUES
(114, 1, 2),
(115, 1, 6),
(116, 1, 7),
(117, 1, 8),
(118, 1, 9),
(119, 1, 10),
(120, 1, 11),
(121, 1, 12),
(122, 1, 13),
(123, 1, 14),
(124, 1, 15),
(125, 1, 16),
(126, 1, 17),
(127, 1, 18),
(128, 1, 20),
(129, 1, 22),
(130, 1, 23);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu_sub_cats_table`
--

CREATE TABLE `menu_sub_cats_table` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sub_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `neighborhood`
--

CREATE TABLE `neighborhood` (
  `NeighborhoodID` int(11) NOT NULL,
  `DistrictID` int(11) NOT NULL,
  `NeighborhoodName` varchar(100) NOT NULL,
  `ZipCode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders_table`
--

CREATE TABLE `orders_table` (
  `order_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `total_price` decimal(7,2) NOT NULL,
  `discount_price` decimal(7,2) NOT NULL,
  `extra_price` decimal(7,2) NOT NULL,
  `paid_price` decimal(7,2) NOT NULL,
  `rest_price` decimal(7,2) NOT NULL,
  `order_note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `payment_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ready` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `orderType` int(11) NOT NULL,
  `order_insert_time` bigint(20) NOT NULL,
  `approve_time` bigint(20) NOT NULL,
  `person` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order_codes_table`
--

CREATE TABLE `order_codes_table` (
  `id` int(11) NOT NULL,
  `code_text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order_details_table`
--

CREATE TABLE `order_details_table` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `porsion_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `price_update` int(11) NOT NULL,
  `total_price` decimal(7,2) NOT NULL,
  `ready` int(11) NOT NULL,
  `printed` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order_payments_table`
--

CREATE TABLE `order_payments_table` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `paid_price` decimal(7,2) NOT NULL,
  `payment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sub_p_id` int(5) DEFAULT NULL,
  `p_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_time` bigint(20) NOT NULL,
  `payment_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages_table`
--

CREATE TABLE `pages_table` (
  `page_id` int(11) NOT NULL,
  `page_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_text` text COLLATE utf8_unicode_ci NOT NULL,
  `google_map` text COLLATE utf8_unicode_ci NOT NULL,
  `page_insert_time` bigint(20) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `payment_subtypes_table`
--

CREATE TABLE `payment_subtypes_table` (
  `payment_sub_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `payment_subname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `payment_subtypes_table`
--

INSERT INTO `payment_subtypes_table` (`payment_sub_id`, `payment_id`, `payment_subname`, `status`) VALUES
(23, 2, 'TEB', 1),
(11, 0, 'Setcard', 0),
(22, 2, 'Garanti', 1),
(21, 2, 'Yapıkredi', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `payment_types_table`
--

CREATE TABLE `payment_types_table` (
  `payment_id` int(11) NOT NULL,
  `payment_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `payment_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `rel` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `payment_types_table`
--

INSERT INTO `payment_types_table` (`payment_id`, `payment_name`, `payment_code`, `rel`, `icon`, `status`) VALUES
(1, 'Nakit', 'cash', 'cash', 'money', 0),
(2, 'Kredi Kartı', 'cc', 'credit', 'credit-card', 1),
(3, 'Açık Hesap', 'open', 'openPay', 'id-card', 0),
(4, 'Yemek Kartı', 'meal', 'mealCard', 'credit-card-alt', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `porsions_table`
--

CREATE TABLE `porsions_table` (
  `id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `porsion_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `porsion_price` decimal(7,2) NOT NULL,
  `gr` decimal(7,2) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `porsions_table`
--

INSERT INTO `porsions_table` (`id`, `pro_id`, `porsion_name`, `porsion_price`, `gr`, `sort`) VALUES
(1, 1, '', '0.00', '100.00', 0),
(2, 2, '', '20.00', '200.00', 0),
(3, 3, '', '4.00', '0.00', 0),
(4, 4, '', '3.00', '0.00', 0),
(5, 5, '', '4.00', '0.00', 0),
(6, 6, '', '6.00', '57.50', 0),
(7, 7, '', '9.00', '92.50', 0),
(8, 8, '', '12.00', '122.50', 0),
(9, 9, '', '15.00', '152.50', 0),
(10, 10, '', '22.50', '250.00', 0),
(11, 11, '', '45.00', '500.00', 0),
(12, 12, '', '90.00', '1000.00', 0),
(13, 13, '', '2.00', '0.00', 0),
(14, 14, '', '2.50', '0.00', 0),
(15, 15, '', '3.50', '0.00', 0),
(16, 16, '', '3.50', '0.00', 0),
(17, 17, '', '2.50', '0.00', 0),
(18, 18, '', '1.50', '0.00', 0),
(19, 19, '', '0.00', '0.00', 0),
(20, 20, '', '1.50', '0.00', 0),
(21, 22, '', '18.00', '187.50', 0),
(22, 23, '', '67.50', '750.00', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `price_lists_table`
--

CREATE TABLE `price_lists_table` (
  `list_id` int(11) NOT NULL,
  `list_insert_time` bigint(20) NOT NULL,
  `isActive` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `price_lists_table`
--

INSERT INTO `price_lists_table` (`list_id`, `list_insert_time`, `isActive`) VALUES
(1, 1560501082, 0),
(2, 1560501098, 0),
(3, 1560502044, 0),
(4, 1560503326, 0),
(5, 1560506049, 0),
(6, 1560506171, 0),
(7, 1560510698, 0),
(8, 1560510772, 0),
(9, 1560510844, 0),
(10, 1561020160, 0),
(11, 1561020187, 0),
(12, 1561020199, 0),
(13, 1568981129, 0),
(14, 1568981298, 0),
(15, 1568981448, 0),
(16, 1568990171, 0),
(17, 1568990310, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `price_list_details`
--

CREATE TABLE `price_list_details` (
  `id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `porsion_id` int(11) NOT NULL,
  `porsion_price` decimal(7,2) NOT NULL,
  `insert_time` bigint(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products_and_option_groups_table`
--

CREATE TABLE `products_and_option_groups_table` (
  `id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `og_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products_imgs_table`
--

CREATE TABLE `products_imgs_table` (
  `id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `img_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img_insert_time` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products_options_table`
--

CREATE TABLE `products_options_table` (
  `option_id` int(11) NOT NULL,
  `og_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products_option_groups_table`
--

CREATE TABLE `products_option_groups_table` (
  `og_id` int(11) NOT NULL,
  `og_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `og_insert_time` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products_porsion_table`
--

CREATE TABLE `products_porsion_table` (
  `id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `porsion_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `porsion_price` decimal(7,2) NOT NULL,
  `default` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products_price_table`
--

CREATE TABLE `products_price_table` (
  `id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `porsion_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option_ids` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option_price` decimal(7,2) DEFAULT NULL,
  `porsion_price` decimal(7,2) DEFAULT NULL,
  `default` int(11) NOT NULL,
  `last_update` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products_table`
--

CREATE TABLE `products_table` (
  `pro_id` int(11) NOT NULL,
  `pro_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_seo_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_description` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_price` decimal(5,2) NOT NULL,
  `search_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_status` int(11) NOT NULL,
  `pro_insert_time` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products_table2`
--

CREATE TABLE `products_table2` (
  `pro_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `pro_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_bg` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kdv` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `onSale` int(11) NOT NULL,
  `keepStock` int(11) NOT NULL,
  `qty2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unitT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unitTypes` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pro_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_seo_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_description` text COLLATE utf8_unicode_ci NOT NULL,
  `search_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_status` int(11) NOT NULL,
  `proType` int(11) NOT NULL,
  `pro_insert_time` bigint(20) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `products_table2`
--

INSERT INTO `products_table2` (`pro_id`, `stock`, `pro_code`, `pro_bg`, `kdv`, `onSale`, `keepStock`, `qty2`, `unitT`, `unitTypes`, `pro_name`, `pro_seo_name`, `pro_description`, `search_desc`, `pro_img`, `pro_status`, `proType`, `pro_insert_time`, `sort`) VALUES
(1, -13, '', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Döner 100gr', 'doner-100gr', '', '', '', 0, 0, 0, 0),
(2, -4117, '', '#008000', '', 0, 0, NULL, NULL, '', 'Porsiyon 200 gr', 'porsiyon-200-gr', '', '', '', 0, 0, 0, 5),
(3, -3, '', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Kola 330ml', 'kola-330ml', '', '', '', 0, 0, 0, 0),
(4, -5, '', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Ayran 200ml', 'ayran-200ml', '', '', '', 0, 0, 0, 0),
(5, -3, '', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Fanta 330ml', 'fanta-330ml', '', '', '', 0, 0, 0, 0),
(6, -10365, '', '#008000', '', 0, 0, NULL, NULL, NULL, 'Doner 55-60 Gr', 'doner-55-60-gr', '', '', '', 0, 0, 0, 1),
(7, -17467, '', '#008000', '', 0, 0, NULL, NULL, NULL, 'Doner 90-95 Gr', 'doner-90-95-gr', '', '', '', 0, 0, 0, 2),
(8, -22686, '', '#008000', '', 0, 0, NULL, NULL, NULL, 'Doner 120-125 Gr', 'doner-120-125-gr', '', '', '', 0, 0, 0, 3),
(9, -11765, '', '#008000', '', 0, 0, NULL, NULL, NULL, 'Doner 150-155 Gr', 'doner-150-155-gr', '', '', '', 0, 0, 0, 4),
(10, -10930, '', '#ff9300', NULL, 0, 0, NULL, NULL, NULL, 'Doner 250 Gr', 'doner-250-gr', '', '', '', 0, 0, 0, 6),
(11, -922, '', '#ff9300', NULL, 0, 0, NULL, NULL, NULL, 'Doner 500 Gr', 'doner-500-gr', '', '', '', 0, 0, 0, 7),
(12, -303, '', '#ff9300', NULL, 0, 0, NULL, NULL, NULL, 'Doner 1000 Gr', 'doner-1000-gr', '', '', '', 0, 0, 0, 8),
(13, -23782, '', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Ayran', 'ayran', '', '', '', 0, 0, 0, 16),
(14, -6540, '', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Cola Şişe', 'cola-sise', '', '', '', 0, 0, 0, 10),
(15, -14155, '', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Cola Kutu', 'cola-kutu', '', '', '', 0, 0, 0, 9),
(16, -1226, '', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Meyve Suyu', 'meyve-suyu', '', '', '', 0, 0, 0, 12),
(17, -29, '', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Şalgam', 'salgam', '', '', '', 0, 0, 0, 13),
(18, -3245, '', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Su', 'su', '', '', '', 0, 0, 0, 14),
(20, -482, '', NULL, NULL, 0, 0, NULL, NULL, NULL, 'soda', 'soda', '', '', '', 0, 0, 0, 17),
(21, 0, '', NULL, NULL, 0, 0, NULL, NULL, NULL, 'Kuver', 'kuver', '', '', '', 0, 20, 0, 0),
(22, -1, '', '#008000', NULL, 0, 0, NULL, NULL, NULL, 'Doner 185 - 190 Gr', 'doner-185-190-gr', '', '', '', 0, 0, 0, 4),
(23, -1, '', '#ff8000', NULL, 0, 0, NULL, NULL, NULL, 'Doner 750 Gr', 'doner-750-gr', '', '', '', 0, 0, 0, 7);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_cats_table`
--

CREATE TABLE `product_cats_table` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_cats_table2`
--

CREATE TABLE `product_cats_table2` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `product_cats_table2`
--

INSERT INTO `product_cats_table2` (`id`, `cat_id`, `pro_id`) VALUES
(1, 1, 1),
(30, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(22, 1, 6),
(27, 1, 7),
(25, 1, 8),
(26, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(29, 1, 23),
(23, 1, 20),
(28, 1, 22);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pro_cats_table`
--

CREATE TABLE `pro_cats_table` (
  `id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pro_price_show`
--

CREATE TABLE `pro_price_show` (
  `id` int(11) NOT NULL,
  `price_menu_show` int(11) NOT NULL,
  `price_detail_show` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `purchase_details_table`
--

CREATE TABLE `purchase_details_table` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `depo_id` int(11) NOT NULL,
  `pro_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qty` decimal(7,3) NOT NULL,
  `unit` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchase_price` decimal(7,2) NOT NULL,
  `tax` int(11) NOT NULL,
  `total_price` decimal(7,2) NOT NULL,
  `row_insert_time` bigint(20) NOT NULL,
  `stock_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `purchase_payments_table`
--

CREATE TABLE `purchase_payments_table` (
  `payment_id` int(11) NOT NULL,
  `amount` decimal(7,2) NOT NULL,
  `company_id` int(11) NOT NULL,
  `payment_time` bigint(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `purchase_table`
--

CREATE TABLE `purchase_table` (
  `purchase_id` int(11) NOT NULL,
  `depo_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `total_price` decimal(7,2) NOT NULL,
  `total_tax` decimal(7,2) NOT NULL,
  `last_total` decimal(7,2) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `date1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isPaid` int(11) NOT NULL,
  `cashType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchase_insert_time` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `recipes_table`
--

CREATE TABLE `recipes_table` (
  `id` int(11) NOT NULL,
  `porsion_id` int(11) NOT NULL,
  `c_pro_id` int(11) NOT NULL,
  `qty` decimal(7,2) NOT NULL,
  `unit` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `loss` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reservations_table`
--

CREATE TABLE `reservations_table` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reservation_date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_int` bigint(20) NOT NULL,
  `reservation_hour` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `total_person` int(11) NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `approve` int(11) NOT NULL,
  `record` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `insert_time` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sales_table`
--

CREATE TABLE `sales_table` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `porsion_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `qty` decimal(7,2) NOT NULL,
  `unit` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `insert_time` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `service_areas_table`
--

CREATE TABLE `service_areas_table` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `town_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings_table`
--

CREATE TABLE `settings_table` (
  `id` int(11) NOT NULL,
  `store_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adisyon_header` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `adisyon_footer` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `whatsapp` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `web` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_map` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `workhours` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin_code` int(11) NOT NULL,
  `kitchen_time` int(11) NOT NULL,
  `lock_time` int(11) NOT NULL,
  `cash` int(11) NOT NULL,
  `cc` int(11) NOT NULL,
  `open` int(11) NOT NULL,
  `meal` int(11) NOT NULL,
  `lockScreen` int(11) NOT NULL,
  `discount` decimal(7,2) NOT NULL,
  `kuver_status` int(11) NOT NULL,
  `kuver_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `kuver_price` decimal(7,2) NOT NULL,
  `extra_status` int(11) NOT NULL,
  `extra_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `extra_percent` decimal(7,2) NOT NULL,
  `last_update` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `settings_table`
--

INSERT INTO `settings_table` (`id`, `store_name`, `address`, `adisyon_header`, `adisyon_footer`, `phone`, `whatsapp`, `email`, `web`, `google_map`, `workhours`, `facebook`, `instagram`, `twitter`, `pin_code`, `kitchen_time`, `lock_time`, `cash`, `cc`, `open`, `meal`, `lockScreen`, `discount`, `kuver_status`, `kuver_name`, `kuver_price`, `extra_status`, `extra_name`, `extra_percent`, `last_update`) VALUES
(1, 'Marfiet Döner', '', '<p style=\"text-align: center;\"><br></p>\r\n<p></p>', '<p><br></p>', '', '', '', '', '', '', '', '', '', 0, 0, 0, 1, 1, 0, 0, 0, '10.00', 1, 'Kuver', '15.00', 0, '', '0.00', '14-06-2019 10:51:41');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slides_table`
--

CREATE TABLE `slides_table` (
  `slide_id` int(11) NOT NULL,
  `slide_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slide_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slide_link` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `slide_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slide_insert_time` bigint(20) NOT NULL,
  `slide_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `stock_details_table`
--

CREATE TABLE `stock_details_table` (
  `id` int(11) NOT NULL,
  `record_id` int(11) NOT NULL,
  `depo_id` int(11) NOT NULL,
  `pro_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qty` decimal(7,3) NOT NULL,
  `unit` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `row_insert_time` bigint(20) NOT NULL,
  `stock_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `stock_records_table`
--

CREATE TABLE `stock_records_table` (
  `record_id` int(11) NOT NULL,
  `depo_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `date1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stock_insert_time` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sub_cats_table`
--

CREATE TABLE `sub_cats_table` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sub_cat_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tables_table`
--

CREATE TABLE `tables_table` (
  `table_id` int(11) NOT NULL,
  `table_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `table_zone` int(11) NOT NULL,
  `is_busy` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `activeOrderId` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `tables_table`
--

INSERT INTO `tables_table` (`table_id`, `table_name`, `table_zone`, `is_busy`, `status`, `activeOrderId`) VALUES
(1, 'Kasa 1', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `table_54`
--

CREATE TABLE `table_54` (
  `id` int(11) NOT NULL,
  `br_name` varchar(25) DEFAULT NULL,
  `br_address` varchar(61) DEFAULT NULL,
  `city_town` varchar(26) DEFAULT NULL,
  `br_phone` varchar(37) DEFAULT NULL,
  `br_latitude` varchar(10) DEFAULT NULL,
  `br_longitude` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `town`
--

CREATE TABLE `town` (
  `TownID` int(11) NOT NULL,
  `CityID` int(11) NOT NULL,
  `TownName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `town`
--

INSERT INTO `town` (`TownID`, `CityID`, `TownName`) VALUES
(1, 1, 'ALADAĞ'),
(2, 1, 'CEYHAN'),
(3, 1, 'ÇUKUROVA'),
(4, 1, 'FEKE'),
(5, 1, 'İMAMOĞLU'),
(6, 1, 'KARAİSALI'),
(7, 1, 'KARATAŞ'),
(8, 1, 'KOZAN'),
(9, 1, 'POZANTI'),
(10, 1, 'SAİMBEYLİ'),
(11, 1, 'SARIÇAM'),
(12, 1, 'SEYHAN'),
(13, 1, 'TUFANBEYLİ'),
(14, 1, 'YUMURTALIK'),
(15, 1, 'YÜREĞİR'),
(16, 2, 'BESNİ'),
(17, 2, 'ÇELİKHAN'),
(18, 2, 'GERGER'),
(19, 2, 'GÖLBAŞI'),
(20, 2, 'KAHTA'),
(21, 2, 'MERKEZ'),
(22, 2, 'SAMSAT'),
(23, 2, 'SİNCİK'),
(24, 2, 'TUT'),
(25, 3, 'BAŞMAKÇI'),
(26, 3, 'BAYAT'),
(27, 3, 'BOLVADİN'),
(28, 3, 'ÇAY'),
(29, 3, 'ÇOBANLAR'),
(30, 3, 'DAZKIRI'),
(31, 3, 'DİNAR'),
(32, 3, 'EMİRDAĞ'),
(33, 3, 'EVCİLER'),
(34, 3, 'HOCALAR'),
(35, 3, 'İHSANİYE'),
(36, 3, 'İSCEHİSAR'),
(37, 3, 'KIZILÖREN'),
(38, 3, 'MERKEZ'),
(39, 3, 'SANDIKLI'),
(40, 3, 'SİNANPAŞA'),
(41, 3, 'SULTANDAĞI'),
(42, 3, 'ŞUHUT'),
(43, 4, 'DİYADİN'),
(44, 4, 'DOĞUBAYAZIT'),
(45, 4, 'ELEŞKİRT'),
(46, 4, 'HAMUR'),
(47, 4, 'MERKEZ'),
(48, 4, 'PATNOS'),
(49, 4, 'TAŞLIÇAY'),
(50, 4, 'TUTAK'),
(51, 5, 'AĞAÇÖREN'),
(52, 5, 'ESKİL'),
(53, 5, 'GÜLAĞAÇ'),
(54, 5, 'GÜZELYURT'),
(55, 5, 'MERKEZ'),
(56, 5, 'ORTAKÖY'),
(57, 5, 'SARIYAHŞİ'),
(58, 5, 'SULTANHANI'),
(59, 6, 'GÖYNÜCEK'),
(60, 6, 'GÜMÜŞHACIKÖY'),
(61, 6, 'HAMAMÖZÜ'),
(62, 6, 'MERKEZ'),
(63, 6, 'MERZİFON'),
(64, 6, 'SULUOVA'),
(65, 6, 'TAŞOVA'),
(66, 7, 'AKYURT'),
(67, 7, 'ALTINDAĞ'),
(68, 7, 'AYAŞ'),
(69, 7, 'BALA'),
(70, 7, 'BEYPAZARI'),
(71, 7, 'ÇAMLIDERE'),
(72, 7, 'ÇANKAYA'),
(73, 7, 'ÇUBUK'),
(74, 7, 'ELMADAĞ'),
(75, 7, 'ETİMESGUT'),
(76, 7, 'EVREN'),
(77, 7, 'GÖLBAŞI'),
(78, 7, 'GÜDÜL'),
(79, 7, 'HAYMANA'),
(80, 7, 'KAHRAMANKAZAN'),
(81, 7, 'KALECİK'),
(82, 7, 'KEÇİÖREN'),
(83, 7, 'KIZILCAHAMAM'),
(84, 7, 'MAMAK'),
(85, 7, 'NALLIHAN'),
(86, 7, 'POLATLI'),
(87, 7, 'PURSAKLAR'),
(88, 7, 'SİNCAN'),
(89, 7, 'ŞEREFLİKOÇHİSAR'),
(90, 7, 'YENİMAHALLE'),
(91, 8, 'AKSEKİ'),
(92, 8, 'AKSU'),
(93, 8, 'ALANYA'),
(94, 8, 'DEMRE'),
(95, 8, 'DÖŞEMEALTI'),
(96, 8, 'ELMALI'),
(97, 8, 'FİNİKE'),
(98, 8, 'GAZİPAŞA'),
(99, 8, 'GÜNDOĞMUŞ'),
(100, 8, 'İBRADI'),
(101, 8, 'KAŞ'),
(102, 8, 'KEMER'),
(103, 8, 'KEPEZ'),
(104, 8, 'KONYAALTI'),
(105, 8, 'KORKUTELİ'),
(106, 8, 'KUMLUCA'),
(107, 8, 'MANAVGAT'),
(108, 8, 'MURATPAŞA'),
(109, 8, 'SERİK'),
(110, 9, 'ÇILDIR'),
(111, 9, 'DAMAL'),
(112, 9, 'GÖLE'),
(113, 9, 'HANAK'),
(114, 9, 'MERKEZ'),
(115, 9, 'POSOF'),
(116, 10, 'ARDANUÇ'),
(117, 10, 'ARHAVİ'),
(118, 10, 'BORÇKA'),
(119, 10, 'HOPA'),
(120, 10, 'KEMALPAŞA'),
(121, 10, 'MERKEZ'),
(122, 10, 'MURGUL'),
(123, 10, 'ŞAVŞAT'),
(124, 10, 'YUSUFELİ'),
(125, 11, 'BOZDOĞAN'),
(126, 11, 'BUHARKENT'),
(127, 11, 'ÇİNE'),
(128, 11, 'DİDİM'),
(129, 11, 'EFELER'),
(130, 11, 'GERMENCİK'),
(131, 11, 'İNCİRLİOVA'),
(132, 11, 'KARACASU'),
(133, 11, 'KARPUZLU'),
(134, 11, 'KOÇARLI'),
(135, 11, 'KÖŞK'),
(136, 11, 'KUŞADASI'),
(137, 11, 'KUYUCAK'),
(138, 11, 'NAZİLLİ'),
(139, 11, 'SÖKE'),
(140, 11, 'SULTANHİSAR'),
(141, 11, 'YENİPAZAR'),
(142, 12, 'ALTIEYLÜL'),
(143, 12, 'AYVALIK'),
(144, 12, 'BALYA'),
(145, 12, 'BANDIRMA'),
(146, 12, 'BİGADİÇ'),
(147, 12, 'BURHANİYE'),
(148, 12, 'DURSUNBEY'),
(149, 12, 'EDREMİT'),
(150, 12, 'ERDEK'),
(151, 12, 'GÖMEÇ'),
(152, 12, 'GÖNEN'),
(153, 12, 'HAVRAN'),
(154, 12, 'İVRİNDİ'),
(155, 12, 'KARESİ'),
(156, 12, 'KEPSUT'),
(157, 12, 'MANYAS'),
(158, 12, 'MARMARA'),
(159, 12, 'SAVAŞTEPE'),
(160, 12, 'SINDIRGI'),
(161, 12, 'SUSURLUK'),
(162, 13, 'AMASRA'),
(163, 13, 'KURUCAŞİLE'),
(164, 13, 'MERKEZ'),
(165, 13, 'ULUS'),
(166, 14, 'BEŞİRİ'),
(167, 14, 'GERCÜŞ'),
(168, 14, 'HASANKEYF'),
(169, 14, 'KOZLUK'),
(170, 14, 'MERKEZ'),
(171, 14, 'SASON'),
(172, 15, 'AYDINTEPE'),
(173, 15, 'DEMİRÖZÜ'),
(174, 15, 'MERKEZ'),
(175, 16, 'BOZÜYÜK'),
(176, 16, 'GÖLPAZARI'),
(177, 16, 'İNHİSAR'),
(178, 16, 'MERKEZ'),
(179, 16, 'OSMANELİ'),
(180, 16, 'PAZARYERİ'),
(181, 16, 'SÖĞÜT'),
(182, 16, 'YENİPAZAR'),
(183, 17, 'ADAKLI'),
(184, 17, 'GENÇ'),
(185, 17, 'KARLIOVA'),
(186, 17, 'KİĞI'),
(187, 17, 'MERKEZ'),
(188, 17, 'SOLHAN'),
(189, 17, 'YAYLADERE'),
(190, 17, 'YEDİSU'),
(191, 18, 'ADİLCEVAZ'),
(192, 18, 'AHLAT'),
(193, 18, 'GÜROYMAK'),
(194, 18, 'HİZAN'),
(195, 18, 'MERKEZ'),
(196, 18, 'MUTKİ'),
(197, 18, 'TATVAN'),
(198, 19, 'DÖRTDİVAN'),
(199, 19, 'GEREDE'),
(200, 19, 'GÖYNÜK'),
(201, 19, 'KIBRISCIK'),
(202, 19, 'MENGEN'),
(203, 19, 'MERKEZ'),
(204, 19, 'MUDURNU'),
(205, 19, 'SEBEN'),
(206, 19, 'YENİÇAĞA'),
(207, 20, 'AĞLASUN'),
(208, 20, 'ALTINYAYLA'),
(209, 20, 'BUCAK'),
(210, 20, 'ÇAVDIR'),
(211, 20, 'ÇELTİKÇİ'),
(212, 20, 'GÖLHİSAR'),
(213, 20, 'KARAMANLI'),
(214, 20, 'KEMER'),
(215, 20, 'MERKEZ'),
(216, 20, 'TEFENNİ'),
(217, 20, 'YEŞİLOVA'),
(218, 21, 'BÜYÜKORHAN'),
(219, 21, 'GEMLİK'),
(220, 21, 'GÜRSU'),
(221, 21, 'HARMANCIK'),
(222, 21, 'İNEGÖL'),
(223, 21, 'İZNİK'),
(224, 21, 'KARACABEY'),
(225, 21, 'KELES'),
(226, 21, 'KESTEL'),
(227, 21, 'MUDANYA'),
(228, 21, 'MUSTAFAKEMALPAŞA'),
(229, 21, 'NİLÜFER'),
(230, 21, 'ORHANELİ'),
(231, 21, 'ORHANGAZİ'),
(232, 21, 'OSMANGAZİ'),
(233, 21, 'YENİŞEHİR'),
(234, 21, 'YILDIRIM'),
(235, 22, 'AYVACIK'),
(236, 22, 'BAYRAMİÇ'),
(237, 22, 'BİGA'),
(238, 22, 'BOZCAADA'),
(239, 22, 'ÇAN'),
(240, 22, 'ECEABAT'),
(241, 22, 'EZİNE'),
(242, 22, 'GELİBOLU'),
(243, 22, 'GÖKÇEADA'),
(244, 22, 'LAPSEKİ'),
(245, 22, 'MERKEZ'),
(246, 22, 'YENİCE'),
(247, 23, 'ATKARACALAR'),
(248, 23, 'BAYRAMÖREN'),
(249, 23, 'ÇERKEŞ'),
(250, 23, 'ELDİVAN'),
(251, 23, 'ILGAZ'),
(252, 23, 'KIZILIRMAK'),
(253, 23, 'KORGUN'),
(254, 23, 'KURŞUNLU'),
(255, 23, 'MERKEZ'),
(256, 23, 'ORTA'),
(257, 23, 'ŞABANÖZÜ'),
(258, 23, 'YAPRAKLI'),
(259, 24, 'ALACA'),
(260, 24, 'BAYAT'),
(261, 24, 'BOĞAZKALE'),
(262, 24, 'DODURGA'),
(263, 24, 'İSKİLİP'),
(264, 24, 'KARGI'),
(265, 24, 'LAÇİN'),
(266, 24, 'MECİTÖZÜ'),
(267, 24, 'MERKEZ'),
(268, 24, 'OĞUZLAR'),
(269, 24, 'ORTAKÖY'),
(270, 24, 'OSMANCIK'),
(271, 24, 'SUNGURLU'),
(272, 24, 'UĞURLUDAĞ'),
(273, 25, 'ACIPAYAM'),
(274, 25, 'BABADAĞ'),
(275, 25, 'BAKLAN'),
(276, 25, 'BEKİLLİ'),
(277, 25, 'BEYAĞAÇ'),
(278, 25, 'BOZKURT'),
(279, 25, 'BULDAN'),
(280, 25, 'ÇAL'),
(281, 25, 'ÇAMELİ'),
(282, 25, 'ÇARDAK'),
(283, 25, 'ÇİVRİL'),
(284, 25, 'GÜNEY'),
(285, 25, 'HONAZ'),
(286, 25, 'KALE'),
(287, 25, 'MERKEZEFENDİ'),
(288, 25, 'PAMUKKALE'),
(289, 25, 'SARAYKÖY'),
(290, 25, 'SERİNHİSAR'),
(291, 25, 'TAVAS'),
(292, 26, 'BAĞLAR'),
(293, 26, 'BİSMİL'),
(294, 26, 'ÇERMİK'),
(295, 26, 'ÇINAR'),
(296, 26, 'ÇÜNGÜŞ'),
(297, 26, 'DİCLE'),
(298, 26, 'EĞİL'),
(299, 26, 'ERGANİ'),
(300, 26, 'HANİ'),
(301, 26, 'HAZRO'),
(302, 26, 'KAYAPINAR'),
(303, 26, 'KOCAKÖY'),
(304, 26, 'KULP'),
(305, 26, 'LİCE'),
(306, 26, 'SİLVAN'),
(307, 26, 'SUR'),
(308, 26, 'YENİŞEHİR'),
(309, 27, 'AKÇAKOCA'),
(310, 27, 'CUMAYERİ'),
(311, 27, 'ÇİLİMLİ'),
(312, 27, 'GÖLYAKA'),
(313, 27, 'GÜMÜŞOVA'),
(314, 27, 'KAYNAŞLI'),
(315, 27, 'MERKEZ'),
(316, 27, 'YIĞILCA'),
(317, 28, 'ENEZ'),
(318, 28, 'HAVSA'),
(319, 28, 'İPSALA'),
(320, 28, 'KEŞAN'),
(321, 28, 'LALAPAŞA'),
(322, 28, 'MERİÇ'),
(323, 28, 'MERKEZ'),
(324, 28, 'SÜLOĞLU'),
(325, 28, 'UZUNKÖPRÜ'),
(326, 29, 'AĞIN'),
(327, 29, 'ALACAKAYA'),
(328, 29, 'ARICAK'),
(329, 29, 'BASKİL'),
(330, 29, 'KARAKOÇAN'),
(331, 29, 'KEBAN'),
(332, 29, 'KOVANCILAR'),
(333, 29, 'MADEN'),
(334, 29, 'MERKEZ'),
(335, 29, 'PALU'),
(336, 29, 'SİVRİCE'),
(337, 30, 'ÇAYIRLI'),
(338, 30, 'İLİÇ'),
(339, 30, 'KEMAH'),
(340, 30, 'KEMALİYE'),
(341, 30, 'MERKEZ'),
(342, 30, 'OTLUKBELİ'),
(343, 30, 'REFAHİYE'),
(344, 30, 'TERCAN'),
(345, 30, 'ÜZÜMLÜ'),
(346, 31, 'AŞKALE'),
(347, 31, 'AZİZİYE'),
(348, 31, 'ÇAT'),
(349, 31, 'HINIS'),
(350, 31, 'HORASAN'),
(351, 31, 'İSPİR'),
(352, 31, 'KARAÇOBAN'),
(353, 31, 'KARAYAZI'),
(354, 31, 'KÖPRÜKÖY'),
(355, 31, 'NARMAN'),
(356, 31, 'OLTU'),
(357, 31, 'OLUR'),
(358, 31, 'PALANDÖKEN'),
(359, 31, 'PASİNLER'),
(360, 31, 'PAZARYOLU'),
(361, 31, 'ŞENKAYA'),
(362, 31, 'TEKMAN'),
(363, 31, 'TORTUM'),
(364, 31, 'UZUNDERE'),
(365, 31, 'YAKUTİYE'),
(366, 32, 'ALPU'),
(367, 32, 'BEYLİKOVA'),
(368, 32, 'ÇİFTELER'),
(369, 32, 'GÜNYÜZÜ'),
(370, 32, 'HAN'),
(371, 32, 'İNÖNÜ'),
(372, 32, 'MAHMUDİYE'),
(373, 32, 'MİHALGAZİ'),
(374, 32, 'MİHALIÇÇIK'),
(375, 32, 'ODUNPAZARI'),
(376, 32, 'SARICAKAYA'),
(377, 32, 'SEYİTGAZİ'),
(378, 32, 'SİVRİHİSAR'),
(379, 32, 'TEPEBAŞI'),
(380, 33, 'ARABAN'),
(381, 33, 'İSLAHİYE'),
(382, 33, 'KARKAMIŞ'),
(383, 33, 'NİZİP'),
(384, 33, 'NURDAĞI'),
(385, 33, 'OĞUZELİ'),
(386, 33, 'ŞAHİNBEY'),
(387, 33, 'ŞEHİTKAMİL'),
(388, 33, 'YAVUZELİ'),
(389, 34, 'ALUCRA'),
(390, 34, 'BULANCAK'),
(391, 34, 'ÇAMOLUK'),
(392, 34, 'ÇANAKÇI'),
(393, 34, 'DERELİ'),
(394, 34, 'DOĞANKENT'),
(395, 34, 'ESPİYE'),
(396, 34, 'EYNESİL'),
(397, 34, 'GÖRELE'),
(398, 34, 'GÜCE'),
(399, 34, 'KEŞAP'),
(400, 34, 'MERKEZ'),
(401, 34, 'PİRAZİZ'),
(402, 34, 'ŞEBİNKARAHİSAR'),
(403, 34, 'TİREBOLU'),
(404, 34, 'YAĞLIDERE'),
(405, 35, 'KELKİT'),
(406, 35, 'KÖSE'),
(407, 35, 'KÜRTÜN'),
(408, 35, 'MERKEZ'),
(409, 35, 'ŞİRAN'),
(410, 35, 'TORUL'),
(411, 36, 'ÇUKURCA'),
(412, 36, 'MERKEZ'),
(413, 36, 'ŞEMDİNLİ'),
(414, 36, 'YÜKSEKOVA'),
(415, 37, 'ALTINÖZÜ'),
(416, 37, 'ANTAKYA'),
(417, 37, 'ARSUZ'),
(418, 37, 'BELEN'),
(419, 37, 'DEFNE'),
(420, 37, 'DÖRTYOL'),
(421, 37, 'ERZİN'),
(422, 37, 'HASSA'),
(423, 37, 'İSKENDERUN'),
(424, 37, 'KIRIKHAN'),
(425, 37, 'KUMLU'),
(426, 37, 'PAYAS'),
(427, 37, 'REYHANLI'),
(428, 37, 'SAMANDAĞ'),
(429, 37, 'YAYLADAĞI'),
(430, 38, 'ARALIK'),
(431, 38, 'KARAKOYUNLU'),
(432, 38, 'MERKEZ'),
(433, 38, 'TUZLUCA'),
(434, 39, 'AKSU'),
(435, 39, 'ATABEY'),
(436, 39, 'EĞİRDİR'),
(437, 39, 'GELENDOST'),
(438, 39, 'GÖNEN'),
(439, 39, 'KEÇİBORLU'),
(440, 39, 'MERKEZ'),
(441, 39, 'SENİRKENT'),
(442, 39, 'SÜTÇÜLER'),
(443, 39, 'ŞARKİKARAAĞAÇ'),
(444, 39, 'ULUBORLU'),
(445, 39, 'YALVAÇ'),
(446, 39, 'YENİŞARBADEMLİ'),
(447, 40, 'ADALAR'),
(448, 40, 'ARNAVUTKÖY'),
(449, 40, 'ATAŞEHİR'),
(450, 40, 'AVCILAR'),
(451, 40, 'BAĞCILAR'),
(452, 40, 'BAHÇELİEVLER'),
(453, 40, 'BAKIRKÖY'),
(454, 40, 'BAŞAKŞEHİR'),
(455, 40, 'BAYRAMPAŞA'),
(456, 40, 'BEŞİKTAŞ'),
(457, 40, 'BEYKOZ'),
(458, 40, 'BEYLİKDÜZÜ'),
(459, 40, 'BEYOĞLU'),
(460, 40, 'BÜYÜKÇEKMECE'),
(461, 40, 'ÇATALCA'),
(462, 40, 'ÇEKMEKÖY'),
(463, 40, 'ESENLER'),
(464, 40, 'ESENYURT'),
(465, 40, 'EYÜPSULTAN'),
(466, 40, 'FATİH'),
(467, 40, 'GAZİOSMANPAŞA'),
(468, 40, 'GÜNGÖREN'),
(469, 40, 'KADIKÖY'),
(470, 40, 'KAĞITHANE'),
(471, 40, 'KARTAL'),
(472, 40, 'KÜÇÜKÇEKMECE'),
(473, 40, 'MALTEPE'),
(474, 40, 'PENDİK'),
(475, 40, 'SANCAKTEPE'),
(476, 40, 'SARIYER'),
(477, 40, 'SİLİVRİ'),
(478, 40, 'SULTANBEYLİ'),
(479, 40, 'SULTANGAZİ'),
(480, 40, 'ŞİLE'),
(481, 40, 'ŞİŞLİ'),
(482, 40, 'TUZLA'),
(483, 40, 'ÜMRANİYE'),
(484, 40, 'ÜSKÜDAR'),
(485, 40, 'ZEYTİNBURNU'),
(486, 41, 'ALİAĞA'),
(487, 41, 'BALÇOVA'),
(488, 41, 'BAYINDIR'),
(489, 41, 'BAYRAKLI'),
(490, 41, 'BERGAMA'),
(491, 41, 'BEYDAĞ'),
(492, 41, 'BORNOVA'),
(493, 41, 'BUCA'),
(494, 41, 'ÇEŞME'),
(495, 41, 'ÇİĞLİ'),
(496, 41, 'DİKİLİ'),
(497, 41, 'FOÇA'),
(498, 41, 'GAZİEMİR'),
(499, 41, 'GÜZELBAHÇE'),
(500, 41, 'KARABAĞLAR'),
(501, 41, 'KARABURUN'),
(502, 41, 'KARŞIYAKA'),
(503, 41, 'KEMALPAŞA'),
(504, 41, 'KINIK'),
(505, 41, 'KİRAZ'),
(506, 41, 'KONAK'),
(507, 41, 'MENDERES'),
(508, 41, 'MENEMEN'),
(509, 41, 'NARLIDERE'),
(510, 41, 'ÖDEMİŞ'),
(511, 41, 'SEFERİHİSAR'),
(512, 41, 'SELÇUK'),
(513, 41, 'TİRE'),
(514, 41, 'TORBALI'),
(515, 41, 'URLA'),
(516, 42, 'AFŞİN'),
(517, 42, 'ANDIRIN'),
(518, 42, 'ÇAĞLAYANCERİT'),
(519, 42, 'DULKADİROĞLU'),
(520, 42, 'EKİNÖZÜ'),
(521, 42, 'ELBİSTAN'),
(522, 42, 'GÖKSUN'),
(523, 42, 'NURHAK'),
(524, 42, 'ONİKİŞUBAT'),
(525, 42, 'PAZARCIK'),
(526, 42, 'TÜRKOĞLU'),
(527, 43, 'EFLANİ'),
(528, 43, 'ESKİPAZAR'),
(529, 43, 'MERKEZ'),
(530, 43, 'OVACIK'),
(531, 43, 'SAFRANBOLU'),
(532, 43, 'YENİCE'),
(533, 44, 'AYRANCI'),
(534, 44, 'BAŞYAYLA'),
(535, 44, 'ERMENEK'),
(536, 44, 'KAZIMKARABEKİR'),
(537, 44, 'MERKEZ'),
(538, 44, 'SARIVELİLER'),
(539, 45, 'AKYAKA'),
(540, 45, 'ARPAÇAY'),
(541, 45, 'DİGOR'),
(542, 45, 'KAĞIZMAN'),
(543, 45, 'MERKEZ'),
(544, 45, 'SARIKAMIŞ'),
(545, 45, 'SELİM'),
(546, 45, 'SUSUZ'),
(547, 46, 'ABANA'),
(548, 46, 'AĞLI'),
(549, 46, 'ARAÇ'),
(550, 46, 'AZDAVAY'),
(551, 46, 'BOZKURT'),
(552, 46, 'CİDE'),
(553, 46, 'ÇATALZEYTİN'),
(554, 46, 'DADAY'),
(555, 46, 'DEVREKANİ'),
(556, 46, 'DOĞANYURT'),
(557, 46, 'HANÖNÜ'),
(558, 46, 'İHSANGAZİ'),
(559, 46, 'İNEBOLU'),
(560, 46, 'KÜRE'),
(561, 46, 'MERKEZ'),
(562, 46, 'PINARBAŞI'),
(563, 46, 'SEYDİLER'),
(564, 46, 'ŞENPAZAR'),
(565, 46, 'TAŞKÖPRÜ'),
(566, 46, 'TOSYA'),
(567, 47, 'AKKIŞLA'),
(568, 47, 'BÜNYAN'),
(569, 47, 'DEVELİ'),
(570, 47, 'FELAHİYE'),
(571, 47, 'HACILAR'),
(572, 47, 'İNCESU'),
(573, 47, 'KOCASİNAN'),
(574, 47, 'MELİKGAZİ'),
(575, 47, 'ÖZVATAN'),
(576, 47, 'PINARBAŞI'),
(577, 47, 'SARIOĞLAN'),
(578, 47, 'SARIZ'),
(579, 47, 'TALAS'),
(580, 47, 'TOMARZA'),
(581, 47, 'YAHYALI'),
(582, 47, 'YEŞİLHİSAR'),
(583, 48, 'BAHŞİLİ'),
(584, 48, 'BALIŞEYH'),
(585, 48, 'ÇELEBİ'),
(586, 48, 'DELİCE'),
(587, 48, 'KARAKEÇİLİ'),
(588, 48, 'KESKİN'),
(589, 48, 'MERKEZ'),
(590, 48, 'SULAKYURT'),
(591, 48, 'YAHŞİHAN'),
(592, 49, 'BABAESKİ'),
(593, 49, 'DEMİRKÖY'),
(594, 49, 'KOFÇAZ'),
(595, 49, 'LÜLEBURGAZ'),
(596, 49, 'MERKEZ'),
(597, 49, 'PEHLİVANKÖY'),
(598, 49, 'PINARHİSAR'),
(599, 49, 'VİZE'),
(600, 50, 'AKÇAKENT'),
(601, 50, 'AKPINAR'),
(602, 50, 'BOZTEPE'),
(603, 50, 'ÇİÇEKDAĞI'),
(604, 50, 'KAMAN'),
(605, 50, 'MERKEZ'),
(606, 50, 'MUCUR'),
(607, 51, 'ELBEYLİ'),
(608, 51, 'MERKEZ'),
(609, 51, 'MUSABEYLİ'),
(610, 51, 'POLATELİ'),
(611, 52, 'BAŞİSKELE'),
(612, 52, 'ÇAYIROVA'),
(613, 52, 'DARICA'),
(614, 52, 'DERİNCE'),
(615, 52, 'DİLOVASI'),
(616, 52, 'GEBZE'),
(617, 52, 'GÖLCÜK'),
(618, 52, 'İZMİT'),
(619, 52, 'KANDIRA'),
(620, 52, 'KARAMÜRSEL'),
(621, 52, 'KARTEPE'),
(622, 52, 'KÖRFEZ'),
(623, 53, 'AHIRLI'),
(624, 53, 'AKÖREN'),
(625, 53, 'AKŞEHİR'),
(626, 53, 'ALTINEKİN'),
(627, 53, 'BEYŞEHİR'),
(628, 53, 'BOZKIR'),
(629, 53, 'CİHANBEYLİ'),
(630, 53, 'ÇELTİK'),
(631, 53, 'ÇUMRA'),
(632, 53, 'DERBENT'),
(633, 53, 'DEREBUCAK'),
(634, 53, 'DOĞANHİSAR'),
(635, 53, 'EMİRGAZİ'),
(636, 53, 'EREĞLİ'),
(637, 53, 'GÜNEYSINIR'),
(638, 53, 'HADİM'),
(639, 53, 'HALKAPINAR'),
(640, 53, 'HÜYÜK'),
(641, 53, 'ILGIN'),
(642, 53, 'KADINHANI'),
(643, 53, 'KARAPINAR'),
(644, 53, 'KARATAY'),
(645, 53, 'KULU'),
(646, 53, 'MERAM'),
(647, 53, 'SARAYÖNÜ'),
(648, 53, 'SELÇUKLU'),
(649, 53, 'SEYDİŞEHİR'),
(650, 53, 'TAŞKENT'),
(651, 53, 'TUZLUKÇU'),
(652, 53, 'YALIHÜYÜK'),
(653, 53, 'YUNAK'),
(654, 54, 'ALTINTAŞ'),
(655, 54, 'ASLANAPA'),
(656, 54, 'ÇAVDARHİSAR'),
(657, 54, 'DOMANİÇ'),
(658, 54, 'DUMLUPINAR'),
(659, 54, 'EMET'),
(660, 54, 'GEDİZ'),
(661, 54, 'HİSARCIK'),
(662, 54, 'MERKEZ'),
(663, 54, 'PAZARLAR'),
(664, 54, 'SİMAV'),
(665, 54, 'ŞAPHANE'),
(666, 54, 'TAVŞANLI'),
(667, 55, 'AKÇADAĞ'),
(668, 55, 'ARAPGİR'),
(669, 55, 'ARGUVAN'),
(670, 55, 'BATTALGAZİ'),
(671, 55, 'DARENDE'),
(672, 55, 'DOĞANŞEHİR'),
(673, 55, 'DOĞANYOL'),
(674, 55, 'HEKİMHAN'),
(675, 55, 'KALE'),
(676, 55, 'KULUNCAK'),
(677, 55, 'PÜTÜRGE'),
(678, 55, 'YAZIHAN'),
(679, 55, 'YEŞİLYURT'),
(680, 56, 'AHMETLİ'),
(681, 56, 'AKHİSAR'),
(682, 56, 'ALAŞEHİR'),
(683, 56, 'DEMİRCİ'),
(684, 56, 'GÖLMARMARA'),
(685, 56, 'GÖRDES'),
(686, 56, 'KIRKAĞAÇ'),
(687, 56, 'KÖPRÜBAŞI'),
(688, 56, 'KULA'),
(689, 56, 'SALİHLİ'),
(690, 56, 'SARIGÖL'),
(691, 56, 'SARUHANLI'),
(692, 56, 'SELENDİ'),
(693, 56, 'SOMA'),
(694, 56, 'ŞEHZADELER'),
(695, 56, 'TURGUTLU'),
(696, 56, 'YUNUSEMRE'),
(697, 57, 'ARTUKLU'),
(698, 57, 'DARGEÇİT'),
(699, 57, 'DERİK'),
(700, 57, 'KIZILTEPE'),
(701, 57, 'MAZIDAĞI'),
(702, 57, 'MİDYAT'),
(703, 57, 'NUSAYBİN'),
(704, 57, 'ÖMERLİ'),
(705, 57, 'SAVUR'),
(706, 57, 'YEŞİLLİ'),
(707, 58, 'AKDENİZ'),
(708, 58, 'ANAMUR'),
(709, 58, 'AYDINCIK'),
(710, 58, 'BOZYAZI'),
(711, 58, 'ÇAMLIYAYLA'),
(712, 58, 'ERDEMLİ'),
(713, 58, 'GÜLNAR'),
(714, 58, 'MEZİTLİ'),
(715, 58, 'MUT'),
(716, 58, 'SİLİFKE'),
(717, 58, 'TARSUS'),
(718, 58, 'TOROSLAR'),
(719, 58, 'YENİŞEHİR'),
(720, 59, 'BODRUM'),
(721, 59, 'DALAMAN'),
(722, 59, 'DATÇA'),
(723, 59, 'FETHİYE'),
(724, 59, 'KAVAKLIDERE'),
(725, 59, 'KÖYCEĞİZ'),
(726, 59, 'MARMARİS'),
(727, 59, 'MENTEŞE'),
(728, 59, 'MİLAS'),
(729, 59, 'ORTACA'),
(730, 59, 'SEYDİKEMER'),
(731, 59, 'ULA'),
(732, 59, 'YATAĞAN'),
(733, 60, 'BULANIK'),
(734, 60, 'HASKÖY'),
(735, 60, 'KORKUT'),
(736, 60, 'MALAZGİRT'),
(737, 60, 'MERKEZ'),
(738, 60, 'VARTO'),
(739, 61, 'ACIGÖL'),
(740, 61, 'AVANOS'),
(741, 61, 'DERİNKUYU'),
(742, 61, 'GÜLŞEHİR'),
(743, 61, 'HACIBEKTAŞ'),
(744, 61, 'KOZAKLI'),
(745, 61, 'MERKEZ'),
(746, 61, 'ÜRGÜP'),
(747, 62, 'ALTUNHİSAR'),
(748, 62, 'BOR'),
(749, 62, 'ÇAMARDI'),
(750, 62, 'ÇİFTLİK'),
(751, 62, 'MERKEZ'),
(752, 62, 'ULUKIŞLA'),
(753, 63, 'AKKUŞ'),
(754, 63, 'ALTINORDU'),
(755, 63, 'AYBASTI'),
(756, 63, 'ÇAMAŞ'),
(757, 63, 'ÇATALPINAR'),
(758, 63, 'ÇAYBAŞI'),
(759, 63, 'FATSA'),
(760, 63, 'GÖLKÖY'),
(761, 63, 'GÜLYALI'),
(762, 63, 'GÜRGENTEPE'),
(763, 63, 'İKİZCE'),
(764, 63, 'KABADÜZ'),
(765, 63, 'KABATAŞ'),
(766, 63, 'KORGAN'),
(767, 63, 'KUMRU'),
(768, 63, 'MESUDİYE'),
(769, 63, 'PERŞEMBE'),
(770, 63, 'ULUBEY'),
(771, 63, 'ÜNYE'),
(772, 64, 'BAHÇE'),
(773, 64, 'DÜZİÇİ'),
(774, 64, 'HASANBEYLİ'),
(775, 64, 'KADİRLİ'),
(776, 64, 'MERKEZ'),
(777, 64, 'SUMBAS'),
(778, 64, 'TOPRAKKALE'),
(779, 65, 'ARDEŞEN'),
(780, 65, 'ÇAMLIHEMŞİN'),
(781, 65, 'ÇAYELİ'),
(782, 65, 'DEREPAZARI'),
(783, 65, 'FINDIKLI'),
(784, 65, 'GÜNEYSU'),
(785, 65, 'HEMŞİN'),
(786, 65, 'İKİZDERE'),
(787, 65, 'İYİDERE'),
(788, 65, 'KALKANDERE'),
(789, 65, 'MERKEZ'),
(790, 65, 'PAZAR'),
(791, 66, 'ADAPAZARI'),
(792, 66, 'AKYAZI'),
(793, 66, 'ARİFİYE'),
(794, 66, 'ERENLER'),
(795, 66, 'FERİZLİ'),
(796, 66, 'GEYVE'),
(797, 66, 'HENDEK'),
(798, 66, 'KARAPÜRÇEK'),
(799, 66, 'KARASU'),
(800, 66, 'KAYNARCA'),
(801, 66, 'KOCAALİ'),
(802, 66, 'PAMUKOVA'),
(803, 66, 'SAPANCA'),
(804, 66, 'SERDİVAN'),
(805, 66, 'SÖĞÜTLÜ'),
(806, 66, 'TARAKLI'),
(807, 67, '19 MAYIS'),
(808, 67, 'ALAÇAM'),
(809, 67, 'ASARCIK'),
(810, 67, 'ATAKUM'),
(811, 67, 'AYVACIK'),
(812, 67, 'BAFRA'),
(813, 67, 'CANİK'),
(814, 67, 'ÇARŞAMBA'),
(815, 67, 'HAVZA'),
(816, 67, 'İLKADIM'),
(817, 67, 'KAVAK'),
(818, 67, 'LADİK'),
(819, 67, 'SALIPAZARI'),
(820, 67, 'TEKKEKÖY'),
(821, 67, 'TERME'),
(822, 67, 'VEZİRKÖPRÜ'),
(823, 67, 'YAKAKENT'),
(824, 68, 'BAYKAN'),
(825, 68, 'ERUH'),
(826, 68, 'KURTALAN'),
(827, 68, 'MERKEZ'),
(828, 68, 'PERVARİ'),
(829, 68, 'ŞİRVAN'),
(830, 68, 'TİLLO'),
(831, 69, 'AYANCIK'),
(832, 69, 'BOYABAT'),
(833, 69, 'DİKMEN'),
(834, 69, 'DURAĞAN'),
(835, 69, 'ERFELEK'),
(836, 69, 'GERZE'),
(837, 69, 'MERKEZ'),
(838, 69, 'SARAYDÜZÜ'),
(839, 69, 'TÜRKELİ'),
(840, 70, 'AKINCILAR'),
(841, 70, 'ALTINYAYLA'),
(842, 70, 'DİVRİĞİ'),
(843, 70, 'DOĞANŞAR'),
(844, 70, 'GEMEREK'),
(845, 70, 'GÖLOVA'),
(846, 70, 'GÜRÜN'),
(847, 70, 'HAFİK'),
(848, 70, 'İMRANLI'),
(849, 70, 'KANGAL'),
(850, 70, 'KOYULHİSAR'),
(851, 70, 'MERKEZ'),
(852, 70, 'SUŞEHRİ'),
(853, 70, 'ŞARKIŞLA'),
(854, 70, 'ULAŞ'),
(855, 70, 'YILDIZELİ'),
(856, 70, 'ZARA'),
(857, 71, 'AKÇAKALE'),
(858, 71, 'BİRECİK'),
(859, 71, 'BOZOVA'),
(860, 71, 'CEYLANPINAR'),
(861, 71, 'EYYÜBİYE'),
(862, 71, 'HALFETİ'),
(863, 71, 'HALİLİYE'),
(864, 71, 'HARRAN'),
(865, 71, 'HİLVAN'),
(866, 71, 'KARAKÖPRÜ'),
(867, 71, 'SİVEREK'),
(868, 71, 'SURUÇ'),
(869, 71, 'VİRANŞEHİR'),
(870, 72, 'BEYTÜŞŞEBAP'),
(871, 72, 'CİZRE'),
(872, 72, 'GÜÇLÜKONAK'),
(873, 72, 'İDİL'),
(874, 72, 'MERKEZ'),
(875, 72, 'SİLOPİ'),
(876, 72, 'ULUDERE'),
(877, 73, 'ÇERKEZKÖY'),
(878, 73, 'ÇORLU'),
(879, 73, 'ERGENE'),
(880, 73, 'HAYRABOLU'),
(881, 73, 'KAPAKLI'),
(882, 73, 'MALKARA'),
(883, 73, 'MARMARAEREĞLİSİ'),
(884, 73, 'MURATLI'),
(885, 73, 'SARAY'),
(886, 73, 'SÜLEYMANPAŞA'),
(887, 73, 'ŞARKÖY'),
(888, 74, 'ALMUS'),
(889, 74, 'ARTOVA'),
(890, 74, 'BAŞÇİFTLİK'),
(891, 74, 'ERBAA'),
(892, 74, 'MERKEZ'),
(893, 74, 'NİKSAR'),
(894, 74, 'PAZAR'),
(895, 74, 'REŞADİYE'),
(896, 74, 'SULUSARAY'),
(897, 74, 'TURHAL'),
(898, 74, 'YEŞİLYURT'),
(899, 74, 'ZİLE'),
(900, 75, 'AKÇAABAT'),
(901, 75, 'ARAKLI'),
(902, 75, 'ARSİN'),
(903, 75, 'BEŞİKDÜZÜ'),
(904, 75, 'ÇARŞIBAŞI'),
(905, 75, 'ÇAYKARA'),
(906, 75, 'DERNEKPAZARI'),
(907, 75, 'DÜZKÖY'),
(908, 75, 'HAYRAT'),
(909, 75, 'KÖPRÜBAŞI'),
(910, 75, 'MAÇKA'),
(911, 75, 'OF'),
(912, 75, 'ORTAHİSAR'),
(913, 75, 'SÜRMENE'),
(914, 75, 'ŞALPAZARI'),
(915, 75, 'TONYA'),
(916, 75, 'VAKFIKEBİR'),
(917, 75, 'YOMRA'),
(918, 76, 'ÇEMİŞGEZEK'),
(919, 76, 'HOZAT'),
(920, 76, 'MAZGİRT'),
(921, 76, 'MERKEZ'),
(922, 76, 'NAZIMİYE'),
(923, 76, 'OVACIK'),
(924, 76, 'PERTEK'),
(925, 76, 'PÜLÜMÜR'),
(926, 77, 'BANAZ'),
(927, 77, 'EŞME'),
(928, 77, 'KARAHALLI'),
(929, 77, 'MERKEZ'),
(930, 77, 'SİVASLI'),
(931, 77, 'ULUBEY'),
(932, 78, 'BAHÇESARAY'),
(933, 78, 'BAŞKALE'),
(934, 78, 'ÇALDIRAN'),
(935, 78, 'ÇATAK'),
(936, 78, 'EDREMİT'),
(937, 78, 'ERCİŞ'),
(938, 78, 'GEVAŞ'),
(939, 78, 'GÜRPINAR'),
(940, 78, 'İPEKYOLU'),
(941, 78, 'MURADİYE'),
(942, 78, 'ÖZALP'),
(943, 78, 'SARAY'),
(944, 78, 'TUŞBA'),
(945, 79, 'ALTINOVA'),
(946, 79, 'ARMUTLU'),
(947, 79, 'ÇINARCIK'),
(948, 79, 'ÇİFTLİKKÖY'),
(949, 79, 'MERKEZ'),
(950, 79, 'TERMAL'),
(951, 80, 'AKDAĞMADENİ'),
(952, 80, 'AYDINCIK'),
(953, 80, 'BOĞAZLIYAN'),
(954, 80, 'ÇANDIR'),
(955, 80, 'ÇAYIRALAN'),
(956, 80, 'ÇEKEREK'),
(957, 80, 'KADIŞEHRİ'),
(958, 80, 'MERKEZ'),
(959, 80, 'SARAYKENT'),
(960, 80, 'SARIKAYA'),
(961, 80, 'SORGUN'),
(962, 80, 'ŞEFAATLİ'),
(963, 80, 'YENİFAKILI'),
(964, 80, 'YERKÖY'),
(965, 81, 'ALAPLI'),
(966, 81, 'ÇAYCUMA'),
(967, 81, 'DEVREK'),
(968, 81, 'EREĞLİ'),
(969, 81, 'GÖKÇEBEY'),
(970, 81, 'KİLİMLİ'),
(971, 81, 'KOZLU'),
(972, 81, 'MERKEZ');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users_table`
--

CREATE TABLE `users_table` (
  `user_id` int(11) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_insert_time` bigint(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `users_table`
--

INSERT INTO `users_table` (`user_id`, `user_type_id`, `user_name`, `password`, `user_insert_time`, `status`) VALUES
(1, 1, 'Yönetici ', '9999', 1534420510, 0),
(2, 3, 'Mutfak', '7777', 1534420528, 0),
(3, 2, 'Garson', '8888', 1538290711, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_authentication_table`
--

CREATE TABLE `user_authentication_table` (
  `auth_id` int(11) NOT NULL,
  `auth_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `user_authentication_table`
--

INSERT INTO `user_authentication_table` (`auth_id`, `auth_name`, `status`) VALUES
(1, 'Anasayfa', 0),
(2, 'Masalar', 0),
(3, 'Masa ( Sipariş Alma )', 0),
(4, 'Mutfak', 0),
(5, 'Satın Alma', 0),
(6, 'Raporlar', 0),
(7, 'Depolar', 0),
(8, 'Kasa İşlemleri', 0),
(9, 'Yönetim', 0),
(10, 'Müşteriler', 0),
(11, 'İkram Yetkisi', 0),
(12, 'İptal Yetkisi', 0),
(13, 'Fiyat Değiştirme Yetkisi', 0),
(14, 'İptal Açıklama Zorunlu', 0),
(15, 'İkram Açıklama Zorunlu', 0),
(16, 'Fiyat Değiştir Açıklama Zorunlu', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_auth_table`
--

CREATE TABLE `user_auth_table` (
  `id` int(11) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `auth_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `user_auth_table`
--

INSERT INTO `user_auth_table` (`id`, `user_type_id`, `auth_id`) VALUES
(25, 3, 4),
(68, 2, 2),
(69, 2, 3),
(83, 1, 1),
(84, 1, 2),
(85, 1, 3),
(86, 1, 4),
(87, 1, 6),
(88, 1, 7),
(89, 1, 8),
(90, 1, 9),
(91, 1, 10),
(92, 1, 11),
(93, 1, 12),
(94, 1, 13);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_logs_table`
--

CREATE TABLE `user_logs_table` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `process_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `process_time` bigint(20) NOT NULL,
  `process_data` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_log_report`
--

CREATE TABLE `user_log_report` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `process` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_price` decimal(7,2) NOT NULL,
  `last_price` decimal(7,2) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `porsion_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `insert_time` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_types_table`
--

CREATE TABLE `user_types_table` (
  `user_type_id` int(11) NOT NULL,
  `user_type_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `insert_time` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `user_types_table`
--

INSERT INTO `user_types_table` (`user_type_id`, `user_type_name`, `insert_time`) VALUES
(1, 'Yönetici', 0),
(2, 'Garson', 0),
(3, 'Mutfak', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `zones_table`
--

CREATE TABLE `zones_table` (
  `zone_id` int(11) NOT NULL,
  `zone_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `zones_table`
--

INSERT INTO `zones_table` (`zone_id`, `zone_name`) VALUES
(1, 'Kasa 1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `aaaa_reports_table`
--
ALTER TABLE `aaaa_reports_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `aaa_printers_table`
--
ALTER TABLE `aaa_printers_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `aaa_print_table`
--
ALTER TABLE `aaa_print_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `about_us_table`
--
ALTER TABLE `about_us_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`admin_id`);

--
-- Tablo için indeksler `branches_table`
--
ALTER TABLE `branches_table`
  ADD PRIMARY KEY (`branch_id`);

--
-- Tablo için indeksler `cats_table`
--
ALTER TABLE `cats_table`
  ADD PRIMARY KEY (`cat_id`);

--
-- Tablo için indeksler `cats_table2`
--
ALTER TABLE `cats_table2`
  ADD PRIMARY KEY (`cat_id`);

--
-- Tablo için indeksler `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`CityID`);

--
-- Tablo için indeksler `companies_table`
--
ALTER TABLE `companies_table`
  ADD PRIMARY KEY (`company_id`);

--
-- Tablo için indeksler `customers_table`
--
ALTER TABLE `customers_table`
  ADD PRIMARY KEY (`customer_id`);

--
-- Tablo için indeksler `customer_addresses_table`
--
ALTER TABLE `customer_addresses_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `days_table`
--
ALTER TABLE `days_table`
  ADD PRIMARY KEY (`day_id`);

--
-- Tablo için indeksler `depos_table`
--
ALTER TABLE `depos_table`
  ADD PRIMARY KEY (`depo_id`);

--
-- Tablo için indeksler `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`DistrictID`),
  ADD KEY `FK_District_TownID` (`TownID`);

--
-- Tablo için indeksler `footer_settings_table`
--
ALTER TABLE `footer_settings_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `gallery_table`
--
ALTER TABLE `gallery_table`
  ADD PRIMARY KEY (`img_id`);

--
-- Tablo için indeksler `kitchens_table`
--
ALTER TABLE `kitchens_table`
  ADD PRIMARY KEY (`kitchen_id`);

--
-- Tablo için indeksler `kitchen_cats_table`
--
ALTER TABLE `kitchen_cats_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `menu_cats_table`
--
ALTER TABLE `menu_cats_table`
  ADD PRIMARY KEY (`cat_id`);

--
-- Tablo için indeksler `menu_cat_product_table`
--
ALTER TABLE `menu_cat_product_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `menu_sub_cats_table`
--
ALTER TABLE `menu_sub_cats_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `neighborhood`
--
ALTER TABLE `neighborhood`
  ADD PRIMARY KEY (`NeighborhoodID`),
  ADD KEY `FK_Neighborhood_DistrictID` (`DistrictID`);

--
-- Tablo için indeksler `orders_table`
--
ALTER TABLE `orders_table`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `table_id` (`table_id`),
  ADD KEY `table_id_2` (`table_id`),
  ADD KEY `order_id_2` (`order_id`);

--
-- Tablo için indeksler `order_codes_table`
--
ALTER TABLE `order_codes_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `order_details_table`
--
ALTER TABLE `order_details_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `porsion_id` (`porsion_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Tablo için indeksler `order_payments_table`
--
ALTER TABLE `order_payments_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `sub_p_id` (`sub_p_id`);

--
-- Tablo için indeksler `pages_table`
--
ALTER TABLE `pages_table`
  ADD PRIMARY KEY (`page_id`);

--
-- Tablo için indeksler `payment_subtypes_table`
--
ALTER TABLE `payment_subtypes_table`
  ADD PRIMARY KEY (`payment_sub_id`),
  ADD KEY `payment_sub_id` (`payment_sub_id`);

--
-- Tablo için indeksler `payment_types_table`
--
ALTER TABLE `payment_types_table`
  ADD PRIMARY KEY (`payment_id`);

--
-- Tablo için indeksler `porsions_table`
--
ALTER TABLE `porsions_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Tablo için indeksler `price_lists_table`
--
ALTER TABLE `price_lists_table`
  ADD PRIMARY KEY (`list_id`);

--
-- Tablo için indeksler `price_list_details`
--
ALTER TABLE `price_list_details`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `products_and_option_groups_table`
--
ALTER TABLE `products_and_option_groups_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `products_imgs_table`
--
ALTER TABLE `products_imgs_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `products_options_table`
--
ALTER TABLE `products_options_table`
  ADD PRIMARY KEY (`option_id`);

--
-- Tablo için indeksler `products_option_groups_table`
--
ALTER TABLE `products_option_groups_table`
  ADD PRIMARY KEY (`og_id`);

--
-- Tablo için indeksler `products_porsion_table`
--
ALTER TABLE `products_porsion_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `products_price_table`
--
ALTER TABLE `products_price_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `products_table`
--
ALTER TABLE `products_table`
  ADD PRIMARY KEY (`pro_id`);

--
-- Tablo için indeksler `products_table2`
--
ALTER TABLE `products_table2`
  ADD PRIMARY KEY (`pro_id`);

--
-- Tablo için indeksler `product_cats_table`
--
ALTER TABLE `product_cats_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product_cats_table2`
--
ALTER TABLE `product_cats_table2`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pro_cats_table`
--
ALTER TABLE `pro_cats_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pro_price_show`
--
ALTER TABLE `pro_price_show`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `purchase_details_table`
--
ALTER TABLE `purchase_details_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `purchase_payments_table`
--
ALTER TABLE `purchase_payments_table`
  ADD PRIMARY KEY (`payment_id`);

--
-- Tablo için indeksler `purchase_table`
--
ALTER TABLE `purchase_table`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Tablo için indeksler `recipes_table`
--
ALTER TABLE `recipes_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `reservations_table`
--
ALTER TABLE `reservations_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sales_table`
--
ALTER TABLE `sales_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `service_areas_table`
--
ALTER TABLE `service_areas_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `settings_table`
--
ALTER TABLE `settings_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `slides_table`
--
ALTER TABLE `slides_table`
  ADD PRIMARY KEY (`slide_id`);

--
-- Tablo için indeksler `stock_details_table`
--
ALTER TABLE `stock_details_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `stock_records_table`
--
ALTER TABLE `stock_records_table`
  ADD PRIMARY KEY (`record_id`);

--
-- Tablo için indeksler `sub_cats_table`
--
ALTER TABLE `sub_cats_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tables_table`
--
ALTER TABLE `tables_table`
  ADD PRIMARY KEY (`table_id`),
  ADD KEY `table_id` (`table_id`),
  ADD KEY `table_id_2` (`table_id`);

--
-- Tablo için indeksler `table_54`
--
ALTER TABLE `table_54`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `town`
--
ALTER TABLE `town`
  ADD PRIMARY KEY (`TownID`),
  ADD KEY `FK_Town_CityID` (`CityID`);

--
-- Tablo için indeksler `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`user_id`);

--
-- Tablo için indeksler `user_authentication_table`
--
ALTER TABLE `user_authentication_table`
  ADD PRIMARY KEY (`auth_id`);

--
-- Tablo için indeksler `user_auth_table`
--
ALTER TABLE `user_auth_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user_logs_table`
--
ALTER TABLE `user_logs_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user_log_report`
--
ALTER TABLE `user_log_report`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user_types_table`
--
ALTER TABLE `user_types_table`
  ADD PRIMARY KEY (`user_type_id`);

--
-- Tablo için indeksler `zones_table`
--
ALTER TABLE `zones_table`
  ADD PRIMARY KEY (`zone_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `aaaa_reports_table`
--
ALTER TABLE `aaaa_reports_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `aaa_printers_table`
--
ALTER TABLE `aaa_printers_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `aaa_print_table`
--
ALTER TABLE `aaa_print_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `about_us_table`
--
ALTER TABLE `about_us_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `branches_table`
--
ALTER TABLE `branches_table`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `cats_table`
--
ALTER TABLE `cats_table`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `cats_table2`
--
ALTER TABLE `cats_table2`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `city`
--
ALTER TABLE `city`
  MODIFY `CityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- Tablo için AUTO_INCREMENT değeri `companies_table`
--
ALTER TABLE `companies_table`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `customers_table`
--
ALTER TABLE `customers_table`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `customer_addresses_table`
--
ALTER TABLE `customer_addresses_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `days_table`
--
ALTER TABLE `days_table`
  MODIFY `day_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `depos_table`
--
ALTER TABLE `depos_table`
  MODIFY `depo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `district`
--
ALTER TABLE `district`
  MODIFY `DistrictID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2434;

--
-- Tablo için AUTO_INCREMENT değeri `footer_settings_table`
--
ALTER TABLE `footer_settings_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `gallery_table`
--
ALTER TABLE `gallery_table`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `kitchens_table`
--
ALTER TABLE `kitchens_table`
  MODIFY `kitchen_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `kitchen_cats_table`
--
ALTER TABLE `kitchen_cats_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `menu_cats_table`
--
ALTER TABLE `menu_cats_table`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `menu_cat_product_table`
--
ALTER TABLE `menu_cat_product_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- Tablo için AUTO_INCREMENT değeri `menu_sub_cats_table`
--
ALTER TABLE `menu_sub_cats_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `neighborhood`
--
ALTER TABLE `neighborhood`
  MODIFY `NeighborhoodID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `orders_table`
--
ALTER TABLE `orders_table`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `order_codes_table`
--
ALTER TABLE `order_codes_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `order_details_table`
--
ALTER TABLE `order_details_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `order_payments_table`
--
ALTER TABLE `order_payments_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `pages_table`
--
ALTER TABLE `pages_table`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `payment_subtypes_table`
--
ALTER TABLE `payment_subtypes_table`
  MODIFY `payment_sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Tablo için AUTO_INCREMENT değeri `payment_types_table`
--
ALTER TABLE `payment_types_table`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `porsions_table`
--
ALTER TABLE `porsions_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `price_lists_table`
--
ALTER TABLE `price_lists_table`
  MODIFY `list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `price_list_details`
--
ALTER TABLE `price_list_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `products_and_option_groups_table`
--
ALTER TABLE `products_and_option_groups_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `products_imgs_table`
--
ALTER TABLE `products_imgs_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `products_options_table`
--
ALTER TABLE `products_options_table`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `products_option_groups_table`
--
ALTER TABLE `products_option_groups_table`
  MODIFY `og_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `products_porsion_table`
--
ALTER TABLE `products_porsion_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `products_price_table`
--
ALTER TABLE `products_price_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `products_table`
--
ALTER TABLE `products_table`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `products_table2`
--
ALTER TABLE `products_table2`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Tablo için AUTO_INCREMENT değeri `product_cats_table`
--
ALTER TABLE `product_cats_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `product_cats_table2`
--
ALTER TABLE `product_cats_table2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `pro_cats_table`
--
ALTER TABLE `pro_cats_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `pro_price_show`
--
ALTER TABLE `pro_price_show`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `purchase_details_table`
--
ALTER TABLE `purchase_details_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `purchase_payments_table`
--
ALTER TABLE `purchase_payments_table`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `purchase_table`
--
ALTER TABLE `purchase_table`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `recipes_table`
--
ALTER TABLE `recipes_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `reservations_table`
--
ALTER TABLE `reservations_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `sales_table`
--
ALTER TABLE `sales_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `service_areas_table`
--
ALTER TABLE `service_areas_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `settings_table`
--
ALTER TABLE `settings_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `slides_table`
--
ALTER TABLE `slides_table`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `stock_details_table`
--
ALTER TABLE `stock_details_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `stock_records_table`
--
ALTER TABLE `stock_records_table`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `sub_cats_table`
--
ALTER TABLE `sub_cats_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `tables_table`
--
ALTER TABLE `tables_table`
  MODIFY `table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `table_54`
--
ALTER TABLE `table_54`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `town`
--
ALTER TABLE `town`
  MODIFY `TownID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=973;

--
-- Tablo için AUTO_INCREMENT değeri `users_table`
--
ALTER TABLE `users_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `user_authentication_table`
--
ALTER TABLE `user_authentication_table`
  MODIFY `auth_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `user_auth_table`
--
ALTER TABLE `user_auth_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- Tablo için AUTO_INCREMENT değeri `user_logs_table`
--
ALTER TABLE `user_logs_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `user_log_report`
--
ALTER TABLE `user_log_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `user_types_table`
--
ALTER TABLE `user_types_table`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `zones_table`
--
ALTER TABLE `zones_table`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
