-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 31/10/2023 às 19:19
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_vet`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tabela_pessoa`
--

CREATE TABLE `tabela_pessoa` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `rg` varchar(20) NOT NULL,
  `estado_civil` varchar(20) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tabela_pessoa`
--

INSERT INTO `tabela_pessoa` (`id`, `nome`, `cpf`, `rg`, `estado_civil`, `cep`, `endereco`, `bairro`, `cidade`, `uf`, `telefone`, `email`, `senha`) VALUES
(2, 'aaaaaaaaaa', '23222211111111', '2222', 'ddddddddd', 'wwwwwwww', 'wwwwwwwwwwwwwwwwwwww', 'wwwwwwwwwwwwww', '', 'AM', '2222', '', '123456789'),
(3, 'aaaaaaaaaa', '23222211111111', '2222', 'ddddddddd', 'wwwwwwww', 'wwwwwwwwwwwwwwwwwwww', 'wwwwwwwwwwwwww', '', 'AM', '2222', '', '123456789'),
(4, '1111111111111111', '22222222222222', '2222222222222', '2222222222222', '2222222222', '22222222222222', '22222222222', '222222222222', 'PI', '22222222222222', '222222222222', '222222222222222'),
(5, '', '', '', '', '', '', '', '', 'Es', '', '', ''),
(6, 'Exemplo Pessoa', '12345678901', '1234567', 'Solteiro', '12345678', 'Rua Exemplo, 123', 'Centro', 'São Paulo', 'SP', '1234567890', 'exemplo@example.com', 'senha123');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tabela_pet`
--

CREATE TABLE `tabela_pet` (
  `id` int(11) NOT NULL,
  `name_pet` varchar(255) NOT NULL,
  `especie` varchar(100) NOT NULL,
  `raca` varchar(100) NOT NULL,
  `idade` int(11) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `cor` varchar(50) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tabela_pet`
--

INSERT INTO `tabela_pet` (`id`, `name_pet`, `especie`, `raca`, `idade`, `genero`, `cor`, `foto`, `description`) VALUES
(1, '', '', '', 0, '', '', '', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(2, '', '', '', 0, '', '', '', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(3, 'eeeeeeee', 'eeeeee', 'eeeeeee', 222, 'eeeeeee', 'eeeeee', '', 'eeeeeeeeeeeee'),
(4, 'eeeeeeee', 'eeeeee', 'eeeeeee', 222, 'eeeeeee', 'eeeeee', '80c7d4e772b8edf029ec0f178319e13c.png', 'eeeeeeeeeeeee');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tabela_veterinario`
--

CREATE TABLE `tabela_veterinario` (
  `id` int(11) NOT NULL,
  `nome_veterinario` varchar(255) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `rg` varchar(20) NOT NULL,
  `crmv` varchar(20) NOT NULL,
  `estado_civil` varchar(20) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tabela_veterinario`
--

INSERT INTO `tabela_veterinario` (`id`, `nome_veterinario`, `cpf`, `rg`, `crmv`, `estado_civil`, `cep`, `endereco`, `bairro`, `cidade`, `uf`, `telefone`, `email`, `senha`) VALUES
(1, '11111111111111', '111.111.111-11', '', '1111111111111111111', 'wwwwwwwwwwwwwww', '11111-111', '111111111111', '11111111111', '1111111111', 'AM', '(11) 11111-1111', '', ''),
(2, '11111111111111', '111.111.111-11', '', '1111111111111111111', 'wwwwwwwwwwwwwww', '11111-111', '111111111111', '11111111111', '1111111111', 'AM', '(11) 11111-1111', '', ''),
(3, '11111111111111', '111.111.111-11', '', '1111111111111111111', 'wwwwwwwwwwwwwww', '11111-111', '111111111111', '11111111111', '1111111111', 'AM', '(11) 11111-1111', '', ''),
(4, '11111111111', '111.111.111-11', '1111111-1', '1111111', '11111111111111111111', '11111-111', '1111111111111111111111', '111111111111', '111111111111', 'PB', '(11) 11111-1111', '11111111', '1111111'),
(5, '11111111111', '111.111.111-11', '1111111-1', '1111111', '11111111111111111111', '11111-111', '1111111111111111111111', '111111111111', '111111111111', 'PB', '(11) 11111-1111', '11111111', '1111111');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tabela_pessoa`
--
ALTER TABLE `tabela_pessoa`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tabela_pet`
--
ALTER TABLE `tabela_pet`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tabela_veterinario`
--
ALTER TABLE `tabela_veterinario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tabela_pessoa`
--
ALTER TABLE `tabela_pessoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tabela_pet`
--
ALTER TABLE `tabela_pet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tabela_veterinario`
--
ALTER TABLE `tabela_veterinario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
