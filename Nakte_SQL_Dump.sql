-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: financial_management_tpc
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
CREATE SCHEMA IF NOT EXISTS `Financial_Management_TPC` ;
USE `Financial_Management_TPC` ;

--
-- Table structure for table `customer_dimension`
--

DROP TABLE IF EXISTS `customer_dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_dimension` (
  `Customer_SK(PK)` int(11) NOT NULL,
  `Customer ID (NK)` varchar(20) NOT NULL,
  `Customer Name` varchar(25) DEFAULT NULL,
  `Customer Address 1` varchar(50) DEFAULT NULL,
  `Customer Address 2` varchar(50) DEFAULT NULL,
  `Customer Country` varchar(15) DEFAULT NULL,
  `Customer State` varchar(20) DEFAULT NULL,
  `Customer City` varchar(20) DEFAULT NULL,
  `Customer Zipcode` varchar(10) DEFAULT NULL,
  `Customer Type` varchar(20) DEFAULT NULL,
  `Customer Street Address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Customer_SK(PK)`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_dimension`
--

LOCK TABLES `customer_dimension` WRITE;
/*!40000 ALTER TABLE `customer_dimension` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_dimension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financial_analysis_fact`
--

DROP TABLE IF EXISTS `financial_analysis_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `financial_analysis_fact` (
  `Customer_SK(FK)` int(11) NOT NULL,
  `Supplier_SK(FK)` int(11) NOT NULL,
  `Product_SK(FK)` int(11) NOT NULL,
  `Order_Date_SK(FK)` int(11) NOT NULL,
  `Sales_Date_SK(FK)` int(11) NOT NULL,
  `Payment_Method_SK(FK)` int(11) NOT NULL,
  `Number of days` int(11) DEFAULT NULL,
  `Sales Cost` decimal(10,2) DEFAULT NULL,
  `Product Amount` decimal(10,2) DEFAULT NULL,
  `Sales Quantity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Customer_SK(FK)`,`Supplier_SK(FK)`,`Product_SK(FK)`,`Order_Date_SK(FK)`,`Sales_Date_SK(FK)`,`Payment_Method_SK(FK)`),
  KEY `fk_Financial_Analysis_Fact_Supplier_Dimension1_idx` (`Supplier_SK(FK)`),
  KEY `fk_Financial_Analysis_Fact_Customer_Dimension1_idx` (`Customer_SK(FK)`),
  KEY `fk_Financial_Analysis_Fact_Order_Date_Dimension1_idx` (`Order_Date_SK(FK)`),
  KEY `fk_Financial_Analysis_Fact_Sales_Date_Dimension1_idx` (`Sales_Date_SK(FK)`),
  KEY `fk_Financial_Analysis_Fact_Product_Dimension1_idx` (`Product_SK(FK)`),
  KEY `fk_Financial_Analysis_Fact_Payment_Method_Dimension` (`Payment_Method_SK(FK)`),
  CONSTRAINT `fk_Financial_Analysis_Fact_Customer_Dimension1` FOREIGN KEY (`Customer_SK(FK)`) REFERENCES `customer_dimension` (`Customer_SK(PK)`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Financial_Analysis_Fact_Order_Date_Dimension1` FOREIGN KEY (`Order_Date_SK(FK)`) REFERENCES `order_date_dimension` (`Order_Date_SK(PK)`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Financial_Analysis_Fact_Payment_Method_Dimension` FOREIGN KEY (`Payment_Method_SK(FK)`) REFERENCES `payment_method_dimension` (`Payment_Method_SK(PK)`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Financial_Analysis_Fact_Product_Dimension1` FOREIGN KEY (`Product_SK(FK)`) REFERENCES `product_dimension` (`Product_SK(PK)`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Financial_Analysis_Fact_Sales_Date_Dimension1` FOREIGN KEY (`Sales_Date_SK(FK)`) REFERENCES `sales_date_dimension` (`Sales_Date_SK(PK)`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Financial_Analysis_Fact_Supplier_Dimension1` FOREIGN KEY (`Supplier_SK(FK)`) REFERENCES `supplier_dimension` (`Supplier_SK(PK)`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financial_analysis_fact`
--

LOCK TABLES `financial_analysis_fact` WRITE;
/*!40000 ALTER TABLE `financial_analysis_fact` DISABLE KEYS */;
/*!40000 ALTER TABLE `financial_analysis_fact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_date_dimension`
--

DROP TABLE IF EXISTS `order_date_dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_date_dimension` (
  `Order_Date_SK(PK)` int(11) NOT NULL,
  `Calender Year` year(4) DEFAULT NULL,
  `Calender Quater` varchar(15) DEFAULT NULL,
  `Calender Month` varchar(15) DEFAULT NULL,
  `Calender Week` varchar(15) DEFAULT NULL,
  `Fiscal Year` year(4) DEFAULT NULL,
  `Fiscal Quater` varchar(15) DEFAULT NULL,
  `Fiscal Month` varchar(15) DEFAULT NULL,
  `Fiscal Week` varchar(15) DEFAULT NULL,
  `Day of Week` varchar(15) DEFAULT NULL,
  `Type of Day` varchar(15) DEFAULT NULL,
  `Day` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Order_Date_SK(PK)`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_date_dimension`
--

LOCK TABLES `order_date_dimension` WRITE;
/*!40000 ALTER TABLE `order_date_dimension` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_date_dimension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method_dimension`
--

DROP TABLE IF EXISTS `payment_method_dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_method_dimension` (
  `Payment_Method_SK(PK)` int(11) NOT NULL,
  `Payment Method` varchar(45) DEFAULT NULL,
  `Shipping Method` varchar(45) DEFAULT NULL,
  `Ordering Method` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Payment_Method_SK(PK)`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method_dimension`
--

LOCK TABLES `payment_method_dimension` WRITE;
/*!40000 ALTER TABLE `payment_method_dimension` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_method_dimension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_dimension`
--

DROP TABLE IF EXISTS `product_dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_dimension` (
  `Product_SK(PK)` int(11) NOT NULL,
  `Product ID (NK)` varchar(45) NOT NULL,
  `Product Name` varchar(45) DEFAULT NULL,
  `Product Type` varchar(45) DEFAULT NULL,
  `Product Description` varchar(45) DEFAULT NULL,
  `Product Category` varchar(45) DEFAULT NULL,
  `Product Price 1` varchar(45) DEFAULT NULL,
  `Product Price 2` varchar(45) DEFAULT NULL,
  `Business Unit ID` int(11) DEFAULT NULL,
  `Business Abbrev` varchar(45) DEFAULT NULL,
  `Business Unit Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Product_SK(PK)`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_dimension`
--

LOCK TABLES `product_dimension` WRITE;
/*!40000 ALTER TABLE `product_dimension` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_dimension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_date_dimension`
--

DROP TABLE IF EXISTS `sales_date_dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_date_dimension` (
  `Sales_Date_SK(PK)` int(11) NOT NULL,
  `Calender Year` year(4) DEFAULT NULL,
  `Calender Quater` varchar(15) DEFAULT NULL,
  `Calender Month` varchar(15) DEFAULT NULL,
  `Calender Week` varchar(15) DEFAULT NULL,
  `Fiscal Year` year(4) DEFAULT NULL,
  `Fiscal Quater` varchar(15) DEFAULT NULL,
  `Fiscal Month` varchar(15) DEFAULT NULL,
  `Fiscal Week` varchar(15) DEFAULT NULL,
  `Day of Week` varchar(15) DEFAULT NULL,
  `Type of Day` varchar(15) DEFAULT NULL,
  `Day` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Sales_Date_SK(PK)`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_date_dimension`
--

LOCK TABLES `sales_date_dimension` WRITE;
/*!40000 ALTER TABLE `sales_date_dimension` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_date_dimension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_dimension`
--

DROP TABLE IF EXISTS `supplier_dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier_dimension` (
  `Supplier_SK(PK)` int(11) NOT NULL,
  `Supplier ID (NK)` varchar(20) NOT NULL,
  `Supplier Name` varchar(45) DEFAULT NULL,
  `Supplier Address 1` varchar(50) DEFAULT NULL,
  `Supplier Address 2` varchar(50) DEFAULT NULL,
  `Supplier Country` varchar(25) DEFAULT NULL,
  `Supplier State` varchar(20) DEFAULT NULL,
  `Supplier City` varchar(15) DEFAULT NULL,
  `Supplier  Street Address` varchar(50) DEFAULT NULL,
  `Supplier ZipCode` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Supplier_SK(PK)`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_dimension`
--

LOCK TABLES `supplier_dimension` WRITE;
/*!40000 ALTER TABLE `supplier_dimension` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier_dimension` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-10  0:44:00
