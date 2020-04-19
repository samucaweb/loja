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

-- Copiando dados para a tabela loja_v.brands: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT IGNORE INTO `brands` (`id`, `name`) VALUES
	(1, 'LG'),
	(2, 'Samsung'),
	(3, 'AOC'),
	(4, 'Apple');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;

-- Copiando dados para a tabela loja_v.categories: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT IGNORE INTO `categories` (`id`, `sub`, `name`) VALUES
	(6, NULL, 'Monitor'),
	(14, NULL, 'Som'),
	(15, 14, 'Headphones'),
	(16, 14, 'Microfones'),
	(17, 15, 'Com Fio'),
	(18, 15, 'Sem Fio');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Copiando dados para a tabela loja_v.coupons: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;

-- Copiando dados para a tabela loja_v.options: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT IGNORE INTO `options` (`id`, `name`) VALUES
	(1, 'cor');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;

-- Copiando dados para a tabela loja_v.options_size: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `options_size` DISABLE KEYS */;
INSERT IGNORE INTO `options_size` (`id`, `id_product`, `size`, `stock_size`) VALUES
	(2, 28, 'M', 10),
	(3, 28, 'G', 15),
	(4, 29, 'P', 3);
/*!40000 ALTER TABLE `options_size` ENABLE KEYS */;

-- Copiando dados para a tabela loja_v.pages: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT IGNORE INTO `pages` (`id`, `title`, `body`) VALUES
	(3, 'Política de Privacidade', 'ola'),
	(4, 'Termos de Uso', '<p>temos todo os termos escrito aque</p>'),
	(5, 'Política de Devolução', '..');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;

-- Copiando dados para a tabela loja_v.products: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT IGNORE INTO `products` (`id`, `id_category`, `id_brand`, `name`, `description`, `stock`, `price`, `price_from`, `rating`, `featured`, `sale`, `bestseller`, `new_product`, `options`, `weight`, `width`, `height`, `length`, `diameter`) VALUES
	(28, NULL, NULL, 'toalha de banho', '<p>uma toalha muito top</p>', 10, 39, 79, 3, 1, 0, 0, 1, '1', 0.9, 20, 15, 20, 15),
	(29, NULL, NULL, 'biquine moda praia', '<p>este produtor e muito bom&nbsp;</p>', 10, 49, 89, 5, 0, 1, 1, 1, '1,2', 0.9, 20, 15, 20, 15);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Copiando dados para a tabela loja_v.products_images: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `products_images` DISABLE KEYS */;
INSERT IGNORE INTO `products_images` (`id`, `id_product`, `url`) VALUES
	(14, 28, '55a5e8c22719ca986fcdbb8f68571135.jpg'),
	(15, 28, '156656614a305d554e6b4517113d5769.jpg'),
	(16, 28, 'dc8447a7cc3984e1f4a3e7252edfa73c.jpg'),
	(18, 29, 'abdd669cae98eb647c5e3959a9ce515c.jpg'),
	(19, 29, 'af2b1b83df8c1e2d09ad3851460821d0.jpg');
/*!40000 ALTER TABLE `products_images` ENABLE KEYS */;

-- Copiando dados para a tabela loja_v.products_options: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `products_options` DISABLE KEYS */;
INSERT IGNORE INTO `products_options` (`id`, `id_product`, `id_option`, `p_value`) VALUES
	(22, 28, 1, 'rosa'),
	(23, 28, 1, 'preto');
/*!40000 ALTER TABLE `products_options` ENABLE KEYS */;

