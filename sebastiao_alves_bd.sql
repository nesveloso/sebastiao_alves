-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Jun-2022 às 20:57
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sebastiao_alves_bd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `imagem` varchar(2000) NOT NULL,
  `texto` text NOT NULL,
  `data_atualizacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`id`, `imagem`, `texto`, `data_atualizacao`) VALUES
(1, 'http://localhost/codemaster/projecto_final/uploads/autor/conteudo.jpg', '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente!</p>', '00:08 - 23/11/2021');

-- --------------------------------------------------------

--
-- Estrutura da tabela `banners_desktop`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `banners_desktop`
--

INSERT INTO `banners_desktop` (`id`, `imagem`, `observacao`, `titulo`, `subtitulo`, `link`, `data_criacao`, `data_atualizacao`) VALUES
(1, 'http://localhost/codemaster/projecto_final/uploads/banners_desktop/cabecalho1.jpg', 'NOVIDADE', 'SENHORA DO AMOR E DA GUERRA', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa nobis tempora quae beatae eaque cumque optio consequatur Ipsa nobis tempora quae beatae eaque cumque optio consequatur asperiores voluptat.                                                    ', 'http://localhost/codemaster/projecto_final/livro.php?livro=1', '03:02 - 17/11/2021', '18:05 - 07/12/2021'),
(2, 'http://localhost/codemaster/projecto_final/uploads/banners_desktop/cabecalho2.jpg', 'NOVIDADE', 'O CARACOL ESTRÁBICO', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa nobis tempora quae beatae eaque cumque optio consequatur Ipsa nobis tempora quae beatae eaque cumque optio consequatur asperiores voluptat', 'http://localhost/codemaster/projecto_final/livro.php?livro=4', '03:02 - 17/11/2021', '03:02 - 17/11/2021'),
(3, 'http://localhost/codemaster/projecto_final/uploads/banners_desktop/cabecalho3.jpg', 'NOVIDADE', 'O COLECIONADOR DE AMNÉSIAS', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa nobis tempora quae beatae eaque cumque optio consequatur Ipsa nobis tempora quae beatae eaque cumque optio consequatur asperiores voluptat', 'http://localhost/codemaster/projecto_final/livro.php?livro=3', '03:02 - 17/11/2021', '03:02 - 17/11/2021'),
(4, 'http://localhost/codemaster/projecto_final/uploads/banners_desktop/cabecalho4.jpg', 'NOVIDADE', 'O VELHO QUE PENSAVA QUE FUGIA', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa nobis tempora quae beatae eaque cumque optio consequatur Ipsa nobis tempora quae beatae eaque cumque optio consequatur asperiores voluptat', 'http://localhost/codemaster/projecto_final/livro.php?livro=2', '03:02 - 17/11/2021', '03:02 - 17/11/2021');

-- --------------------------------------------------------

--
-- Estrutura da tabela `banners_mobile`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `banners_mobile`
--

INSERT INTO `banners_mobile` (`id`, `imagem`, `observacao`, `titulo`, `subtitulo`, `link`, `data_criacao`, `data_atualizacao`) VALUES
(1, 'http://localhost/codemaster/projecto_final/uploads/banners_mobile/cabecalho1.jpg', 'NOVIDADE', 'SENHORA DO AMOR E DA GUERRA', '                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa nobis tempora quae beatae eaque cumque optio consequatur Ipsa nobis tempora quae beatae eaque cumque optio consequatur asperiores voluptat                     ', 'http://localhost/codemaster/projecto_final/livro.php?livro=1', '03:02 - 17/11/2021', '18:26 - 07/12/2021'),
(2, 'http://localhost/codemaster/projecto_final/uploads/banners_mobile/cabecalho2.jpg', 'NOVIDADE', 'O CARACOL ESTRÁBICO', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa nobis tempora quae beatae eaque cumque optio consequatur Ipsa nobis tempora quae beatae eaque cumque optio consequatur asperiores voluptatem?', 'http://localhost/codemaster/projecto_final/livro.php?livro=4', '03:02 - 17/11/2021', '03:02 - 17/11/2021'),
(3, 'http://localhost/codemaster/projecto_final/uploads/banners_mobile/cabecalho3.jpg', 'NOVIDADE', 'O COLECIONADOR DE AMNÉSIAS', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa nobis tempora quae beatae eaque cumque optio consequatur Ipsa nobis tempora quae beatae eaque cumque optio consequatur asperiores voluptat', 'http://localhost/codemaster/projecto_final/livro.php?livro=3', '03:02 - 17/11/2021', '03:02 - 17/11/2021'),
(4, 'http://localhost/codemaster/projecto_final/uploads/banners_mobile/cabecalho4.jpg', 'NOVIDADE', 'O VELHO QUE PENSAVA QUE FUGIA', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa nobis tempora quae beatae eaque cumque optio consequatur Ipsa nobis tempora quae beatae eaque cumque optio consequatur asperiores voluptatem?', 'http://localhost/codemaster/projecto_final/livro.php?livro=2', '03:02 - 17/11/2021', '03:02 - 17/11/2021');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contactos`
--

