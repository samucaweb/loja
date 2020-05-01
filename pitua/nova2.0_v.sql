-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.8-MariaDB - Source distribution
-- OS do Servidor:               Linux
-- HeidiSQL Versão:              10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura para tabela loja_v.brands
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela loja_v.brands: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` (`id`, `name`) VALUES
	(1, 'LG'),
	(2, 'Samsung'),
	(3, 'AOC'),
	(4, 'Apple');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;

-- Copiando estrutura para tabela loja_v.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sub` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela loja_v.categories: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `sub`, `name`) VALUES
	(6, NULL, 'Monitor'),
	(14, NULL, 'Som'),
	(15, 14, 'Headphones'),
	(16, 14, 'Microfones'),
	(17, 15, 'Com Fio'),
	(18, 15, 'Sem Fio');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Copiando estrutura para tabela loja_v.coupons
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `coupon_type` int(11) NOT NULL,
  `coupon_value` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela loja_v.coupons: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;

-- Copiando estrutura para tabela loja_v.favoritos
CREATE TABLE IF NOT EXISTS `favoritos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL DEFAULT 0,
  `id_product` int(11) NOT NULL DEFAULT 0,
  `url` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela loja_v.favoritos: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `favoritos` DISABLE KEYS */;
INSERT INTO `favoritos` (`id`, `id_user`, `id_product`, `url`) VALUES
	(81, 3, 32, 'd807c1726665f7c82957ac9ea1f6b070.jpg'),
	(82, 3, 29, 'abdd669cae98eb647c5e3959a9ce515c.jpg'),
	(83, 3, 28, '55a5e8c22719ca986fcdbb8f68571135.jpg');
/*!40000 ALTER TABLE `favoritos` ENABLE KEYS */;

-- Copiando estrutura para tabela loja_v.options
CREATE TABLE IF NOT EXISTS `options` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela loja_v.options: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` (`id`, `name`) VALUES
	(1, 'cor'),
	(2, 'tamanho');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;

-- Copiando estrutura para tabela loja_v.options_size
CREATE TABLE IF NOT EXISTS `options_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) DEFAULT NULL,
  `size` varchar(50) NOT NULL DEFAULT '0',
  `stock_size` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela loja_v.options_size: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `options_size` DISABLE KEYS */;
INSERT INTO `options_size` (`id`, `id_product`, `size`, `stock_size`) VALUES
	(2, 28, 'M', 10),
	(3, 28, 'G', 15),
	(4, 29, 'P', 3);
/*!40000 ALTER TABLE `options_size` ENABLE KEYS */;

-- Copiando estrutura para tabela loja_v.pages
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela loja_v.pages: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `title`, `body`) VALUES
	(3, 'Política de Privacidade', 'ola'),
	(4, 'Termos de Uso', '<p>temos todo os termos escrito aque</p>'),
	(5, 'Política de Devolução', '..');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;

-- Copiando estrutura para tabela loja_v.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_category` int(11) DEFAULT NULL,
  `id_brand` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `price` float NOT NULL,
  `price_from` float NOT NULL,
  `rating` float DEFAULT NULL,
  `featured` tinyint(1) NOT NULL,
  `sale` tinyint(1) NOT NULL,
  `bestseller` tinyint(1) NOT NULL,
  `new_product` tinyint(1) NOT NULL,
  `options` varchar(200) DEFAULT NULL,
  `weight` float NOT NULL,
  `width` float NOT NULL,
  `height` float NOT NULL,
  `length` float NOT NULL,
  `diameter` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela loja_v.products: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `id_category`, `id_brand`, `name`, `description`, `stock`, `price`, `price_from`, `rating`, `featured`, `sale`, `bestseller`, `new_product`, `options`, `weight`, `width`, `height`, `length`, `diameter`) VALUES
	(28, NULL, NULL, 'toalha de banho', '<p>uma toalha muito top</p>\r\n<p>&nbsp;</p>\r\n<p>produtos favoritados por voc&ecirc;</p>\r\n<p>&nbsp;</p>', 10, 39, 79, 0, 1, 0, 0, 0, '1,2', 0.9, 20, 15, 20, 15),
	(29, NULL, NULL, 'biquine moda praia', '<p>este produtor e muito bom&nbsp;</p>', 10, 49, 89, 5, 0, 1, 0, 0, '1,2', 0.9, 20, 15, 20, 15),
	(31, NULL, NULL, 'parte de baixo do biquine ', '<p><strong style="margin: 0px; padding: 0px; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">&nbsp;&eacute; simplesmente uma simula&ccedil;&atilde;o de texto da ind&uacute;stria tipogr&aacute;fica e de impressos, e vem sendo utilizado desde o s&eacute;culo XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu n&atilde;o s&oacute; a cinco s&eacute;culos, como tamb&eacute;m ao salto para a editora&ccedil;&atilde;o eletr&ocirc;nica, permanecendo essencialmente inalterado. Se popularizou na d&eacute;cada de 60, quando a Letraset lan&ccedil;ou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editora&ccedil;&atilde;o eletr&ocirc;nica como Aldus PageMaker.</span></p>', 11, 39, 0, NULL, 0, 0, 0, 0, '1,2', 0.3, 1, 2, 3, 6),
	(32, NULL, NULL, 'Maiô M', '<p><strong style="margin: 0px; padding: 0px; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">Lorem Ipsum</strong><span style="font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">&nbsp;&eacute; simplesmente uma simula&ccedil;&atilde;o de texto da ind&uacute;stria tipogr&aacute;fica e de impressos, e vem sendo utilizado desde o s&eacute;culo XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu n&atilde;o s&oacute; a cinco s&eacute;culos, como tamb&eacute;m ao salto para a editora&ccedil;&atilde;o eletr&ocirc;nica, permanecendo essencialmente inalterado. Se popularizou na d&eacute;cada de 60, quando a Letraset lan&ccedil;ou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editora&ccedil;&atilde;o eletr&ocirc;nica como Aldus PageMaker.</span></p>', 20, 150, 0, NULL, 0, 0, 0, 0, '1,2', 0.9, 10, 13, 17, 13),
	(33, NULL, NULL, 'short', '<p>muito bom e confortavel com um tecido otimo</p>', 10, 59.9, 100, NULL, 1, 1, 1, 1, '1,2', 0.5, 12, 11, 14, 11);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Copiando estrutura para tabela loja_v.products_images
