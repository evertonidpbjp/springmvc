-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 22-Ago-2016 às 05:12
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
(19, 3, 'adm@gmail.com', 1600, 1367.014),
(20, 1, 'administrador@gmail.com', 600, 1056.329),
(21, 1, 'maicon@gmail.com', 600, 497.096),
(22, 1, 'administrador@gmail.com', 600, 1056.329);

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
('adm@gmail.com', 1471676154634, '984898489', 34, 'Administrador', '$2a$10$b9TKQ8v.WyKSzwXmfP91ruoPdCNUc1NK9ZAOLsejMRJmgTE9qCRAK', '1982-08-28', 'ROLE_ADMIN', '$2a$10$b9TKQ8v.WyKSzwXmfP91ruoPdCNUc1NK9ZAOLsejMRJmgTE9qCRAK', 'RG', 0),
('administrador@gmail.com', 1471831475104, '13232', 36, 'Administrador', '$2a$10$p/xCTLY9vUtfIOfUcr80auWEOp49.voD5YPYtJEyRlBVyVl00X4Em', '1980-08-31', 'ROLE_ADMIN', '$2a$10$p/xCTLY9vUtfIOfUcr80auWEOp49.voD5YPYtJEyRlBVyVl00X4Em', 'CPF', 7887.342000000001),
('alex@gmail.com', 1471741511517, '34242', 52, 'Alex', '$2a$10$GxBtAAxwyEsWYLU2jHbHeeBoLKYIqvVvecCJ0gUerRSZVWDL8BXJa', '1964-08-26', 'ROLE_CLIENTE', '$2a$10$GxBtAAxwyEsWYLU2jHbHeeBoLKYIqvVvecCJ0gUerRSZVWDL8BXJa', 'RG', 0),
('andrea@gmail.com', 1471809548537, '4322', 38, 'Andrea', '$2a$10$SSDA.i9vIeOBYswlybhZ4.UtTIt/3tHfF.Qx38RJPDAQFUI6mGwP2', '1978-08-02', 'ROLE_CLIENTE', '$2a$10$SSDA.i9vIeOBYswlybhZ4.UtTIt/3tHfF.Qx38RJPDAQFUI6mGwP2', 'RG', 0),
('angelo@hotmail.com', 1471824656167, '2323', 38, 'angelo', '$2a$10$25N6LnG.FNW6p05TG8J9TO2Zr/GBrnT9Or.BNEu/UV97/SL9gFJr2', '1978-08-04', 'ROLE_CLIENTE', '$2a$10$25N6LnG.FNW6p05TG8J9TO2Zr/GBrnT9Or.BNEu/UV97/SL9gFJr2', 'RG', 10000),
('ee@jonhs.com', 1471670703373, 'asa', 30, 'sasasa', '123', '1986-08-03', 'ROLE_CLIENTE', '123', 'RG', 0),
('everonud@gmail.com', 1471671427655, 'sasa', 26, 'eeaea', '$2a$10$P6uOq4gbQB0NuK2YUEuDWuloFxNToQho.YcA.1aru.eO2RsOE3Fi.', '1990-08-25', 'ROLE_CLIENTE', '$2a$10$P6uOq4gbQB0NuK2YUEuDWuloFxNToQho.YcA.1aru.eO2RsOE3Fi.', 'CPF', 0),
('everton@gmail.com', 1471676687378, '33333', 32, 'Everton', '$2a$10$DjeIK/QhpW0zPCxd6hFlMe3bJ2ADZfjSDk5HvnjvHrcle4X7rN6OO', '1984-08-25', 'ROLE_ADMIN', '$2a$10$DjeIK/QhpW0zPCxd6hFlMe3bJ2ADZfjSDk5HvnjvHrcle4X7rN6OO', 'RG', 0),
('evertonid@ymail.clom', 1471673937719, '21212121', 32, 'everton', '$2a$10$R9owFEpbq8cLXt6RqI4dROJNbHVZ.VVi6.8wMNkbxIfKMRVotKGru', '1984-08-24', 'ROLE_CLIENTE', '$2a$10$R9owFEpbq8cLXt6RqI4dROJNbHVZ.VVi6.8wMNkbxIfKMRVotKGru', 'RG', 0),
('jucapires@gmail.com', 1471834946429, '232', 36, 'juca', '$2a$10$wQQVtPuyolec2twA4oGucOSc5vPtm/PHhMaSiNcJcDur.JXLr/jLO', '1980-08-24', 'ROLE_CLIENTE', '$2a$10$wQQVtPuyolec2twA4oGucOSc5vPtm/PHhMaSiNcJcDur.JXLr/jLO', 'RG', 10000),
('lilian@gmail.com', 1471823891695, 'eeewew', 39, 'lilian', '$2a$10$fMFR0vSj1Gg8FBrm7IY7e.ahQyiuR72r8gaDw9liGJGRryXK3tPzG', '1977-08-03', 'ROLE_CLIENTE', '$2a$10$fMFR0vSj1Gg8FBrm7IY7e.ahQyiuR72r8gaDw9liGJGRryXK3tPzG', 'RG', 10000),
('maicon@gmail.com', 1471833134503, '443', 26, 'maicon', '$2a$10$IBObNLnCBkTC54qfgWd2h.lqRwCp8HciR8yPywb1piFSi7y3f9UDm', '1990-10-10', 'ROLE_CLIENTE', '$2a$10$IBObNLnCBkTC54qfgWd2h.lqRwCp8HciR8yPywb1piFSi7y3f9UDm', 'RG', 9502.904),
('marilene@gmail.com', 1471824383124, '33333333', 32, 'marielen', '$2a$10$6A1E/9qfOGsz.U4JG9GPsefO4vc5BXMh5Tzh.dmN1kKprbehzsUeC', '1984-08-03', 'ROLE_CLIENTE', '$2a$10$6A1E/9qfOGsz.U4JG9GPsefO4vc5BXMh5Tzh.dmN1kKprbehzsUeC', 'CPF', 10000),
('mauricio@hotmail.com', 1471824834995, '32323', 31, 'mauricio', '$2a$10$WwqPTySM0/ypMkjsXxeuKeUbdiG088oZA14ifzMxMnV5CQRx650Mi', '1985-08-24', 'ROLE_CLIENTE', '$2a$10$WwqPTySM0/ypMkjsXxeuKeUbdiG088oZA14ifzMxMnV5CQRx650Mi', 'RG', 10000);

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
('everonud@gmail.com', 'ROLE_CLIENTE'),
('evertonid@ymail.clom', 'ROLE_CLIENTE'),
('evertonid@ymail.clom', 'ROLE_ADMIN'),
('everton@gmail.com', 'ROLE_ADMIN'),
('alex@gmail.com', 'ROLE_CLIENTE'),
('ee@jonhs.com', 'ROLE_CLIENTE'),
('lilian@gmail.com', 'ROLE_CLIENTE'),
('marilene@gmail.com', 'ROLE_CLIENTE'),
('andrea@gmail.com', 'ROLE_CLIENTE'),
('mauricio@hotmail.com', 'ROLE_CLIENTE'),
('angelo@hotmail.com', 'ROLE_CLIENTE'),
('administrador@gmail.com', 'ROLE_ADMIN'),
('maicon@gmail.com', 'ROLE_CLIENTE'),
('adm@gmail.com', 'ROLE_ADMIN'),
('jucapires@gmail.com', 'ROLE_CLIENTE');

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
(12, '100', 'Recife', '1700', '6', '14:00', 'Rio de Janeiro', 800, 0, '15/08/2016', NULL),
(13, '100', 'Recife', '500', '5', '19:00', 'Fortaleza', 300, 93, '15/10/2016', NULL),
(14, '100', 'Fortaleza', '500', '5', '17:00', 'Recife', 300, 0, '20/10/2016', NULL),
(15, '100', 'Fortaleza', '800', '9', '07:00', 'Rio de Janeiro', 600, 97, '25/08/2016', NULL),
(16, '100', 'Rio de Janeiro', '800', '7 ', '15:00', 'Fortaleza', 1000, 0, '11/09/2016', NULL),
(21, '100', 'Rio de Janeiro', '1700', '8 ', '21:00', 'Recife', 600, 98, '15/09/2016', NULL),
(22, '100', 'Recife', '1700', '8', '14:00', 'Rio de Janeiro', 800, 99, '15/08/2016', NULL),
(23, '100', 'Fortaleza', '100 km', '4', '00:00', 'Recife ', 100, 100, '17/08/2016', NULL),
(24, '100', 'Fortaleza', '200', '4', '00:00', 'Recife', 250, 96, '19/08/2016', NULL),
(25, '100', 'Rio de Janeiro', '500', '3', '05:00', 'Recife', 890, 100, '28/08/2016', NULL),
(26, '100', 'Rio de Janeiro', '900', '4', '04:05', 'Recife', 700, 99, '30/08/2016', NULL),
(27, '100', 'Recife', '800', '5', '19:00', 'Fortaleza', 800, 100, '21/08/2016', NULL),
(28, '444', 'Rio de Janeiro', '44', '44', '07:00', 'Recife', 444, 444, '26/08/2016', NULL),
(29, '444', 'Recife', '444', '44', '07:00', 'Recife', 55, 444, '26/08/2016', NULL),
(32, '100', 'Rio de Janeiro', '1700', '6', '07:00', 'Recife', 800, 100, '21/08/2016', NULL),
(33, '45', 'Rio de Janeiro', '345', '4', '07:00', 'Recife', 560, 45, '26/08/2016', NULL);

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `registro`
--
ALTER TABLE `registro`
  MODIFY `numero_registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `voos`
--
ALTER TABLE `voos`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK_besatukaomklekcnfr4w6ti9y` FOREIGN KEY (`User_login`) REFERENCES `user` (`login`),
  ADD CONSTRAINT `FK_kj5hi20v94v3qegbsqh36eqet` FOREIGN KEY (`roles_name`) REFERENCES `role` (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
