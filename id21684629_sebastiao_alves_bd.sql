-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2023 at 10:18 PM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21684629_sebastiao_alves_bd`
--

-- --------------------------------------------------------

--
-- Table structure for table `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `imagem` varchar(2000) NOT NULL,
  `texto` text NOT NULL,
  `data_atualizacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `autor`
--

INSERT INTO `autor` (`id`, `imagem`, `texto`, `data_atualizacao`) VALUES
(1, 'https://happening-builders.000webhostapp.com/uploads/autor/conteudo.jpg', '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente!</p>', '19:40 - 10/12/2023');

-- --------------------------------------------------------

--
-- Table structure for table `banners_desktop`
--

CREATE TABLE `banners_desktop` (
  `id` int(11) NOT NULL,
  `imagem` varchar(2000) NOT NULL,
  `observacao` varchar(200) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `subtitulo` varchar(500) NOT NULL,
  `link` varchar(2000) NOT NULL,
  `data_criacao` varchar(50) NOT NULL,
  `data_atualizacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banners_desktop`
--

INSERT INTO `banners_desktop` (`id`, `imagem`, `observacao`, `titulo`, `subtitulo`, `link`, `data_criacao`, `data_atualizacao`) VALUES
(1, 'https://happening-builders.000webhostapp.com/uploads/banners_desktop/cabecalho1.jpg', 'NOVIDADE', 'SENHORA DO AMOR E DA GUERRA', '                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa nobis tempora quae beatae eaque cumque optio consequatur Ipsa nobis tempora quae beatae eaque cumque optio consequatur asperiores voluptat.                                                                    ', 'http://localhost/codemaster/projecto_final/livro.php?livro=1', '03:02 - 17/11/2021', '19:34 - 10/12/2023'),
(2, 'https://happening-builders.000webhostapp.com/uploads/banners_desktop/cabecalho2.jpg', 'NOVIDADE', 'O CARACOL ESTRÁBICO', '                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa nobis tempora quae beatae eaque cumque optio consequatur Ipsa nobis tempora quae beatae eaque cumque optio consequatur asperiores voluptat                                ', 'http://localhost/codemaster/projecto_final/livro.php?livro=4', '03:02 - 17/11/2021', '19:37 - 10/12/2023'),
(3, 'https://happening-builders.000webhostapp.com/uploads/banners_desktop/cabecalho3.jpg', 'NOVIDADE', 'O COLECIONADOR DE AMNÉSIAS', '                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa nobis tempora quae beatae eaque cumque optio consequatur Ipsa nobis tempora quae beatae eaque cumque optio consequatur asperiores voluptat                ', 'http://localhost/codemaster/projecto_final/livro.php?livro=3', '03:02 - 17/11/2021', '19:38 - 10/12/2023'),
(4, 'https://happening-builders.000webhostapp.com/uploads/banners_desktop/cabecalho4.jpg', 'NOVIDADE', 'O VELHO QUE PENSAVA QUE FUGIA', '                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa nobis tempora quae beatae eaque cumque optio consequatur Ipsa nobis tempora quae beatae eaque cumque optio consequatur asperiores voluptat                ', 'http://localhost/codemaster/projecto_final/livro.php?livro=2', '03:02 - 17/11/2021', '19:38 - 10/12/2023');

-- --------------------------------------------------------

--
-- Table structure for table `banners_mobile`
--

CREATE TABLE `banners_mobile` (
  `id` int(11) NOT NULL,
  `imagem` varchar(2000) NOT NULL,
  `observacao` varchar(200) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `subtitulo` varchar(500) NOT NULL,
  `link` varchar(2000) NOT NULL,
  `data_criacao` varchar(50) NOT NULL,
  `data_atualizacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banners_mobile`
--

INSERT INTO `banners_mobile` (`id`, `imagem`, `observacao`, `titulo`, `subtitulo`, `link`, `data_criacao`, `data_atualizacao`) VALUES
(1, 'https://happening-builders.000webhostapp.com/uploads/banners_mobile/cabecalho1.jpg', 'NOVIDADE', 'SENHORA DO AMOR E DA GUERRA', '                                                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa nobis tempora quae beatae eaque cumque optio consequatur Ipsa nobis tempora quae beatae eaque cumque optio consequatur asperiores voluptat                                     ', 'http://localhost/codemaster/projecto_final/livro.php?livro=1', '03:02 - 17/11/2021', '19:38 - 10/12/2023'),
(2, 'https://happening-builders.000webhostapp.com/uploads/banners_mobile/cabecalho2.jpg', 'NOVIDADE', 'O CARACOL ESTRÁBICO', '                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa nobis tempora quae beatae eaque cumque optio consequatur Ipsa nobis tempora quae beatae eaque cumque optio consequatur asperiores voluptatem?                ', 'http://localhost/codemaster/projecto_final/livro.php?livro=4', '03:02 - 17/11/2021', '19:38 - 10/12/2023'),
(3, 'https://happening-builders.000webhostapp.com/uploads/banners_mobile/cabecalho3.jpg', 'NOVIDADE', 'O COLECIONADOR DE AMNÉSIAS', '                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa nobis tempora quae beatae eaque cumque optio consequatur Ipsa nobis tempora quae beatae eaque cumque optio consequatur asperiores voluptat                ', 'http://localhost/codemaster/projecto_final/livro.php?livro=3', '03:02 - 17/11/2021', '19:39 - 10/12/2023'),
(4, 'https://happening-builders.000webhostapp.com/uploads/banners_mobile/cabecalho4.jpg', 'NOVIDADE', 'O VELHO QUE PENSAVA QUE FUGIA', '                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa nobis tempora quae beatae eaque cumque optio consequatur Ipsa nobis tempora quae beatae eaque cumque optio consequatur asperiores voluptatem?                                ', 'http://localhost/codemaster/projecto_final/livro.php?livro=2', '03:02 - 17/11/2021', '19:39 - 10/12/2023');

-- --------------------------------------------------------

--
-- Table structure for table `contactos`
--

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `telefone` varchar(200) NOT NULL,
  `morada` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `horario` varchar(200) NOT NULL,
  `data_atualizacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contactos`
--

INSERT INTO `contactos` (`id`, `telefone`, `morada`, `email`, `horario`, `data_atualizacao`) VALUES
(1, '+351 123 456 789', 'lorem ipsum dolor sit amet, 12 1234-543 Lorem', 'sebastiao@lorem.pt', 'De Segunda a Sexta das 00:00h às 00:00h', '19:44 - 10/12/2023');

-- --------------------------------------------------------

--
-- Table structure for table `destaques`
--

CREATE TABLE `destaques` (
  `id` int(11) NOT NULL,
  `id_livro` int(11) NOT NULL,
  `observacao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `destaques`
