-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/04/2025 às 03:36
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `omnidb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `acessos`
--

CREATE TABLE `acessos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `chave` varchar(50) NOT NULL,
  `grupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `arquivos`
--

CREATE TABLE `arquivos` (
  `id` int(11) NOT NULL,
  `nome` varchar(70) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `arquivo` varchar(100) DEFAULT NULL,
  `data_cad` date DEFAULT NULL,
  `registro` varchar(50) DEFAULT NULL,
  `id_reg` int(11) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `arquivos`
--

INSERT INTO `arquivos` (`id`, `nome`, `descricao`, `arquivo`, `data_cad`, `registro`, `id_reg`, `usuario`) VALUES
(3, 'Documento de venda', NULL, '27-06-2024-15-19-09-WhatsApp-Image-2024-06-23-at-09.47.20.jpeg', '2024-06-27', 'Conta à Receber', 55, 29),
(4, 'Documento de venda', NULL, '27-06-2024-15-19-09-WhatsApp-Image-2024-06-23-at-09.47.20.jpeg', '2024-06-27', 'Cliente', 3, 29);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cargos`
--

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cargos`
--

INSERT INTO `cargos` (`id`, `nome`) VALUES
(10, 'vendedor');

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `ativo` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `foto`, `ativo`) VALUES
(5, 'Feminino em acetato', 'sem-foto.jpg', 'Sim'),
(6, 'Feminino metal', 'sem-foto.jpg', 'Sim'),
(7, 'Lente de contato', '28-06-2024-15-24-43-lente-de-contato.png', 'Sim');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `telefone2` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `pessoa` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `telefone`, `telefone2`, `cpf`, `endereco`, `data`, `pessoa`) VALUES
(3, 'jose rosenaldo da silva junior', '(84) 99834-2359', '', '087.053.734-25', 'rua francisco de assis 40 liberdade parnamirim', '2024-06-22', 'Física'),
(4, 'Ana alicia dantasnda silva', '84998342659', '', '08705373425', '', '2024-06-24', 'Física'),
(5, 'Micarla de almeida dantas', '(84) 99834-2358', '', '513.449.470-34', 'Rua francisco de assis de oliveira 40 liberdade parnamirim Rn', '2024-06-28', 'Física'),
(6, 'dsafsdf', '1111111111', '', '', '', '2025-03-29', 'Física'),
(7, 'qqqqqqq', '1111', '', '', '', '2025-03-29', 'Física');

-- --------------------------------------------------------

--
-- Estrutura para tabela `config`
--

CREATE TABLE `config` (
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `icone` varchar(100) DEFAULT NULL,
  `logo_rel` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `validade_orcamento` int(11) DEFAULT NULL,
  `excluir_orcamentos` int(11) DEFAULT NULL,
  `comissao_geral` int(11) DEFAULT NULL,
  `api_whatsapp` varchar(5) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `instancia` varchar(100) DEFAULT NULL,
  `marca_dagua` varchar(5) NOT NULL,
  `chave_pix` varchar(50) DEFAULT NULL,
  `impressao_automatica` varchar(5) NOT NULL,
  `fonte_comprovante` int(11) NOT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `dias_comissao` int(11) DEFAULT NULL,
  `cobranca_auto` varchar(5) NOT NULL,
  `data_cobranca` date DEFAULT NULL,
  `duas_vias_os` varchar(5) DEFAULT NULL,
  `ativo` varchar(5) DEFAULT NULL,
  `comissao_venda` int(11) DEFAULT NULL,
  `seletor_api` varchar(35) DEFAULT NULL,
  `alterar_acessos` varchar(5) DEFAULT NULL,
  `banco_sistema` varchar(35) DEFAULT NULL,
  `conta_sistema` varchar(20) DEFAULT NULL,
  `agencia_sistema` varchar(20) DEFAULT NULL,
  `beneficiario_sistema` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `config`
--

INSERT INTO `config` (`nome`, `email`, `telefone`, `endereco`, `instagram`, `logo`, `icone`, `logo_rel`, `id`, `validade_orcamento`, `excluir_orcamentos`, `comissao_geral`, `api_whatsapp`, `token`, `instancia`, `marca_dagua`, `chave_pix`, `impressao_automatica`, `fonte_comprovante`, `cnpj`, `dias_comissao`, `cobranca_auto`, `data_cobranca`, `duas_vias_os`, `ativo`, `comissao_venda`, `seletor_api`, `alterar_acessos`, `banco_sistema`, `conta_sistema`, `agencia_sistema`, `beneficiario_sistema`) VALUES
('Connect Phone', 'joserdasjunior@gmail.com', '(84) 99807-1881', NULL, NULL, 'logo.png', 'icone.png', 'logo.jpg', 2, 7, 60, 50, 'Não', NULL, NULL, 'Sim', NULL, 'Não', 12, NULL, 7, 'Sim', NULL, 'Sim', 'Sim', 5, 'menuia', 'Não', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `entradas`
--

CREATE TABLE `entradas` (
  `id` int(11) NOT NULL,
  `produto` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `motivo` varchar(100) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `entradas`
--

INSERT INTO `entradas` (`id`, `produto`, `quantidade`, `motivo`, `usuario`, `data`) VALUES
(1, 13, 1, '.', 29, '2024-06-24');

-- --------------------------------------------------------

--
-- Estrutura para tabela `formas_pgto`
--

CREATE TABLE `formas_pgto` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `formas_pgto`
--

INSERT INTO `formas_pgto` (`id`, `nome`) VALUES
(8, 'pix'),
(9, 'cartao de credito'),
(10, 'especie');

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `pix` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `frequencias`
--

CREATE TABLE `frequencias` (
  `id` int(11) NOT NULL,
  `frequencia` varchar(25) NOT NULL,
  `dias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `grupo_acessos`
--

CREATE TABLE `grupo_acessos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `itens_venda`
--

CREATE TABLE `itens_venda` (
  `id` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `id_venda` int(11) NOT NULL,
  `funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `itens_venda`
--

INSERT INTO `itens_venda` (`id`, `produto`, `valor`, `quantidade`, `total`, `id_venda`, `funcionario`) VALUES
(91, 13, 389.00, 1, 389.00, 126, 29),
(92, 13, 389.00, 1, 389.00, 129, 29),
(93, 13, 389.00, 1, 389.00, 130, 29),
(94, 15, 490.00, 3, 1470.00, 131, 29),
(95, 15, 490.00, 2, 980.00, 132, 29),
(96, 13, 389.00, 1, 389.00, 132, 29),
(97, 13, 389.00, 5, 1945.00, 133, 29),
(98, 13, 389.00, 3, 1167.00, 134, 29),
(99, 15, 490.00, 2, 980.00, 135, 29),
(100, 13, 389.00, 1, 389.00, 136, 29),
(101, 14, 389.00, 1, 389.00, 138, 29),
(102, 13, 389.00, 1, 389.00, 140, 29),
(103, 13, 389.00, 1, 389.00, 141, 29),
(104, 13, 389.00, 1, 389.00, 142, 29),
(105, 13, 389.00, 1, 389.00, 144, 29),
(106, 13, 389.00, 1, 389.00, 146, 29),
(107, 13, 389.00, 1, 389.00, 147, 29),
(108, 13, 389.00, 1, 389.00, 149, 29),
(109, 13, 389.00, 1, 389.00, 153, 29),
(110, 15, 490.00, 2, 980.00, 153, 29),
(111, 13, 389.00, 1, 389.00, 156, 29),
(112, 13, 389.00, 2, 778.00, 157, 29),
(113, 14, 389.00, 1, 389.00, 157, 29),
(114, 15, 490.00, 1, 490.00, 157, 29),
(115, 13, 389.00, 4, 1556.00, 159, 29),
(116, 13, 389.00, 1, 389.00, 162, 29),
(117, 14, 389.00, 1, 389.00, 162, 29),
(118, 13, 389.00, 1, 389.00, 164, 29),
(119, 13, 389.00, 1, 389.00, 166, 29),
(120, 13, 389.00, 1, 389.00, 169, 29),
(121, 14, 389.00, 1, 389.00, 171, 29),
(122, 15, 490.00, 1, 490.00, 179, 29);