CREATE TABLE IF NOT EXISTS `products_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `url` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela loja_v.products_images: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `products_images` DISABLE KEYS */;
INSERT INTO `products_images` (`id`, `id_product`, `url`) VALUES
	(14, 28, '55a5e8c22719ca986fcdbb8f68571135.jpg'),
	(16, 28, 'dc8447a7cc3984e1f4a3e7252edfa73c.jpg'),
	(18, 29, 'abdd669cae98eb647c5e3959a9ce515c.jpg'),
	(19, 29, 'af2b1b83df8c1e2d09ad3851460821d0.jpg'),
	(20, 31, 'cba265f193834387d61be2325d5770e0.jpg'),
	(21, 32, 'd807c1726665f7c82957ac9ea1f6b070.jpg'),
	(22, 33, '8a48ed9488daa62d7309ed123217bfa7.jpg'),
	(23, 33, '80abad2877ed9e6e7898ad84eb026ae0.jpg'),
	(24, 33, '01ff419216f1536325f8fa4ab407682c.jpg');
/*!40000 ALTER TABLE `products_images` ENABLE KEYS */;

-- Copiando estrutura para tabela loja_v.products_options
CREATE TABLE IF NOT EXISTS `products_options` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `id_option` int(11) unsigned NOT NULL,
  `p_value` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela loja_v.products_options: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `products_options` DISABLE KEYS */;
INSERT INTO `products_options` (`id`, `id_product`, `id_option`, `p_value`) VALUES
	(40, 29, 2, 'G'),
	(41, 29, 1, 'rosa'),
	(47, 31, 1, 'rosa'),
	(48, 31, 2, 'P'),
	(49, 28, 1, 'preto'),
	(50, 28, 2, 'G'),
	(51, 32, 1, 'Amarelo'),
	(52, 32, 2, 'M'),
	(53, 33, 1, 'verde'),
	(54, 33, 2, 'G');
/*!40000 ALTER TABLE `products_options` ENABLE KEYS */;

-- Copiando estrutura para tabela loja_v.purchases
CREATE TABLE IF NOT EXISTS `purchases` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_coupon` int(11) DEFAULT NULL,
  `total_amount` float NOT NULL,
  `payment_type` varchar(100) DEFAULT NULL,
  `payment_status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela loja_v.purchases: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` (`id`, `id_user`, `id_coupon`, `total_amount`, `payment_type`, `payment_status`) VALUES
	(73, 3, NULL, 328.09, 'mp', 1),
	(74, 12, NULL, 61.87, 'psckttransparente', 1),
	(75, 13, NULL, 61.87, 'psckttransparente', 1),
	(76, 13, NULL, 328.09, 'psckttransparente', 1),
	(77, 13, NULL, 72.07, 'psckttransparente', 1),
	(78, 13, NULL, 72.07, 'psckttransparente', 1);
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;

-- Copiando estrutura para tabela loja_v.purchases_products
CREATE TABLE IF NOT EXISTS `purchases_products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_purchase` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela loja_v.purchases_products: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `purchases_products` DISABLE KEYS */;
INSERT INTO `purchases_products` (`id`, `id_purchase`, `id_product`, `quantity`, `product_price`) VALUES
	(79, 73, 32, 2, 150),
	(80, 74, 28, 1, 39),
	(81, 75, 28, 1, 39),
	(82, 76, 32, 2, 150),
	(83, 77, 29, 1, 49),
	(84, 78, 29, 1, 49);
/*!40000 ALTER TABLE `purchases_products` ENABLE KEYS */;