-- Copiando dados para a tabela loja_v.purchases: ~55 rows (aproximadamente)
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT IGNORE INTO `purchases` (`id`, `id_user`, `id_coupon`, `total_amount`, `payment_type`, `payment_status`) VALUES
	(1, 2, NULL, 421.44, 'psckttransparente', 1),
	(2, 2, NULL, 421.44, 'psckttransparente', 1),
	(3, 2, NULL, 421.44, 'psckttransparente', 1),
	(4, 2, NULL, 421.44, 'psckttransparente', 1),
	(5, 2, NULL, 421.44, 'psckttransparente', 1),
	(6, 2, NULL, 421.44, 'psckttransparente', 1),
	(7, 2, NULL, 421.44, 'psckttransparente', 1),
	(8, 2, NULL, 421.44, 'psckttransparente', 1),
	(9, 2, NULL, 421.44, 'psckttransparente', 1),
	(10, 2, NULL, 421.44, 'psckttransparente', 1),
	(11, 2, NULL, 421.44, 'psckttransparente', 1),
	(12, 2, NULL, 421.44, 'psckttransparente', 1),
	(13, 2, NULL, 421.44, 'psckttransparente', 1),
	(14, 2, NULL, 421.44, 'psckttransparente', 1),
	(15, 2, NULL, 421.44, 'psckttransparente', 1),
	(16, 2, NULL, 421.44, 'psckttransparente', 1),
	(17, 2, NULL, 421.44, 'psckttransparente', 1),
	(18, 2, NULL, 421.44, 'psckttransparente', 1),
	(19, 2, NULL, 421.44, 'psckttransparente', 1),
	(20, 2, NULL, 421.44, 'psckttransparente', 1),
	(21, 2, NULL, 421.44, 'psckttransparente', 1),
	(22, 2, NULL, 421.44, 'psckttransparente', 1),
	(23, 2, NULL, 421.44, 'psckttransparente', 1),
	(24, 2, NULL, 421.44, 'psckttransparente', 1),
	(25, 2, NULL, 421.44, 'psckttransparente', 1),
	(26, 2, NULL, 421.44, 'psckttransparente', 1),
	(27, 2, NULL, 421.44, 'psckttransparente', 1),
	(28, 2, NULL, 421.44, 'psckttransparente', 1),
	(29, 2, NULL, 421.44, 'psckttransparente', 1),
	(30, 2, NULL, 421.44, 'psckttransparente', 1),
	(31, 2, NULL, 421.44, 'psckttransparente', 1),
	(32, 2, NULL, 421.44, 'psckttransparente', 1),
	(33, 2, NULL, 421.44, 'psckttransparente', 1),
	(34, 2, NULL, 421.44, 'psckttransparente', 1),
	(35, 2, NULL, 421.44, 'psckttransparente', 1),
	(36, 2, NULL, 421.44, 'psckttransparente', 1),
	(37, 2, NULL, 421.44, 'psckttransparente', 1),
	(38, 2, NULL, 421.44, 'psckttransparente', 1),
	(39, 2, NULL, 421.44, 'psckttransparente', 1),
	(40, 2, NULL, 421.44, 'psckttransparente', 1),
	(41, 2, NULL, 421.44, 'psckttransparente', 1),
	(42, 2, NULL, 421.44, 'psckttransparente', 1),
	(43, 2, NULL, 421.44, 'psckttransparente', 1),
	(44, 2, NULL, 421.44, 'psckttransparente', 1),
	(45, 2, NULL, 421.44, 'psckttransparente', 1),
	(46, 2, NULL, 421.44, 'psckttransparente', 1),
	(47, 2, NULL, 421.44, 'psckttransparente', 1),
	(48, 2, NULL, 421.44, 'psckttransparente', 1),
	(49, 3, NULL, 3825.05, 'mp', 1),
	(50, 3, NULL, 445.05, 'mp', 1),
	(51, 3, NULL, 3825.05, 'mp', 1),
	(52, 3, NULL, 3825.05, 'mp', 1),
	(53, 3, NULL, 3825.05, 'mp', 1),
	(54, 3, NULL, 3825.05, 'mp', 1),
	(55, 3, NULL, 3825.05, 'mp', 1),
	(56, 3, NULL, 1244.05, 'mp', 1),
	(57, 3, NULL, 531.07, 'mp', 1),
	(58, 3, NULL, 633.07, 'mp', 1),
	(59, 3, NULL, 633.07, 'mp', 1),
	(60, 3, NULL, 2278.51, 'mp', 1),
	(61, 3, NULL, 2278.51, 'mp', 1),
	(62, 3, NULL, 2278.51, 'mp', 1),
	(63, 3, NULL, 852.55, 'mp', 1),
	(64, 3, NULL, 852.55, 'mp', 1),
	(65, 3, NULL, 852.55, 'mp', 1),
	(66, 3, NULL, 499, 'mp', 1),
	(67, 3, NULL, 1158.55, 'mp', 1),
	(68, 3, NULL, 0, 'mp', 1),
	(69, 3, NULL, 633.07, 'mp', 1),
	(70, 3, NULL, 327.07, 'mp', 1),
	(71, 9, NULL, 72.07, 'mp', 1),
	(72, 3, NULL, 72.07, 'mp', 1);
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;

