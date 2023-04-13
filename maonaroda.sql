-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13-Abr-2023 às 04:12
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
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`idcadastro`, `tipo_cadastro`, `email`, `senha`, `endereco`, `nome`) VALUES
(11, '1', 'jefe1', '1234', 'Rua ', 'jeferson'),
(12, '1', 'jefe2', '1234', 'Rua ', 'jeferson'),
(13, '1', 'jefe2', '1234', 'Rua ', 'jeferson'),
(14, '1', 'jefe2', '1234', 'Rua ', 'jeferson'),
(15, '1', 'jefe2', '1234', 'Rua ', 'jeferson'),
(16, '1', 'jefe2', '1234', 'Rua ', 'jeferson'),
(17, '1', 'jefe2', '1234', 'Rua ', 'jeferson'),
(18, '1', 'jefe2', '1234', 'Rua ', 'jeferson'),
(19, '1', 'jefe2', '1234', 'Rua ', 'jeferson');

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
('teste', 'teste', 11, 6, 3);

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
(1, 5, 2);

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
(2, '2023-04-11', 11, 11);

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
  ADD PRIMARY KEY (`idpos_servico`,`servicos_idservico`),
  ADD KEY `fk_pos_servico_servicos1` (`servicos_idservico`);

--
-- Índices para tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`idservico`),
  ADD KEY `fk_servico_cadastro` (`cadastro_idcadastro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `idcadastro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `cad_profissional`
--
ALTER TABLE `cad_profissional`
  MODIFY `idprofissional` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `pos_servico`
--
ALTER TABLE `pos_servico`
  MODIFY `idpos_servico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `idservico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
