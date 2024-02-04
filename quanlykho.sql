-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 28, 2022 lúc 08:02 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlykho`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `active`) VALUES
(1, 'Màu sắc', 1),
(2, 'Size', 1),
(4, 'Chất liệu', 1),
(5, 'Hàng Loại', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `attribute_parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `value`, `attribute_parent_id`) VALUES
(5, 'Size M', 2),
(6, 'Size L', 2),
(7, 'M', 3),
(8, 'L', 3),
(9, 'Size XL', 2),
(10, 'Size XXL', 2),
(12, 'Size 2XL', 2),
(13, 'S', 3),
(14, 'Màu Xanh', 1),
(15, 'Màu đỏ', 1),
(16, 'Màu cam', 1),
(17, 'Màu trắng', 1),
(18, 'Màu đen', 1),
(19, 'Màu xám', 1),
(20, 'Màu ghi', 1),
(21, 'Size 3XL', 2),
(22, 'Size S', 2),
(23, 'Size 28', 2),
(24, 'Size 29', 2),
(25, 'Size 30', 2),
(26, 'Size 31', 2),
(27, 'Size 32', 2),
(28, 'Size 33', 2),
(29, 'Size 34', 2),
(30, 'Size 35', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `active`) VALUES
(4, 'NamIT', 1),
(5, 'Louis Vuitton', 1),
(6, 'CHANEL', 1),
(7, 'PRADA', 1),
(11, 'GUCCI', 1),
(12, 'VERSACE', 1),
(13, 'Nike', 1),
(14, 'Adidas', 1),
(15, 'EA Sports', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `active`) VALUES
(4, 'Quần nam', 1),
(5, 'Áo nam', 1),
(6, 'Phụ kiện thời trang nam', 1),
(7, 'Quần nữ', 1),
(8, 'Đầm-Váy nữ', 1),
(9, 'Áo nữ', 1),
(10, 'Đồ lót nam', 1),
(11, 'Đồ lót nữ', 1),
(12, 'Giày dép nam', 1),
(13, 'Giày dép nữ', 1),
(14, 'Túi sách nữ', 1),
(15, 'Túi sách nam', 1),
(16, 'Ví, bóp nữ', 1),
(17, 'Ví, bóp nam', 1),
(18, 'Đồng hồ nam', 1),
(19, 'Đồng hồ nữ', 1),
(20, 'Quần áo em bé', 1),
(21, 'Quần áo bà bầu', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'Quản Lý Kho NamIT', '0', '10', 'Hà Nội', '+84 888 888 888', 'Việt Nam', 'hello everyone one', 'VND');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Administrator', 'a:36:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createBrand\";i:9;s:11:\"updateBrand\";i:10;s:9:\"viewBrand\";i:11;s:11:\"deleteBrand\";i:12;s:14:\"createCategory\";i:13;s:14:\"updateCategory\";i:14;s:12:\"viewCategory\";i:15;s:14:\"deleteCategory\";i:16;s:11:\"createStore\";i:17;s:11:\"updateStore\";i:18;s:9:\"viewStore\";i:19;s:11:\"deleteStore\";i:20;s:15:\"createAttribute\";i:21;s:15:\"updateAttribute\";i:22;s:13:\"viewAttribute\";i:23;s:15:\"deleteAttribute\";i:24;s:13:\"createProduct\";i:25;s:13:\"updateProduct\";i:26;s:11:\"viewProduct\";i:27;s:13:\"deleteProduct\";i:28;s:11:\"createOrder\";i:29;s:11:\"updateOrder\";i:30;s:9:\"viewOrder\";i:31;s:11:\"deleteOrder\";i:32;s:11:\"viewReports\";i:33;s:13:\"updateCompany\";i:34;s:11:\"viewProfile\";i:35;s:13:\"updateSetting\";}'),
(4, 'Quản trị viên cấp cao', 'a:36:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createBrand\";i:9;s:11:\"updateBrand\";i:10;s:9:\"viewBrand\";i:11;s:11:\"deleteBrand\";i:12;s:14:\"createCategory\";i:13;s:14:\"updateCategory\";i:14;s:12:\"viewCategory\";i:15;s:14:\"deleteCategory\";i:16;s:11:\"createStore\";i:17;s:11:\"updateStore\";i:18;s:9:\"viewStore\";i:19;s:11:\"deleteStore\";i:20;s:15:\"createAttribute\";i:21;s:15:\"updateAttribute\";i:22;s:13:\"viewAttribute\";i:23;s:15:\"deleteAttribute\";i:24;s:13:\"createProduct\";i:25;s:13:\"updateProduct\";i:26;s:11:\"viewProduct\";i:27;s:13:\"deleteProduct\";i:28;s:11:\"createOrder\";i:29;s:11:\"updateOrder\";i:30;s:9:\"viewOrder\";i:31;s:11:\"deleteOrder\";i:32;s:11:\"viewReports\";i:33;s:13:\"updateCompany\";i:34;s:11:\"viewProfile\";i:35;s:13:\"updateSetting\";}'),
(5, 'Quản trị viên', 'a:12:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:9:\"viewGroup\";i:4;s:9:\"viewBrand\";i:5;s:12:\"viewCategory\";i:6;s:9:\"viewStore\";i:7;s:13:\"viewAttribute\";i:8;s:11:\"viewProduct\";i:9;s:9:\"viewOrder\";i:10;s:11:\"viewReports\";i:11;s:11:\"viewProfile\";}'),
(6, 'Người Dùng', 'a:10:{i:0;s:8:\"viewUser\";i:1;s:9:\"viewGroup\";i:2;s:9:\"viewBrand\";i:3;s:12:\"viewCategory\";i:4;s:9:\"viewStore\";i:5;s:13:\"viewAttribute\";i:6;s:11:\"viewProduct\";i:7;s:9:\"viewOrder\";i:8;s:11:\"viewReports\";i:9;s:11:\"viewProfile\";}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `customer_name`, `customer_address`, `customer_phone`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge`, `vat_charge_rate`, `vat_charge`, `net_amount`, `discount`, `paid_status`, `user_id`) VALUES
(3, 'BILPR-95C1', 'Trai thủ đô', 'Số 2A, Tổ 2', '0981929363', '1557766707', '600000.00', '0', '0', '10', '60000.00', '0.00', '738000', 1, 1),
(4, 'BILPR-74FF', 'Hằng', 'Định Hóa, Thái Nguyên', '0981929363', '1557767087', '900000.00', '0', '0', '10', '90000.00', '0.00', '1107000', 1, 1),
(10, 'BILPR-3EF9', 'Cún Iu', '', '0981929363', '1557798041', '300000.00', '0', '0', '10', '30000.00', '330000.00', '', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_item`
--

CREATE TABLE `orders_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders_item`
--

INSERT INTO `orders_item` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
(35, 4, 2, '3', '300000', '900000.00'),
(39, 10, 2, '1', '300000', '300000.00'),
(40, 3, 2, '2', '300000', '600000.00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `attribute_value_id` text DEFAULT NULL,
  `brand_id` text NOT NULL,
  `category_id` text NOT NULL,
  `store_id` int(11) NOT NULL,
  `availability` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `price`, `qty`, `image`, `description`, `attribute_value_id`, `brand_id`, `category_id`, `store_id`, `availability`) VALUES
(2, 'Áo thun NamIT', 'NH00001', '300000', '9', 'assets/images/product_image/5cd9a0c268568.jpg', '<p>\r\n\r\n</p><h4><b>Áo thun trắng</b></h4>Nếu kể đến các mẫu áo thun nam đẹp thì không thể không kể đến áo thun trắng đơn giản đảm bảo luôn được ưu ái dành cho vị trí ưu tiên trong tủ đồ vì sự tiện dụng và hiệu quả trong phối đồ. Bạn có thể phối áo thun trắng với quần ngố nam, quần jeans rách nếu thích phong cách bụi bặm. Và chắc chắn rằng, hội các nàng luôn thừa nhận bị cuốn hút bởi các chàng trai diện áo thun trắng.\r\n\r\n<br><p></p>', 'null', 'null', '[\"4\"]', 3, 1),
(3, 'Túi khóa kính thời trang cap cấp', 'NH00002', '350000', '99', 'assets/images/product_image/5ce3b50655e51.jpg', '<p>\r\n\r\nChất liệu da PU cao cấp-đường chỉ tỉ mỉ chắc chắn-thiết kế theo phong cách thơi trangn hiện đại-màu sắc:đen,đỏ,xám,hồng,rêu\r\n\r\n<br></p>', '[\"14\"]', '[\"4\"]', '[\"14\"]', 3, 1),
(4, 'Áo thun nữ in hình cà phê tim form rộng hàn quốc vải dày mịn AoK905 Thời Trang Everest', 'NH00003', '290000', '88', 'assets/images/product_image/5ce3b58009444.jpg', '<p>\r\n\r\n</p><p><strong>Áo thun nữ vàngin hình cà phê tim form rộng hàn quốc vải dày mịn AoK905 Thời Trang Everest</strong>: Chất liệu thun thấm hút tốt mang lại cảm giác thoải mái khi sử dụng. Thiết kế trẻ trung năng động với cổ tròn tay ngắn ôm nhẹ body, họa tiết đôi mắt được in trước ngực áo mang lại sự đáng yêu, lạ mắt cho sản phẩm</p><p>Đối với những cô gái năng động và trẻ trung,<strong>áo thun nữ thời trang</strong>sẽ là sự lựa chọn hàng đầu khi nàng bước ra phố, hay khi hẹn hò với người yêu. Áo thun luôn được yêu mến và chọn lựa dù đã ra đời từ nhiều thế kỉ qua, nhưng chưa có loại trang phục nào thay thế và làm nó biến mất khỏi ngành thời trang hiện đại. Chính vì vậy mà hôm nay everestsẽ giới thiệu đến các bạn một sản phẩm mới, vô cùng dễ thương và trẻ trung, biết đâu đấy bạn sẽ yêu ngay lần đầu tiênkhi nhìn thấy đấy, hãy cùng xem nhé.</p><ul><li><strong>Áo Thun phong cách</strong>có thiết kế cổ tròn, tay ngắn trẻ trung mang đến cho bạn phong cách năng động, hiện đại, phù hợp cho cả bạn nam và nữ</li><li>Áo có kiểu dáng form rộng cho bạn thoải mái</li><li>Hình in rõ nét với công nghệ ép nhiệt 3d màu mực vĩnh cửu</li><li>Sản phẩm được thiết kế với dáng trơn, đơn giản nhưng lại mang đến cho phái đẹp và phái mạnh sự sành điệu và cá tính rất riêng</li><li>Áo có nhiều màu sắc khác nhau như đen, vàng, hồng…để bạn lựa chọn theo sở thích, bạn cũng có thể chọn cặp màu giống nhau làm <strong>trang phục</strong>thật phong cách</li><li>Chất liệu thun êm ái, thoáng mát, mang lại cho bạn cảm giác thoải mái trong các hoạt động hằng ngày</li><li>Áo thun tiện dụng có thể phối với nhiều loại trang phục khác nhau như quần jean, quần short,… hoặc cũng có thể phối cùng với váy đối với phái đẹp</li><li>Kích thước: Size XS, S, M , L , XL , XXL</li></ul><h4><img alt=\"\" src=\"https://vn-live.slatic.net/v2/resize/products/S-20274-c3eebd660484b9af0884e4f63dcd30c9.jpg\"></h4><p><img alt=\"\" src=\"https://vn-live.slatic.net/v2/resize/products/S-20274-b413efaa213b4c4ab0fb4cdaacd5b548.jpg\"></p><p><img alt=\"\" src=\"https://vn-live.slatic.net/v2/resize/products/S-20274-a2e3f8ede537779536d9875a1e3a4673.jpg\"></p><p><img alt=\"Nguoi mau ao vang 03jpg\" src=\"https://vn-live.slatic.net/original/b79043a82f863dc1b8972c969a8dede2.jpg\"></p><p><strong>THOẢI MÁI PHỐI TRANG PHỤC VỚI ÁO THUN NỮ ĐẸP</strong></p><p>Một chiếc<strong>áo thun nữ đẹp</strong>chỉ được tôn vinh khi chúng kết hợp với những trang phục phù hợp.<strong>Áo thun nữ cổ tròn</strong>,<strong>áo thun nữ tay ngắn</strong>là kiểu phổ biến và cũng được ưa chuộng nhất. Bất cứ người phụ nữ ở độ tuổi nào cũng luôn sở hữu cho mình vài chiếc áo thun như vậy trong tủ đồ của mình. Vậy tại sao áo thun đơn giản mà lại nhận được sự ưu ái lớn đến vậy? Có lẽ một phân là vì kiểu đơn giản mà chúng có thể phối với nhiều loại quần áo khác nhau. Áo thun và quần jeans có lẽ là cặp đôi được yêu thích nhất. Mỗi khi đi chơi hay dạo phố, đây là set đồ được nhiều người nghĩ đến đầu tiên. Hay mặc chung áo thun với chân váy, đây là gợi ý được nhiều cô gái trẻ lựa chọn. Thêm một cách phối đang làm mưa làm gió trong thời gian gần đây chính là áo thun và quần short màu sắc.</p><p>&nbsp;</p><p><strong>ĐÔI NÉT VỀ SẢN PHẨM ÁO THUN NỮ</strong></p><p><strong>Áo thun nữ</strong>hay áo phông nữ mà chúng ta thường mặc hiện nay xuất phát điểm ban đầu đã không dành cho phụ nữ. Bắt nguồn từ chiếc áo lót dành cho đàn ông nhưng sau nhiều năm bị thời gian rèn dũa chúng lại trở thành một loại trang phục dân chủ dành cho cả nam và nữ. Tại sao lại nói đây là trang phục dân chủ, bởi vì đây là kiểu áo ai cũng có thể mua được, mặc lúc nào cũng được, và ai cũng có thể sản xuất để bán được. Lúc đầu chỉ có kiểu dáng đơn giản với cổ tròn, tay ngắn nên người ta thường gọi là T-shirt (áo chữ T). Nhưng ngày nay,<strong>áo thun nữ thời trang</strong>đã đa dạng hơn về kiểu dáng, màu sắc, và cả chất liệu. Không bó hẹp trong khuôn khổ là áo T-shirt, rất nhiều biến tấu đã được sáng tạo ra như cổ tim, cổ trụ, cổ V,…kết hợp tay dài, sát nách để đáp ứng nhu cầu làm đẹp của đa số phụ nữ.</p><p>&nbsp;</p><p><strong>THOẢI MÁI PHỐI TRANG PHỤC VỚI ÁO THUN NỮ ĐẸP</strong></p><p>Một chiếc<strong>áo thun nữ đẹp</strong>chỉ được tôn vinh khi chúng kết hợp với những trang phục phù hợp.<strong>Áo thun nữ cổ tròn</strong>,<strong>áo thun nữ tay ngắn</strong>là kiểu phổ biến và cũng được ưa chuộng nhất. Bất cứ người phụ nữ ở độ tuổi nào cũng luôn sở hữu cho mình vài chiếc áo thun như vậy trong tủ đồ của mình. Vậy tại sao áo thun đơn giản mà lại nhận được sự ưu ái lớn đến vậy? Có lẽ một phân là vì kiểu đơn giản mà chúng có thể phối với nhiều loại quần áo khác nhau. Áo thun và quần jeans có lẽ là cặp đôi được yêu thích nhất. Mỗi khi đi chơi hay dạo phố, đây là set đồ được nhiều người nghĩ đến đầu tiên. Hay mặc chung áo thun với chân váy, đây là gợi ý được nhiều cô gái trẻ lựa chọn. Thêm một cách phối đang làm mưa làm gió trong thời gian gần đây chính là áo thun và quần short màu sắc.</p>\r\n\r\n<br><p></p>', '[\"14\"]', '[\"4\"]', '[\"9\"]', 3, 1),
(5, 'Áo thun nữ phong cách HÀN QUỐC cá tính - hiện đại - phong cách', 'NH00004', '290000', '100', 'assets/images/product_image/5ce3b5d9700d9.jpg', '', 'null', 'null', 'null', 3, 1),
(6, 'QUẦN CARO NAM NỮ PHONG CÁCH HÀN QUỐC', 'NH00005', '199000', '99', 'assets/images/product_image/5ce3b5fdce4f2.jpg', '', 'null', 'null', '[\"7\"]', 3, 1),
(7, 'Giầy thể thao nâng đế hai màu gót ong', 'NH00006', '410000', '200', 'assets/images/product_image/5ce3b63c27fb6.jpg', '', 'null', 'null', '[\"13\"]', 3, 1),
(8, 'GIÀY MẮT MÈO MỚI', 'NH00007', '210000', '89', 'assets/images/product_image/5ce3b66236d38.jpg', '', 'null', 'null', '[\"13\"]', 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(3, 'Nam Sport', 1),
(4, 'Baby Shop', 1),
(5, 'Lady Shop', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`) VALUES
(1, 'namit', '$2a$10$hLfaGCWJYCtL1mJJfPyJ8e8FlA4BPNnIb8R/V9M85OLyZzsj9jxNC', 'namit@admin.com', 'NamIT', 'Pro', '+84 888 888 888', 1),
(2, 'test1', '$2a$10$hLfaGCWJYCtL1mJJfPyJ8e8FlA4BPNnIb8R/V9M85OLyZzsj9jxNC', 'test1@gmail.com', 'Hạnh', 'Nguyễn Văn', '0988777999', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 5);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders_item`
--
ALTER TABLE `orders_item`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `orders_item`
--
ALTER TABLE `orders_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
