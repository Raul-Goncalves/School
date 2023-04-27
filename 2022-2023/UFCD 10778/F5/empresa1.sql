-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 25-Maio-2022 às 10:19
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
-- Banco de dados: `empresa1`
--
CREATE DATABASE IF NOT EXISTS `empresa1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `empresa1`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comissao`
--

DROP TABLE IF EXISTS `comissao`;
CREATE TABLE IF NOT EXISTS `comissao` (
  `CodC` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  PRIMARY KEY (`CodC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `comissao`
--

INSERT INTO `comissao` (`CodC`, `valor`) VALUES
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
  `id` int(11) NOT NULL,
  `nome` varchar(35) NOT NULL,
  `cargo` varchar(35) NOT NULL,
  `salario` float NOT NULL,
  `telefone` varchar(9) NOT NULL,
  `idade` int(11) NOT NULL,
  `CodPostal` int(11) NOT NULL,
  `CodC` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `telefone` (`telefone`),
  KEY `CodC` (`CodC`),
  KEY `CodPostal` (`CodPostal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `empregados`
--

INSERT INTO `empregados` (`id`, `nome`, `cargo`, `salario`, `telefone`, `idade`, `CodPostal`, `CodC`) VALUES
(1, 'Anibal', 'Tesoureiro/a', 950, '145659632', 35, 6200, 2),
(2, 'Anita', 'Assitente Administrativa', 1000, '123654789', 25, 6200, 2),
(3, 'Cruz', 'Ceo', 2500, '654789123', 48, 6200, 1),
(4, 'Sousa', 'Gestor/a de Marketing', 1100, '123678945', 40, 6230, 1),
(5, 'Xavier', 'Tecnico/a Especializado/a', 900, '125467894', 33, 1000, 3),
(6, 'Carlos', 'Tecnico/a Especializado/a', 900, '369258147', 36, 6320, 3),
(7, 'Alexandra', 'Tecnico/a Especializado/a', 900, '258369148', 28, 1000, 3),
(8, 'Carla', 'Motorista', 800, '147235689', 26, 6230, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `empregados2`
--

DROP TABLE IF EXISTS `empregados2`;
CREATE TABLE IF NOT EXISTS `empregados2` (
  `id` int(11) NOT NULL,
  `nome` varchar(35) NOT NULL,
  `cargo` varchar(35) NOT NULL,
  `salario` float NOT NULL,
  `telefone` varchar(9) NOT NULL,
  `idade` int(11) NOT NULL,
  `CodPostal` int(11) NOT NULL,
  `CodC` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
CREATE TABLE IF NOT EXISTS `funcionarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(35) NOT NULL,
  `cargo` varchar(35) NOT NULL,
  `salario` float NOT NULL,
  `telefone` varchar(9) NOT NULL,
  `idade` int(11) NOT NULL,
  `CodPostal` int(11) NOT NULL,
  `CodC` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nome`, `cargo`, `salario`, `telefone`, `idade`, `CodPostal`, `CodC`) VALUES
(1, 'Anibal', 'Tesoureiro/a', 950, '145659632', 35, 6200, 2),
(2, 'Anita', 'Assitente Administrativa', 1000, '123654789', 25, 6200, 2),
(3, 'Cruz', 'Ceo', 2600, '654789123', 48, 6200, 1),
(4, 'Sousa', 'Gestor/a de Marketing', 1100, '123678945', 40, 6230, 1),
(5, 'Xavier', 'Tecnico/a Especializado/a', 900, '125467893', 33, 1000, 3),
(6, 'Bruno', 'Tecnico/a Especializado/a', 900, '369258147', 36, 6320, 3),
(7, 'Alexandra', 'Tecnico/a Especializado/a', 900, '258369147', 28, 1000, 3),
(8, 'Carla', 'Motorista', 800, '147235689', 26, 6230, 4),
(3, 'Cruz', 'Ceo', 2600, '654789123', 48, 6200, 1),
(4, 'Sousa', 'Gestor/a de Marketing', 1100, '123678945', 40, 6230, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `postal`
--

DROP TABLE IF EXISTS `postal`;
CREATE TABLE IF NOT EXISTS `postal` (
  `CodPostal` int(11) NOT NULL,
  `localidade` varchar(50) NOT NULL,
  `distrito` varchar(50) NOT NULL,
  PRIMARY KEY (`CodPostal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `postal`
--

INSERT INTO `postal` (`CodPostal`, `localidade`, `distrito`) VALUES
(1000, 'Lisboa', 'Lisboa'),
(4450, 'Maia', 'Porto'),
(6200, 'Covilha', 'C.branco'),
(6230, 'Fundao', 'C.branco'),
(6320, 'Sabugal', 'Guarda');

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `empregados`
--
ALTER TABLE `empregados`
  ADD CONSTRAINT `empregados_ibfk_1` FOREIGN KEY (`CodC`) REFERENCES `comissao` (`CodC`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `empregados_ibfk_2` FOREIGN KEY (`CodPostal`) REFERENCES `postal` (`CodPostal`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
