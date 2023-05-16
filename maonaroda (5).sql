-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Maio-2023 às 05:23
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `maonaroda`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `idcadastro` int(11) NOT NULL,
  `tipo_cadastro` varchar(50) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `idade` int(2) NOT NULL,
  `telefone` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`idcadastro`, `tipo_cadastro`, `email`, `senha`, `endereco`, `nome`, `idade`, `telefone`) VALUES
(11, '1', 'jefe1', '1234', 'Rua ', 'jeferson', 0, 0),
(12, '1', 'jefe2', '1234', 'Rua ', 'jeferson', 0, 0),
(13, '1', 'jefe2', '1234', 'Rua ', 'jeferson', 0, 0),
(14, '1', 'jefe2', '1234', 'Rua ', 'jeferson', 0, 0),
(15, '1', 'jefe2', '1234', 'Rua ', 'jeferson', 0, 0),
(16, '1', 'jefe2', '1234', 'Rua ', 'jeferson', 0, 0),
(17, '1', 'jefe2', '1234', 'Rua ', 'jeferson', 0, 0),
(18, '1', 'jefe2', '1234', 'Rua ', 'jeferson', 0, 0),
(19, '1', 'jefe2', '1234', 'Rua ', 'jeferson', 0, 0),
(20, '1', 'email', 'senha', 'endereco', 'nome', 0, 0),
(21, '1', 'ana', 'ana', 'ana', 'ana', 0, 0),
(22, '1', 'tesst', 'teste', 'teste', 'teste', 0, 0),
(23, '2', 'tete', 'tete', 'tete', 'tet', 0, 0),
(24, '2', 'teadsa', 'dwadwa', 'tete', 'tete', 0, 0),
(25, '2', '', '', '', '', 0, 0),
(26, '2', 'te', 'te', 'te', 'tes', 0, 0),
(27, '2', 'teste', 'teste', 'test', 'test', 0, 0),
(28, '2', 't', 'este', 'teste', 'teste', 0, 0),
(29, '2', '', '', '', '', 0, 0),
(30, '1', '', '', '', '', 0, 0),
(31, '2', '', '', '', '', 0, 0),
(32, '2', '', '', '', '', 0, 0),
(33, '2', '', '', '', '', 0, 0),
(34, '2', '', '', '', '', 0, 0),
(35, '2', '', '', '', '', 0, 0),
(36, '1', '', '', '', '', 0, 0),
(37, '1', 'daw', 'dawdw', 'adwa', 'dwa', 0, 0),
(38, '2', '@hotmail.com-', 'teste', 'rua colubia', 'jefferson', 0, 0),
(39, '2', 'ste', 'tete', 'te', 'tes', 0, 0),
(40, '1', 'jefe2', '1234', 'Rua ', 'jeferson', 12, 91310876),
(41, '1', 'jefe', 'kefe', 'jefe', 'jefe', 15, 994137276),
(42, '2', 'jedinhgp_', '1234', 'jardim peperi', 'jefferson', 18, 2147483647),
(43, '1', 'dwadwa', 'dawdw', 'daw', 'daw', 48, 2147483647),
(44, '1', 'dawdw', 'dwadwa', 'dwadwa', 'dwdw', 48, 991310876),
(45, '1', 'dwadwa', 'daw', 'dwadw', 'dwadw', 48, 2147483647),
(46, '2', 'jefe2', '1234', 'Rua ', 'jeferson', 12, 91310876),
(47, '2', 'jefe2', '1234', 'Rua ', 'jeferson', 12, 91310876),
(48, '2', 'jefe2', '1234', 'Rua ', 'jeferson', 12, 91310876),
(49, '2', 'jefe2', '1234', 'Rua ', 'jeferson', 12, 91310876),
(50, '2', 'jefe2', '1234', 'Rua ', 'jeferson', 12, 91310876),
(51, '2', 'jefe2', '1234', 'Rua ', 'jeferson', 12, 91310876),
(52, '2', 'jefe2', '1234', 'Rua ', 'jeferson', 12, 91310876),
(53, '2', 'dwadaw', 'da', 'dawda', 'dwdw', 48, 991310876),
(54, '2', 'dwadaw', 'da', 'dawda', 'dwdw', 48, 991310876),
(55, '2', 'dwdwa', 'daw', 'wadw', 'awaw', 48, 456),
(56, '2', 'dwadwa', 'dadwa', 'dwada', 'dawda', 48, 4884),
(57, '2', 'dawdwad', 'dwadwa', 'dwadwdwadwa', 'dawd', 4, 4),
(58, '2', 'wadwa', 'wadwad', 'dwad', 'dwadwa', 4, 4),
(59, '2', 'adwa', 'adaw', 'dwa', 'dwda', 4, 87),
(60, '2', 'dwa', 'dwdwad', 'dwadw', 'dwadw', 4, 4),
(61, '2', 'dwad', 'daw', 'daw', 'dwdwa', 7, 878),
(62, '2', 'wadaw', 'dwadwa', 'daw', 'dwadwa', 4, 4),
(63, '2', 'jefinho_smo@hotmail.com', '1234', 'rua columbia', 'jefferson', 22, 991310876),
(64, '2', 'dawda', 'daw', 'daw', 'dwad', 4, 4),
(65, '2', 'dwad', 'dwadaw', 'dw', 'wda', 4, 4),
(66, '1', 'te', 'ad', 'te', 'te', 4, 4),
(67, '2', 'jefe2', '1234', 'Rua ', 'jeferson', 12, 4991310876);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cad_profissional`
--

CREATE TABLE `cad_profissional` (
  `desc_profissao` varchar(45) DEFAULT NULL,
  `form_profissao` varchar(200) DEFAULT NULL,
  `cadastro_idcadastro` int(11) DEFAULT NULL,
  `idprofissional` int(11) NOT NULL,
  `idprofissao` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cad_profissional`
