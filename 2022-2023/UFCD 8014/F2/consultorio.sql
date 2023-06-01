-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17-Out-2019 às 09:16
-- Versão do servidor: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `consultorio`
--
CREATE DATABASE IF NOT EXISTS `consultorio` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `consultorio`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `consulta`
--

DROP TABLE IF EXISTS `consulta`;
CREATE TABLE IF NOT EXISTS `consulta` (
  `num_cons` int(11) NOT NULL,
  `data` datetime DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `num_paciente` int(11) DEFAULT NULL,
  `num_medico` int(11) DEFAULT NULL,
  PRIMARY KEY (`num_cons`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `consulta`
--

INSERT INTO `consulta` (`num_cons`, `data`, `descricao`, `num_paciente`, `num_medico`) VALUES
(1, '2017-01-11 00:00:00', 'Dor de ouvidos', 8888, 55555),
(2, '2017-01-12 00:00:00', 'Dores no peito', 2222, 11111),
(3, '2017-01-12 00:00:00', 'Consulta de rotina', 1111, 44444),
(4, '2017-01-16 00:00:00', 'Consulta de rotina', 2222, 11111),
(5, '2017-01-18 00:00:00', 'Laringite', 6666, 22222),
(6, '2017-02-21 00:00:00', 'Consulta de rotina', 1111, 55555),
(7, '2017-02-22 00:00:00', 'Consulta de rotina', 8888, 11111),
(8, '2017-01-14 00:00:00', 'Dores na coluna dorsal', 5555, 44444);

-- --------------------------------------------------------

--
-- Estrutura da tabela `medicamentacao`
--

DROP TABLE IF EXISTS `medicamentacao`;
CREATE TABLE IF NOT EXISTS `medicamentacao` (
  `num_medic` int(11) NOT NULL,
  `num_cons` int(11) NOT NULL,
  `Descricao_med` int(11) NOT NULL,
  PRIMARY KEY (`num_medic`),
  KEY `num_cons` (`num_cons`),
  KEY `Descricao_ med` (`Descricao_med`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `medicamentacao`
--

INSERT INTO `medicamentacao` (`num_medic`, `num_cons`, `Descricao_med`) VALUES
(1, 1, 4),
(2, 2, 3),
(3, 3, 3),
(4, 3, 4),
(5, 4, 1),
(6, 4, 6),
(7, 6, 2),
(8, 7, 1),
(9, 8, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `medicamento`
--

DROP TABLE IF EXISTS `medicamento`;
CREATE TABLE IF NOT EXISTS `medicamento` (
  `num_med` int(11) NOT NULL,
  `designacao` varchar(50) DEFAULT NULL,
  `Preco_Unitario` float DEFAULT NULL,
  PRIMARY KEY (`num_med`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `medicamento`
--

INSERT INTO `medicamento` (`num_med`, `designacao`, `Preco_Unitario`) VALUES
(1, 'Antibiótico', 35),
(2, 'Canaçucar', 14.23),
(3, 'Nimed', 46.34),
(4, 'Água do mar', 21),
(5, 'Aspirina', 9.67),
(6, 'Cortigripe', 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `medico`
--

DROP TABLE IF EXISTS `medico`;
CREATE TABLE IF NOT EXISTS `medico` (
  `num_medico` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `especialidade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`num_medico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `medico`
--

INSERT INTO `medico` (`num_medico`, `nome`, `especialidade`) VALUES
(11111, 'Ambrósio Exemplo', 'Cardiologia'),
(22222, 'Alberto Martelo', 'Otorrinolaringologista'),
(33333, 'Manuela Churrenta', 'Ginecologia'),
(44444, 'Piru Alfredo', 'Dentista'),
(55555, 'Maria Rosa', 'Otorrino'),
(66666, 'José Sousa', 'Cardiologia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--

DROP TABLE IF EXISTS `paciente`;
CREATE TABLE IF NOT EXISTS `paciente` (
  `num_paciente` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `morada` varchar(50) DEFAULT NULL,
  `data_nasc` datetime DEFAULT NULL,
  PRIMARY KEY (`num_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `paciente`
--

INSERT INTO `paciente` (`num_paciente`, `nome`, `morada`, `data_nasc`) VALUES
(1111, 'Joaquim Silva', 'Faro', '2021-04-23 00:00:00'),
(2222, 'Eunice Teixeira', 'Lisboa', '1954-06-25 00:00:00'),
(3333, 'Zulmira Barroso', 'Puerto', '1976-07-03 00:00:00'),
(4444, 'Arnaldo Pinchos', 'Coimbra', '1945-09-07 00:00:00'),
(5555, 'António Zé', 'Guarda', '1955-04-09 00:00:00'),
(6666, 'Sharon Stone', 'Trigais', '1909-08-06 00:00:00'),
(7777, 'Laurinda Piloto', 'Belmonte', '1969-12-25 00:00:00'),
(8888, 'António Castro', 'Braga', '1963-09-03 00:00:00'),
(9999, 'José António', 'Covilhã', '1976-12-04 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `postal`
--

DROP TABLE IF EXISTS `postal`;
CREATE TABLE IF NOT EXISTS `postal` (
  `CodPost` int(11) NOT NULL,
  `Localidade` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CodPost`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure for view `contamed`
--
DROP TABLE IF EXISTS `contamed`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `contamed`  AS  select `medico`.`especialidade` AS `especialidade`,count(`medico`.`num_medico`) AS `NM` from `medico` group by `medico`.`especialidade` ;

-- --------------------------------------------------------

--
-- Structure for view `md`
--
DROP TABLE IF EXISTS `md`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `md`  AS  select max(`c`.`data`) AS `maxd` from (`consulta` `c` join `paciente` `p`) where ((`c`.`num_paciente` = `p`.`num_paciente`) and (`p`.`nome` = 'Eunice Teixeira')) ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