--

INSERT INTO `destaques` (`id`, `id_livro`, `observacao`) VALUES
(1, 1, 'NOVIDADE'),
(2, 2, 'MAIS VENDIDO'),
(3, 3, 'EM PROMOÇÃO');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `imagem` varchar(2000) NOT NULL,
  `ultimos_livros` varchar(2000) NOT NULL,
  `data_atualizacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `imagem`, `ultimos_livros`, `data_atualizacao`) VALUES
(1, 'https://happening-builders.000webhostapp.com/uploads/autor/FOTO-editada.jpg\r\n', '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit.</p>', '19:39 - 10/12/2023');

-- --------------------------------------------------------

--
-- Table structure for table `livros`
--

CREATE TABLE `livros` (
  `id` int(11) NOT NULL,
  `imagem` varchar(2000) NOT NULL,
  `titulo` varchar(500) NOT NULL,
  `texto` text NOT NULL,
  `visivel` tinyint(1) NOT NULL,
  `data_criacao` varchar(50) NOT NULL,
  `data_atualizacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `livros`
--

INSERT INTO `livros` (`id`, `imagem`, `titulo`, `texto`, `visivel`, `data_criacao`, `data_atualizacao`) VALUES
(1, 'https://happening-builders.000webhostapp.com/uploads/livros/livro-conteudo.jpg', 'SENHORA DO AMOR E DA GUERRA', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsumA dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore!</p>', 1, '17/11/2021 - 03:12', '19:41 - 10/12/2023'),
(2, 'https://happening-builders.000webhostapp.com/uploads/livros/livro-conteudo4.jpg', 'O VELHO QUE PENSAVA QUE FUGIA', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore!</p>', 1, '17/11/2021 - 03:12', '19:41 - 10/12/2023'),
(3, 'https://happening-builders.000webhostapp.com/uploads/livros/livro-conteudo2.jpg', 'O COLECIONADOR DE AMNÉSIAS', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore!</p>', 1, '17/11/2021 - 03:12', '19:41 - 10/12/2023'),
(4, 'https://happening-builders.000webhostapp.com/uploads/livros/livro-conteudo4.jpg', 'O CARACOL ESTRÁBICO', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore!</p>', 1, '17/11/2021 - 03:12', '19:41 - 10/12/2023');

-- --------------------------------------------------------

--
-- Table structure for table `redes_sociais`
--

CREATE TABLE `redes_sociais` (
  `id` int(11) NOT NULL,
  `instagram` varchar(2000) NOT NULL,
  `facebook` varchar(2000) NOT NULL,
  `linkedin` varchar(2000) NOT NULL,
  `data_atualizacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `redes_sociais`
--

INSERT INTO `redes_sociais` (`id`, `instagram`, `facebook`, `linkedin`, `data_atualizacao`) VALUES
(1, 'https://www.instagram.com/', 'https://facebook.com/', 'https://linkedin.com', '19:45 - 10/12/2023');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `data_ultimo_acesso` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `senha`, `data_ultimo_acesso`) VALUES
(1, 'admin', '123abc', '16:02 - 11/12/2023'),
(2, 'client', 'welcome', '19:44 - 10/12/2023');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners_desktop`
--
ALTER TABLE `banners_desktop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners_mobile`
--
ALTER TABLE `banners_mobile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destaques`
--
ALTER TABLE `destaques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redes_sociais`
--
ALTER TABLE `redes_sociais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners_desktop`
--
ALTER TABLE `banners_desktop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banners_mobile`
--
ALTER TABLE `banners_mobile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `destaques`
--
ALTER TABLE `destaques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `livros`
--
ALTER TABLE `livros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `redes_sociais`
--
ALTER TABLE `redes_sociais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
