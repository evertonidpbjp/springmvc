-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 21-Ago-2016 às 19:46
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lojinha`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `pages` int(11) NOT NULL,
  `releaseDate` datetime DEFAULT NULL,
  `summaryPath` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto_prices`
--

CREATE TABLE `produto_prices` (
  `Produto_id` int(11) NOT NULL,
  `bookType` int(11) DEFAULT NULL,
  `value` decimal(19,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `registro`
--

CREATE TABLE `registro` (
  `numero_registro` int(11) NOT NULL,
  `numero_passagens` int(11) DEFAULT NULL,
  `responsavel` varchar(255) NOT NULL,
  `total` double NOT NULL,
  `total_milhas` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `registro`
--

INSERT INTO `registro` (`numero_registro`, `numero_passagens`, `responsavel`, `total`, `total_milhas`) VALUES
(1, 2, 'adm@gmail.com', 1400, 0),
(2, 2, 'adm@gmail.com', 1400, 0),
(3, 2, 'adm@gmail.com', 900, 807.781),
(4, 3, 'adm@gmail.com', 1600, 1118.466),
(5, 2, 'adm@gmail.com', 600, 621.37),
(6, 1, 'adm@gmail.com', 800, 1056.329),
(7, 3, 'adm@gmail.com', 1100, 1304.877),
(8, 2, 'adm@gmail.com', 500, 248.548),
(9, 1, 'adm@gmail.com', 600, 1056.329),
(10, 1, 'adm@gmail.com', 600, 1056.329),
(11, 1, 'adm@gmail.com', 800, 1056.329),
(12, 1, 'adm@gmail.com', 800, 1056.329),
(13, 1, 'adm@gmail.com', 800, 1056.329),
(14, 1, 'adm@gmail.com', 800, 1056.329),
(15, 1, 'adm@gmail.com', 800, 1056.329),
(16, 2, 'adm@gmail.com', 600, 621.37),
(17, 1, 'adm@gmail.com', 300, 310.685),
(18, 1, 'adm@gmail.com', 1000, 497.096),
(19, 3, 'adm@gmail.com', 1600, 1367.014);

-- --------------------------------------------------------

--
-- Estrutura da tabela `role`
--

CREATE TABLE `role` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `role`
--

INSERT INTO `role` (`name`) VALUES
('ROLE_ADMIN'),
('ROLE_CLIENTE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `login` varchar(255) NOT NULL,
  `cartao_milha` double NOT NULL,
  `documento` varchar(255) NOT NULL,
  `idade` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `releaseDate` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `senha_testa` varchar(255) NOT NULL,
  `tipo_documento` varchar(255) DEFAULT NULL,
  `cartao_credito` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`login`, `cartao_milha`, `documento`, `idade`, `name`, `password`, `releaseDate`, `role`, `senha_testa`, `tipo_documento`, `cartao_credito`) VALUES
('adm@gmail.com', 1471676154634, '2222222', 33, 'Administrador', '$2a$10$0geSj.bzGQayz/fhRmt.d.Cam1X6Gevw8GgvpB4yPzCUhtJ7HuVU2', '1983-08-26', 'ROLE_CLIENTE', '$2a$10$0geSj.bzGQayz/fhRmt.d.Cam1X6Gevw8GgvpB4yPzCUhtJ7HuVU2', 'RG', 8632.986),
('akira@gmail.com', 1471741931939, '32323', 41, 'akira', '$2a$10$7hZDtGZYXJugX6nrfnUuwuUlfaIoHCHbOxEQCi9JdqkLADaZOsoEy', '1975-08-25', 'ROLE_CLIENTE', '$2a$10$7hZDtGZYXJugX6nrfnUuwuUlfaIoHCHbOxEQCi9JdqkLADaZOsoEy', 'RG', 10000),
('alex@gmail.com', 1471741511517, '34242', 52, 'Alex', '$2a$10$GxBtAAxwyEsWYLU2jHbHeeBoLKYIqvVvecCJ0gUerRSZVWDL8BXJa', '1964-08-26', 'ROLE_CLIENTE', '$2a$10$GxBtAAxwyEsWYLU2jHbHeeBoLKYIqvVvecCJ0gUerRSZVWDL8BXJa', 'RG', 0),
('ee@jonhs.com', 1471670703373, 'asa', 30, 'sasasa', '$2a$10$McCNS76uHxyd0XraveN4HuptRo2RKMV1xZ9v7hokSQ2ZtQOF4BT6C', '1986-08-03', 'ROLE_CLIENTE', '$2a$10$McCNS76uHxyd0XraveN4HuptRo2RKMV1xZ9v7hokSQ2ZtQOF4BT6C', 'RG', 0),
('everonud@gmail.com', 1471671427655, 'sasa', 26, 'eeaea', '$2a$10$P6uOq4gbQB0NuK2YUEuDWuloFxNToQho.YcA.1aru.eO2RsOE3Fi.', '1990-08-25', 'ROLE_CLIENTE', '$2a$10$P6uOq4gbQB0NuK2YUEuDWuloFxNToQho.YcA.1aru.eO2RsOE3Fi.', 'CPF', 0),
('everton@gmail.com', 1471676687378, '33333', 32, 'Everton', '$2a$10$DjeIK/QhpW0zPCxd6hFlMe3bJ2ADZfjSDk5HvnjvHrcle4X7rN6OO', '1984-08-25', 'ROLE_ADMIN', '$2a$10$DjeIK/QhpW0zPCxd6hFlMe3bJ2ADZfjSDk5HvnjvHrcle4X7rN6OO', 'RG', 0),
('evertonid@ymail.clom', 1471673937719, '21212121', 32, 'everton', '$2a$10$R9owFEpbq8cLXt6RqI4dROJNbHVZ.VVi6.8wMNkbxIfKMRVotKGru', '1984-08-24', 'ROLE_CLIENTE', '$2a$10$R9owFEpbq8cLXt6RqI4dROJNbHVZ.VVi6.8wMNkbxIfKMRVotKGru', 'RG', 0),
('Lucas@gmail.com', 1471676476817, '5534', 31, 'lucas', '$2a$10$NTGxjGGI3V.KvGfQxPD1suVNUKACTWPwciRuj9FLC37p.th4hh2za', '1985-08-25', 'ROLE_CLIENTE', '$2a$10$NTGxjGGI3V.KvGfQxPD1suVNUKACTWPwciRuj9FLC37p.th4hh2za', 'RG', 0),
('marcos@gmail.com', 1471676398255, '32323', 27, 'marcos', '$2a$10$n5Hku7z8FFWmZtPEKXrSpuJA9VpC03N2nHCZ6mIXepFlTCIKxTSO2', '1989-08-25', NULL, '$2a$10$n5Hku7z8FFWmZtPEKXrSpuJA9VpC03N2nHCZ6mIXepFlTCIKxTSO2', 'RG', 0),
('maria@gmail.com', 1471675417237, '111111111111111', 33, 'maria', '$2a$10$AVrPVuobJa.wVdm1a.gkTel9XG9t.5a47Co0WIsHklggNIFiuktHi', '1983-08-18', 'ROLE_CLIENTE', '$2a$10$AVrPVuobJa.wVdm1a.gkTel9XG9t.5a47Co0WIsHklggNIFiuktHi', 'RG', 0),
('mauricio@gmail.com', 1471673826109, '24323', 26, 'sasa', '$2a$10$j6ovaOaRGPMLWL1mSVO50OfmzUpBQARXh7/4P5cFeDSFwnz53uxUu', '1990-08-31', 'ROLE_CLIENTE', '$2a$10$j6ovaOaRGPMLWL1mSVO50OfmzUpBQARXh7/4P5cFeDSFwnz53uxUu', 'RG', 0),
('mike@hotmail.com', 1471674332235, '1111', 35, 'mike', '$2a$10$SBxpWvqKDB2gD8v5ThRm/OiYol7G2vUz43wOy5xIMKANV7sVI2Bkq', '1981-08-27', 'ROLE_CLIENTE', '$2a$10$SBxpWvqKDB2gD8v5ThRm/OiYol7G2vUz43wOy5xIMKANV7sVI2Bkq', 'RG', 0),
('sds@gmail.com', 1471670495329, '323', 35, 'ldkaskla', '$2a$10$1mChG9VAJcTHikQr4gSOquhNJLlvkz2ISBsme9vvXOdGQyWviJOje', '1981-08-26', 'ROLE_CLIENTE', '$2a$10$1mChG9VAJcTHikQr4gSOquhNJLlvkz2ISBsme9vvXOdGQyWviJOje', 'RG', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_role`
--

CREATE TABLE `user_role` (
  `User_login` varchar(255) NOT NULL,
  `roles_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user_role`
--

INSERT INTO `user_role` (`User_login`, `roles_name`) VALUES
('sds@gmail.com', 'ROLE_CLIENTE'),
('ee@jonhs.com', 'ROLE_CLIENTE'),
('everonud@gmail.com', 'ROLE_CLIENTE'),
('mauricio@gmail.com', 'ROLE_CLIENTE'),
('evertonid@ymail.clom', 'ROLE_CLIENTE'),
('mike@hotmail.com', 'ROLE_CLIENTE'),
('maria@gmail.com', 'ROLE_CLIENTE'),
('evertonid@ymail.clom', 'ROLE_ADMIN'),
('Lucas@gmail.com', 'ROLE_CLIENTE'),
('everton@gmail.com', 'ROLE_ADMIN'),
('alex@gmail.com', 'ROLE_CLIENTE'),
('akira@gmail.com', 'ROLE_CLIENTE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `voos`
--

CREATE TABLE `voos` (
  `identificador` int(11) NOT NULL,
  `capacidade` varchar(255) NOT NULL,
  `destino` varchar(255) NOT NULL,
  `distancia` varchar(255) NOT NULL,
  `duracao` varchar(255) NOT NULL,
  `hora_partida` varchar(255) NOT NULL,
  `origem` varchar(255) NOT NULL,
  `preco` float NOT NULL,
  `assentos` int(11) DEFAULT NULL,
  `data` varchar(255) NOT NULL,
  `versao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `voos`
--

INSERT INTO `voos` (`identificador`, `capacidade`, `destino`, `distancia`, `duracao`, `hora_partida`, `origem`, `preco`, `assentos`, `data`, `versao`) VALUES
(12, '100', 'Recife', '1700', '8 horas', '14:00', 'Rio de Janeiro', 800, 0, '15/08/2016', NULL),
(13, '100', 'Recife', '500', '5 horas', '19:00', 'Fortaleza', 300, 93, '15/10/2016', NULL),
(14, '100', 'Fortaleza', '500', '5 horas', '17:00', 'Recife', 300, 0, '20/10/2016', NULL),
(15, '100', 'Fortaleza', '800', '9 horas', '07:00', 'Rio de Janeiro', 600, 98, '25/08/2016', NULL),
(16, '100', 'Rio de Janeiro', '800', '7 horas', '15:00', 'Fortaleza', 1000, 0, '11/09/2016', NULL),
(21, '100', 'Rio de Janeiro', '1700', '8 horas', '21:00', 'Recife', 600, 100, '15/09/2016', NULL),
(22, '100', 'Recife', '1700', '8 horas', '14:00', 'Rio de Janeiro', 800, 99, '15/08/2016', NULL),
(23, '100', 'Fortaleza', '100 km', '4 horas', '00:00', 'Recife ', 100, 100, '17/08/2016', NULL),
(24, '100', 'Fortaleza', '200', '4 horas', '00:00', 'Recife', 250, 96, '19/08/2016', NULL),
(25, '100', 'Rio de Janeiro', '500', '3 horas', '05:00', 'Recife', 890, 100, '28/08/2016', NULL),
(26, '100', 'Rio de Janeiro', '900', '4 horas', '04:05', 'Recife', 700, 99, '30/08/2016', NULL),
(27, '100', 'Recife', '800', '5 horas', '19:00', 'Fortaleza', 800, 100, '21/08/2016', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produto_prices`
--
ALTER TABLE `produto_prices`
  ADD KEY `FK_q3owa1fuk6mtgaxxkq4oa8n9k` (`Produto_id`);

--
-- Indexes for table `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`numero_registro`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`login`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD KEY `FK_kj5hi20v94v3qegbsqh36eqet` (`roles_name`),
  ADD KEY `FK_besatukaomklekcnfr4w6ti9y` (`User_login`);

--
-- Indexes for table `voos`
--
ALTER TABLE `voos`
  ADD PRIMARY KEY (`identificador`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `registro`
--
ALTER TABLE `registro`
  MODIFY `numero_registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `voos`
--
ALTER TABLE `voos`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `produto_prices`
--
ALTER TABLE `produto_prices`
  ADD CONSTRAINT `FK_q3owa1fuk6mtgaxxkq4oa8n9k` FOREIGN KEY (`Produto_id`) REFERENCES `produto` (`id`);

--
-- Limitadores para a tabela `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK_besatukaomklekcnfr4w6ti9y` FOREIGN KEY (`User_login`) REFERENCES `user` (`login`),
  ADD CONSTRAINT `FK_kj5hi20v94v3qegbsqh36eqet` FOREIGN KEY (`roles_name`) REFERENCES `role` (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