CREATE TABLE `contactos` (
  `id` int(11) NOT NULL,
  `telefone` varchar(200) NOT NULL,
  `morada` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `horario` varchar(200) NOT NULL,
  `data_atualizacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contactos`
--

INSERT INTO `contactos` (`id`, `telefone`, `morada`, `email`, `horario`, `data_atualizacao`) VALUES
(1, '+351 123 456 789', 'lorem ipsum dolor sit amet, 12 1234-543 Lorem', 'sebast@lorem.pt', 'De Segunda a Sexta das 00:00h às 00:00h', '22:38 - 12/05/2022');

-- --------------------------------------------------------

--
-- Estrutura da tabela `destaques`
--

CREATE TABLE `destaques` (
  `id` int(11) NOT NULL,
  `id_livro` int(11) NOT NULL,
  `observacao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `destaques`
--

INSERT INTO `destaques` (`id`, `id_livro`, `observacao`) VALUES
(1, 1, 'NOVIDADE'),
(2, 2, 'MAIS VENDIDO'),
(3, 3, 'EM PROMOÇÃO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `imagem` varchar(2000) NOT NULL,
  `ultimos_livros` varchar(2000) NOT NULL,
  `data_atualizacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `home`
--

INSERT INTO `home` (`id`, `imagem`, `ultimos_livros`, `data_atualizacao`) VALUES
(1, 'http://localhost/codemaster/projecto_final/uploads/autor/FOTO-editada.jpg', '<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, tenetur voluptatem debitis porro id tempora consequuntur beatae ipsa ratione sit doloremque temporibus blanditiis est, asperiores, non sint dignissimos aut sapiente! Lorem ipsum dolor, sit amet consectetur adipisicing elit.</p>', '22:35 - 12/05/2022');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imprensa`
--

CREATE TABLE `imprensa` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `data_publicacao` varchar(50) NOT NULL,
  `imagem` varchar(2000) NOT NULL,
  `texto` text NOT NULL,
  `data_criacao` varchar(50) NOT NULL,
  `data_atualizacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `imprensa`
--

INSERT INTO `imprensa` (`id`, `titulo`, `data_publicacao`, `imagem`, `texto`, `data_criacao`, `data_atualizacao`) VALUES
(1, 'LANÇAMENTO | SENHARA DO AMOR E DA GUERRA', 'PUBLICADO A 17 JUNHO 2020', 'http://localhost/codemaster/projecto_final/uploads/imprensa/imprensa1.jpg', '', '03:02 - 17/11/2021', '18:49 - 07/12/2021'),
(2, 'LANÇAMENTO DO LIVRO ', 'PUBLICADO A 25 SETEMBRO 2021', 'http://localhost/codemaster/projecto_final/uploads/imprensa/imprensa2.jpg', '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolor corporis neque atque, unde minima labore quo suscipit, velit voluptatibus ullam repellat, mollitia nesciunt molestiae. Tenetur praesentium alias ex quasi et? Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolor corporis neque atque, unde minima labore quo suscipit, velit voluptatibus ullam repellat, mollitia nesciunt molestiae. Tenetur praesentium alias ex quasi et? Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolor corporis neque atque, unde minima labore quo suscipit, velit voluptatibus ullam repellat, mollitia nesciunt molestiae. Tenetur praesentium alias ex quasi et?</p>', '03:02 - 17/11/2021', '22:11 - 02/06/2022'),
(3, 'Psychology Now', 'PUBLICADO A 02 JUNHO 2022', 'http://localhost/codemaster/projecto_final/uploads/imprensa/imprensa3.jpg', '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolor corporis neque atque, unde minima labore quo suscipit, velit voluptatibus ullam repellat, mollitia nesciunt molestiae. Tenetur praesentium alias ex quasi et? Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolor corporis neque atque, unde minima labore quo suscipit, velit voluptatibus ullam repellat, mollitia nesciunt molestiae. Tenetur praesentium alias ex quasi et? Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolor corporis neque atque, unde minima labore quo suscipit, velit voluptatibus ullam repellat, mollitia nesciunt molestiae. Tenetur praesentium alias ex quasi et?</p>', '03:02 - 17/11/2021', '22:11 - 02/06/2022');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `id` int(11) NOT NULL,
  `imagem` varchar(2000) NOT NULL,
  `titulo` varchar(500) NOT NULL,
  `texto` text NOT NULL,
  `visivel` tinyint(1) NOT NULL,
  `data_criacao` varchar(50) NOT NULL,
  `data_atualizacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`id`, `imagem`, `titulo`, `texto`, `visivel`, `data_criacao`, `data_atualizacao`) VALUES
(1, 'http://localhost/codemaster/projecto_final/uploads/livros/livro-conteudo.jpg', 'SENHORA DO AMOR E DA GUERRA', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsumA dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore!</p>', 1, '17/11/2021 - 03:12', '01:53 - 23/11/2021'),
(2, 'http://localhost/codemaster/projecto_final/uploads/livros/livro2.jpg', 'O VELHO QUE PENSAVA QUE FUGIA', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore!\r\n\r\nLorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore!\r\n\r\nLorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore!\r\n\r\nLorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore!', 1, '17/11/2021 - 03:12', '17/11/2021 - 03:12'),
(3, 'http://localhost/codemaster/projecto_final/uploads/livros/livro-conteudo2.jpg', 'O COLECIONADOR DE AMNÉSIAS', '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore!</p>', 1, '17/11/2021 - 03:12', '20:13 - 23/11/2021'),
(4, 'http://localhost/codemaster/projecto_final/uploads/livros/livro-conteudo3.jpg', 'O CARACOL ESTRÁBICO', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore!\r\n\r\nLorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore!\r\n\r\nLorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore!\r\n\r\nLorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore! Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt sapiente quisquam ratione esse fuga, facere ullam. Dolor nobis vel odio! Consectetur, explicabo? Suscipit nostrum, maxime deserunt beatae maiores ipsam tempore!', 1, '17/11/2021 - 03:12', '17/11/2021 - 03:12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `redes_sociais`
--

CREATE TABLE `redes_sociais` (
  `id` int(11) NOT NULL,
  `instagram` varchar(2000) NOT NULL,
  `facebook` varchar(2000) NOT NULL,
  `linkedin` varchar(2000) NOT NULL,
  `data_atualizacao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `redes_sociais`
--

INSERT INTO `redes_sociais` (`id`, `instagram`, `facebook`, `linkedin`, `data_atualizacao`) VALUES
(1, 'https://www.instagram.com/', 'https://facebook.com/', 'https://linkedin.com/', '03:02 - 17/11/2021');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `data_ultimo_acesso` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `senha`, `data_ultimo_acesso`) VALUES
(1, 'codemaster', 'teste', '20:22 - 06/06/2022'),
(2, 'sebastiao', 'teste', '20:14 - 08/11/2021');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `banners_desktop`
--
ALTER TABLE `banners_desktop`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `banners_mobile`
--
ALTER TABLE `banners_mobile`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `destaques`
--
ALTER TABLE `destaques`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `imprensa`
--
ALTER TABLE `imprensa`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `redes_sociais`
--
ALTER TABLE `redes_sociais`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `banners_desktop`
--
ALTER TABLE `banners_desktop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `banners_mobile`
--
ALTER TABLE `banners_mobile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `destaques`
--
ALTER TABLE `destaques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `imprensa`
--
ALTER TABLE `imprensa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `redes_sociais`
--
ALTER TABLE `redes_sociais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
