-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 31-Maio-2022 às 10:01
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `vendascd_utf8`
--
CREATE DATABASE IF NOT EXISTS `vendascd_utf8` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `vendascd_utf8`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cd`
--

DROP TABLE IF EXISTS `cd`;
CREATE TABLE IF NOT EXISTS `cd` (
  `NumCD` int(11) NOT NULL AUTO_INCREMENT,
  `Título` varchar(40) DEFAULT NULL,
  `CodEditora` int(11) DEFAULT NULL,
  `Ano` int(11) DEFAULT NULL,
  `preço` double DEFAULT NULL,
  PRIMARY KEY (`NumCD`),
  KEY `CodEditora` (`CodEditora`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cd`
--

INSERT INTO `cd` (`NumCD`, `Título`, `CodEditora`, `Ano`, `preço`) VALUES
(1, 'Meu caderninho querido', 1, 2015, 9.5),
(2, 'Até que ía já!!!', 1, 2015, 9.5),
(3, 'Se não fosse porquê…Psi,Psi,Psi', 2, 2016, 9.5),
(4, 'Vai que já são horas', 3, 2016, 10),
(5, 'Mas quem é que manda aqui?', 1, 2012, 9.5),
(6, 'Para além da sala de aula', 2, 2015, 9.5),
(7, 'Psi para K te Kero', 2, 2012, 9.5),
(8, 'Choro por ti, toque de feriado', 2, 2008, 9.5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `editoras`
--

DROP TABLE IF EXISTS `editoras`;
CREATE TABLE IF NOT EXISTS `editoras` (
  `CodEditora` int(11) NOT NULL,
  `NomeEditora` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`CodEditora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `editoras`
--

INSERT INTO `editoras` (`CodEditora`, `NomeEditora`) VALUES
(1, 'sss'),
(2, 'Sony+'),
(3, 'ASGrip'),
(4, 'Vira o disco'),
(5, 'CDZone'),
(7, 'GiraDiscos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `localidades`
--

DROP TABLE IF EXISTS `localidades`;
CREATE TABLE IF NOT EXISTS `localidades` (
  `CodLocalidade` int(11) NOT NULL AUTO_INCREMENT,
  `Localidade` varchar(45) DEFAULT NULL,
  `Distrito` varchar(35) NOT NULL,
  PRIMARY KEY (`CodLocalidade`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `localidades`
--

INSERT INTO `localidades` (`CodLocalidade`, `Localidade`, `Distrito`) VALUES
(1, 'Covilhã', 'Castelo Branco'),
(2, 'Fundão', 'Castelo Branco'),
(3, 'Aveiro', 'Aveiro'),
(4, 'Guarda', 'Guarda'),
(5, 'Sabugal', 'Guarda');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lojas`
--

DROP TABLE IF EXISTS `lojas`;
CREATE TABLE IF NOT EXISTS `lojas` (
  `NumLoja` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(30) DEFAULT NULL,
  `CodLocalidade` int(11) DEFAULT NULL,
  `Telefone` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`NumLoja`),
  KEY `CodLocalidade` (`CodLocalidade`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `lojas`
--

INSERT INTO `lojas` (`NumLoja`, `Nome`, `CodLocalidade`, `Telefone`) VALUES
(1, 'Arrufo', 1, '(275) 333 555'),
(2, 'Adega', 2, NULL),
(3, 'DáMmúsica', 3, NULL),
(4, 'Pitosga', 4, NULL),
(5, 'Viperina', 3, NULL),
(6, 'Não voltes', 5, NULL),
(7, 'NadaDeBorla', 1, '(275) 444 888');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

DROP TABLE IF EXISTS `vendas`;
CREATE TABLE IF NOT EXISTS `vendas` (
  `NumLoja` int(11) NOT NULL,
  `NumCD` int(11) NOT NULL,
  `Qtd` tinyint(3) UNSIGNED DEFAULT NULL,
  `Data` datetime NOT NULL,
  PRIMARY KEY (`NumLoja`,`NumCD`,`Data`),
  KEY `NumCD` (`NumCD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`NumLoja`, `NumCD`, `Qtd`, `Data`) VALUES
(1, 2, 130, '2016-12-12 00:00:00'),
(2, 3, 56, '2016-03-03 00:00:00'),
(2, 3, 26, '2016-12-12 00:00:00'),
(3, 4, 156, '2016-04-04 00:00:00'),
(4, 5, 60, '2016-05-05 00:00:00'),
(5, 5, 38, '2016-04-03 00:00:00');

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cd`
--
ALTER TABLE `cd`
  ADD CONSTRAINT `cd_ibfk_1` FOREIGN KEY (`CodEditora`) REFERENCES `editoras` (`CodEditora`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `lojas`
--
ALTER TABLE `lojas`
  ADD CONSTRAINT `lojas_ibfk_1` FOREIGN KEY (`CodLocalidade`) REFERENCES `localidades` (`CodLocalidade`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`NumCD`) REFERENCES `cd` (`NumCD`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`NumLoja`) REFERENCES `lojas` (`NumLoja`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
