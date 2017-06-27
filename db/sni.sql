-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2017 at 12:47 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sni`
--

-- --------------------------------------------------------

--
-- Table structure for table `loai_tt`
--

CREATE TABLE `loai_tt` (
  `id_trangthai_tt` int(11) NOT NULL,
  `ten_tt` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1498529212),
('m130524_201442_init', 1498529213);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `text` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `id_tt` int(11) NOT NULL,
  `tieude_tt` varchar(150) NOT NULL,
  `noidung_tt` longtext NOT NULL,
  `id_trangthai_tt` int(11) NOT NULL,
  `video_tt` varchar(200) NOT NULL,
  `hinhanh_tt` varchar(200) NOT NULL,
  `time_up` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`id_tt`, `tieude_tt`, `noidung_tt`, `id_trangthai_tt`, `video_tt`, `hinhanh_tt`, `time_up`) VALUES
(2, 'Đồ Chơi Bác Sĩ Cho Bé - Bé Tập Làm Bác Sĩ Khám Bệnh Cho Người Nhện AnAn ToysReview TV', '<p>gdsfg</p>\r\n', 1, '', 'uploads/1498559854a1.png', '2017-06-27 14:31:06'),
(3, 'Nhân chứng bí ẩn\' trả lời vụ Phương Nga từ phòng cách ly', '<p><em><strong>Lần đầu ti&ecirc;n c&oacute; mặt tại t&ograve;a, song b&agrave; Nguyễn Mai Phương - bị Nga tố d&agrave;n dựng kịch bản đưa c&ocirc; v&agrave;o t&ugrave; - kh&ocirc;ng lộ diện, trả lời HĐXX từ ph&ograve;ng c&aacute;ch ly.</strong></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>14h50</strong><img alt=\"icon\" src=\"https://s.vnecdn.net/vnexpress/i/v44/graphics/img_blank.gif\" /></p>\r\n\r\n	<p>Trả lời thẩm vấn của luật sư bảo vệ Phương Nga, nh&acirc;n chứng Mai Phương n&oacute;i từng li&ecirc;n lạc qua điện thoại v&agrave; viber, hỏi thăm mẹ của hoa hậu. &quot;T&ocirc;i c&oacute; gửi h&igrave;nh ảnh bức&nbsp;thư bằng nylon,&nbsp;đơn tường tr&igrave;nh của Lữ Minh Nghĩa&nbsp;cho b&agrave; ấy&quot;, Mai Phương n&oacute;i.&nbsp;</p>\r\n\r\n	<p>Kh&aacute;n ph&ograve;ng lập tức rộ l&ecirc;n tiếng b&agrave;n t&aacute;n. Luật sư&nbsp;đề nghị gặp trực tiếp Mai Phương để x&aacute;c minh c&aacute;c t&agrave;i liệu n&agrave;y nhưng HĐXX đề nghị &ocirc;ng &quot;tiếp tục x&eacute;t hỏi&quot;.</p>\r\n\r\n	<p>&quot;T&ocirc;i bị cơ quan điều tra gọi l&ecirc;n nhiều lần, hỏi về số tiền 16,5 tỷ đồng Nga để ở đ&acirc;u. Bị mời cả ng&agrave;y lẫn đ&ecirc;m n&ecirc;n rất bức x&uacute;c, buộc phải khai ra nội dung vụ việc những g&igrave; t&ocirc;i biết&quot;, b&agrave; Mai Phương n&oacute;i bằng giọng kh&aacute; bức x&uacute;c.</p>\r\n\r\n	<p>&quot;Một số lời khai của chị ở cơ quan điều tra c&oacute; ai &eacute;p cung buộc chị phải khai b&aacute;o kh&ocirc;ng&quot;, luật sư hỏi. B&agrave; Mai Phương n&oacute;i &quot;kh&ocirc;ng ai &eacute;p buộc t&ocirc;i&quot;.</p>\r\n\r\n	<p>Ngay sau đ&oacute; luật sư của Nga c&ocirc;ng bố lời khai của nh&acirc;n chứng n&agrave;y, c&oacute; nội dung bị cơ quan điều tra &eacute;p khai về việc biết số tiền 16,5 tỷ đồng.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>14h40</strong><img alt=\"icon\" src=\"https://s.vnecdn.net/vnexpress/i/v44/graphics/img_blank.gif\" /></p>\r\n\r\n	<p>T&ograve;a chuyển qua hỏi Lữ Minh Nghĩa về nguồn gốc những bức thư nhận được. Anh n&agrave;y một lần nữa khẳng định chữ viết tr&ecirc;n thư l&agrave; của Dung v&agrave; nhận từ điều tra vi&ecirc;n t&ecirc;n Nghĩa - do b&agrave; Mai Phương giới thiệu. &quot;Ngay sau khi t&ocirc;i đọc xong thư, chị Mai Phương c&oacute; &yacute; muốn giữ những bức thư đ&oacute; để nghi&ecirc;n cứu. C&oacute; lần hai chị em đọc thư tại qu&aacute;n c&agrave; ph&ecirc; tr&ecirc;n đường Nguyễn Tr&atilde;i, lần kh&aacute;c tại qu&aacute;n hủ tiếu cũng ở đường n&agrave;y&quot;, Nghĩa khai.</p>\r\n\r\n	<p>&quot;T&ocirc;i chưa bao giờ gặp Nghĩa qu&aacute; một ph&uacute;t v&agrave; chỉ ở ngo&agrave;i đường&quot;, b&agrave; Mai Phương phản b&aacute;c từ ph&ograve;ng c&aacute;ch ly v&agrave; &quot;nguồn gốc những bức thư đ&oacute; c&oacute; thể từ quản gi&aacute;o n&agrave;o đ&oacute; do mẹ của Mai Phương nhờ&quot;.</p>\r\n\r\n	<p>Tuy nhi&ecirc;n, Nghĩa khẳng định b&agrave; Mai Phương n&oacute;i dối.</p>\r\n\r\n	<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\r\n		<tbody>\r\n			<tr>\r\n				<td><img alt=\"Lữ Minh Nghĩa. Ảnh: Quỳnh Trần\" src=\"http://img.f29.vnecdn.net/2017/06/27/Nghia-2758-1498549896_600x0.jpg\" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Lữ Minh Nghĩa. Ảnh:&nbsp;<em>Quỳnh Trần.</em></p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n\r\n	<p>Đối với lời khai của &ocirc;ng Y&ecirc;n, cho rằng b&agrave; Mai Phương c&ugrave;ng hoa hậu đến năn nỉ &ocirc;ng l&agrave;m giả di ch&uacute;c thừa hưởng căn nh&agrave;, nh&acirc;n chứng giấu mặt tiếp tục khẳng định: &quot;T&ocirc;i kh&ocirc;ng đến gặp &ocirc;ng Y&ecirc;n. Nga c&oacute; nhiều người l&agrave;m chứng t&ocirc;i, kh&ocirc;ng việc g&igrave; phải tham gia, việc đ&oacute; kh&ocirc;ng phải việc của t&ocirc;i&quot;.</p>\r\n\r\n	<p>&quot;B&agrave; n&oacute;i biết nhiều người nhận đứng ra l&agrave;m chứng cho Nga, b&agrave; c&oacute; biết cụ thể l&agrave; ai kh&ocirc;ng&quot;, VKS tham gia hỏi Mai Phương. Tuy nhi&ecirc;n, nh&acirc;n chứng từ chối trả lời.</p>\r\n\r\n	<p>Được gọi l&ecirc;n thẩm vấn, &ocirc;ng Cao To&agrave;n Mỹ n&oacute;i: &quot;T&ocirc;i chỉ biết b&agrave; Mai Phương qua b&aacute;o ch&iacute; mấy ng&agrave;y nay&quot;.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>14h30</strong><img alt=\"icon\" src=\"https://s.vnecdn.net/vnexpress/i/v44/graphics/img_blank.gif\" /></p>\r\n\r\n	<p>HĐXX gọi Phương Nga l&ecirc;n đối chất. &quot;Lời khai của Mai Phương kh&ocirc;ng đ&uacute;ng, sự thật chị ấy gặp &ocirc;ng Y&ecirc;n 2 lần. Một lần tr&ecirc;n đường Sư Vạn Hạnh, một lần trong qu&aacute;n cơm c&oacute; bị c&aacute;o, Dung v&agrave; Nghĩa. Bị c&aacute;o khẳng định tất cả giấy tờ về thỏa thuận mua b&aacute;n nh&agrave; l&agrave; do b&agrave; Mai Phương hướng dẫn&quot;, Nga trả lời.</p>\r\n\r\n	<p>&quot;T&ocirc;i thật l&ograve;ng phải chia sẻ một chuyện l&agrave;, Nga nhờ t&ocirc;i l&agrave;m chứng nhưng t&ocirc;i kh&ocirc;ng l&agrave;m n&ecirc;n Nga quay ra n&oacute;i như vậy&quot;, Mai Phương phản b&aacute;c.</p>\r\n\r\n	<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\r\n		<tbody>\r\n			<tr>\r\n				<td><img alt=\"Ông Cao Toàn Mỹ. Ảnh: Quỳnh Trần\" src=\"http://img.f29.vnecdn.net/2017/06/27/cao-toan-my-1-4971-1498549585_600x0.jpg\" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>&Ocirc;ng Cao To&agrave;n Mỹ. Ảnh:&nbsp;<em>Quỳnh Trần.</em></p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n\r\n	<p>B&agrave; n&agrave;y cho biết th&ecirc;m, mẹ của hoa hậu đ&atilde; nhờ một người l&agrave;m c&ocirc;ng an tr&ecirc;n Cục C45 tiếp x&uacute;c với quản gi&aacute;o, đưa cho anh ta 50 triệu đồng để th&ocirc;ng cung. &quot;Mẹ c&ocirc; ta n&oacute;i muốn gi&uacute;p t&ocirc;i khai cho Nga nhưng t&ocirc;i kh&ocirc;ng biết khai g&igrave; cả&quot;, b&agrave; Mai Phương n&oacute;i v&agrave; c&ocirc;ng bố đoạn ghi &acirc;m được cho l&agrave; mẹ Phương Nga nhờ đưa tiền cho quản gi&aacute;o. Chủ tọa y&ecirc;u cầu b&agrave; n&agrave;y cung cấp đoạn ghi &acirc;m cho HĐXX.</p>\r\n\r\n	<p>Nga lập tức đề nghị được tr&igrave;nh b&agrave;y. C&ocirc; n&oacute;i, thời điểm 2010 xảy ra x&iacute;ch m&iacute;ch với mẹ v&agrave; chuyển ra ngo&agrave;i sống. V&igrave; thế mẹ kh&ocirc;ng biết g&igrave; về cuộc sống của c&ocirc;, chỉ biết c&ocirc; đang quan hệ với &ocirc;ng Mỹ th&ocirc;ng qua b&aacute;o ch&iacute;.</p>\r\n\r\n	<p>T&ograve;a quay sang hỏi nh&acirc;n chứng Mai Phương về lời khai của bị c&aacute;o Th&ugrave;y Dung. B&agrave; n&agrave;y n&oacute;i Dung khai sai sự thật, chưa bao giờ gặp Dung, kh&ocirc;ng c&oacute; chuyện đưa tờ giấy A4 c&oacute; sẵn lời khai cho c&ocirc; n&agrave;y.</p>\r\n\r\n	<p>Được t&ograve;a hỏi về chuyện n&agrave;y, Dung khẳng định c&oacute; chuyện đ&oacute; v&agrave; cơ quan điều tra đ&atilde; cho c&ocirc; đối chất với Mai Phương.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>14h10</strong><img alt=\"icon\" src=\"https://s.vnecdn.net/vnexpress/i/v44/graphics/img_blank.gif\" /></p>\r\n\r\n	<p>B&agrave; Mai Phương cam kết trước t&ograve;a trả lời đ&uacute;ng sự thật. Chủ tọa hỏi c&oacute; quan hệ thế n&agrave;o với bị c&aacute;o Phương Nga, nh&acirc;n chứng n&oacute;i chỉ l&agrave; &quot;bạn b&egrave; b&igrave;nh thường kh&ocirc;ng th&acirc;n thiết từ năm 2013&quot;.</p>\r\n\r\n	<p>B&agrave; cho biết, khoảng giữa năm 2012-2014, Nga đến chơi v&agrave; kể về việc bị một người bạn kiện về tiền bạc. &quot;C&ocirc; ấy kể t&ocirc;i nghe rất nhiều. Nga n&oacute;i c&oacute; l&agrave;m ăn chung với &ocirc;ng Mỹ, đ&atilde; trả hết tiền - việc n&agrave;y c&oacute; một số người trong showbiz biết - nhưng &ocirc;ng ta tiếp tục kiện n&ecirc;n rất bức x&uacute;c. T&ocirc;i biết l&agrave;m g&igrave; để gi&uacute;p cho c&ocirc; ấy&quot;, giọng b&agrave; Mai Phương chậm r&atilde;i.</p>\r\n\r\n	<p>&quot;T&ocirc;i chưa bao giờ gặp Cao To&agrave;n Mỹ, c&oacute; biết Dung nhưng kh&ocirc;ng quen&quot;, b&agrave; trả lời t&ograve;a.</p>\r\n\r\n	<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\r\n		<tbody>\r\n			<tr>\r\n				<td><img alt=\"Phương Nga. Ảnh: Quỳnh Trần\" src=\"http://img.f29.vnecdn.net/2017/06/27/phuong-nga-5-6879-1498548920_600x0.jpg\" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Bị c&aacute;o Phương Nga. Ảnh:&nbsp;<em>Quỳnh Trần</em></p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n\r\n	<p>Với Lữ Minh Nghĩa (bạn trai Dung) b&agrave; kh&ocirc;ng quen biết từ trước. Sau n&agrave;y khi Nga v&agrave; Dung bị bắt th&igrave; Nghĩa mới gọi b&agrave;. &quot;T&ocirc;i cũng chưa trực tiếp gặp Nghĩa lần n&agrave;o&quot;, Mai Phương khẳng định.</p>\r\n\r\n	<p>T&ograve;a hỏi về &ocirc;ng Y&ecirc;n, b&agrave; n&oacute;i: &quot;Trưa h&ocirc;m đ&oacute; Nga đến chở t&ocirc;i v&agrave;o viện thăm một người bạn. Khi gặp &ocirc;ng Y&ecirc;n t&ocirc;i chỉ hỏi thăm vợ &ocirc;ng Y&ecirc;n ốm thế n&agrave;o chứ kh&ocirc;ng n&oacute;i chuyện nhiều, kh&ocirc;ng quan t&acirc;m đến nội dung n&oacute;i qua giữa Nga v&agrave; &ocirc;ng Y&ecirc;n.</p>\r\n\r\n	<p>B&agrave; Mai Phương n&oacute;i lại l&uacute;c biết Nga, hoa hậu v&agrave; &ocirc;ng Mỹ đ&atilde; kiện nhau rồi nhưng kh&ocirc;ng nhớ thời điểm cụ thể.</p>\r\n\r\n	<p>&quot;Thời điểm Nga v&agrave; Dung bị bắt, b&agrave; c&oacute; đến gặp ai hay nhận t&agrave;i liệu của c&aacute;c b&ecirc;n li&ecirc;n quan kh&ocirc;ng?&quot;. &quot;T&ocirc;i kh&ocirc;ng c&oacute; bất kỳ t&agrave;i liệu n&agrave;o. Bởi Nga bị bắt, cơ quan điều tra li&ecirc;n tục gọi l&ecirc;n để hỏi về nguồn gốc số tiền 16,5 tỷ nhận của &ocirc;ng Mỹ khiến t&ocirc;i rất bức x&uacute;c&quot;, giọng b&agrave; Mai Phương vẻ ấp &uacute;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>14h00</strong><img alt=\"icon\" src=\"https://s.vnecdn.net/vnexpress/i/v44/graphics/img_blank.gif\" /></p>\r\n\r\n	<p>Phi&ecirc;n xử Trương Hồ Phương Nga (30 tuổi) v&agrave; Nguyễn Đức Th&ugrave;y Dung về c&aacute;o buộc lừa &ocirc;ng Cao To&agrave;n Mỹ 16,5 tỷ đồng tiếp tục với phần thẩm vấn.</p>\r\n\r\n	<p>Bị t&ograve;a ra lệnh &aacute;p giải từ h&ocirc;m qua, song nh&acirc;n chứng Nguyễn Mai Phương - người bị Nga v&agrave; Dung tố d&agrave;n dựng kịch bản lừa họ bị bắt - chiều nay mới đến. Tuy nhi&ecirc;n, b&agrave; đề nghị được ở ph&ograve;ng c&aacute;ch ly trả lời thẩm vấn. Theo quy định, nh&acirc;n chứng c&oacute; quyền nh&acirc;n th&acirc;n về việc n&agrave;y.</p>\r\n\r\n	<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\">\r\n		<tbody>\r\n			<tr>\r\n				<td><img alt=\"Hai bị cáo trong phiên tòa chiều nay. Ảnh: Quỳnh Trần\" src=\"http://img.f29.vnecdn.net/2017/06/27/phuong-nga-6-3766-1498548121_600x0.jpg\" /></td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n				<p>Hai bị c&aacute;o trong phi&ecirc;n t&ograve;a chiều nay. Ảnh:&nbsp;<em>Quỳnh Trần</em></p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	</li>\r\n</ul>\r\n\r\n<p>Trong buổi l&agrave;m việc s&aacute;ng nay, nh&acirc;n chứng Lữ Minh Nghĩa (bạn trai của Dung) nộp cho t&ograve;a nhiều bức thư của Dung gửi từ trại giam.</p>\r\n\r\n<p>Phương Nga th&igrave; cho rằng bị b&agrave; Nguyễn Mai Phương (39 tuổi) l&agrave;m cho tin tưởng đứng về ph&iacute;a m&igrave;nh, hứa sẽ nhờ sếp PC45 can thiệp chống lại tố c&aacute;o của &ocirc;ng Cao To&agrave;n Mỹ, n&ecirc;n k&yacute; v&agrave;o bi&ecirc;n bản giả c&aacute;ch giao nhận tiền mua b&aacute;n nh&agrave; với &ocirc;ng Mỹ. B&agrave; n&agrave;y cũng x&uacute;i c&ocirc; trốn ra nước ngo&agrave;i để kh&ocirc;ng bị bắt.</p>\r\n\r\n<p>Ở những phi&ecirc;n t&ograve;a trước, cả Nga v&agrave; Dung đều khẳng định những g&igrave; khai với cơ quan điều tra ban đầu l&agrave; do Mai Phương hướng dẫn. Theo c&aacute;c bị c&aacute;o, b&agrave; Mai Phương đ&atilde; đ&oacute;ng vai &quot;người h&ugrave;ng&quot; gi&uacute;p Nga v&agrave; Dung giải quyết mọi chuyện, để dụ Nga viết v&agrave;o giấy bi&ecirc;n nhận 16,5 tỷ đồng của &ocirc;ng Mỹ c&ugrave;ng nhiều giấy tờ giả kh&aacute;c. Những t&agrave;i liệu n&agrave;y sau đ&oacute; th&agrave;nh bằng chứng c&aacute;o buộc lừa &ocirc;ng Mỹ.</p>\r\n\r\n<p>Lữ Minh Nghĩa lần đầu được triệu tập đến t&ograve;a h&ocirc;m qua, h&eacute; lộ nhiều t&igrave;nh tiết mới trong vụ &aacute;n. Nh&acirc;n chứng n&agrave;y cũng khẳng định bị &ocirc;ng Mỹ v&agrave; b&agrave; Mai Phương t&aacute;c động n&ecirc;n ban đầu đ&atilde; khai kh&ocirc;ng đ&uacute;ng sự thật với cơ quan điều tra về mối quan hệ giữa Nga v&agrave; &ocirc;ng Mỹ.</p>\r\n\r\n<p>Nghĩa c&ograve;n cho biết, b&agrave; Mai Phương l&agrave; người đ&atilde; giới thiệu cho anh gặp điều tra cũng t&ecirc;n Nghĩa để nắm bắt th&ocirc;ng tin của người y&ecirc;u những ng&agrave;y đầu bị giam. Cảnh s&aacute;t n&agrave;y đ&atilde; gi&uacute;p anh v&agrave; Dung gửi thư qua lại. Nh&acirc;n chứng Nghĩa cũng nhiều lần gặp b&agrave; Mai Phương tại qu&aacute;n c&agrave; ph&ecirc; v&agrave; qu&aacute;n cơm c&ugrave;ng với Nga v&agrave; Dung, n&ecirc;n biết chuyện b&agrave; n&agrave;y đứng ra d&agrave;n xếp mọi chuyện.</p>\r\n\r\n<p>Sau khi Nga v&agrave; Dung bị bắt, Nghĩa cũng nhiều lần trao đổi với b&agrave; Mai Phương về việc t&igrave;m c&aacute;ch gi&uacute;p hai người được tại ngoại.</p>\r\n', 1, '', 'uploads/1498557181a1.png', '2017-06-27 15:14:04');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'uR0r9mOOv97ZK9d-97jqEtmKo0BzStN8', '$2y$13$8qyYEGx8YlRZUQvumXg0huB73EWD3D2AbC8b6hIVOELPk9ELVJKgq', NULL, 'dvanh271295@gmail.com', 10, 1498529241, 1498529241),
(17, 'fddsd', 'r8uUaYE0BIT-5vzCTOSwciLLcDFAqfbk', '$2y$13$Q.pmPw7FVz..na8Zst7Qu.ht7xCyQD794v7doF0IXwP5.9cOhVdSC', NULL, '1232ttr@gmail.com', 10, 1498534780, 1498534780),
(18, 'admin100', '9DJxQbb_lHx52iNsewSN7RZiCNLwzepT', '$2y$13$XwQIa0XET6tctSo3CGaC4unJWvEGCP/eIECebIN37xXRMIsZzHrva', NULL, 'dva@gmail.com', 10, 1498534805, 1498534805),
(19, 'admin1', 'Ok17A7aQmlUo6et9b_mWutMuSTZjy41G', '$2y$13$7A2OzPjjtC4e.LP96LtO3OKxuEFpMJfSDHDutYxGcrVViRfXh6BlW', NULL, 'asherh@gmail.com', 1, 1498535012, 1498535012),
(21, 'admin2', 'spu-ZvWdCGJSeChA6yWitc4xATG7m3Xs', '$2y$13$ygWLwH08dCbvytSATl85nOv9FWRiVvosE//vRJQ1y4yGpOaZgzK7G', NULL, 'dvanh24@gmail.com', 10, 1498535602, 1498535602),
(22, 'admin3', 'yx-IA42pyt_FUZK7xLtRn1enJzxggHDI', '$2y$13$ygWLwH08dCbvytSATl85nOv9FWRiVvosE//vRJQ1y4yGpOaZgzK7G', NULL, 'dasf@gmail.com', 10, 1498535641, 1498535641),
(23, 'admin4', 'qsF-d_ADoNpQ3qPML1gSUyb3P9q9vak7', '$2y$13$bEqEwGCGu/8J4lh0kK2oTkNMo2lZyFSV31qDt8FRCupqzUXswESG', NULL, 'shfhfd@gmail.com', 10, 1498535781, 1498535781),
(24, 'admin5', 'BbRgg1OseQXLaBxCfhjQy8pBAHuiQfpH', '$2y$13$ygWLwH08dCbvytSATl85nOv9FWRiVvosE//vRJQ1y4yGpOaZgzK7G', NULL, 'asgsdg@gmail.com', 10, 1498536050, 1498536050),
(25, 'admin6', 'X2HyIzA21K3xJPMSieZ9FjMk2zFoWdbU', '$2y$13$1XkX.ShMQ1sPhrZVkdBFP.y8nxm1HVbvU.ncM8CM5FgNgL2nxTw0y', NULL, 'ewghr@gmail.com', 10, 1498536294, 1498536294),
(26, 'admin7', 'FIvqp4jrEeHPwgogtDAIcQzKk4d_kAZB', '$2y$13$Pn5wfaXWmmmAHJD0A1UvZOxxJPxZjF/BSnvPn.1VFOAAFanEDWZ0i', NULL, 'asfdfbg@gmail.com', 10, 1498536589, 1498536589),
(27, 'admin8', 'Q93RPnk6AhyzlGMUst4gWsH8HFFfqNPZ', '$2y$13$P1YBKxLF6ABpJeuPrEbwRO5r8d6Z4vM/O4DQjcrS6UG967N8JB66a', NULL, 'safdfh@gmail.com', 10, 1498536774, 1498536774),
(28, 'dfgdf', 'oaK0gfOjgwCQOsP7bFjT9tFQpn3msXdf', '$2y$13$87CNCVi/T08hGYG6nbOQc.G7PUNS9NzsN/8iVcv0aD.H7.tWN24v.', NULL, 'dsfhmjh@gmail.com', 10, 1498537291, 1498537291),
(29, 'admin9', 'BrNSrSkiC3vscXEBWdoH5_P9Jaovjv_o', '$2y$13$JpgGFG5p/TJW6foCeDzifu5N7brbnzBkZwCqUpaxfxZ8eceYQfYUO', NULL, 'safdgh@gmail.com', 10, 1498537325, 1498537325),
(32, 'admin13', 'tG7aagpddXAiy88wn9uno2QotpjReE44', '$2y$13$iXI8LXCKnI.VMJQSM3HZ4eskueva/jU/bV9sC4iF5xC4I5SGRMOHa', NULL, 'dsfhgj@gmail.com', 10, 1498538274, 1498538274),
(33, 'asdfasd', '_3ORF68MIPYbdV03fF6Bl3G9WTIaasOY', '$2y$13$a1MYTxf2.G4OUL.G2XAnWuC9Dls8K3MYW2SpnzIy9mIFh4K.D.kV2', NULL, 'asfdgfhgj@gmail.com', 10, 1498544872, 1498544872);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loai_tt`
--
ALTER TABLE `loai_tt`
  ADD PRIMARY KEY (`id_trangthai_tt`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id_tt`),
  ADD UNIQUE KEY `tieude_tt` (`tieude_tt`),
  ADD KEY `id_trangthai_tt` (`id_trangthai_tt`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loai_tt`
--
ALTER TABLE `loai_tt`
  MODIFY `id_trangthai_tt` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id_tt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `loai_tt`
--
ALTER TABLE `loai_tt`
  ADD CONSTRAINT `loai_tt_ibfk_1` FOREIGN KEY (`id_trangthai_tt`) REFERENCES `tintuc` (`id_trangthai_tt`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
