--
-- Database: `SQLVENDAS`
--
CREATE DATABASE IF NOT EXISTS `SQLVENDAS` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `SQLVENDAS`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comissao`
--

CREATE TABLE IF NOT EXISTS `comissao` (
  `Id` int(11) NOT NULL,
  `Id_Msg` int(11) NOT NULL,
  `Valor` int(11) NOT NULL,
  PRIMARY KEY (`Id`,`Id_Msg`),
  KEY `Id_Msg` (`Id_Msg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `comissao`
--

INSERT INTO `comissao` (`Id`, `Id_Msg`, `Valor`) VALUES
(14, 10, 10500),
(14, 60, 2600),
(14, 70, 400),
(14, 100, 3750),
(25, 10, 2500),
(25, 30, 370),
(37, 10, 5500),
(37, 30, 14230),
(37, 40, 20),
(37, 50, 120),
(42, 20, 20),
(42, 30, 170),
(49, 10, 6),
(49, 20, 2300);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagem`
--

CREATE TABLE IF NOT EXISTS `mensagem` (
  `Id_Msg` int(11) NOT NULL,
  `Mensagem` varchar(30) NOT NULL,
  PRIMARY KEY (`Id_Msg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mensagem`
--

INSERT INTO `mensagem` (`Id_Msg`, `Mensagem`) VALUES
(10, 'Comissão de Vendas'),
(20, 'Fretes Individuais'),
(30, 'Fretes Empresariais'),
(40, 'Vendas Extra'),
(50, 'Deslocações'),
(60, 'Refeições'),
(70, 'Combustíveis'),
(80, 'Transportes'),
(90, 'Telefonemas'),
(100, 'Ofertas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE IF NOT EXISTS `pessoa` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `Idade` int(11) NOT NULL,
  `Salario` int(11) NOT NULL,
  `Telefone` varchar(12) NOT NULL,
  `CodPostal` int(4) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `CodPostal` (`CodPostal`),
  KEY `Nome` (`Nome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`Id`, `Nome`, `Idade`, `Salario`, `Telefone`, `CodPostal`) VALUES
(5, 'Célia Morais', 26, 170000, '123456000', 1100),
(14, 'Nascimento Augusto', 35, 220000, '456123000', 2300),
(25, 'Paulo Viegas', 32, 95000, NULL, 1500),
(32, 'Florinda Simões', 35, 147000, NULL, 4000),
(37, 'Isabel Espada', 28, 86000, NULL, 1100),
(42, 'António Dias', 43, 74000, '789654000', 1500),
(49, 'José António', 19, 210000, NULL, 1500);

-- --------------------------------------------------------

--
-- Estrutura da tabela `postal`
--

CREATE TABLE IF NOT EXISTS `postal` (
  `Codigo` int(4) NOT NULL,
  `Localidade` varchar(30) NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `Codigo` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `postal`
--

INSERT INTO `postal` (`Codigo`, `Localidade`) VALUES
(1000, 'LISBOA'),
(1100, 'LISBOA'),
(1200, 'LISBOA'),
(1500, 'LISBOA'),
(2000, 'SANTARÉM'),
(2300, 'TOMAR'),
(3000, 'COIMBRA'),
(4000, 'PORTO'),
(9000, 'FUNCHAL');

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `comissao`
--
ALTER TABLE `comissao`
  ADD CONSTRAINT `comissao_ibfk_1` FOREIGN KEY (`Id_Msg`) REFERENCES `mensagem` (`Id_Msg`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comissao_ibfk_2` FOREIGN KEY (`Id`) REFERENCES `pessoa` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD CONSTRAINT `pessoa_ibfk_1` FOREIGN KEY (`CodPostal`) REFERENCES `postal` (`Codigo`) ON DELETE CASCADE ON UPDATE CASCADE;
