-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 03-Nov-2020 às 01:18
-- Versão do servidor: 10.1.26-MariaDB
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `formulario_visita`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `nome` varchar(36) COLLATE utf8_bin NOT NULL,
  `casa` varchar(10) COLLATE utf8_bin NOT NULL,
  `email` varchar(30) COLLATE utf8_bin NOT NULL,
  `data` date NOT NULL,
  `hora` text COLLATE utf8_bin NOT NULL,
  `corretores` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`nome`, `casa`, `email`, `data`, `hora`, `corretores`) VALUES
('Henrique Lima Da Silva', 'ceramica', 'henriquelimadasilva2003@gmail.', '2020-11-11', 'vinteduas', 'lima'),
('Henrique Marques', 'santa paul', 'henrique.silveira@scseduca.com', '2020-11-03', 'catorze', 'marques'),
('Ana Da Silva', 'nova gerty', 'ana19silva@gmail.com', '2020-11-04', 'dez', 'roberta'),
('João Vitor', 'nova gerty', 'joaobatista.santos@scseduca.co', '2020-11-03', 'seis', 'joao'),
('Gabriel Santos', 'fundação', 'gabriel2604sds@gmail.com', '2020-11-07', 'dezoito', 'santos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabelacnpj`
--

CREATE TABLE `tabelacnpj` (
  `nome` varchar(30) COLLATE utf8_bin NOT NULL,
  `email` varchar(30) COLLATE utf8_bin NOT NULL,
  `cnpj` varchar(14) COLLATE utf8_bin NOT NULL,
  `telefone` varchar(15) COLLATE utf8_bin NOT NULL,
  `comentario` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `tabelacnpj`
--

INSERT INTO `tabelacnpj` (`nome`, `email`, `cnpj`, `telefone`, `comentario`) VALUES
('Maria Dos Santos', 'mariasantos@gmail.com', '17223047000117', '(11) 97887-5443', ' oii, realizei a compra de uma residencia recentemente e queria saber se eu posso efetuar a compra de mais de uma residencia ou vocês vendem apenas uma residencia por cliente? não sou o tipo de pessoa que tem uma residencia só e queria que algum de seus empresarios tirassem minha duvida'),
('Henrique Lima Da Silva', 'henriquelimadasilva2003@gmail.', '24.456.276/985', '(11) 97062-9074', ' olá, realizei a compra da residencia localizada no bairro ceramica e depois de uns dias notei que nas fotos, existe uma entidade nos fundos da casa, ele vai vir como bonus na compra ou eu devo devolver ele pra vocês?'),
('Ana Da Silva', 'ana19silva@gmail.com', '13.574.594/000', '(11) 96733-6390', ' olá, realizei a compra da residencia localizada no bairro ceramica e depois de uns dias notei que nas fotos, existe uma entidade nos fundos da casa, ele vai vir como bonus na compra ou eu devo devolver ele pra vocês?'),
('Victor Lima', 'lvictorevil@gmail.com', '42.591.651/000', '(11) 94059-9329', ' olá, estive visitando a pagina \"quem somos?\" e notei que um dos empresarios se parece muito com um ex detento fugitivo, isso é coincidencia ou devo chamar as autoridades?'),
('Gabriel Santos', 'gabriel2604sds@gmail.com', '01.438.784/000', '(11) 95291-2877', ' Gostaria de adotar uma decoração animada para meu quarto qual estilo me indica?');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabelacpf`
--

CREATE TABLE `tabelacpf` (
  `nome` varchar(30) COLLATE utf8_bin NOT NULL,
  `email` varchar(30) COLLATE utf8_bin NOT NULL,
  `cpf` varchar(14) COLLATE utf8_bin NOT NULL,
  `telefone` varchar(15) COLLATE utf8_bin NOT NULL,
  `comentario` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `tabelacpf`
--

INSERT INTO `tabelacpf` (`nome`, `email`, `cpf`, `telefone`, `comentario`) VALUES
('Henrique Lima Da Silva', 'henriquelimadasilva2003@gmail.', '495.204.068-24', '(11) 98499-9047', ' Eu gostaria de negociar a casa do bairro Santa Paula. '),
('Gabriel Santos', 'gabriel2604sds@gmail.com', '509.019.818-77', '(11) 96888-7644', ' oi, estou com dificuldades para fazer a compra do interior no estilo escandinavo, algum de seus empresarios poderia disponibilizar uns minutos para tirar minha duvida em relaÃ§Ã£o a esse assunto?'),
('João Vitor', 'joaobatista.santos@scseduca.co', '166.831.858-08', '(11) 97447-9894', ' olá, eu acabei de realizar uma compra recentemente, mas por algum motivo a minha visita foi cancelada, vocês poderiam me explicar o motivo?'),
('Henrique Marques', 'henrique.silveira@scseduca.com', '108.189.148-31', '(11) 96520-8708', ' bom dia, estive dando uma olhada em seu site e notei que todos os estilos disponiveis vem inteiramente prontos, teria alguma forma de mesclar algum estilo com outro diferente? ou vocês vendem os estilos exatamente como eles são?'),
('Roberta Pires', 'roberta2003p@gmail.com', '538.327.908-37', '(11) 96354-7678', ' Oi gostaria de alugar o apartamento da Fundação para uma festa queria saber quantas pessoas cabem na residência?');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
