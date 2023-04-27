-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 12-Maio-2022 às 08:41
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
-- Banco de dados: `empregados`
--
CREATE DATABASE IF NOT EXISTS `empregados` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `empregados`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comissao`
--

DROP TABLE IF EXISTS `comissao`;
CREATE TABLE IF NOT EXISTS `comissao` (
  `CodC` int(11) NOT NULL,
  `Valor` float NOT NULL,
  PRIMARY KEY (`CodC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `comissao`
--

INSERT INTO `comissao` (`CodC`, `Valor`) VALUES
(1, 350),
(2, 300),
(3, 150),
(4, 50);

-- --------------------------------------------------------

--
-- Estrutura da tabela `empregados`
--

DROP TABLE IF EXISTS `empregados`;
CREATE TABLE IF NOT EXISTS `empregados` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(35) NOT NULL,
  `Cargo` varchar(35) NOT NULL,
  `Salario` float NOT NULL,
  `Telefone` char(9) DEFAULT NULL,
  `Idade` int(11) NOT NULL,
  `CodPostal` int(11) NOT NULL,
  `CodC` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `CodPostal` (`CodPostal`,`CodC`),
  KEY `CodC` (`CodC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `empregados`
--

INSERT INTO `empregados` (`Id`, `Nome`, `Cargo`, `Salario`, `Telefone`, `Idade`, `CodPostal`, `CodC`) VALUES
(1, 'Ana Marques', 'Tesoureiro/a', 1100, '222444555', 35, 6200, 2),
(2, 'Lili Caneças', 'Assistente Administrativa', 900, '111222333', 48, 6230, 2),
(3, 'Marcelo de Souza', 'CEO', 2500, NULL, 48, 6200, 1),
(4, 'Filomena Cautela', 'Gestor/a de Marketing', 1100, NULL, 40, 6200, 1),
(5, 'Charles Xavier', 'Técnico/a Especializado/a', 900, '444555777', 33, 6230, 3),
(6, 'Cristina Ferreira', 'Técnico/a Especializado/a', 900, '222666999', 36, 6200, 3),
(7, 'Nilton', 'Técnico/a Especializado/a', 900, NULL, 28, 6200, 3),
(8, 'Jorge Jesus', 'Motorista', 850, '333111777', 26, 6200, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `postal`
--

DROP TABLE IF EXISTS `postal`;
CREATE TABLE IF NOT EXISTS `postal` (
  `CodPostal` int(11) NOT NULL,
  `Localidade` varchar(35) NOT NULL,
  `Distrito` varchar(35) NOT NULL,
  PRIMARY KEY (`CodPostal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `postal`
--

INSERT INTO `postal` (`CodPostal`, `Localidade`, `Distrito`) VALUES
(6200, 'Covilhã', 'C. Branco'),
(6230, 'Fundão', 'C. Branco'),
(6320, 'Sabugal', 'Guarda');

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `empregados`
--
ALTER TABLE `empregados`
  ADD CONSTRAINT `empregados_ibfk_1` FOREIGN KEY (`CodPostal`) REFERENCES `postal` (`CodPostal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `empregados_ibfk_2` FOREIGN KEY (`CodC`) REFERENCES `comissao` (`CodC`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
