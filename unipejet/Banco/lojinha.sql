-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18-Ago-2016 às 01:25
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
-- Estrutura da tabela `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `passagens` float DEFAULT NULL,
  `total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `compras_passageiros`
--

CREATE TABLE `compras_passageiros` (
  `Compras_id` int(11) NOT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `description` longtext,
  `pages` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `releaseDate` datetime DEFAULT NULL,
  `summaryPath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `description`, `pages`, `title`, `releaseDate`, `summaryPath`) VALUES
(1, 'sss', 200, 'ss', NULL, NULL),
(2, 'fff', 123, 'fff', NULL, NULL),
(3, 'eee', 234, 'eee', NULL, NULL),
(4, 'ss', 123, 'w', NULL, NULL),
(5, 'jsjjs', 234, 'ava', NULL, NULL),
(6, 'ddd', 123, 'ddd', NULL, NULL),
(7, 'ddd', 340, 'dddddd', NULL, NULL),
(8, 'rtt', 123, 'tituo', NULL, NULL),
(9, 'djdjdj', 123, 'everton', NULL, NULL),
(10, 'ddd', 124, 'ddd', '2016-07-06 00:00:00', NULL),
(11, 'xxx', 234, 'xx', '2016-08-09 00:00:00', 'uploaded-images/documento.pdf'),
(12, 'ssss', 123, 'livro de financas', '2016-08-10 00:00:00', 'uploaded-images/seguro loja estetica.pdf'),
(13, 'ddd', 234, 'dd', '2016-08-10 00:00:00', 'uploaded-images/seguro loja estetica.pdf'),
(14, 'jdjdjdj', 244, 'Mais um teste', '2016-08-02 00:00:00', 'uploaded-images/IMPORTANTE_._Leia-me.txt'),
(15, 'php é muuto legal', 123, 'php', '2016-08-02 00:00:00', 'uploaded-images/documento.pdf'),
(16, 'sjsjsjsj', 100, 'Jaa', '2016-08-02 00:00:00', 'uploaded-images/DTLite.exe'),
(17, 'jsjssjjs', 200, 'Evertinho', '0345-04-23 00:00:00', 'uploaded-images/seguro loja estetica.pdf'),
(18, 'sss', 234, 'ss', '2016-08-02 00:00:00', 'uploaded-images/IMPORTANTE_._Leia-me.txt'),
(19, 'sss', 234, 'ss', '2016-08-02 00:00:00', 'uploaded-images/IMPORTANTE_._Leia-me.txt'),
(20, 'jsjsjsj', 234, 'novo livro', '2016-08-09 00:00:00', 'uploaded-images/documento.pdf'),
(21, 'kdkdkdk', 123, 'kddkkdkd', '2016-08-10 00:00:00', 'uploaded-images/Aplicação para a companhia aérea Unipe.pdf'),
(22, 'ssss', 345, 'sss', '2016-08-02 00:00:00', 'uploaded-images/DTLite.exe');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto_prices`
--

CREATE TABLE `produto_prices` (
  `Produto_id` int(11) NOT NULL,
  `bookType` int(11) DEFAULT NULL,
  `value` decimal(19,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto_prices`
--

INSERT INTO `produto_prices` (`Produto_id`, `bookType`, `value`) VALUES
(4, 0, '54.00'),
(4, 1, '646.00'),
(4, 2, '778.00'),
(5, 0, '45.00'),
(5, 1, '34.00'),
(5, 2, '12.00'),
(6, 0, '10.00'),
(6, 1, '20.00'),
(6, 2, '30.00'),
(7, 0, '34.00'),
(7, 1, '45.00'),
(7, 2, '76.00'),
(8, 0, NULL),
(8, 1, NULL),
(8, 2, NULL),
(9, 0, '34.00'),
(9, 1, '54.00'),
(9, 2, '43.00'),
(10, 0, '21.00'),
(10, 1, '43.00'),
(10, 2, '54.00'),
(11, 0, '12.00'),
(11, 1, '34.00'),
(11, 2, '56.00'),
(12, 0, '44.00'),
(12, 1, '45.00'),
(12, 2, '45.00'),
(13, 0, '32.00'),
(13, 1, '34.00'),
(13, 2, '55.00'),
(14, 0, '12.00'),
(14, 1, '45.00'),
(14, 2, '67.00'),
(15, 0, '12.00'),
(15, 1, '23.00'),
(15, 2, '43.00'),
(16, 0, '23.00'),
(16, 1, '45.00'),
(16, 2, '2.00'),
(17, 0, '19.00'),
(17, 1, '29.00'),
(17, 2, '39.00'),
(18, 0, '2.00'),
(18, 1, '2.00'),
(18, 2, '3.00'),
(19, 0, '2.00'),
(19, 1, '2.00'),
(19, 2, '3.00'),
(20, 0, '23.00'),
(20, 1, '45.00'),
(20, 2, '57.00'),
(21, 0, '12.00'),
(21, 1, '34.00'),
(21, 2, '55.00'),
(22, 0, NULL),
(22, 1, NULL),
(22, 2, NULL);

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
  `cartao_milha` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `releaseDate` date DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `documento` varchar(255) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `tipo_documento` varchar(255) DEFAULT NULL,
  `senha_testa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`login`, `cartao_milha`, `name`, `password`, `releaseDate`, `role`, `documento`, `idade`, `tipo_documento`, `senha_testa`) VALUES
('admin@gmail.com', 1471273333285, 'Administrador', '$2a$10$fc4bChsgX4wmFDbB8HFRRObgvxD8ehF/21ox.MvY87nsbRJQ35Wou', '1992-08-30', NULL, '00000000', 24, 'RG', '$2a$10$fc4bChsgX4wmFDbB8HFRRObgvxD8ehF/21ox.MvY87nsbRJQ35Wou'),
('alberto@gmail.com', 1471340328073, 'Alberto', '$2a$10$luq4XV353/9jgCcEIzMPFuIfHbRudp4LlK80yv0D5UgQz8Blp/j/C', '1977-08-10', 'ROLE_CLIENTE', '22455959', 39, 'RG', '$2a$10$luq4XV353/9jgCcEIzMPFuIfHbRudp4LlK80yv0D5UgQz8Blp/j/C'),
('billy@gmail.com', 1471247665394, 'billy', '$2a$10$NUDraASj/x5FEO2kE1Vw/.enT7FTlzu7VlzffIomlh6YCGCJ3dg/W', '1990-08-01', NULL, '123', 26, 'CPF', '$2a$10$NUDraASj/x5FEO2kE1Vw/.enT7FTlzu7VlzffIomlh6YCGCJ3dg/W'),
('cliente@gmail.com', 14200, 'Everton', '1R20j6P9ICAHAvVi/Bv4B6SJIfNuO', '1957-08-29', 'ROLE_CLIENTE', 'jjjjj', 59, 'CPF', '1R20j6P9ICAHAvVi/Bv4B6SJIfNuO'),
('eee@gggss', 1471337525195, 'sss', '$2a$10$pJgRASN4gYmFEhL2hF/0VOQV5P7ttDj9ZVpC3ktT8OhiR6Bo5mx2y', '1981-08-24', 'ROLE_CLIENTE', '4444', 35, 'CPF', '$2a$10$pJgRASN4gYmFEhL2hF/0VOQV5P7ttDj9ZVpC3ktT8OhiR6Bo5mx2y'),
('emmilly@gmail.com', 1471419091656, 'emmilly', '$2a$10$TeX6fyXnbTdhFbstRwZ4OOFyCFm09aL..Ko04bdYSkti3P4Z2crqe', '1990-08-04', NULL, '3432432', 26, 'CPF', '$2a$10$TeX6fyXnbTdhFbstRwZ4OOFyCFm09aL..Ko04bdYSkti3P4Z2crqe'),
('fff@hotmail.com', 1471338179009, 'dsdsd', '$2a$10$3opzlFQX0ma/XtlkZQlsc.sjDViHf2ly6jGLxkDnJ4glnlniV/Lk2', '1989-08-24', NULL, 'dsdsds', 27, 'CPF', '$2a$10$3opzlFQX0ma/XtlkZQlsc.sjDViHf2ly6jGLxkDnJ4glnlniV/Lk2'),
('fffd@gmail.com', 1471337611823, 'fddsdsd', '$2a$10$gPhqXEA5K16xtT37iERObOBHDVQGlW9Eu5MUB0AT.mdttCUYPjq3y', '1977-08-26', 'ROLE_CLIENTE', '123', 39, 'RG', '$2a$10$gPhqXEA5K16xtT37iERObOBHDVQGlW9Eu5MUB0AT.mdttCUYPjq3y'),
('haroldo@gmail.com', 1471331398063, 'dddd', '$2a$10$Cdrv.IiHchUioxZHf9DLo.xyyBJdyzsrXOVsc9jHVY6IwVu15vvn6', '1994-08-25', NULL, '123', 22, 'CPF', '$2a$10$Cdrv.IiHchUioxZHf9DLo.xyyBJdyzsrXOVsc9jHVY6IwVu15vvn6'),
('harry@hotmail.com', 1471330914942, 'harry', '$2a$10$FK1VDU045g1SOQO7o/khZOkkEvNdksk7Z8aMLLtxF/76Feuy.6/Du', '1984-08-25', NULL, '33333', 32, 'RG', '$2a$10$FK1VDU045g1SOQO7o/khZOkkEvNdksk7Z8aMLLtxF/76Feuy.6/Du'),
('jake@gmail.com', 1471330755203, 'jake', '$2a$10$PXZ6rMLiRauz0w/XDKSCvOWgF/ZY4fOD5yewgO/mjs9opXpz4Z6Jy', '1989-08-26', NULL, '444444', 27, 'CPF', '$2a$10$PXZ6rMLiRauz0w/XDKSCvOWgF/ZY4fOD5yewgO/mjs9opXpz4Z6Jy'),
('joana@gmail.com', 1471336094668, 'joana', '$2a$10$hPZNy/ix9HDjtMLapbT3PeUferp6kVCFOmqbYVwhfBviI3.TY2Dlq', '1985-08-31', 'ROLE_COMPRADOR', '333333', 31, 'RG', '$2a$10$hPZNy/ix9HDjtMLapbT3PeUferp6kVCFOmqbYVwhfBviI3.TY2Dlq'),
('jorge@gmail.com', 1471340480434, 'jorge', '$2a$10$eR2vW8kGHY/ErKIOIGOm8OG0vq8ueSWziLAlQmERYn.JKbeeX1N.W', '1973-08-24', NULL, '1234', 43, 'CPF', '$2a$10$eR2vW8kGHY/ErKIOIGOm8OG0vq8ueSWziLAlQmERYn.JKbeeX1N.W'),
('julia@gmail.com', 1471270650127, 'julia', '$2a$10$1jbcD8ymXSx73GrZtCrzR.eqqsyux6ykuWxKa9fFOMQv6mVcYo2/m', '1991-08-25', NULL, '8383883383', 25, 'CPF', '$2a$10$1jbcD8ymXSx73GrZtCrzR.eqqsyux6ykuWxKa9fFOMQv6mVcYo2/m'),
('logan@gmail.com', 1471336319782, 'logan', '$2a$10$krgNzfZoGcafk4kskduA0uvvFWuo/it4K1RfF0n/3YyvGqlAt85Sy', '1983-08-24', 'ROLE_COMPRADOR', 'ccc', 33, 'RG', '$2a$10$krgNzfZoGcafk4kskduA0uvvFWuo/it4K1RfF0n/3YyvGqlAt85Sy'),
('maicon@gmail.com', 1471342429956, 'maicon', '$2a$10$W2xybC0AtnoW2cu/fBFuWe0MlQjoTYHfSTn.seFHf.9/SZ.jXK17C', '1992-08-09', 'ROLE_ADMIN', '222222', 24, 'RG', '$2a$10$W2xybC0AtnoW2cu/fBFuWe0MlQjoTYHfSTn.seFHf.9/SZ.jXK17C'),
('Marcone@gmail.com', 1471418668789, 'marcone', '$2a$10$vtiXn5tOLRj46lVL5IlHye0Kq55j1T0QIsrvvFXVlcuPrJ3R55Y76', '1978-08-09', 'ROLE_CLIENTE', '56565', 38, 'RG', '$2a$10$vtiXn5tOLRj46lVL5IlHye0Kq55j1T0QIsrvvFXVlcuPrJ3R55Y76'),
('novato@gmail.com', 1471342329792, 'novato', '$2a$10$yyLOaHlmipaWuSrGL9KWu.Y23LASMdR1RRDtV963h.LrZCGOvHON.', '1983-08-16', 'ROLE_CLIENTE', '222222', 33, 'CPF', '$2a$10$yyLOaHlmipaWuSrGL9KWu.Y23LASMdR1RRDtV963h.LrZCGOvHON.'),
('povo@gmail.com', 1471418733950, 'povo@gmail.com', '$2a$10$pFjnGuIoK216kkj06FJv4Oa3w4QqUNXZQ1cdFMmxOl63eri2I5Bz6', '1981-08-19', NULL, '3232', 35, 'RG', '$2a$10$pFjnGuIoK216kkj06FJv4Oa3w4QqUNXZQ1cdFMmxOl63eri2I5Bz6'),
('rafael@gmail.com', 1471335058963, 'rafael', '$2a$10$C/M3wp8v1iI8xMeAsJjro.OEvOlsYIfrwIIcwM/1KVNie8WWeIqNC', '1994-08-25', 'ROLE_COMPRADOR', '333333', 22, 'RG', '$2a$10$C/M3wp8v1iI8xMeAsJjro.OEvOlsYIfrwIIcwM/1KVNie8WWeIqNC'),
('rodrigo@gmail.com', 1471338238280, 'rodrigo', '$2a$10$zOjzMT.9jvk5CKgvlkD.XuFmdK4LDH4h3sIH5D4.3BuhXO2RvCrSq', '1982-08-25', NULL, '123', 34, 'RG', '$2a$10$zOjzMT.9jvk5CKgvlkD.XuFmdK4LDH4h3sIH5D4.3BuhXO2RvCrSq');

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
('cliente@gmail.com', 'ROLE_CLIENTE'),
('admin@gmail.com', 'ROLE_ADMIN'),
('harry@hotmail.com', 'ROLE_ADMIN'),
('rafael@gmail.com', 'ROLE_ADMIN'),
('joana@gmail.com', 'ROLE_ADMIN'),
('logan@gmail.com', 'ROLE_ADMIN'),
('eee@gggss', 'ROLE_ADMIN'),
('fffd@gmail.com', 'ROLE_CLIENTE'),
('fff@hotmail.com', 'ROLE_CLIENTE'),
('rodrigo@gmail.com', 'ROLE_CLIENTE'),
('alberto@gmail.com', 'ROLE_CLIENTE'),
('novato@gmail.com', 'ROLE_CLIENTE'),
('maicon@gmail.com', 'ROLE_ADMIN'),
('Marcone@gmail.com', 'ROLE_CLIENTE');

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
  `data` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `voos`
--

INSERT INTO `voos` (`identificador`, `capacidade`, `destino`, `distancia`, `duracao`, `hora_partida`, `origem`, `preco`, `assentos`, `data`) VALUES
(7, '500', 'Rio de Janeiro', '1700', '8 horas', '21:00', 'Recife', 600, 78, '02/02/2099'),
(12, '200', 'Recife', '1700', '8 horas', '14:00', 'Rio de Janeiro', 800, 78, '15/08/2016'),
(13, '200', 'Recife', '500', '5 horas', '19:00', 'Fortaleza', 300, 78, ''),
(14, '200', 'Fortaleza', '500', '5 horas', '17:00', 'Recife', 300, 78, ''),
(15, '200', 'Fortaleza', '800', '9 horas', '07:00', 'Rio de Janeiro', 600, 67, ''),
(16, '200', 'Rio de Janeiro', '800', '7 horas', '15:00', 'Fortaleza', 1000, 78, ''),
(21, '500', 'Rio de Janeiro', '1700', '8 horas', '21:00', 'Recife', 600, 78, ''),
(22, '200', 'Recife', '1700', '8 horas', '14:00', 'Rio de Janeiro', 800, 78, '15/08/2016'),
(23, '100', 'Fortaleza', '100 km', '4 horas', '00:00', 'Recife ', 100, 100, '17/08/2016');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compras_passageiros`
--
ALTER TABLE `compras_passageiros`
  ADD KEY `FK_40mmqfuxeags20cx5lk4xn72w` (`Compras_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `voos`
--
ALTER TABLE `voos`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `compras_passageiros`
--
ALTER TABLE `compras_passageiros`
  ADD CONSTRAINT `FK_40mmqfuxeags20cx5lk4xn72w` FOREIGN KEY (`Compras_id`) REFERENCES `compras` (`id`);

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
