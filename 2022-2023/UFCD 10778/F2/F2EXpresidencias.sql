-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 12-Maio-2022 às 08:45
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
-- Banco de dados: `presidencias`
--
CREATE DATABASE IF NOT EXISTS `presidencias` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `presidencias`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `canditado`
--

DROP TABLE IF EXISTS `canditado`;
CREATE TABLE IF NOT EXISTS `canditado` (
  `idCanditado` int(11) NOT NULL,
  `NomeCand` varchar(30) NOT NULL,
  PRIMARY KEY (`idCanditado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `canditado`
--

INSERT INTO `canditado` (`idCanditado`, `NomeCand`) VALUES
(1, 'Cavaco Silva'),
(2, 'Fernando Nobre'),
(3, 'Manuel Alegre'),
(4, 'Francisco Lopes'),
(5, 'José Coelho'),
(6, 'Defensor Moura');

-- --------------------------------------------------------

--
-- Estrutura da tabela `distrito`
--

DROP TABLE IF EXISTS `distrito`;
CREATE TABLE IF NOT EXISTS `distrito` (
  `idDistrito` int(11) NOT NULL,
  `Distrito` varchar(30) NOT NULL,
  PRIMARY KEY (`idDistrito`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `distrito`
--

INSERT INTO `distrito` (`idDistrito`, `Distrito`) VALUES
(1, 'Lisboa'),
(2, 'Viana'),
(3, 'Madeira');

-- --------------------------------------------------------

--
-- Estrutura da tabela `votacao`
--

DROP TABLE IF EXISTS `votacao`;
CREATE TABLE IF NOT EXISTS `votacao` (
  `idDistrito` int(11) NOT NULL,
  `idCanditado` int(11) NOT NULL,
  `Votos` int(11) NOT NULL,
  PRIMARY KEY (`idDistrito`,`idCanditado`),
  KEY `idCanditado` (`idCanditado`),
  KEY `idDistrito` (`idDistrito`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `votacao`
--

INSERT INTO `votacao` (`idDistrito`, `idCanditado`, `Votos`) VALUES
(1, 1, 411341),
(1, 2, 136633),
(1, 3, 184446),
(1, 4, 72465),
(1, 5, 29070),
(1, 6, 12668),
(2, 1, 64719),
(2, 2, 14534),
(2, 3, 14534),
(2, 4, 3937),
(2, 5, 4425),
(2, 6, 11745),
(3, 1, 52168),
(3, 2, 7687),
(3, 3, 9105),
(3, 4, 2346),
(3, 5, 46247),
(3, 6, 986);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `votacao`
--
ALTER TABLE `votacao`
  ADD CONSTRAINT `votacao_ibfk_1` FOREIGN KEY (`idCanditado`) REFERENCES `canditado` (`idCanditado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `votacao_ibfk_2` FOREIGN KEY (`idDistrito`) REFERENCES `distrito` (`idDistrito`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