-- Copiando dados para a tabela loja_v.purchases_products: ~67 rows (aproximadamente)
/*!40000 ALTER TABLE `purchases_products` DISABLE KEYS */;
INSERT IGNORE INTO `purchases_products` (`id`, `id_purchase`, `id_product`, `quantity`, `product_price`) VALUES
	(1, 1, 2, 1, 399),
	(2, 2, 2, 1, 399),
	(3, 3, 2, 1, 399),
	(4, 4, 2, 1, 399),
	(5, 5, 2, 1, 399),
	(6, 6, 2, 1, 399),
	(7, 7, 2, 1, 399),
	(8, 8, 2, 1, 399),
	(9, 9, 2, 1, 399),
	(10, 10, 2, 1, 399),
	(11, 11, 2, 1, 399),
	(12, 12, 2, 1, 399),
	(13, 13, 2, 1, 399),
	(14, 14, 2, 1, 399),
	(15, 15, 2, 1, 399),
	(16, 16, 2, 1, 399),
	(17, 17, 2, 1, 399),
	(18, 18, 2, 1, 399),
	(19, 19, 2, 1, 399),
	(20, 20, 2, 1, 399),
	(21, 21, 2, 1, 399),
	(22, 22, 2, 1, 399),
	(23, 23, 2, 1, 399),
	(24, 24, 2, 1, 399),
	(25, 25, 2, 1, 399),
	(26, 26, 2, 1, 399),
	(27, 27, 2, 1, 399),
	(28, 28, 2, 1, 399),
	(29, 29, 2, 1, 399),
	(30, 30, 2, 1, 399),
	(31, 31, 2, 1, 399),
	(32, 32, 2, 1, 399),
	(33, 33, 2, 1, 399),
	(34, 34, 2, 1, 399),
	(35, 35, 2, 1, 399),
	(36, 36, 2, 1, 399),
	(37, 37, 2, 1, 399),
	(38, 38, 2, 1, 399),
	(39, 39, 2, 1, 399),
	(40, 40, 2, 1, 399),
	(41, 41, 2, 1, 399),
	(42, 42, 2, 1, 399),
	(43, 43, 2, 1, 399),
	(44, 44, 2, 1, 399),
	(45, 45, 2, 1, 399),
	(46, 46, 2, 1, 399),
	(47, 47, 2, 1, 399),
	(48, 48, 2, 1, 399),
	(49, 49, 4, 1, 3779),
	(50, 50, 2, 1, 399),
	(51, 51, 4, 1, 3779),
	(52, 52, 4, 1, 3779),
	(53, 53, 4, 1, 3779),
	(54, 54, 4, 1, 3779),
	(55, 55, 4, 1, 3779),
	(56, 56, 3, 2, 599),
	(57, 57, 1, 1, 499),
	(58, 58, 3, 1, 599),
	(59, 59, 3, 1, 599),
	(60, 60, 2, 1, 399),
	(61, 60, 3, 3, 599),
	(62, 61, 2, 1, 399),
	(63, 61, 3, 3, 599),
	(64, 62, 2, 1, 399),
	(65, 62, 3, 3, 599),
	(66, 63, 1, 1, 499),
	(67, 63, 5, 1, 299),
	(68, 64, 1, 1, 499),
	(69, 64, 5, 1, 299),
	(70, 65, 1, 1, 499),
	(71, 65, 5, 1, 299),
	(72, 66, 1, 1, 499),
	(73, 67, 1, 1, 499),
	(74, 67, 3, 1, 599),
	(75, 69, 3, 1, 599),
	(76, 70, 5, 1, 299),
	(77, 71, 29, 1, 49),
	(78, 72, 29, 1, 49);
/*!40000 ALTER TABLE `purchases_products` ENABLE KEYS */;

-- Copiando dados para a tabela loja_v.purchase_transactions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `purchase_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_transactions` ENABLE KEYS */;

-- Copiando dados para a tabela loja_v.rates: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `rates` DISABLE KEYS */;
INSERT IGNORE INTO `rates` (`id`, `id_product`, `id_user`, `date_rated`, `title`, `points`, `comment`) VALUES
	(4, 28, 3, '2020-04-12 18:16:33', 'top', 2, 'mas ou menos'),
	(5, 28, 7, '2020-04-14 17:56:08', 'otimo', 2, 'ótimo produtor'),
	(10, 29, 3, '2020-04-16 07:47:11', 'gostei bastante', 5, 'top muito bom'),
	(11, 29, 3, '2020-04-16 07:48:02', 'muito ruim', 1, 'nao vale a pena '),
	(15, 28, 9, '2020-04-16 08:47:06', 'wewewe', 1, 'ewewewewew'),
	(16, 28, 3, '2020-04-16 09:25:24', 'vuvuvf', 1, 'bibiyvbyuivbyiu'),
	(17, 28, 10, '2020-04-16 10:07:24', 'muito bom', 3, 'ótimo super recomendo ');
/*!40000 ALTER TABLE `rates` ENABLE KEYS */;

-- Copiando dados para a tabela loja_v.users: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT IGNORE INTO `users` (`id`, `name`, `email`, `password`, `token`, `admin`) VALUES
	(3, 'samuca', 'samuca@gmail.com', '202cb962ac59075b964b07152d234b70', 'b849135e7dedf1495ad76da821f7b75c', 1),
	(4, 'luara', 'luara@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, 0),
	(7, 'uana', 'uana@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, 0),
	(8, 'lucas', 'lucas@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, 0),
	(9, 'samuel guimarães da silva', 'pedro@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, 0),
	(10, 'felipe', 'felipe@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, 0),
	(11, 'beto', 'beto@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, 0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
