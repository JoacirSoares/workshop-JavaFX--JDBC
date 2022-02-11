-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.27 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copying database structure to coursejdbc
CREATE DATABASE IF NOT EXISTS `coursejdbc` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `coursejdbc`;

-- Copying structure to coursejdbc.department table
CREATE TABLE IF NOT EXISTS `department` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copying data to coursejdbc.department table: ~5 rows (approximately)
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` (`Id`, `Name`) VALUES
	(1, 'Computers'),
	(2, 'Electronics'),
	(3, 'Fashion'),
	(4, 'Books'),
	(6, 'Music'),
	(8, 'Dance');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;

-- Copying structure to coursejdbc.seller table
CREATE TABLE IF NOT EXISTS `seller` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `BirthDate` datetime NOT NULL,
  `BaseSalary` double NOT NULL,
  `DepartmentId` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `DepartmentId` (`DepartmentId`),
  CONSTRAINT `seller_ibfk_1` FOREIGN KEY (`DepartmentId`) REFERENCES `department` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copying data to coursejdbc.seller table: ~6 rows (approximately)
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` (`Id`, `Name`, `Email`, `BirthDate`, `BaseSalary`, `DepartmentId`) VALUES
	(1, 'Bob Brown', 'bob@gmail.com', '1998-04-21 00:00:00', 1000, 4),
	(2, 'Maria Green', 'maria@gmail.com', '1979-12-31 00:00:00', 3500, 2),
	(3, 'Alex Grey', 'alex@gmail.com', '1988-01-15 00:00:00', 2200, 6),
	(4, 'Martha Red', 'martha@gmail.com', '1993-11-30 00:00:00', 3000, 4),
	(5, 'Donald Blue', 'donald@gmail.com', '2000-01-09 00:00:00', 4000, 3),
	(6, 'Alex Pink', 'bob@gmail.com', '1997-03-06 00:00:00', 3000, 2),
	(7, 'Jaca', 'jaca2002@gmail.com', '2022-02-19 00:00:00', 9800, 8);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
