CREATE DATABASE  IF NOT EXISTS `paperless` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `paperless`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: paperless
-- ------------------------------------------------------
-- Server version	5.5.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t010`
--

DROP TABLE IF EXISTS `t010`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t010` (
  `tipe` varchar(4) NOT NULL,
  `kode` varchar(4) NOT NULL,
  `deksripsi` varchar(10) NOT NULL,
  `assocval` varchar(10) NOT NULL,
  PRIMARY KEY (`tipe`,`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t010`
--

LOCK TABLES `t010` WRITE;
/*!40000 ALTER TABLE `t010` DISABLE KEYS */;
INSERT INTO `t010` VALUES ('TKMR','A','ANDO',' '),('TKMR','O','Lain2',' '),('TKMR','S','Santica',' '),('TKOT','DPS','Denpasar',' '),('TKOT','NGR','Negara',' '),('TKOT','SGRJ','Singaraja',' '),('TKT','B','BS',' '),('TKT','N','Normal',' '),('TSPG','A','Aktif',' '),('TSPG','N','Non Aktif',' ');
/*!40000 ALTER TABLE `t010` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tkartustok`
--

DROP TABLE IF EXISTS `tkartustok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tkartustok` (
  `nourut` bigint(10) NOT NULL,
  `kodekatalog` varchar(4) NOT NULL,
  `kodetrans` varchar(10) NOT NULL,
  `awal` int(11) NOT NULL,
  `transaksi` int(11) NOT NULL,
  `akhir` int(11) NOT NULL,
  PRIMARY KEY (`nourut`,`kodekatalog`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tkartustok`
--

LOCK TABLES `tkartustok` WRITE;
/*!40000 ALTER TABLE `tkartustok` DISABLE KEYS */;
/*!40000 ALTER TABLE `tkartustok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tkatalog`
--

DROP TABLE IF EXISTS `tkatalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tkatalog` (
  `kode` varchar(4) NOT NULL,
  `merk` varchar(4) NOT NULL COMMENT 'TKMR',
  `artikel` varchar(20) NOT NULL,
  `ukuran` varchar(10) NOT NULL,
  `warna` varchar(10) NOT NULL,
  `tipe` varchar(4) NOT NULL COMMENT 'TKT',
  `longdesc` varchar(50) NOT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tkatalog`
--

LOCK TABLES `tkatalog` WRITE;
/*!40000 ALTER TABLE `tkatalog` DISABLE KEYS */;
INSERT INTO `tkatalog` VALUES ('kode','A','a','s-2vd','x/x','N','ANDO a s-2vd x/x Normal'),('kodx','O','a','s-2','x/x','N','Lain2 a s-2 x/x Normal');
/*!40000 ALTER TABLE `tkatalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tklien`
--

DROP TABLE IF EXISTS `tklien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tklien` (
  `kode` varchar(4) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(45) NOT NULL,
  `kota` varchar(4) NOT NULL COMMENT 'msf010:tkot',
  `kodepos` varchar(6) NOT NULL,
  `namakontak` varchar(20) NOT NULL,
  `telp` varchar(45) NOT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tklien`
--

LOCK TABLES `tklien` WRITE;
/*!40000 ALTER TABLE `tklien` DISABLE KEYS */;
INSERT INTO `tklien` VALUES ('ca1','csa','csac','NGR','csa','csa','csacsa');
/*!40000 ALTER TABLE `tklien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tklienhistory`
--

DROP TABLE IF EXISTS `tklienhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tklienhistory` (
  `klien` varchar(4) NOT NULL,
  `katalog` varchar(4) NOT NULL,
  `nomer` varchar(4) NOT NULL,
  `tanggal` varchar(6) NOT NULL COMMENT 'YYMMDD',
  `harga` double NOT NULL,
  `discount` varchar(20) NOT NULL,
  `satuan` varchar(4) NOT NULL,
  PRIMARY KEY (`klien`,`katalog`,`nomer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tklienhistory`
--

LOCK TABLES `tklienhistory` WRITE;
/*!40000 ALTER TABLE `tklienhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `tklienhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tkodegenerator`
--

DROP TABLE IF EXISTS `tkodegenerator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tkodegenerator` (
  `tipe` varchar(4) NOT NULL COMMENT 'Kartu stok : TKST;katalog',
  `kode` varchar(8) NOT NULL,
  `last` bigint(10) unsigned zerofill NOT NULL,
  PRIMARY KEY (`tipe`,`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tkodegenerator`
--

LOCK TABLES `tkodegenerator` WRITE;
/*!40000 ALTER TABLE `tkodegenerator` DISABLE KEYS */;
INSERT INTO `tkodegenerator` VALUES ('TKHX','CCCCBBBB',0000000013);
/*!40000 ALTER TABLE `tkodegenerator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpegawai`
--

DROP TABLE IF EXISTS `tpegawai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tpegawai` (
  `kode` varchar(4) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `status` varchar(4) NOT NULL COMMENT 'MSF010:TSPG',
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpegawai`
--

LOCK TABLES `tpegawai` WRITE;
/*!40000 ALTER TABLE `tpegawai` DISABLE KEYS */;
INSERT INTO `tpegawai` VALUES ('WA01','Wewenu','A'),('WA03','xxxx','A'),('WA0x','Wewenu','A');
/*!40000 ALTER TABLE `tpegawai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ttransbrgheader`
--

DROP TABLE IF EXISTS `ttransbrgheader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttransbrgheader` (
  `kode` varchar(10) NOT NULL COMMENT 'reverse YYMMDDXXXX',
  `tanggal` varchar(6) NOT NULL COMMENT 'YYMMDD',
  `klien` varchar(4) NOT NULL COMMENT 'tklien',
  `pegawai` varchar(4) NOT NULL,
  `keluarmasuk` varchar(4) NOT NULL COMMENT 'keluar masuk tergantung assoc val di t010:TTBH\\n- pembelian : TBHI --> menambah barang\\n- penjualan : TBHO --> mengurangi\\n- retur dr customer : TBHX --> menambah\\n- retur ke pabrik : TBHY --> mengurangi\\n',
  `keterangan` varchar(255) NOT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='transaksi barang header';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttransbrgheader`
--

LOCK TABLES `ttransbrgheader` WRITE;
/*!40000 ALTER TABLE `ttransbrgheader` DISABLE KEYS */;
/*!40000 ALTER TABLE `ttransbrgheader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ttransbrgitem`
--

DROP TABLE IF EXISTS `ttransbrgitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttransbrgitem` (
  `kode` varchar(10) NOT NULL COMMENT 'ttransbarangheader',
  `kodekatalog` varchar(4) NOT NULL,
  `jumlah` double NOT NULL,
  `satuan` varchar(4) NOT NULL COMMENT 'MSF010:TSB',
  `harga` double NOT NULL,
  `discount` varchar(20) NOT NULL COMMENT '10 \\n10 + 10.5\\n10+10+10',
  `total` double NOT NULL,
  `status` varchar(4) NOT NULL COMMENT 'TTHS',
  PRIMARY KEY (`kode`,`kodekatalog`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='transaksi barang item';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttransbrgitem`
--

LOCK TABLES `ttransbrgitem` WRITE;
/*!40000 ALTER TABLE `ttransbrgitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ttransbrgitem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-10 13:16:41