--

INSERT INTO `cad_profissional` (`desc_profissao`, `form_profissao`, `cadastro_idcadastro`, `idprofissional`, `idprofissao`) VALUES
('teste', 'teste', 12, 2, NULL),
('teste', 'teste', 11, 3, 1),
('teste', 'teste', 12, 4, 2),
('teste', 'teste', 11, 6, 3),
('Profissoes.Agrimensor', 'trabalhei em', 37, 7, 2),
('teste', 'teste', 11, 8, 3),
('Profissoes.Zootecnista', 'trabalhei na aurora e tudo mais', 38, 9, 8),
('Profissoes.ServicodeDrones', 'tteste', 39, 10, 5),
('teste', 'teste', 11, 11, 3),
('Profissoes.Gestaoambiental', 'ja trablaehi em tudo', 42, 12, 4),
('teste', 'teste', 11, 13, 3),
('Profissoes.Agrimensor', 'dwda', 54, 14, 2),
('Profissoes.EngenheiroAgronomo', 'dwaaw', 56, 15, 1),
('Profissoes.EngenheiroAgronomo', 'dwa', 57, 16, 1),
('Profissoes.EngenheiroAgronomo', 'dwa', 58, 17, 1),
('Profissoes.Gestaoambiental', 'daw', 59, 18, 4),
('Profissoes.EngenheiroAgronomo', 'w', 60, 19, 1),
('Profissoes.EngenheiroAgronomo', 'dwadw', 61, 20, 1),
('Profissoes.EngenheiroAgronomo', 'dwa', 62, 21, 1),
('Profissoes.Zootecnista', 'Trabalhei dbhnwiuajdoawddawwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwaddawadwa', 63, 22, 8),
('Profissoes.EngenheiroAgronomo', ' dwdw', 64, 23, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pos_servico`
--

CREATE TABLE `pos_servico` (
  `idpos_servico` int(11) NOT NULL,
  `avaliacao` double DEFAULT NULL,
  `servicos_idservico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pos_servico`
--

INSERT INTO `pos_servico` (`idpos_servico`, `avaliacao`, `servicos_idservico`) VALUES
(1, 5, 2),
(2, 5, 2),
(3, 3, 18),
(4, 2, 6),
(5, 3, 15),
(6, 3, 25),
(7, 4, 20),
(8, 3, 22),
(9, 5, 22),
(10, 3, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `idservico` int(11) NOT NULL,
  `data_servico` date DEFAULT current_timestamp(),
  `id_contratado` int(11) DEFAULT NULL,
  `cadastro_idcadastro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`idservico`, `data_servico`, `id_contratado`, `cadastro_idcadastro`) VALUES
(2, '2023-04-11', 11, 11),
(5, '2023-04-23', 11, 11),
(6, '2023-04-23', 11, 11),
(13, '2023-04-23', 11, 11),
(15, '2023-04-23', 11, 11),
(16, '2023-04-23', 9, 11),
(17, '2023-04-23', 9, 11),
(18, '2023-04-23', 12, 11),
(19, '2023-04-23', 9, 11),
(20, '2023-04-23', 10, 12),
(21, '2023-04-23', 16, 12),
(22, '2023-04-23', 12, 12),
(23, '2023-04-25', 15, 11),
(24, '2023-05-10', 9, 11),
(25, '2023-05-10', 9, 11),
(26, '2023-05-14', 9, 12),
(27, '2023-05-15', 16, 11),
(28, '2023-05-15', 10, 11);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`idcadastro`);

--
-- Índices para tabela `cad_profissional`
--
ALTER TABLE `cad_profissional`
  ADD PRIMARY KEY (`idprofissional`),
  ADD KEY `fk_cad_profissional_cadastro` (`cadastro_idcadastro`);

--
-- Índices para tabela `pos_servico`
--
ALTER TABLE `pos_servico`
  ADD PRIMARY KEY (`idpos_servico`) USING BTREE,
  ADD KEY `fk_pos_servico_servicos1` (`servicos_idservico`);

--
-- Índices para tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`idservico`),
  ADD KEY `fk_servico_cadastro` (`cadastro_idcadastro`),
  ADD KEY `fk_id_contratado` (`id_contratado`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `idcadastro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de tabela `cad_profissional`
--
ALTER TABLE `cad_profissional`
  MODIFY `idprofissional` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `pos_servico`
--
ALTER TABLE `pos_servico`
  MODIFY `idpos_servico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `idservico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cad_profissional`
--
ALTER TABLE `cad_profissional`
  ADD CONSTRAINT `fk_cad_profissional_cadastro` FOREIGN KEY (`cadastro_idcadastro`) REFERENCES `cadastro` (`idcadastro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pos_servico`
--
ALTER TABLE `pos_servico`
  ADD CONSTRAINT `fk_pos_servico_servicos1` FOREIGN KEY (`servicos_idservico`) REFERENCES `servicos` (`idservico`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `servicos`
--
ALTER TABLE `servicos`
  ADD CONSTRAINT `fk_servico_cadastro` FOREIGN KEY (`cadastro_idcadastro`) REFERENCES `cadastro` (`idcadastro`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