-- --------------------------------------------------------

--
-- Estrutura para tabela `orcamentos`
--

CREATE TABLE `orcamentos` (
  `id` int(11) NOT NULL,
  `cliente` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `data_entrega` date DEFAULT NULL,
  `dias_validade` int(11) DEFAULT NULL,
  `valor` decimal(8,2) DEFAULT NULL,
  `desconto` int(11) DEFAULT NULL,
  `tipo_desconto` varchar(20) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `total_produtos` decimal(8,2) DEFAULT NULL,
  `total_servicos` decimal(8,2) DEFAULT NULL,
  `funcionario` int(11) DEFAULT NULL,
  `frete` decimal(8,2) DEFAULT NULL,
  `valor_entrada` decimal(8,2) DEFAULT NULL,
  `saida` varchar(50) DEFAULT NULL,
  `vendedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `orcamentos`
--

INSERT INTO `orcamentos` (`id`, `cliente`, `data`, `data_entrega`, `dias_validade`, `valor`, `desconto`, `tipo_desconto`, `subtotal`, `obs`, `status`, `total_produtos`, `total_servicos`, `funcionario`, `frete`, `valor_entrada`, `saida`, `vendedor`) VALUES
(13, 3, '2024-06-24', '2024-06-24', 10, 389.00, 15, '%', 330.65, '', 'Aprovado', 0.00, 389.00, 29, 0.00, NULL, NULL, NULL),
(14, 3, '2024-06-28', '2024-06-28', 10, 879.00, 20, '%', 703.20, '', 'Aprovado', 879.00, 0.00, 29, 0.00, NULL, NULL, NULL),
(17, 4, '2024-07-10', '2024-07-10', 1, 778.00, 15, '%', 661.30, '', 'Aprovado', 778.00, 0.00, 29, 0.00, NULL, NULL, NULL),
(18, 5, '2024-07-12', '2024-07-31', 1, 389.00, 0, '%', 389.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, NULL, NULL, NULL),
(19, 3, '2024-07-12', '2024-07-12', 0, 389.00, 0, '%', 389.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, NULL, NULL, NULL),
(20, 5, '2024-07-12', '2024-07-12', NULL, 389.00, 0, '%', 389.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, NULL, NULL, NULL),
(21, 4, '2024-07-16', '2024-07-16', NULL, 389.00, 0, '%', 389.00, '', 'Aprovado', 389.00, 0.00, 29, 0.00, NULL, NULL, NULL),
(22, 4, '2024-07-16', '2024-07-16', NULL, 778.00, 0, '%', 778.00, '', 'Aprovado', 778.00, 0.00, 29, 0.00, NULL, NULL, NULL),
(23, 4, '2024-07-16', '2024-07-16', NULL, 389.00, 0, '%', 389.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, NULL, NULL, NULL),
(24, 5, '2024-07-16', '2024-07-16', NULL, 389.00, 0, '%', 389.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, NULL, NULL, NULL),
(25, 4, '2024-07-16', '2024-07-16', NULL, 389.00, 0, '%', 389.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, NULL, NULL, NULL),
(26, 5, '2024-07-16', '2024-07-16', NULL, 389.00, 0, '%', 389.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, NULL, NULL, NULL),
(27, 5, '2024-07-16', '2024-07-16', NULL, 389.00, 0, '%', 389.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, NULL, NULL, NULL),
(28, 5, '2024-07-16', '2024-07-16', NULL, 389.00, 0, 'Valor', 389.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, NULL, NULL, NULL),
(29, 5, '2024-07-16', '2024-07-16', NULL, 389.00, 0, '%', 389.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, NULL, NULL, NULL),
(30, 5, '2024-07-19', '2024-07-19', NULL, 1268.00, 0, '%', 1268.00, '', 'Pendente', 1268.00, 0.00, 29, 0.00, NULL, NULL, NULL),
(31, 4, '2024-07-19', '2024-07-19', NULL, 389.00, 0, '%', 389.00, '', 'Aprovado', 389.00, 0.00, 29, 0.00, NULL, NULL, NULL),
(32, 4, '2024-07-19', '2024-07-19', NULL, 389.00, 0, '%', 389.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, NULL, NULL, NULL),
(33, 4, '2024-07-19', '2024-07-19', NULL, 389.00, 0, '%', 389.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, NULL, NULL, NULL),
(34, 5, '2024-07-19', '2024-07-19', NULL, 389.00, 0, '%', 389.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, NULL, NULL, NULL),
(35, 5, '2024-07-19', '2024-07-19', NULL, 389.00, 0, '%', 389.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, NULL, NULL, NULL),
(36, 5, '2024-07-19', '2024-07-19', NULL, 389.00, 0, '%', 389.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, 100.00, NULL, NULL),
(37, 4, '2024-07-19', '2024-07-19', NULL, 389.00, 0, '%', 389.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, 1.00, NULL, NULL),
(38, 5, '2024-07-19', '2024-07-19', NULL, 389.00, 15, 'Valor', 374.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, 0.00, NULL, NULL),
(39, 5, '2024-07-19', '2024-07-19', NULL, 389.00, 0, 'Valor', 389.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, 1.00, NULL, NULL),
(40, 5, '2024-07-19', '2024-07-19', NULL, 389.00, 0, 'Valor', 389.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, 1.00, NULL, NULL),
(41, 5, '2024-07-19', '2024-07-19', NULL, 389.00, 0, 'Valor', 389.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, 0.00, NULL, NULL),
(42, 5, '2024-07-19', '2024-07-19', NULL, 778.00, 100, 'Valor', 738.00, '', 'Pendente', 778.00, 0.00, 29, 60.00, 100.00, NULL, NULL),
(43, 5, '2024-07-19', '2024-07-19', NULL, 778.00, 100, 'Valor', 778.00, '', 'Pendente', 778.00, 0.00, 29, 100.00, 100.00, NULL, NULL),
(44, 5, '2024-07-19', '2024-07-19', NULL, 389.00, 100, 'Valor', 289.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, 100.00, NULL, NULL),
(55, 4, '2024-07-22', '2024-07-22', NULL, 389.00, 100, 'Valor', 239.00, '', 'Aprovado', 389.00, 0.00, 29, 50.00, 100.00, NULL, NULL),
(56, 5, '2024-07-22', '2024-07-22', NULL, 389.00, 0, '%', 388.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, 1.00, NULL, NULL),
(57, 5, '2024-07-22', '2024-07-22', NULL, 389.00, 0, '%', 377.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, 12.00, NULL, NULL),
(58, 5, '2024-07-22', '2024-07-22', NULL, 389.00, 0, '%', 388.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, 1.00, NULL, NULL),
(59, 5, '2024-07-26', '2024-07-26', NULL, 389.00, 0, '%', 389.00, '', 'Pendente', 389.00, 0.00, 29, 0.00, 0.00, NULL, NULL),
(61, 5, '2024-07-26', '2024-07-26', NULL, 389.00, 0, '%', 289.00, '', 'Aprovado', 389.00, 0.00, 29, 0.00, 100.00, NULL, NULL),
(62, 5, '2024-07-26', '2024-07-26', NULL, 389.00, 0, '%', 289.00, '', 'Aprovado', 389.00, 0.00, 29, 0.00, 100.00, NULL, NULL),
(63, 5, '2024-07-26', '2024-07-26', NULL, 389.00, 0, '%', 389.00, '', 'Aprovado', 389.00, 0.00, 29, 0.00, 0.00, NULL, NULL),
(64, 5, '2024-07-26', '2024-07-26', NULL, 1167.00, 0, '%', 1067.00, '', 'Aprovado', 1167.00, 0.00, 29, 0.00, 100.00, NULL, NULL),
(79, 4, '2024-07-31', '2024-07-31', NULL, 879.00, 170, 'Valor', 789.00, '', 'Aprovado', 879.00, 0.00, 29, 80.00, 0.00, NULL, NULL),
(80, 4, '2024-07-31', '2024-07-31', NULL, 389.00, 0, 'Valor', 389.00, '', 'Aprovado', 389.00, 0.00, 29, 0.00, 0.00, NULL, NULL),
(81, 5, '2024-07-31', '2024-07-31', NULL, 490.00, 0, 'Valor', 490.00, '', 'Aprovado', 490.00, 0.00, 29, 0.00, 0.00, NULL, NULL),
(82, 3, '2024-07-31', '2024-07-31', NULL, 490.00, 0, '%', 490.00, '', 'Aprovado', 490.00, 0.00, 29, 0.00, 0.00, NULL, NULL),
(83, 4, '2024-07-31', '2024-07-31', NULL, 490.00, 0, '%', 490.00, '', 'Aprovado', 490.00, 0.00, 29, 0.00, 0.00, NULL, NULL),
(84, 5, '2024-07-31', '2024-07-31', NULL, 490.00, 0, '%', 490.00, '', 'Aprovado', 490.00, 0.00, 29, 0.00, 0.00, NULL, NULL),
(85, 3, '2024-07-31', '2024-07-31', NULL, 490.00, 0, '%', 490.00, '', 'Aprovado', 490.00, 0.00, 29, 0.00, 0.00, NULL, NULL),
(86, 3, '2024-07-31', '2024-07-31', NULL, 490.00, 0, '%', 490.00, '', 'Aprovado', 490.00, 0.00, 29, 0.00, 0.00, NULL, NULL),
(154, 5, '2024-08-02', '2024-08-02', NULL, 389.00, 0, '%', 289.00, '', 'Aprovado', 389.00, 0.00, 29, 0.00, 100.00, 'pix', 0),
(155, 5, '2024-08-02', '2024-08-02', NULL, 389.00, 0, '%', 190.00, '', 'Aprovado', 389.00, 0.00, 29, 0.00, 199.00, 'pix', 0),
(156, 5, '2024-08-02', '2024-08-02', NULL, 389.00, 0, '%', 189.00, '', 'Aprovado', 389.00, 0.00, 29, 0.00, 200.00, 'pix', 0),
(161, 4, '2024-08-03', '2024-08-03', NULL, 1369.00, 0, '%', 1000.00, '', 'Aprovado', 1369.00, 0.00, 29, 0.00, 369.00, 'pix', 0),
(162, 5, '2024-08-03', '2024-08-03', NULL, 401.00, 0, '%', 401.00, '', 'Aprovado', 389.00, 12.00, 29, 0.00, 0.00, 'pix', 0),
(163, 5, '2024-08-15', '2024-08-15', NULL, 1657.00, 30, '%', 1159.90, '', 'Aprovado', 1657.00, 0.00, 29, 0.00, 0.00, 'pix', 0),
(164, 4, '2024-08-15', '2024-08-15', NULL, 1556.00, 15, '%', 832.60, '', 'Aprovado', 1556.00, 0.00, 29, 10.00, 500.00, 'pix', 0),
(165, 4, '2024-10-20', '2024-10-20', NULL, 778.00, 100, 'Valor', 628.00, '', 'Aprovado', 778.00, 0.00, 29, 50.00, 100.00, 'pix', 0),
(168, 6, '2025-03-29', '2025-03-29', NULL, 401.00, 12, '%', 353.88, 'swwsws', 'Aprovado', 389.00, 12.00, 29, 1.00, 0.00, 'pix', 0),
(169, 5, '2025-03-29', '2025-03-29', NULL, 389.00, 12, '%', 243.32, '', 'Aprovado', 389.00, 0.00, 29, 1.00, 100.00, 'pix', 0),
(170, 7, '2025-04-01', '2025-04-01', NULL, 490.00, 0, '%', 490.00, '', 'Aprovado', 490.00, 0.00, 29, 0.00, 0.00, 'pix', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `os`
--

CREATE TABLE `os` (
  `id` int(11) NOT NULL,
  `cliente` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `data_entrega` date DEFAULT NULL,
  `dias_validade` int(11) DEFAULT NULL,
  `valor` decimal(8,2) DEFAULT NULL,
  `desconto` int(11) DEFAULT NULL,
  `tipo_desconto` varchar(20) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `total_produtos` decimal(8,2) DEFAULT NULL,
  `total_servicos` decimal(8,2) DEFAULT NULL,
  `funcionario` int(11) DEFAULT NULL,
  `frete` decimal(8,2) DEFAULT NULL,
  `tecnico` int(11) DEFAULT NULL,
  `laudo` varchar(2000) DEFAULT NULL,
  `condicoes` varchar(2000) DEFAULT NULL,
  `acessorios` varchar(1000) DEFAULT NULL,
  `situacao` varchar(1000) DEFAULT NULL,
  `equipamento` varchar(255) DEFAULT NULL,
  `orcamento` int(11) DEFAULT NULL,
  `mao_obra` decimal(8,2) DEFAULT NULL,
  `longe1` varchar(30) DEFAULT NULL,
  `longe2` varchar(30) DEFAULT NULL,
  `longe3` varchar(30) DEFAULT NULL,
  `longe4` varchar(30) DEFAULT NULL,
  `longe5` varchar(30) DEFAULT NULL,
  `longe6` varchar(30) DEFAULT NULL,
  `longe7` varchar(30) DEFAULT NULL,
  `longe8` varchar(30) DEFAULT NULL,
  `longe9` varchar(30) DEFAULT NULL,
  `longe10` varchar(30) DEFAULT NULL,
  `longe11` varchar(30) DEFAULT NULL,
  `longe12` varchar(30) DEFAULT NULL,
  `perto1` varchar(30) DEFAULT NULL,
  `perto2` varchar(30) DEFAULT NULL,
  `perto3` varchar(30) DEFAULT NULL,
  `perto4` varchar(30) DEFAULT NULL,
  `perto5` varchar(30) DEFAULT NULL,
  `perto6` varchar(30) DEFAULT NULL,
  `perto7` varchar(30) DEFAULT NULL,
  `perto8` varchar(30) DEFAULT NULL,
  `pedido` varchar(20) DEFAULT NULL,
  `laboratorio` varchar(50) DEFAULT NULL,
  `doutor` varchar(50) DEFAULT NULL,
  `lente` varchar(100) NOT NULL,
  `cotico` varchar(100) NOT NULL,
  `altura` varchar(50) NOT NULL,
  `cor` varchar(50) NOT NULL,
  `retificacao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `os`
--

INSERT INTO `os` (`id`, `cliente`, `data`, `data_entrega`, `dias_validade`, `valor`, `desconto`, `tipo_desconto`, `subtotal`, `obs`, `status`, `total_produtos`, `total_servicos`, `funcionario`, `frete`, `tecnico`, `laudo`, `condicoes`, `acessorios`, `situacao`, `equipamento`, `orcamento`, `mao_obra`, `longe1`, `longe2`, `longe3`, `longe4`, `longe5`, `longe6`, `longe7`, `longe8`, `longe9`, `longe10`, `longe11`, `longe12`, `perto1`, `perto2`, `perto3`, `perto4`, `perto5`, `perto6`, `perto7`, `perto8`, `pedido`, `laboratorio`, `doutor`, `lente`, `cotico`, `altura`, `cor`, `retificacao`) VALUES
(12, 4, '2024-06-24', '2024-06-30', NULL, 396.00, 15, '%', 336.60, 'observação', 'Entregue', 389.00, 0.00, 29, 0.00, 29, '', '', '', 'compra', 'balgriff', NULL, 7.00, '1', '52', '52', '5', '5', '5', '1', '1', '1', '1', '1', '5', '4', '4', '4', '4', '1', '1', '4', '4', '', '', '', '', '', '', '', ''),
(13, 4, '2024-06-26', '2024-06-26', NULL, 389.00, 15, '%', 330.65, '', 'Entregue', 389.00, 0.00, 29, 0.00, 29, '', '', '', 'VENDA', 'ARMAÇÃO DE ÓCULOS DE GRAU DII COLLECTION, MODELO 1 9001 ECO, COR C1,  LENTE ACUVUE OASYS COM HYDRACLEAR', NULL, 0.00, '1', '1', '1', '1', '1', '', '1', '1', '1', '1', '1', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 4, '2024-06-26', '2024-06-26', NULL, 12.00, 0, '%', 12.00, '', 'Entregue', 0.00, 12.00, 29, 0.00, 29, '', '', '', '1qqq', 'qqq', NULL, 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 3, '2024-06-26', '2024-06-26', NULL, 389.00, 1, '%', 385.11, '', 'Entregue', 389.00, 0.00, 29, 0.00, 29, '', '', '', 'venda', '', NULL, 0.00, '12', '12', '12', '12', '12', '12', '12', '12', '12', '12', '12', '12', '15', '15', '15', '15', '15', '15', '15', '15', '', '', '', 'jose', 'rosenaldo', 'd ', 'silva', 'junior'),
(16, 5, '2024-06-28', '2024-06-28', NULL, 879.00, 10, '%', 791.10, '', 'Entregue', 879.00, 0.00, 29, 0.00, 29, '', '', '', '', '', NULL, 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', ''),
(17, 5, '2024-07-10', '2024-07-10', NULL, 389.00, 0, '%', 389.00, '', 'Entregue', 389.00, 0.00, 29, 0.00, 29, '', '', '', '', '', NULL, 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', ''),
(18, 5, '2024-07-10', '2024-07-10', NULL, 389.00, 0, '%', 389.00, '', 'Entregue', 389.00, 0.00, 29, 0.00, 33, '', '', '', '', '', NULL, 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', ''),
(19, 5, '2024-07-10', '2024-07-10', NULL, 389.00, 0, '%', 389.00, '', 'Entregue', 389.00, 0.00, 29, 0.00, 33, '', '', '', '', '', NULL, 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', ''),
(20, 3, '2024-07-10', '2024-06-24', 10, 389.00, 15, '%', 330.65, '', 'Entregue', 0.00, 389.00, 29, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', ''),
(22, 3, '2024-07-10', '2024-07-10', NULL, 389.00, 0, '%', 389.00, '', 'Entregue', 389.00, 0.00, 29, 0.00, 33, '', '', '', '', '', NULL, 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', ''),
(23, 4, '2024-07-10', '2024-07-10', NULL, 389.00, 0, '%', 389.00, '', 'Entregue', 389.00, 0.00, 29, 0.00, 33, '', '', '', '', '', NULL, 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', ''),
(24, 5, '2024-07-10', '2024-07-10', NULL, 490.00, 0, '%', 490.00, '', 'Entregue', 490.00, 0.00, 29, 0.00, 33, '', '', '', '', '', NULL, 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', ''),
(28, 6, '2025-03-29', '2025-03-29', NULL, 401.00, 12, '%', 354.88, '', 'Finalizada', 389.00, 12.00, 29, 2.00, 29, '', '', '', '', '', NULL, 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', ''),
(29, 5, '2025-03-30', '2025-03-30', NULL, 401.00, 0, '%', 401.00, '', 'Iniciada', 389.00, 12.00, 29, 0.00, 33, '', '', '', 'fsfds', 'fdsfs', NULL, 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', ''),
(30, 7, '2025-03-31', '2025-03-31', NULL, 778.00, 0, '%', 778.00, '', 'Iniciada', 778.00, 0.00, 29, 0.00, 29, '', '', '', '', '', NULL, 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', ''),
(31, 5, '2025-03-31', '2025-03-31', NULL, 389.00, 0, '%', 389.00, '', 'Finalizada', 389.00, 0.00, 29, 0.00, 29, '', '', '', '', '', NULL, 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', ''),
(32, 6, '2025-04-01', '2025-04-01', NULL, 502.00, 0, '%', 502.00, '', 'Entregue', 490.00, 12.00, 29, 0.00, 29, '', '', '', '', '', NULL, 0.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', ''),
(33, 6, '2025-04-01', '2025-04-01', NULL, 15.00, 0, '%', 15.00, 'lllllllll', 'Iniciada', 0.00, 0.00, 29, 0.00, 29, 'llll', '', '', 'll', 'llll', NULL, 15.00, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagar`
--

CREATE TABLE `pagar` (
  `id` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `funcionario` int(11) DEFAULT NULL,
  `fornecedor` int(11) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `valor` decimal(8,2) DEFAULT NULL,
  `data_lanc` date DEFAULT NULL,
  `data_venc` date DEFAULT NULL,
  `data_pgto` date DEFAULT NULL,
  `usuario_lanc` int(11) DEFAULT NULL,
  `usuario_pgto` int(11) DEFAULT NULL,
  `frequencia` int(11) DEFAULT NULL,
  `saida` varchar(50) DEFAULT NULL,
  `arquivo` varchar(100) DEFAULT NULL,
  `pago` varchar(5) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `referencia` varchar(40) DEFAULT NULL,
  `id_ref` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `pagar`
--

INSERT INTO `pagar` (`id`, `descricao`, `funcionario`, `fornecedor`, `cliente`, `valor`, `data_lanc`, `data_venc`, `data_pgto`, `usuario_lanc`, `usuario_pgto`, `frequencia`, `saida`, `arquivo`, `pago`, `obs`, `referencia`, `id_ref`, `quantidade`) VALUES
(13, 'Devolução Venda', NULL, NULL, 3, 389.00, '2024-06-26', '2024-06-26', '2024-06-26', 29, 29, 0, 'pix', 'sem-foto.png', 'Sim', NULL, 'Cancelamento', NULL, NULL),
(14, '100 / Lentes de Contato Acuvue Oasys', 0, 0, NULL, 100.00, '2024-06-28', '2024-07-01', '2024-06-28', 29, NULL, NULL, 'pix', 'sem-foto.png', 'Sim', '', 'Compra', 15, 100),
(15, 'Devolução Venda', NULL, NULL, 3, 703.20, '2024-06-28', '2024-06-28', '2024-06-28', 29, 29, 0, 'pix', 'sem-foto.png', 'Sim', NULL, 'Cancelamento', NULL, NULL),
(17, 'Devolução Venda', NULL, NULL, 0, 490.00, '2024-07-09', '2024-07-09', '2024-07-09', 29, 29, 0, 'pix', 'sem-foto.png', 'Sim', NULL, 'Cancelamento', NULL, NULL),
(18, 'Comissão Venda', 33, NULL, NULL, 19.45, '2024-07-10', '2024-07-17', NULL, 29, NULL, 0, NULL, 'sem-foto.png', 'Não', NULL, 'Comissão', 67, NULL),
(19, 'Comissão Venda', 33, NULL, NULL, 24.50, '2024-07-10', '2024-07-17', NULL, 29, NULL, 0, NULL, 'sem-foto.png', 'Não', NULL, 'Comissão', 69, NULL),
(20, 'Comissão Venda', 33, NULL, NULL, 19.45, '2024-07-10', '2024-07-17', NULL, 29, NULL, 0, NULL, 'sem-foto.png', 'Não', NULL, 'Comissão', 71, NULL),
(21, 'Comissão Serviço', 0, NULL, NULL, 194.50, '2024-07-10', '2024-07-17', NULL, 29, NULL, 0, NULL, 'sem-foto.png', 'Não', NULL, 'Comissão', 20, NULL),
(22, 'Comissão', 29, NULL, NULL, 6.00, '2024-07-10', '2024-07-17', NULL, 29, NULL, 0, NULL, 'sem-foto.png', 'Não', NULL, 'Comissão', 14, NULL),
(23, 'Comissão Serviço', 29, NULL, NULL, 3.50, '2024-07-10', '2024-07-17', NULL, 29, NULL, 0, NULL, 'sem-foto.png', 'Não', NULL, 'Comissão', 12, NULL),
(24, 'Comissão Venda', 33, NULL, NULL, 38.90, '2024-07-10', '2024-07-17', NULL, 29, NULL, 0, NULL, 'sem-foto.png', 'Não', NULL, 'Comissão', 70, NULL),
(26, 'Devolução Venda', NULL, NULL, 4, 661.30, '2024-07-10', '2024-07-10', '2024-07-10', 29, 29, 0, 'pix', 'sem-foto.png', 'Sim', NULL, 'Cancelamento', NULL, NULL),
(27, 'Devolução Venda', NULL, NULL, 5, 289.00, '2024-07-31', '2024-07-31', '2024-07-31', 29, 29, 0, 'cartao de credito', 'sem-foto.png', 'Sim', NULL, 'Cancelamento', NULL, NULL),
(28, 'Comissão Venda', 33, NULL, NULL, 30.00, '2024-08-02', '2024-08-09', NULL, 29, NULL, 0, NULL, 'sem-foto.png', 'Não', NULL, 'Comissão', 131, NULL),
(29, 'Comissão Serviço', 29, NULL, NULL, 6.00, '2025-04-01', '2025-04-08', NULL, 29, NULL, 0, NULL, 'sem-foto.png', 'Não', NULL, 'Comissão', 32, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `valor_compra` decimal(8,2) DEFAULT NULL,
  `valor_venda` decimal(8,2) DEFAULT NULL,
  `estoque` int(11) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `ativo` varchar(5) DEFAULT NULL,
  `nivel_estoque` int(11) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL,
  `fornecedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `valor_compra`, `valor_venda`, `estoque`, `foto`, `ativo`, `nivel_estoque`, `categoria`, `fornecedor`) VALUES
(13, 'victoria becky Feminino acetato', 200.00, 389.00, 68, 'sem-foto.jpg', 'Sim', 50, 5, NULL),
(14, ' victoria becky Femiinino metal', 200.00, 389.00, 96, 'sem-foto.jpg', 'Sim', 50, 6, NULL),
(15, 'Lentes de Contato Acuvue Oasys', 1.00, 490.00, 88, 'sem-foto.jpg', 'Sim', 10, 7, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos_orc`
--

CREATE TABLE `produtos_orc` (
  `id` int(11) NOT NULL,
  `produto` int(11) DEFAULT NULL,
  `orcamento` int(11) DEFAULT NULL,
  `funcionario` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valor` decimal(8,2) DEFAULT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  `os` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produtos_orc`
--

INSERT INTO `produtos_orc` (`id`, `produto`, `orcamento`, `funcionario`, `quantidade`, `valor`, `total`, `os`) VALUES
(161, 15, 114, 29, 1, 490.00, 490.00, NULL),
(162, 14, 114, 29, 1, 389.00, 389.00, NULL),
(163, 13, 115, 29, 1, 389.00, 389.00, NULL),
(164, 13, 116, 29, 1, 389.00, 389.00, NULL),
(165, 13, 117, 29, 2, 389.00, 778.00, NULL),
(166, 15, 118, 29, 1, 490.00, 490.00, NULL),
(167, 15, 119, 29, 1, 490.00, 490.00, NULL),
(168, 15, 120, 29, 1, 490.00, 490.00, NULL),
(169, 14, 120, 29, 1, 389.00, 389.00, NULL),
(170, 13, 121, 29, 1, 389.00, 389.00, NULL),
(171, 15, 121, 29, 1, 490.00, 490.00, NULL),
(172, 13, 122, 29, 2, 389.00, 778.00, NULL),
(173, 14, 122, 29, 1, 389.00, 389.00, NULL),
(174, 15, 122, 29, 3, 490.00, 1470.00, NULL),
(175, 13, 123, 29, 1, 389.00, 389.00, NULL),
(176, 15, 123, 29, 2, 490.00, 980.00, NULL),
(177, 14, 123, 29, 1, 389.00, 389.00, NULL),
(178, 15, 124, 29, 1, 490.00, 490.00, NULL),
(179, 13, 125, 29, 1, 389.00, 389.00, NULL),
(180, 13, 126, 29, 1, 389.00, 389.00, NULL),
(181, 15, 127, 29, 1, 490.00, 490.00, NULL),
(182, 15, 128, 29, 1, 490.00, 490.00, NULL),
(183, 15, 129, 29, 1, 490.00, 490.00, NULL),
(184, 13, 130, 29, 1, 389.00, 389.00, NULL),
(185, 13, 131, 29, 1, 389.00, 389.00, NULL),
(186, 13, 132, 29, 1, 389.00, 389.00, NULL),
(187, 13, 133, 29, 1, 389.00, 389.00, NULL),
(188, 13, 134, 29, 1, 389.00, 389.00, NULL),
(189, 15, 135, 29, 1, 490.00, 490.00, NULL),
(190, 13, 136, 29, 1, 389.00, 389.00, NULL),
(191, 13, 137, 29, 1, 389.00, 389.00, NULL),
(192, 13, 138, 29, 1, 389.00, 389.00, NULL),
(193, 15, 138, 29, 2, 490.00, 980.00, NULL),
(194, 15, 139, 29, 2, 490.00, 980.00, NULL),
(195, 15, 140, 29, 1, 490.00, 490.00, NULL),
(196, 15, 141, 29, 1, 490.00, 490.00, NULL),
(197, 13, 142, 29, 1, 389.00, 389.00, NULL),
(198, 13, 143, 29, 1, 389.00, 389.00, NULL),
(199, 13, 144, 29, 2, 389.00, 778.00, NULL),
(200, 13, 145, 29, 1, 389.00, 389.00, NULL),
(201, 13, 146, 29, 1, 389.00, 389.00, NULL),
(202, 15, 147, 29, 3, 490.00, 1470.00, NULL),
(203, 15, 148, 29, 2, 490.00, 980.00, NULL),
(204, 13, 148, 29, 1, 389.00, 389.00, NULL),
(205, 13, 149, 29, 5, 389.00, 1945.00, NULL),
(206, 13, 150, 29, 3, 389.00, 1167.00, NULL),
(207, 15, 151, 29, 2, 490.00, 980.00, NULL),
(208, 13, 152, 29, 1, 389.00, 389.00, NULL),
(209, 14, 153, 29, 1, 389.00, 389.00, NULL),
(210, 13, 154, 29, 1, 389.00, 389.00, NULL),
(211, 13, 155, 29, 1, 389.00, 389.00, NULL),
(212, 13, 156, 29, 1, 389.00, 389.00, NULL),
(213, 13, 157, 29, 1, 389.00, 389.00, NULL),
(214, 13, 158, 29, 1, 389.00, 389.00, NULL),
(215, 13, 159, 29, 1, 389.00, 389.00, NULL),
(216, 13, 160, 29, 1, 389.00, 389.00, NULL),
(217, 13, 161, 29, 1, 389.00, 389.00, NULL),
(218, 15, 161, 29, 2, 490.00, 980.00, NULL),
(219, 13, 162, 29, 1, 389.00, 389.00, NULL),
(220, 13, 163, 29, 2, 389.00, 778.00, NULL),
(221, 14, 163, 29, 1, 389.00, 389.00, NULL),
(222, 15, 163, 29, 1, 490.00, 490.00, NULL),
(223, 13, 164, 29, 4, 389.00, 1556.00, NULL),
(224, 13, 165, 29, 1, 389.00, 389.00, NULL),
(225, 14, 165, 29, 1, 389.00, 389.00, NULL),
(226, 13, NULL, 29, 2, 389.00, 778.00, 25),
(227, 13, 166, 29, 1, 389.00, 389.00, NULL),
(228, 13, 167, 29, 1, 389.00, 389.00, NULL),
(229, 13, NULL, 29, 1, 389.00, 389.00, 26),
(230, 14, NULL, 29, 1, 389.00, 389.00, 26),
(234, 13, NULL, 29, 1, 389.00, 389.00, 27),
(235, 13, 168, 29, 1, 389.00, 389.00, NULL),
(236, 14, 169, 29, 1, 389.00, 389.00, NULL),
(237, 13, NULL, 29, 1, 389.00, 389.00, 28),
(238, 13, NULL, 29, 1, 389.00, 389.00, 29),
(239, 13, NULL, 29, 2, 389.00, 778.00, 30),
(240, 13, NULL, 29, 1, 389.00, 389.00, 31),
(241, 15, NULL, 29, 1, 490.00, 490.00, 32),
(242, 15, 170, 29, 1, 490.00, 490.00, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `receber`
--

CREATE TABLE `receber` (
  `id` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `valor` decimal(8,2) DEFAULT NULL,
  `data_lanc` date DEFAULT NULL,
  `data_venc` date DEFAULT NULL,
  `data_pgto` date DEFAULT NULL,
  `usuario_lanc` int(11) DEFAULT NULL,
  `usuario_pgto` int(11) DEFAULT NULL,
  `frequencia` int(11) DEFAULT NULL,
  `saida` varchar(50) DEFAULT NULL,
  `arquivo` varchar(100) DEFAULT NULL,
  `pago` varchar(5) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `referencia` varchar(40) DEFAULT NULL,
  `id_ref` int(11) DEFAULT NULL,
  `desconto` decimal(8,2) DEFAULT NULL,
  `troco` decimal(8,2) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `cancelada` varchar(5) DEFAULT NULL,
  `vendedor` int(11) DEFAULT NULL,
  `parcela` int(11) DEFAULT NULL,
  `valor_entrada` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `receber`
--

INSERT INTO `receber` (`id`, `descricao`, `cliente`, `valor`, `data_lanc`, `data_venc`, `data_pgto`, `usuario_lanc`, `usuario_pgto`, `frequencia`, `saida`, `arquivo`, `pago`, `obs`, `referencia`, `id_ref`, `desconto`, `troco`, `hora`, `cancelada`, `vendedor`, `parcela`, `valor_entrada`) VALUES
(51, 'Nova Venda', 3, 389.00, '2024-06-24', '2024-06-24', '2024-06-24', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', NULL, 0.00, 0.00, '15:55:17', 'Sim', 0, NULL, NULL),
(52, 'Novo Serviço', 4, 396.00, '2024-06-24', '2024-06-30', '2024-06-28', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Serviço', 12, NULL, NULL, '16:14:27', NULL, NULL, NULL, NULL),
(53, 'Novo Serviço', 4, 389.00, '2024-06-26', '2024-06-26', '2024-06-28', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Serviço', 13, NULL, NULL, '08:59:31', NULL, NULL, NULL, NULL),
(58, 'Novo Serviço - Parcela 1 - Parcela 2', 3, 194.50, '2024-06-27', '2024-06-26', '2024-06-28', 29, 29, 0, 'pix', 'sem-foto.png', 'Sim', NULL, 'Serviço', 56, NULL, NULL, NULL, NULL, NULL, 2, NULL),
(59, 'Novo Serviço - Parcela 1', 4, 389.00, '2024-06-28', '2024-06-26', '2024-06-28', 29, 29, 0, 'pix', 'sem-foto.png', 'Sim', NULL, 'Serviço', 54, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(60, 'Novo Serviço - Parcela 1 - Parcela 1 - Parcela 1', 3, 194.50, '2024-06-28', '2024-06-26', '2024-06-28', 29, 29, 0, 'pix', 'sem-foto.png', 'Sim', NULL, 'Serviço', 57, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(61, 'Novo Serviço', 5, 879.00, '2024-06-28', '2024-06-28', '2024-06-28', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Serviço', 16, NULL, NULL, '15:38:27', NULL, NULL, NULL, NULL),
(62, 'Nova Venda', 3, 703.20, '2024-06-28', '2024-06-28', '2024-06-28', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 14, 175.80, NULL, '16:01:27', 'Sim', NULL, NULL, NULL),
(63, 'Nova Venda', 0, 490.00, '2024-07-09', '2024-07-09', '2024-07-09', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', NULL, 0.00, 0.00, '10:51:24', 'Sim', 33, NULL, NULL),
(65, 'Novo Serviço', 5, 389.00, '2024-07-10', '2024-07-10', NULL, 29, NULL, NULL, NULL, 'sem-foto.png', 'Não', NULL, 'Serviço', 17, NULL, NULL, '09:50:02', NULL, NULL, NULL, NULL),
(66, 'Novo Serviço', 5, 389.00, '2024-07-10', '2024-07-10', NULL, 29, NULL, NULL, NULL, 'sem-foto.png', 'Não', NULL, 'Serviço', 18, NULL, NULL, '09:51:16', NULL, NULL, NULL, NULL),
(67, 'Nova Venda', 0, 389.00, '2024-07-10', '2024-07-10', '2024-07-10', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', NULL, 0.00, 0.00, '09:52:16', NULL, 33, NULL, NULL),
(68, 'Novo Serviço', 5, 389.00, '2024-07-10', '2024-07-10', NULL, 29, NULL, NULL, NULL, 'sem-foto.png', 'Não', NULL, 'Serviço', 19, NULL, NULL, '09:55:18', NULL, NULL, NULL, NULL),
(69, 'Nova Venda', 4, 490.00, '2024-07-10', '2024-07-10', '2024-07-10', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', NULL, 0.00, 0.00, '09:55:55', NULL, 33, NULL, NULL),
(70, 'Nova Venda', 3, 778.00, '2024-07-10', '2024-07-10', '2024-07-10', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 16, 0.00, NULL, '09:56:44', NULL, 33, NULL, NULL),
(71, 'Nova Venda', 4, 389.00, '2024-07-10', '2024-07-10', '2024-07-10', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', NULL, 0.00, 0.00, '10:10:22', NULL, 33, NULL, NULL),
(72, 'Novo Serviço', 4, 389.00, '2024-07-10', '2024-07-10', NULL, 29, NULL, NULL, NULL, 'sem-foto.png', 'Não', NULL, 'Serviço', 21, NULL, NULL, '10:18:12', NULL, NULL, NULL, NULL),
(73, 'Novo Serviço', 3, 289.00, '2024-07-10', '2024-07-10', '2024-07-19', 29, 29, NULL, 'pix', 'sem-foto.png', 'Não', NULL, 'Serviço', 22, NULL, NULL, '10:21:59', NULL, NULL, NULL, NULL),
(74, 'Novo Serviço', 4, 389.00, '2024-07-10', '2024-07-10', '2024-07-10', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Serviço', 23, NULL, NULL, '10:25:17', NULL, NULL, NULL, NULL),
(75, 'Novo Serviço', 5, 490.00, '2024-07-10', '2024-07-10', '2024-07-10', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Serviço', 24, NULL, NULL, '10:29:00', NULL, NULL, NULL, NULL),
(76, 'Nova Venda', 4, 661.30, '2024-07-10', '2024-07-10', '2024-07-10', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 17, 116.70, NULL, '10:45:53', 'Sim', 33, NULL, NULL),
(77, 'Nova Venda', 4, 389.00, '2024-07-16', '2024-07-16', '2024-07-16', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 21, 0.00, NULL, '20:03:43', NULL, NULL, NULL, NULL),
(78, 'Nova Venda', 4, 578.00, '2024-07-16', '2024-07-16', '2024-07-19', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 22, 0.00, NULL, '20:10:03', NULL, 0, NULL, NULL),
(79, 'Nova Venda', 4, 389.00, '2024-07-19', '2024-07-19', '2024-07-26', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 31, 0.00, NULL, '14:36:55', NULL, 0, NULL, NULL),
(83, 'Nova Venda', 5, 89.00, '2024-07-26', '2024-07-26', '2024-07-31', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 62, 0.00, NULL, '09:42:01', NULL, 0, NULL, NULL),
(84, 'Nova Venda', 5, 389.00, '2024-07-26', '2024-07-26', '2024-07-26', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 63, 0.00, NULL, '10:12:13', NULL, 0, NULL, NULL),
(94, 'Nova Venda', 4, 789.00, '2024-07-31', '2024-07-31', NULL, 29, NULL, NULL, NULL, 'sem-foto.png', 'Não', NULL, 'Venda', 0, 170.00, NULL, '15:49:53', NULL, NULL, NULL, 0.00),
(95, 'Nova Venda', 4, 389.00, '2024-07-31', '2024-07-31', NULL, 29, NULL, NULL, NULL, 'sem-foto.png', 'Não', NULL, 'Venda', 0, 0.00, NULL, '16:24:56', NULL, NULL, NULL, 0.00),
(96, 'Nova Venda', 5, 490.00, '2024-07-31', '2024-07-31', NULL, 29, NULL, NULL, NULL, 'sem-foto.png', 'Não', NULL, 'Venda', 0, 0.00, NULL, '16:26:39', NULL, NULL, NULL, 0.00),
(97, 'Nova Venda', 5, 490.00, '2024-07-31', '2024-07-31', NULL, 29, NULL, NULL, NULL, 'sem-foto.png', 'Não', NULL, 'Venda', 81, 0.00, NULL, '16:27:06', NULL, NULL, NULL, NULL),
(98, 'Nova Venda', 3, 490.00, '2024-07-31', '2024-07-31', NULL, 29, NULL, NULL, NULL, 'sem-foto.png', 'Não', NULL, 'Venda', 0, 0.00, NULL, '16:34:49', NULL, NULL, NULL, 0.00),
(99, 'Nova Venda', 4, 490.00, '2024-07-31', '2024-07-31', NULL, 29, NULL, NULL, NULL, 'sem-foto.png', 'Não', NULL, 'Venda', 0, 0.00, NULL, '16:36:50', NULL, NULL, NULL, 0.00),
(100, 'Nova Venda', 5, 490.00, '2024-07-31', '2024-07-31', NULL, 29, NULL, NULL, NULL, 'sem-foto.png', 'Não', NULL, 'Venda', 0, 0.00, NULL, '16:41:13', NULL, NULL, NULL, 0.00),
(101, 'Nova Venda', 3, 490.00, '2024-07-31', '2024-07-31', NULL, 29, NULL, NULL, NULL, 'sem-foto.png', 'Não', NULL, 'Venda', 0, 0.00, NULL, '16:43:48', NULL, NULL, NULL, 0.00),
(102, 'Nova Venda', 3, 490.00, '2024-07-31', '2024-07-31', NULL, 29, NULL, NULL, NULL, 'sem-foto.png', 'Não', NULL, 'Venda', 0, 0.00, NULL, '16:44:02', NULL, NULL, NULL, 0.00),
(141, 'Nova Venda', 5, 190.00, '2024-08-02', '2024-08-02', '2024-08-02', 29, 29, NULL, 'pix', 'sem-foto.png', 'Não', NULL, 'Venda', 0, 0.00, NULL, '15:46:09', NULL, 0, NULL, 199.00),
(142, 'Nova Venda', 5, 89.00, '2024-08-02', '2024-08-02', '2024-08-02', 29, 29, NULL, 'pix', 'sem-foto.png', 'Não', NULL, 'Venda', 0, 0.00, NULL, '15:47:26', NULL, 0, NULL, 200.00),
(152, 'Valor de entrada', 4, 369.00, '2024-08-03', '2024-08-03', '2024-08-03', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 0, 0.00, NULL, '12:06:08', NULL, 0, NULL, 369.00),
(153, 'Nova Venda', 4, 400.00, '2024-08-03', '2024-08-03', '2024-08-03', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 0, 0.00, NULL, '12:06:08', NULL, 0, NULL, 369.00),
(154, 'Valor baixado', 4, 100.00, '2024-08-03', '2024-08-03', '2024-08-03', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 153, 0.00, NULL, '12:07:15', NULL, 0, NULL, 0.00),
(155, 'Valor baixado', 4, 500.00, '2024-08-03', '2024-08-03', '2024-08-03', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 153, 0.00, NULL, '12:08:01', NULL, 0, NULL, 0.00),
(156, 'Nova Venda', 5, 401.00, '2024-08-03', '2024-08-03', '2024-08-03', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 0, 0.00, NULL, '12:16:19', NULL, 0, NULL, 0.00),
(157, 'Nova Venda', 5, 1159.90, '2024-08-15', '2024-08-15', '2024-08-15', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 0, 30.00, NULL, '18:01:53', NULL, 0, NULL, 0.00),
(158, 'Valor de entrada', 4, 500.00, '2024-08-15', '2024-08-15', '2024-08-15', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 0, 15.00, NULL, '18:03:38', NULL, 0, NULL, 500.00),
(159, 'Nova Venda', 4, 732.60, '2024-08-15', '2024-08-15', '2024-08-15', 29, 29, NULL, 'pix', 'sem-foto.png', 'Não', NULL, 'Venda', 0, 15.00, NULL, '18:03:38', NULL, 0, NULL, 500.00),
(160, 'Valor baixado', 4, 100.00, '2024-08-15', '2024-08-15', '2024-08-15', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 159, 0.00, NULL, '18:04:33', NULL, 0, NULL, 0.00),
(161, 'Valor de entrada', 4, 100.00, '2024-10-20', '2024-10-20', '2024-10-20', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 0, 100.00, NULL, '14:46:04', NULL, 0, NULL, 100.00),
(162, 'Nova Venda', 4, 628.00, '2024-10-20', '2024-10-20', '2025-03-29', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 0, 100.00, NULL, '14:46:04', NULL, 0, NULL, 100.00),
(163, 'Novo Serviço', 6, 878.00, '2025-03-29', '2025-03-29', NULL, 29, NULL, NULL, NULL, 'sem-foto.png', 'Não', NULL, 'Serviço', 25, NULL, NULL, '10:12:58', NULL, NULL, NULL, NULL),
(164, 'Nova Venda', 5, 389.00, '2025-03-29', '2025-03-29', '2025-03-29', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 0, 0.00, NULL, '10:17:02', NULL, 0, NULL, 0.00),
(165, 'Valor de entrada', 4, 250.00, '2025-03-29', '2025-03-29', '2025-03-29', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 0, 15.00, NULL, '11:35:00', NULL, 0, NULL, 250.00),
(166, 'Nova Venda', 4, 96.85, '2025-03-29', '2025-03-29', '2025-03-29', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 0, 15.00, NULL, '11:35:00', NULL, 0, NULL, 250.00),
(167, 'Novo Serviço', 5, 928.00, '2025-03-29', '2025-03-29', NULL, 29, NULL, NULL, NULL, 'sem-foto.png', 'Não', NULL, 'Serviço', 26, NULL, NULL, '11:43:58', NULL, NULL, NULL, NULL),
(168, 'Novo Serviço', 7, 389.00, '2025-03-29', '2025-03-29', NULL, 29, NULL, NULL, NULL, 'sem-foto.png', 'Não', NULL, 'Serviço', 27, NULL, NULL, '16:36:43', NULL, NULL, NULL, NULL),
(169, 'Nova Venda', 6, 353.88, '2025-03-29', '2025-03-29', '2025-03-29', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 0, 12.00, NULL, '16:42:42', NULL, 0, NULL, 0.00),
(170, 'Valor de entrada', 5, 100.00, '2025-03-29', '2025-03-29', '2025-03-29', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 0, 12.00, NULL, '16:43:38', NULL, 0, NULL, 100.00),
(172, 'Nova Venda - Parcela 1', 5, 121.66, '2025-03-29', '2025-03-29', '2025-03-29', 29, 29, 0, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 171, NULL, NULL, NULL, NULL, 0, 1, NULL),
(173, 'Nova Venda - Parcela 2', 5, 121.66, '2025-03-29', '2025-03-29', '2025-03-29', 29, 29, 0, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 171, NULL, NULL, NULL, NULL, 0, 2, NULL),
(174, 'Novo Serviço', 6, 401.00, '2025-03-29', '2025-03-29', NULL, 29, NULL, NULL, NULL, 'sem-foto.png', 'Não', NULL, 'Serviço', 28, NULL, NULL, '16:53:59', NULL, NULL, NULL, NULL),
(175, 'Novo Serviço', 5, 401.00, '2025-03-30', '2025-03-30', NULL, 29, NULL, NULL, NULL, 'sem-foto.png', 'Não', NULL, 'Serviço', 29, NULL, NULL, '12:15:42', NULL, NULL, NULL, NULL),
(176, 'Novo Serviço', 7, 778.00, '2025-03-31', '2025-03-31', NULL, 29, NULL, NULL, NULL, 'sem-foto.png', 'Não', NULL, 'Serviço', 30, NULL, NULL, '13:27:04', NULL, NULL, NULL, NULL),
(177, 'Novo Serviço', 5, 389.00, '2025-03-31', '2025-03-31', NULL, 29, NULL, NULL, NULL, 'sem-foto.png', 'Não', NULL, 'Serviço', 31, NULL, NULL, '13:36:50', NULL, NULL, NULL, NULL),
(178, 'Novo Serviço', 6, 502.00, '2025-04-01', '2025-04-01', NULL, 29, NULL, NULL, NULL, 'sem-foto.png', 'Não', NULL, 'Serviço', 32, NULL, NULL, '21:42:39', NULL, NULL, NULL, NULL),
(179, 'Nova Venda', 7, 490.00, '2025-04-01', '2025-04-01', '2025-04-01', 29, 29, NULL, 'pix', 'sem-foto.png', 'Sim', NULL, 'Venda', 0, 0.00, NULL, '21:44:50', NULL, 0, NULL, 0.00),
(180, 'Novo Serviço', 6, 15.00, '2025-04-01', '2025-04-01', NULL, 29, NULL, NULL, NULL, 'sem-foto.png', 'Não', NULL, 'Serviço', 33, NULL, NULL, '21:45:42', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `saidas`
--

CREATE TABLE `saidas` (
  `id` int(11) NOT NULL,
  `produto` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `motivo` varchar(100) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `valor` decimal(8,2) DEFAULT NULL,
  `comissao` int(11) DEFAULT NULL,
  `dias` int(11) DEFAULT NULL,
  `ativo` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `servicos`
--

INSERT INTO `servicos` (`id`, `nome`, `valor`, `comissao`, `dias`, `ativo`) VALUES
(4, 'Ajuste na armação', 12.00, 0, 0, 'Sim');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos_orc`
--

CREATE TABLE `servicos_orc` (
  `id` int(11) NOT NULL,
  `servico` int(11) DEFAULT NULL,
  `orcamento` int(11) DEFAULT NULL,
  `funcionario` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valor` decimal(8,2) DEFAULT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  `os` int(11) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `servicos_orc`
--

INSERT INTO `servicos_orc` (`id`, `servico`, `orcamento`, `funcionario`, `quantidade`, `valor`, `total`, `os`, `cliente`, `data`) VALUES
(15, 3, 13, 29, 1, 389.00, 389.00, NULL, NULL, NULL),
(16, 4, NULL, 29, 1, 12.00, 12.00, 14, 4, NULL),
(17, 4, 162, 29, 1, 12.00, 12.00, NULL, NULL, NULL),
(18, 4, 167, 29, 1, 12.00, 12.00, NULL, NULL, NULL),
(20, 4, 168, 29, 1, 12.00, 12.00, NULL, NULL, NULL),
(21, 4, NULL, 29, 1, 12.00, 12.00, 28, 6, '2025-03-29'),
(22, 4, NULL, 29, 1, 12.00, 12.00, 29, 5, '2025-03-30'),
(23, 4, NULL, 29, 1, 12.00, 12.00, 32, 6, '2025-04-01');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `senha_crip` varchar(130) DEFAULT NULL,
  `nivel` varchar(25) DEFAULT NULL,
  `ativo` varchar(5) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `comissao` int(11) DEFAULT NULL,
  `id_ref` int(11) DEFAULT NULL,
  `chave_pix` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `senha_crip`, `nivel`, `ativo`, `telefone`, `endereco`, `foto`, `data`, `comissao`, `id_ref`, `chave_pix`) VALUES
(29, 'ConnectPhone', 'f@f', '', '$2y$10$d3NE6W4cwsEw8.O9f9/WwOPAmsVpA3TLSV9ACsFfCIGtsxy1Z3shm', 'Administrador', 'Sim', '(84) 99439-0605', '', '01-04-2025-21-38-18-perf.png', '2024-06-22', NULL, NULL, NULL),
(30, 'jose rosenaldo da silva junior', NULL, '', '$2y$10$wsjAXvnpk6RADntBpoT2auv9kZOmyYyqMQJTeoEJ.UrDIZS.bOrfu', 'Cliente', 'Sim', '(84) 99834-2359', 'rua francisco de assis 40 liberdade parnamirim', 'sem-foto.jpg', '2024-06-22', NULL, 3, NULL),
(31, 'Ana alicia dantasnda silva', NULL, '', '$2y$10$AT.z80rsd0ktamFHm9LmHecNQzB239h5iTpv1ig7v9itw.Co4q3m2', 'Cliente', 'Sim', '84998342659', '', 'sem-foto.jpg', '2024-06-24', NULL, 4, NULL),
(32, 'Micarla de almeida dantas', NULL, '', '$2y$10$h8qG/tgeFyojgmY0AF2MsuXZMA4EGZy5NsA3k4lD0DZPuCQEhsSpC', 'Cliente', 'Sim', '(84) 99834-2358', 'Rua francisco de assis de oliveira 40 liberdade parnamirim Rn', 'sem-foto.jpg', '2024-06-28', NULL, 5, NULL),
(33, 'junior', 'f@fa', '', '$2y$10$I6w9FIFVEn7vPS.aYTirY.0qxRuml4obNg8tXmU2s8Z4GDL6k8XIi', 'vendedor', 'Sim', '(11) 11111-1111', 'aaaaaaaaaaaaaa', 'sem-foto.jpg', '2024-07-09', 5, NULL, ''),
(34, 'dsafsdf', NULL, '', '$2y$10$bIfYRxfVwlnjwet8ieI7lOHxCjzgeQcdMXrhjvIuksOSYGII9wTHe', 'Cliente', 'Sim', '1111111111', '', 'sem-foto.jpg', '2025-03-29', NULL, 6, NULL),
(35, 'qqqqqqq', NULL, '', '$2y$10$SnawmeN2eim5rEY.8IsMrOV9xuvhsRXpxvvxt0ADjlNJc/hwiTbZu', 'Cliente', 'Sim', '1111', '', 'sem-foto.jpg', '2025-03-29', NULL, 7, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios_permissoes`
--

CREATE TABLE `usuarios_permissoes` (
  `id` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `permissao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `valor_parcial`
--

CREATE TABLE `valor_parcial` (
  `id` int(11) NOT NULL,
  `id_conta` int(11) NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `valor_parcial`
--

INSERT INTO `valor_parcial` (`id`, `id_conta`, `tipo`, `valor`, `data`, `usuario`) VALUES
(48, 153, 'Receber', 369.00, '2024-08-03', 29),
(49, 153, 'Receber', 100.00, '2024-08-03', 29),
(50, 153, 'Receber', 500.00, '2024-08-03', 29),
(51, 159, 'Receber', 500.00, '2024-08-15', 29),
(52, 159, 'Receber', 100.00, '2024-08-15', 29),
(53, 162, 'Receber', 100.00, '2024-10-20', 29),
(54, 166, 'Receber', 250.00, '2025-03-29', 29),
(55, 171, 'Receber', 100.00, '2025-03-29', 29);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `acessos`
--
ALTER TABLE `acessos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `arquivos`
--
ALTER TABLE `arquivos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `formas_pgto`
--
ALTER TABLE `formas_pgto`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `frequencias`
--
ALTER TABLE `frequencias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `grupo_acessos`
--
ALTER TABLE `grupo_acessos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `itens_venda`
--
ALTER TABLE `itens_venda`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `os`
--
ALTER TABLE `os`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pagar`
--
ALTER TABLE `pagar`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produtos_orc`
--
ALTER TABLE `produtos_orc`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `receber`
--
ALTER TABLE `receber`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `saidas`
--
ALTER TABLE `saidas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `servicos_orc`
--
ALTER TABLE `servicos_orc`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios_permissoes`
--
ALTER TABLE `usuarios_permissoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `valor_parcial`
--
ALTER TABLE `valor_parcial`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acessos`
--
ALTER TABLE `acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `arquivos`
--
ALTER TABLE `arquivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `formas_pgto`
--
ALTER TABLE `formas_pgto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `frequencias`
--
ALTER TABLE `frequencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `grupo_acessos`
--
ALTER TABLE `grupo_acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `itens_venda`
--
ALTER TABLE `itens_venda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT de tabela `orcamentos`
--
ALTER TABLE `orcamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT de tabela `os`
--
ALTER TABLE `os`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `pagar`
--
ALTER TABLE `pagar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `produtos_orc`
--
ALTER TABLE `produtos_orc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT de tabela `receber`
--
ALTER TABLE `receber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT de tabela `saidas`
--
ALTER TABLE `saidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `servicos_orc`
--
ALTER TABLE `servicos_orc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `usuarios_permissoes`
--
ALTER TABLE `usuarios_permissoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de tabela `valor_parcial`
--
ALTER TABLE `valor_parcial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
