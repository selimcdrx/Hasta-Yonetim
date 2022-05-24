-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 18 May 2022, 00:57:59
-- Sunucu sürümü: 5.7.38
-- PHP Sürümü: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `selimyra_nazar`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` int(11) NOT NULL,
  `site_logo` varchar(400) DEFAULT NULL,
  `site_baslik` varchar(350) DEFAULT NULL,
  `site_aciklama` varchar(300) DEFAULT NULL,
  `site_link` varchar(100) DEFAULT NULL,
  `site_sahip_mail` varchar(100) DEFAULT NULL,
  `site_mail_host` varchar(100) DEFAULT NULL,
  `site_mail_mail` varchar(100) DEFAULT NULL,
  `site_mail_port` int(11) DEFAULT NULL,
  `site_mail_sifre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `site_logo`, `site_baslik`, `site_aciklama`, `site_link`, `site_sahip_mail`, `site_mail_host`, `site_mail_mail`, `site_mail_port`, `site_mail_sifre`) VALUES
(1, '6017762022-05-17_23-40-52.png', 'Nazar Keskin Muayenehanesi\r\n', 'Nazar Keskin Muayenehanesi\r\n', 'http://localhost/kurs', 'info@selim-kurt.com.tr', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `kul_id` int(11) NOT NULL,
  `kul_isim` varchar(200) DEFAULT NULL,
  `kul_mail` varchar(200) DEFAULT NULL,
  `kul_sifre` varchar(100) DEFAULT NULL,
  `kul_telefon` varchar(100) DEFAULT NULL,
  `kul_yetki` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`kul_id`, `kul_isim`, `kul_mail`, `kul_sifre`, `kul_telefon`, `kul_yetki`) VALUES
(1, 'Nazar Keskin', 'nazarkeskin@gmail.com', '6af08e71a35bd717fe257982d8ac98ca', '111111', 1),
(3, 'selim cdrx', 'contact@selim-kurt.com.tr', 'daf21b0bf9a8ac55cdb3eb1ee7764057', '15510', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesajlar`
--

CREATE TABLE `mesajlar` (
  `mesaj_id` int(11) NOT NULL,
  `mesaj_gonderen` int(11) DEFAULT NULL,
  `mesaj_detay` text,
  `mesaj_eklenme_tarih` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `mesajlar`
--

INSERT INTO `mesajlar` (`mesaj_id`, `mesaj_gonderen`, `mesaj_detay`, `mesaj_eklenme_tarih`) VALUES
(13, 1, 'Deneme asistan', '2022-05-18 00:43:55'),
(14, 1, 'Kızım kahve alabilirmiyim ', '2022-05-18 00:55:21');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteri`
--

CREATE TABLE `musteri` (
  `musteri_id` int(11) NOT NULL,
  `musteri_isim` varchar(400) DEFAULT NULL,
  `musteri_mail` varchar(400) DEFAULT NULL,
  `musteri_telefon` varchar(20) DEFAULT NULL,
  `musteri_ulke` varchar(200) DEFAULT NULL,
  `musteri_sehir` varchar(200) DEFAULT NULL,
  `musteri_adres` varchar(530) DEFAULT NULL,
  `musteri_website` varchar(100) DEFAULT NULL,
  `musteri_meslek` varchar(200) DEFAULT NULL,
  `musteri_detay` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `musteri`
--

INSERT INTO `musteri` (`musteri_id`, `musteri_isim`, `musteri_mail`, `musteri_telefon`, `musteri_ulke`, `musteri_sehir`, `musteri_adres`, `musteri_website`, `musteri_meslek`, `musteri_detay`) VALUES
(24, 'selim kurt', 'contact@selim-kurt.com.tr', '+905520921411', 'Türkiye', 'iskenderun', 'hatay merkez', 'apse', '18/05/2021', '');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`kul_id`);

--
-- Tablo için indeksler `mesajlar`
--
ALTER TABLE `mesajlar`
  ADD PRIMARY KEY (`mesaj_id`);

--
-- Tablo için indeksler `musteri`
--
ALTER TABLE `musteri`
  ADD PRIMARY KEY (`musteri_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ayarlar`
--
ALTER TABLE `ayarlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `kul_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `mesajlar`
--
ALTER TABLE `mesajlar`
  MODIFY `mesaj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `musteri`
--
ALTER TABLE `musteri`
  MODIFY `musteri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
