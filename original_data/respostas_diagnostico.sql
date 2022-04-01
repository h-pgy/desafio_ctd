-- --------------------------------------------------------
-- Servidor:                     localhost
-- Versão do servidor:           10.4.6-MariaDB-1:10.4.6+maria~bionic - mariadb.org binary distribution
-- OS do Servidor:               debian-linux-gnu
-- HeidiSQL Versão:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;



-- Copiando estrutura do banco de dados para desafio_selecao
CREATE DATABASE IF NOT EXISTS `desafio_selecao` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `desafio_selecao`;

-- Copiando estrutura para tabela desafio_selecao.respostas_diagnostico
CREATE TABLE IF NOT EXISTS `respostas_diagnostico` (
  `id_resposta` int(11) NOT NULL COMMENT 'Chave única para cada resposta do formulário',
  `ano_diagnostico` int(11) NOT NULL COMMENT 'Ano de realização da pesquisa',
  `data_submissao` datetime DEFAULT NULL COMMENT 'Data de envio da resposta',
  `orgao` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '[Questão] Selecione o Órgão onde trabalha:',
  `tipo_orgao` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Classificação quanto ao tipo de órgão',
  `qtd_equipe` decimal(10,0) DEFAULT NULL COMMENT '[Questão] Quantas pessoas trabalham de forma dedicada à Tecnologia da Informação em seu Órgão, incluindo você?',
  `utiliza_metodologia` int(1) DEFAULT NULL COMMENT '[Questão] É utilizada alguma metodologia de gerenciamento de projetos?',
  `desktop_proprio` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '[Questão] Preencha os ítens abaixo de acordo com os quantitativos TOTAIS DE EQUIPAMENTOS do seu Órgão separados por tipo de aquisição (próprio ou locação):  Caso não possua algum item, favor preencher com 0 (zero). [Total de Computador desktop.][Próprio.]',
  `desktop_locado` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '[Questão] Preencha os ítens abaixo de acordo com os quantitativos TOTAIS DE EQUIPAMENTOS do seu Órgão separados por tipo de aquisição (próprio ou locação):  Caso não possua algum item, favor preencher com 0 (zero). [Total de Computador desktop.][Locado.]',
  `desktop_proprio_antigo` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '[Questão] Do total de equipamentos PRÓPRIOS informados na questão anterior, quantos possuem mais de 5 anos? [Total de Computador desktop PRÓPRIO COM MAIS DE 5 ANOS.]',
  PRIMARY KEY (`id_resposta`,`ano_diagnostico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela desafio_selecao.respostas_diagnostico: ~307 rows (aproximadamente)
DELETE FROM `respostas_diagnostico`;
/*!40000 ALTER TABLE `respostas_diagnostico` DISABLE KEYS */;
INSERT INTO `respostas_diagnostico` (`id_resposta`, `ano_diagnostico`, `data_submissao`, `orgao`, `tipo_orgao`, `qtd_equipe`, `utiliza_metodologia`, `desktop_proprio`, `desktop_locado`, `desktop_proprio_antigo`) VALUES
	(5, 2017, '2017-04-20 10:39:54', 'SUBPR', 'Subprefeitura', 3, 0, '152', '0', '107'),
	(8, 2019, '2019-04-12 10:55:24', 'SMS', 'Secretaria', 58, 0, '12500', '0', '6927.0000000000'),
	(9, 2019, '2019-04-05 15:57:10', 'SUBSA', 'Subprefeitura', 3, NULL, '36', '90', '0.0000000000'),
	(10, 2017, '2017-05-17 09:13:17', 'IPREM', 'Administração Indireta', 6, 0, '200', '0', '0'),
	(10, 2019, '2019-03-25 14:40:06', 'SUBST', 'Subprefeitura', 3, NULL, '150', '0', '150.0000000000'),
	(11, 2019, '2019-04-12 18:49:04', 'SPTUR', 'Administração Indireta', 18, 1, '375', '0', '212.0000000000'),
	(12, 2019, '2019-04-04 11:32:57', 'SUBSE', 'Subprefeitura', 3, NULL, '140', '80', '140.0000000000'),
	(13, 2019, '2019-03-12 17:04:46', 'SUBLA', 'Subprefeitura', 2, NULL, '135', '0', '109.0000000000'),
	(14, 2019, '2019-04-01 09:40:06', 'SMJ', 'Secretaria', 2, 1, '22', '0', '22.0000000000'),
	(15, 2019, '2019-04-05 18:03:32', 'HSPM', 'Administração Indireta', 13, 0, '572', '0', '532.0000000000'),
	(16, 2017, '2017-04-18 18:23:52', 'SMSUB', 'Secretaria', 3, 0, '400', '0', '350'),
	(16, 2019, '2019-04-01 12:52:12', 'COHAB', 'Administração Indireta', 11, NULL, '460', '0', '380.0000000000'),
	(17, 2019, '2019-03-28 11:20:24', 'SUBAF', 'Subprefeitura', 4, NULL, '153', '0', '124.0000000000'),
	(18, 2017, '2017-05-16 19:35:24', 'SMSU', 'Secretaria', 23, 0, '1576', '0', '1307'),
	(18, 2019, '2019-04-03 15:57:33', 'AMLU', 'Administração Indireta', 6, 0, '189', '0', '63.0000000000'),
	(19, 2019, '2019-04-02 18:11:23', 'SMSU', 'Secretaria', 21, 0, '1890', '0', '776.0000000000'),
	(21, 2017, '2017-05-17 15:58:00', 'SUBG', 'Subprefeitura', 2, 0, '167', '0', '0'),
	(21, 2018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(21, 2019, '2019-03-18 10:19:15', 'SUBJT', 'Subprefeitura', 2, NULL, '120', '0', '120.0000000000'),
	(23, 2018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(23, 2019, '2019-03-14 09:22:55', 'SUBIQ', 'Subprefeitura', 3, 1, '5', '164', '0.0000000000'),
	(24, 2018, '2018-04-06 12:01:18', 'SG', 'Secretaria', 14, 1, '822', '0', '294.0000000000'),
	(24, 2019, '2019-04-09 10:03:46', 'SUBCV', 'Subprefeitura', 2, NULL, '115', '0', '89.0000000000'),
	(25, 2018, '2018-03-27 17:33:38', 'SF', 'Secretaria', 45, 1, '1600', '0', '700.0000000000'),
	(25, 2019, '2019-03-27 14:38:58', 'SMPED', 'Secretaria', 4, 0, '80', '0', '60.0000000000'),
	(26, 2019, '2019-03-13 16:16:44', 'SUBCS', 'Subprefeitura', 3, NULL, '131', '0', '110.0000000000'),
	(27, 2018, '2018-03-09 18:06:04', 'HSPM', 'Administração Indireta', 15, 0, '600', '0', '560.0000000000'),
	(27, 2019, '2019-03-29 11:56:04', 'SUBCT', 'Subprefeitura', 3, 0, '58', '87', '38.0000000000'),
	(28, 2019, '2019-04-02 10:37:02', 'SF', 'Secretaria', 43, 1, '1217', '0', '636.0000000000'),
	(29, 2018, '2018-04-04 12:14:03', 'SUBCT', 'Subprefeitura', 3, 0, '59', '87', '38.0000000000'),
	(30, 2019, '2019-04-10 10:14:58', 'AHM', 'Administração Indireta', 20, 0, '2400', '0', '1500.0000000000'),
	(31, 2019, '2019-03-28 11:44:54', 'SIURB', 'Secretaria', 9, 1, '464', '0', '464.0000000000'),
	(32, 2018, '2018-04-05 11:24:40', 'SUBST', 'Subprefeitura', 2, NULL, '180', '0', '180.0000000000'),
	(32, 2019, '2019-03-25 14:59:25', 'SUBCL', 'Subprefeitura', 4, NULL, '120', '0', '95.0000000000'),
	(33, 2018, '2018-03-20 16:49:04', 'SUBPI', 'Subprefeitura', 1, NULL, '80', '80', '40.0000000000'),
	(34, 2018, '2018-04-03 15:35:25', 'SUBCV', 'Subprefeitura', 2, NULL, '109', '0', '89.0000000000'),
	(34, 2019, '2019-04-03 16:49:56', 'SMDHC', 'Secretaria', 10, 0, '314', '0', '314.0000000000'),
	(35, 2018, '2018-03-07 18:08:44', 'SUBPJ', 'Subprefeitura', 4, NULL, '70', '61', '70.0000000000'),
	(35, 2019, '2019-03-25 16:17:58', 'SUBPJ', 'Subprefeitura', 5, NULL, '66', '62', '66.0000000000'),
	(37, 2017, '2017-05-09 18:50:21', 'SF', 'Secretaria', 44, 1, '1600', '0', '1134'),
	(37, 2018, '2018-03-13 15:14:03', 'SUBPE', 'Subprefeitura', 4, NULL, '180', '0', '159.0000000000'),
	(37, 2019, '2019-04-15 18:00:49', 'SMDE', 'Secretaria', 9, 0, '258', '0', '200.0000000000'),
	(38, 2018, '2018-03-21 13:44:47', 'SUBAF', 'Subprefeitura', 3, NULL, '160', '0', '140.0000000000'),
	(38, 2019, '2019-04-12 16:30:50', 'SUBVM', 'Subprefeitura', 2, NULL, '154', '0', '154.0000000000'),
	(39, 2018, '2018-03-08 16:57:58', 'SUBJA', 'Subprefeitura', 3, NULL, '117', '0', '117.0000000000'),
	(39, 2019, '2019-03-18 15:50:12', 'SUBPI', 'Subprefeitura', 3, NULL, '80', '80', '80.0000000000'),
	(40, 2018, '2018-03-07 17:31:06', 'SVMA', 'Secretaria', 16, 1, '750', '0', '400.0000000000'),
	(40, 2019, '2019-03-20 12:36:42', 'SUBPE', 'Subprefeitura', 6, NULL, '195', '0', '173.0000000000'),
	(41, 2018, '2018-04-04 09:31:53', 'COHAB', 'Administração Indireta', 12, 0, '527', '0', '400.0000000000'),
	(42, 2017, '2017-05-03 09:47:10', 'SEME', 'Secretaria', 10, 0, '533', '0', '433'),
	(42, 2018, '2018-03-07 18:06:43', 'SMC', 'Secretaria', 15, 0, '1500', '', '1200.0000000000'),
	(42, 2019, '2019-04-12 15:33:22', 'SUBIT', 'Subprefeitura', 2, NULL, '151', '0', '151.0000000000'),
	(43, 2018, '2018-04-03 10:19:28', 'SMDHC', 'Secretaria', 10, NULL, '471', '0', '242.0000000000'),
	(43, 2019, '2019-04-02 12:08:20', 'SVMA', 'Secretaria', 20, 0, '850', '0', '400.0000000000'),
	(44, 2018, '2018-03-26 11:56:47', 'SEME', 'Secretaria', 10, NULL, '518', '0', '518.0000000000'),
	(45, 2018, '2018-04-18 12:53:01', 'SUBLA', 'Subprefeitura', 2, NULL, '134', '0', '109.0000000000'),
	(45, 2019, '2019-03-18 16:55:15', 'SMSUB', 'Secretaria', 5, NULL, '386', '0', '0.0000000000'),
	(46, 2018, '2018-04-06 15:04:07', 'SUBG', 'Subprefeitura', 1, NULL, '190', '0', '170.0000000000'),
	(46, 2019, '2019-04-04 17:08:14', 'SUBJA', 'Subprefeitura', 4, NULL, '95', '60', '95.0000000000'),
	(47, 2018, '2018-04-06 16:40:13', 'SUBBT', 'Subprefeitura', 3, NULL, '169', '0', '140.0000000000'),
	(47, 2019, '2019-04-15 17:20:22', 'SPTRA', 'Administração Indireta', 39, 0, '1522', '0', '1045.0000000000'),
	(48, 2018, '2018-03-08 09:11:28', 'SUBJT', 'Subprefeitura', 1, NULL, '150', '', '150.0000000000'),
	(48, 2019, '2019-04-09 13:27:07', 'SUBMP', 'Subprefeitura', 2, NULL, '145', '0', '140.0000000000'),
	(49, 2019, '2019-04-12 09:48:04', 'SME', 'Secretaria', 21, 1, '13690', '0', '0.0000000000'),
	(50, 2018, '2018-03-20 16:18:53', 'SUBSB', 'Subprefeitura', 2, NULL, '108', '0', '4.0000000000'),
	(50, 2019, '2019-03-28 09:01:39', 'SEME', 'Secretaria', 10, 1, '583', '0', '583.0000000000'),
	(51, 2018, '2018-04-02 09:49:32', 'SUBIT', 'Subprefeitura', 1, NULL, '180', '0', '180.0000000000'),
	(51, 2019, '2019-03-25 11:21:28', 'SUBEM', 'Subprefeitura', 4, NULL, '20', '66', '20.0000000000'),
	(52, 2018, '2018-03-10 20:02:54', 'IPREM', 'Administração Indireta', 6, NULL, '140', '0', '0.0000000000'),
	(52, 2019, '2019-04-08 20:04:54', 'SUBIP', 'Subprefeitura', 4, 0, '20', '160', '10.0000000000'),
	(53, 2017, '2017-05-02 09:42:57', 'SUBCT', 'Subprefeitura', 3, 0, '56', '87', '56'),
	(53, 2018, '2018-03-21 09:49:55', 'SUBSE', 'Subprefeitura', 3, NULL, '135', '65', '90.0000000000'),
	(53, 2019, '2019-04-05 16:50:30', 'SUBPR', 'Subprefeitura', 4, NULL, '160', '0', '115.0000000000'),
	(54, 2018, '2018-03-27 16:02:30', 'SUBSM', 'Subprefeitura', 1, NULL, '150', '0', '75.0000000000'),
	(54, 2019, '2019-04-09 10:15:17', 'SUBSB', 'Subprefeitura', 2, 0, '135', '0', '22.0000000000'),
	(55, 2017, '2017-05-08 08:50:20', 'TMSP', 'Administração Indireta', 4, 0, '90', '0', '90'),
	(55, 2018, '2018-04-06 09:33:07', 'SMIT', 'Secretaria', 4, NULL, '200', '', '0.0000000000'),
	(55, 2019, '2019-03-26 16:53:18', 'SUBSM', 'Subprefeitura', 2, NULL, '160', '0', '118.0000000000'),
	(56, 2018, '2018-04-06 10:12:39', 'SMUL', 'Secretaria', 13, 1, '772', '0', '687.0000000000'),
	(56, 2019, '2019-03-27 15:30:11', 'SUBG', 'Subprefeitura', 2, NULL, '43', '120', '43.0000000000'),
	(57, 2019, '2019-03-26 15:43:25', 'IPREM', 'Administração Indireta', 3, 0, '200', '0', '0.0000000000'),
	(58, 2017, '2017-05-02 12:42:25', 'SUBFB', 'Subprefeitura', 2, 0, '120', '', '110'),
	(58, 2019, '2019-04-08 14:31:06', 'SEHAB', 'Secretaria', 3, NULL, '228', '0', '228.0000000000'),
	(59, 2017, '2017-07-03 15:39:23', 'SUBMB', 'Subprefeitura', 2, 0, '147', '0', '50'),
	(59, 2019, '2019-04-03 12:07:19', 'SUBMO', 'Subprefeitura', 4, NULL, '178', '0', '130.0000000000'),
	(60, 2019, '2019-04-12 13:52:00', 'SMUL', 'Secretaria', 16, 0, '851', '0', '820.0000000000'),
	(61, 2018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(61, 2019, '2019-04-08 16:24:18', 'SMADS', 'Secretaria', 8, NULL, '1700', '0', '150.0000000000'),
	(62, 2018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(62, 2019, '2019-04-12 15:25:33', 'CET', 'Administração Indireta', 48, 0, '2359', '0', '2019.0000000000'),
	(63, 2018, '2018-04-06 10:01:00', 'SMSUB', 'Secretaria', 10, 0, '450', '', '430.0000000000'),
	(63, 2019, '2019-04-10 09:48:05', 'SG', 'Secretaria', 14, 0, '822', '0', '325.0000000000'),
	(64, 2018, '2018-04-09 15:24:53', 'SMT', 'Secretaria', 18, 0, '500', '0', '500.0000000000'),
	(64, 2019, '2019-04-02 14:00:08', 'SPURB', 'Administração Indireta', 5, NULL, '171', '0', '111.0000000000'),
	(65, 2017, '2017-05-15 15:55:57', 'SMDHC', 'Secretaria', 9, 0, '535', '0', '149'),
	(65, 2019, '2019-04-02 15:37:29', 'TMSP', 'Administração Indireta', 3, NULL, '80', '0', '15.0000000000'),
	(66, 2018, '2018-03-20 17:09:23', 'SUBIP', 'Subprefeitura', 4, 0, '40', '160', '20.0000000000'),
	(66, 2019, '2019-04-05 14:05:56', 'SPOBR', 'Administração Indireta', 7, 1, '200', '0', '50.0000000000'),
	(67, 2018, '2018-04-06 18:44:22', 'SMSU', 'Secretaria', 21, 0, '1651', '', '1092.0000000000'),
	(67, 2019, '2019-04-11 10:04:21', 'SUBVP', 'Subprefeitura', 2, NULL, '0', '120', '0.0000000000'),
	(68, 2017, '2017-05-02 16:15:59', 'SUBCL', 'Subprefeitura', 1, 0, '190', '0', '190'),
	(68, 2018, '2018-03-20 19:15:13', 'SUBVM', 'Subprefeitura', 2, NULL, '150', '', '105.0000000000'),
	(68, 2019, '2019-04-11 11:02:56', 'SMIT', 'Secretaria', 5, NULL, '225', '0', '0.0000000000'),
	(69, 2018, '2018-04-16 12:57:21', 'SUBEM', 'Subprefeitura', 3, NULL, '40', '66', '25.0000000000'),
	(69, 2019, '2019-04-11 09:55:32', 'SFMSP', 'Administração Indireta', 6, 0, '450', '0', '200.0000000000'),
	(70, 2018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(71, 2018, '2018-03-21 13:32:20', 'SUBPR', 'Subprefeitura', 4, NULL, '160', '0', '90.0000000000'),
	(71, 2019, '2019-04-15 12:09:04', 'SUBMG', 'Subprefeitura', 4, NULL, '180', '0', '180.0000000000'),
	(72, 2018, NULL, 'SEHAB', 'Secretaria', 2, NULL, '221', '', '355.0000000000'),
	(72, 2019, '2019-04-10 13:35:56', 'SPCIN', 'Administração Indireta', 1, NULL, '40', '0', '0.0000000000'),
	(73, 2018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(73, 2019, '2019-04-12 15:44:50', 'SUBAD', 'Subprefeitura', 3, NULL, '150', '0', '110.0000000000'),
	(74, 2018, '2018-04-02 09:42:06', 'SMPED', 'Secretaria', 5, 0, '65', '0', '35.0000000000'),
	(74, 2019, '2019-04-09 13:41:08', 'SMC', 'Secretaria', 21, 0, '1200', '0', '900.0000000000'),
	(75, 2018, '2018-03-21 18:22:12', 'TMSP', 'Administração Indireta', 4, 0, '70', '65', '50.0000000000'),
	(76, 2018, '2018-05-09 15:28:47', 'SMJ', 'Secretaria', 3, 1, '55', '0', '0.0000000000'),
	(76, 2019, '2019-04-10 12:32:02', 'SUBFB', 'Subprefeitura', 3, NULL, '117', '0', '67.0000000000'),
	(77, 2018, '2018-04-02 14:32:57', 'SUBMG', 'Subprefeitura', 3, NULL, '180', '0', '180.0000000000'),
	(77, 2019, '2019-04-12 19:19:04', 'SUBBT', 'Subprefeitura', 2, NULL, '138', '0', '118.0000000000'),
	(78, 2017, '2017-05-03 12:05:05', 'SUBEM', 'Subprefeitura', 3, 0, '55', '0', '100'),
	(78, 2018, '2018-03-28 10:26:45', 'SFMSP', 'Administração Indireta', 7, NULL, '470', '0', '379.0000000000'),
	(78, 2019, '2019-04-09 15:54:43', 'PGM', 'Secretaria', 16, 1, '1150', '0', '30.0000000000'),
	(79, 2019, '2019-04-10 11:46:49', 'SUBMB', 'Subprefeitura', 3, NULL, '138', '0', '40.0000000000'),
	(80, 2019, '2019-04-11 09:37:41', 'SGM', 'Secretaria', 8, NULL, '600', '75', '250.0000000000'),
	(81, 2019, '2019-04-12 11:53:08', 'CGM', 'Secretaria', 4, NULL, '172', '0', '127.0000000000'),
	(82, 2019, '2019-04-11 23:05:34', 'SUBPA', 'Subprefeitura', 1, NULL, '50', '40', '50.0000000000'),
	(83, 2018, '2018-05-30 13:48:35', 'SEHAB', 'Secretaria', 2, NULL, '221', '', '116.0000000000'),
	(84, 2017, '2017-05-03 16:05:14', 'SUBPE', 'Subprefeitura', 6, 0, '175', '10', '175'),
	(84, 2018, '2018-03-28 12:44:21', 'SUBAD', 'Subprefeitura', 2, NULL, '160', '0', '130.0000000000'),
	(84, 2019, '2019-04-12 11:38:21', 'SPPAR', 'Administração Indireta', 1, NULL, '4', '36', '4.0000000000'),
	(85, 2018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(85, 2019, '2019-04-16 12:35:43', 'FT', 'Secretaria', 3, 1, '100', '0', '100.0000000000'),
	(86, 2018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(86, 2019, '2019-04-18 09:55:26', 'SMT', 'Secretaria', 20, 0, '550', '0', '400.0000000000'),
	(87, 2017, '2017-05-09 11:40:19', 'SUBSM', 'Subprefeitura', 1, 0, '104', '', '80'),
	(88, 2018, '2018-06-13 12:49:10', 'SUBSA', 'Subprefeitura', 2, NULL, '52', '94', '33.0000000000'),
	(89, 2018, '2018-04-02 13:20:24', 'SPURB', 'Administração Indireta', 5, 0, '175', '0', '50.0000000000'),
	(90, 2018, '2018-03-26 12:33:05', 'SUBMB', 'Subprefeitura', 3, NULL, '135', '', '40.0000000000'),
	(91, 2017, '2017-05-05 11:05:02', 'SUBCS', 'Subprefeitura', 2, 0, '139', '0', '120'),
	(91, 2018, '2018-04-16 13:12:43', 'SMRI', 'Secretaria', 2, NULL, '65', '0', '52.0000000000'),
	(92, 2018, '2018-06-11 10:53:17', 'SPOBR', 'Administração Indireta', 5, 1, '160', '', '50.0000000000'),
	(93, 2017, '2017-05-12 15:42:19', 'SG', 'Secretaria', 6, 0, '822', '0', '325'),
	(93, 2018, '2018-03-26 16:22:31', 'CET', 'Administração Indireta', 42, 1, '2355', '0', '1502.0000000000'),
	(94, 2017, '2017-05-17 16:16:00', 'SPURB', 'Administração Indireta', 5, 0, '180', '0', '52'),
	(94, 2018, '2018-04-06 17:09:53', 'SPTRA', 'Administração Indireta', 56, 1, '1522', '', '848.0000000000'),
	(95, 2018, '2018-04-24 09:44:02', 'SUBIQ', 'Subprefeitura', 3, NULL, '10', '164', '10.0000000000'),
	(96, 2018, '2018-03-26 12:42:18', 'COVIS', 'Secretaria', 16, 0, '500', '', '250.0000000000'),
	(97, 2018, '2018-05-03 09:53:11', 'SUBCL', 'Subprefeitura', 4, NULL, '180', '0', '165.0000000000'),
	(98, 2018, '2018-04-19 09:14:52', 'SUBPA', 'Subprefeitura', 3, NULL, '52', '52', '32.0000000000'),
	(99, 2018, '2018-03-28 10:09:45', 'SIURB', 'Secretaria', 9, 1, '450', '', '450.0000000000'),
	(100, 2018, '2018-05-18 11:22:14', 'SMDP', 'Secretaria', 1, 1, '27', '0', '3.0000000000'),
	(101, 2018, '2018-04-04 11:03:15', 'AHM', 'Administração Indireta', 21, 0, '2375', '', '1875.0000000000'),
	(102, 2018, '2018-03-28 18:47:34', 'SUBMO', 'Subprefeitura', 5, NULL, '170', '0', '100.0000000000'),
	(103, 2018, '2018-04-05 17:25:59', 'CGM', 'Secretaria', 5, NULL, '167', '', '122.0000000000'),
	(105, 2018, '2018-04-16 11:10:08', 'SPTUR', 'Administração Indireta', 20, 1, '355', '', '160.0000000000'),
	(106, 2017, '2017-05-15 17:16:32', 'SUBCV', 'Subprefeitura', 3, 0, '93', '0', '65'),
	(106, 2018, '2018-04-05 08:55:33', 'SUBVP', 'Subprefeitura', 2, NULL, '30', '105', '30.0000000000'),
	(107, 2017, '2017-05-09 08:57:31', 'SUBSE', 'Subprefeitura', 2, 0, '220', '0', '220'),
	(107, 2018, '2018-04-05 17:01:33', 'PGM', 'Secretaria', 16, 0, '1227', '0', '72.0000000000'),
	(108, 2018, '2018-04-02 15:56:14', 'SGM', 'Secretaria', 6, NULL, '520', '0', '200.0000000000'),
	(109, 2018, '2018-04-03 16:49:59', 'FT', 'Secretaria', 3, NULL, '77', '0', '0.0000000000'),
	(110, 2018, '2018-04-04 09:58:17', 'SUBCS', 'Subprefeitura', 2, 0, '118', '0', '90.0000000000'),
	(113, 2018, NULL, 'SMS', 'Secretaria', 63, 1, '736', '', '0.0000000000'),
	(114, 2017, '2017-05-13 15:03:13', 'SMC', 'Secretaria', 6, 1, '1480', '0', '970'),
	(114, 2018, '2018-04-04 12:15:00', 'SME', 'Secretaria', 18, 1, '28000', '', '20000.0000000000'),
	(115, 2018, '2018-05-29 12:38:52', 'SMTE', 'Secretaria', 6, 0, '400', '0', '400.0000000000'),
	(116, 2017, '2017-05-15 15:44:00', 'SMADS', 'Secretaria', 10, 0, '1800', '', '500'),
	(117, 2017, '2017-05-11 15:00:46', 'SGM', 'Secretaria', 3, 0, '430', '0', '150'),
	(117, 2018, '2018-04-05 12:13:29', 'SUBFB', 'Subprefeitura', 3, NULL, '200', '0', '180.0000000000'),
	(118, 2017, '2017-05-10 16:23:36', 'SEHAB', 'Secretaria', 3, 0, '37', '0', '358'),
	(118, 2018, '2018-05-21 11:37:55', 'SUBMP', 'Subprefeitura', 3, NULL, '110', '0', '54.0000000000'),
	(119, 2018, '2018-04-06 12:17:52', 'AMLU', 'Administração Indireta', 6, 0, '150', '0', '50.0000000000'),
	(121, 2018, '2018-05-16 17:44:53', 'SPPAR', 'Administração Indireta', 1, 0, '20', '0', '15.0000000000'),
	(123, 2018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(124, 2017, '2017-05-10 17:11:03', 'SUBPA', 'Subprefeitura', 1, 0, '40', '50', '40'),
	(136, 2017, '2017-05-11 17:42:31', 'SMSO', 'Secretaria', 6, 0, '550', '0', '350'),
	(152, 2017, '2017-05-15 17:42:45', 'CGM', 'Secretaria', 3, 0, '166', '', '70'),
	(154, 2017, '2017-05-15 18:07:58', 'SPOBR', 'Administração Indireta', 7, 1, '200', '0', '100'),
	(155, 2017, '2017-05-15 18:19:58', 'SMJ', 'Secretaria', 16, 0, '1162', '0', '197'),
	(165, 2017, '2017-05-16 18:31:20', 'SMS', 'Secretaria', 48, 0, '5000', '0', '0'),
	(172, 2017, '2017-05-17 12:53:13', 'SMUL', 'Secretaria', 5, 0, '850', '0', '850'),
	(173, 2017, '2017-05-17 13:37:52', 'SUBIP', 'Subprefeitura', 4, 0, '20', '160', '20'),
	(174, 2017, '2017-05-22 13:15:23', 'SMIT', 'Secretaria', 3, 0, '160', '0', '60'),
	(185, 2017, '2017-06-13 19:12:01', 'SMTE', 'Secretaria', 9, 0, '200', '0', '200'),
	(189, 2017, '2017-07-04 18:14:15', 'SUBPJ', 'Subprefeitura', 1, 0, '48', '61', '48'),
	(194, 2017, '2017-06-14 11:41:01', 'SMPED', 'Secretaria', 1, 0, '70', '0', '70'),
	(195, 2017, '2017-06-14 11:21:08', 'SUBJT', 'Subprefeitura', 1, 0, '150', '0', '150'),
	(203, 2017, '2017-06-14 13:09:12', 'SUBST', 'Subprefeitura', 3, 0, '150', '0', '150'),
	(205, 2017, '2017-06-14 12:59:15', 'SMRI', 'Secretaria', 2, 0, '60', '0', '20'),
	(209, 2017, '2017-06-14 17:29:01', 'HSPM', 'Administração Indireta', 18, 0, '560', '0', '400'),
	(211, 2017, NULL, 'A2', NULL, 2, NULL, '', '', ''),
	(213, 2017, '2017-06-16 16:15:34', 'SPTUR', 'Administração Indireta', 23, 1, '400', '0', '140'),
	(215, 2017, '2017-06-19 10:09:37', 'SUBVP', 'Subprefeitura', 2, 0, '0', '150', '150'),
	(218, 2017, '2017-06-26 11:39:23', 'SUBAD', 'Subprefeitura', 2, 0, '130', '0', '130'),
	(222, 2017, '2017-06-19 16:11:05', 'SUBAF', 'Subprefeitura', 3, 0, '140', '0', '132'),
	(227, 2017, '2017-06-20 17:12:30', 'SMT', 'Secretaria', 4, 0, '600', '0', '600'),
	(244, 2017, NULL, 'A18', NULL, 4, 0, NULL, NULL, NULL),
	(245, 2017, '2017-06-22 13:31:47', 'FT', 'Secretaria', 0, 0, '90', '0', '66'),
	(250, 2017, '2017-06-22 14:42:09', 'COHAB', 'Administração Indireta', 10, 0, '400', '0', '300'),
	(256, 2017, NULL, 'A16', NULL, NULL, NULL, NULL, NULL, NULL),
	(260, 2017, '2017-06-26 19:24:47', 'SUBVM', 'Subprefeitura', 1, 0, '200', '0', '143'),
	(263, 2017, NULL, 'A25', NULL, NULL, NULL, NULL, NULL, NULL),
	(264, 2017, '2017-06-28 16:30:25', 'SME', 'Secretaria', 9, 1, '39700', '0', '37200'),
	(269, 2017, '2017-07-03 15:35:59', 'SUBJA', 'Subprefeitura', 2, 0, '150', '0', '0'),
	(271, 2017, '2017-07-04 17:19:00', 'SVMA', 'Secretaria', 5, 0, '1100', '', '700'),
	(280, 2017, NULL, 'A14', NULL, NULL, NULL, NULL, NULL, NULL),
	(282, 2017, NULL, 'A9', NULL, 1, NULL, NULL, NULL, NULL),
	(286, 2017, NULL, 'A16', NULL, NULL, NULL, NULL, NULL, NULL),
	(289, 2017, '2017-09-06 11:28:57', 'SUBIQ', 'Subprefeitura', 3, 0, '0', '180', '10'),
	(292, 2017, NULL, 'A29', NULL, 3, 0, NULL, NULL, NULL),
	(296, 2017, '2017-09-06 16:46:53', 'COVIS', 'Secretaria', 14, 0, '400', '', '100'),
	(300, 2017, '2017-09-06 18:44:02', 'SUBPI', 'Subprefeitura', 1, 0, '80', '80', '80'),
	(302, 2017, NULL, 'A25', NULL, 0, 0, NULL, NULL, NULL),
	(303, 2017, NULL, 'A25', NULL, 2, 0, '40', '81', '40'),
	(304, 2017, '2017-09-11 11:28:15', 'SUBSB', 'Subprefeitura', 1, 0, '94', '0', '0'),
	(305, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(306, 2017, '2017-09-11 12:14:26', 'SUBSA', 'Subprefeitura', 2, 0, '40', '81', '40'),
	(307, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(308, 2017, '2017-09-11 12:49:02', 'SUBIT', 'Subprefeitura', 2, 0, '150', '00', '140'),
	(309, 2017, NULL, 'A25', NULL, 2, 0, NULL, NULL, NULL),
	(310, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(311, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(312, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(313, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(314, 2017, NULL, 'A14', NULL, NULL, NULL, NULL, NULL, NULL),
	(315, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(316, 2017, NULL, 'A31', NULL, NULL, NULL, NULL, NULL, NULL),
	(317, 2017, NULL, 'A14', NULL, NULL, NULL, NULL, NULL, NULL),
	(318, 2017, NULL, 'A14', NULL, NULL, NULL, NULL, NULL, NULL),
	(319, 2017, NULL, 'A14', NULL, NULL, NULL, NULL, NULL, NULL),
	(320, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(322, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(323, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(324, 2017, NULL, 'A13', NULL, 0, NULL, NULL, NULL, NULL),
	(326, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(327, 2017, NULL, 'A3', NULL, NULL, NULL, NULL, NULL, NULL),
	(328, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(329, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(330, 2017, '2017-09-29 14:00:00', 'SUBLA', 'Subprefeitura', 2, 0, '155', '0', '125'),
	(331, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(332, 2017, NULL, NULL, NULL, NULL, NULL, '', '', ''),
	(333, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(334, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(335, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(336, 2017, NULL, NULL, NULL, NULL, NULL, '', '', ''),
	(337, 2017, NULL, NULL, NULL, NULL, NULL, '', '', ''),
	(338, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(339, 2017, NULL, 'A11', NULL, 1, NULL, NULL, NULL, NULL),
	(340, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(341, 2017, NULL, 'A11', NULL, 1, NULL, NULL, NULL, NULL),
	(342, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(343, 2017, NULL, 'A20', NULL, 1, NULL, NULL, NULL, NULL),
	(344, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(345, 2017, NULL, 'A11', NULL, NULL, NULL, NULL, NULL, NULL),
	(346, 2017, NULL, 'A29', NULL, NULL, NULL, NULL, NULL, NULL),
	(347, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(348, 2017, '2017-09-26 15:27:57', 'SUBMG', 'Subprefeitura', 3, 0, '180', '0', '180'),
	(350, 2017, NULL, 'A3', NULL, 6, 0, '71', '0', '71'),
	(351, 2017, NULL, 'A11', NULL, 1, NULL, NULL, NULL, NULL),
	(352, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(353, 2017, '2017-10-03 16:20:52', 'AHM', 'Administração Indireta', 22, 0, '2340', '0', '1090'),
	(354, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(355, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(356, 2017, '2017-09-29 11:05:03', 'SUBMP', 'Subprefeitura', 3, 0, '196', '0', '190'),
	(357, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(358, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(359, 2017, NULL, 'A11', NULL, 1, NULL, NULL, NULL, NULL),
	(360, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(361, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(362, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(364, 2017, NULL, 'A11', NULL, NULL, NULL, NULL, NULL, NULL),
	(365, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(366, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(367, 2017, NULL, 'A11', NULL, 1, NULL, NULL, NULL, NULL),
	(368, 2017, '2017-10-02 19:32:55', 'SMDP', 'Secretaria', 1, 1, '24', '0', '0'),
	(369, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(370, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(371, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(372, 2017, NULL, 'A16', NULL, 48, 0, '1', '1', '1'),
	(373, 2017, NULL, 'A2', NULL, 2, NULL, '', '', ''),
	(374, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(375, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(376, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(377, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(378, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(379, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(380, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(381, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(382, 2017, NULL, 'A2', NULL, NULL, NULL, NULL, NULL, NULL),
	(383, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(384, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(385, 2017, NULL, NULL, NULL, NULL, NULL, '', '', ''),
	(386, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(387, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(388, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(389, 2017, NULL, 'A2', NULL, NULL, NULL, NULL, NULL, NULL),
	(390, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(391, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(392, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(393, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(394, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(395, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(396, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(397, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(398, 2017, NULL, 'A3', NULL, 40, 0, NULL, NULL, NULL),
	(399, 2017, NULL, 'A3', NULL, NULL, NULL, '', '', ''),
	(400, 2017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `respostas_diagnostico` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;