-- Copiando estrutura para tabela loja_v.purchase_transactions
CREATE TABLE IF NOT EXISTS `purchase_transactions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_purchase` int(11) NOT NULL,
  `amount` float NOT NULL,
  `transaction_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela loja_v.purchase_transactions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `purchase_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_transactions` ENABLE KEYS */;

-- Copiando estrutura para tabela loja_v.rates
CREATE TABLE IF NOT EXISTS `rates` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date_rated` datetime NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `points` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela loja_v.rates: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `rates` DISABLE KEYS */;
INSERT INTO `rates` (`id`, `id_product`, `id_user`, `date_rated`, `title`, `points`, `comment`) VALUES
	(10, 29, 3, '2020-04-16 07:47:11', 'gostei bastante', 5, 'top muito bom'),
	(11, 29, 3, '2020-04-16 07:48:02', 'muito ruim', 1, 'nao vale a pena '),
	(18, 31, 3, '2020-04-25 14:59:25', 'gostei ', 3, 'gostei bastante deste produtor'),
	(19, 31, 3, '2020-04-25 15:00:27', 'gostei ', 3, 'gostei bastante deste produtor'),
	(20, 29, 3, '2020-04-25 15:01:39', 'sswsd', 1, 'wddwd'),
	(21, 31, 3, '2020-04-25 15:02:57', 'ww2', 5, '22e2e2e');
/*!40000 ALTER TABLE `rates` ENABLE KEYS */;

-- Copiando estrutura para tabela loja_v.sobre
CREATE TABLE IF NOT EXISTS `sobre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '0',
  `body` text NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela loja_v.sobre: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `sobre` DISABLE KEYS */;
INSERT INTO `sobre` (`id`, `title`, `body`) VALUES
	(1, 'De onde ele vem?', '<p>&nbsp;</p>\r\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="../../../pitua/media/pages/22fce5ed6231a643565c2d65079db258.jpg" alt="" width="324" height="117" /></p>\r\n<p>&nbsp;</p>\r\n<p>Ao contr&aacute;rio do que se acredita, Lorem Ipsum n&atilde;o &eacute; simplesmente um texto rand&ocirc;mico. Com mais de 2000 anos, suas ra&iacute;zes podem ser encontradas em uma obra de literatura latina cl&aacute;ssica datada de 45 AC. Richard McClintock, um professor de latim do Hampden-Sydney College na Virginia, pesquisou uma das mais obscuras palavras em latim, consectetur, oriunda de uma passagem de Lorem Ipsum, e, procurando por entre cita&ccedil;&otilde;es da palavra na literatura cl&aacute;ssica, descobriu a sua indubit&aacute;vel origem. Lorem Ipsum vem das se&ccedil;&otilde;es 1.10.32 e 1.10.33 do "de Finibus Bonorum et Malorum" (Os Extremos do Bem e do Mal), de C&iacute;cero, escrito em 45 AC. Este livro &eacute; um tratado de teoria da &eacute;tica muito popular na &eacute;poca da Renascen&ccedil;a. A primeira linha de Lorem Ipsum, "Lorem Ipsum dolor sit amet..." vem de uma linha na se&ccedil;&atilde;o 1.10.32.</p>'),
	(2, 'Porque nós o usamos?', '<p>&nbsp;</p>\r\n<p><span style="font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&Eacute; um fato conhecido de todos que um leitor se distrair&aacute; com o conte&uacute;do de texto leg&iacute;vel de uma p&aacute;gina quando estiver examinando sua diagrama&ccedil;&atilde;o. A vantagem de usar Lorem Ipsum &eacute; que ele tem uma distribui&ccedil;&atilde;o normal de letras, ao contr&aacute;rio de "Conte&uacute;do aqui.</span></p>\r\n<p><span style="font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">conte&uacute;do aqui", fazendo com que ele tenha uma apar&ecirc;ncia similar a de um texto leg&iacute;vel. Muitos softwares de publica&ccedil;&atilde;o e editores de p&aacute;ginas na internet agora usam Lorem Ipsum como texto-modelo padr&atilde;o, e uma r&aacute;pida busca por \'lorem ipsum\' mostra v&aacute;rios websites.</span></p>\r\n<p><span style="font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;"> ainda em sua fase de constru&ccedil;&atilde;o. V&aacute;rias vers&otilde;es novas surgiram ao longo dos anos, eventualmente por acidente, e &agrave;s vezes de prop&oacute;sito (injetando humor, e coisas do g&ecirc;nero).</span></p>\r\n<p>&nbsp;</p>');
/*!40000 ALTER TABLE `sobre` ENABLE KEYS */;

-- Copiando estrutura para tabela loja_v.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `token` varchar(32) DEFAULT NULL,
  `admin` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela loja_v.users: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `token`, `admin`) VALUES
	(3, 'samuca', 'samuca@gmail.com', '202cb962ac59075b964b07152d234b70', '7135c7b65c4ca20ba4e9fb9abe887448', 1),
	(4, 'luara', 'luara@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, 0),
	(7, 'uana', 'uana@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, 0),
	(10, 'felipe', 'felipe@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, 0),
	(11, 'beto', 'beto@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, 0),
	(13, 'samuel guimarães da silva', 'c45923891683986662433@sandbox.pagseguro.com.br', 'b334b4b75570a7f9c5baa77b3d8df228', NULL, 0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
