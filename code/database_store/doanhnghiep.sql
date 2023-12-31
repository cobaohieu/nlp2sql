-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 14, 2022 at 10:29 PM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doanhnghiep`
--

-- --------------------------------------------------------

--
-- Table structure for table `CHUCVU`
--

CREATE TABLE `CHUCVU` (
  `MaCV` varchar(10) DEFAULT NULL,
  `TenCV` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `CHUCVU`
--

INSERT INTO `CHUCVU` (`MaCV`, `TenCV`) VALUES
('001       ', 'ChuTich'),
('002       ', 'PChuTich'),
('003       ', 'GiamDoc'),
('004       ', 'PGiamDoc'),
('005       ', 'TPHCNS'),
('006       ', 'PPHCNS'),
('007       ', 'NVIT'),
('008       ', 'TPKToan'),
('009       ', 'PPKToan'),
('010       ', 'NVKToan');

-- --------------------------------------------------------

--
-- Table structure for table `HOPDONGLAODONG`
--

CREATE TABLE `HOPDONGLAODONG` (
  `MaHD` varchar(10) DEFAULT NULL,
  `MaNV` varchar(10) DEFAULT NULL,
  `LoaiHD` varchar(9) DEFAULT NULL,
  `TuNgay` varchar(10) DEFAULT NULL,
  `DenNgay` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `HOPDONGLAODONG`
--

INSERT INTO `HOPDONGLAODONG` (`MaHD`, `MaNV`, `LoaiHD`, `TuNgay`, `DenNgay`) VALUES
('001       ', '0001      ', 'ChinhThuc', '2020-01-01', '2045-01-01'),
('002       ', '0002      ', 'ChinhThuc', '2020-01-01', '2045-01-01'),
('003       ', '0003      ', 'ChinhThuc', '2020-01-01', '2045-01-01'),
('004       ', '0004      ', 'ChinhThuc', '2020-01-01', '2025-01-01'),
('005       ', '0005      ', 'HopDong', '2020-01-01', '2025-01-01'),
('006       ', '0006      ', 'HopDong', '2020-01-01', '2025-01-01'),
('007       ', '0007      ', 'ThoiVu', '2020-01-01', '2021-01-01'),
('008       ', '0008      ', 'ThoiVu', '2020-01-01', '2021-01-01'),
('009       ', '0009      ', 'ThoiVu', '2020-01-01', '2021-01-01'),
('010       ', '0010      ', 'ThoiVu', '2021-01-01', '2021-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `LUONG`
--

CREATE TABLE `LUONG` (
  `BacLuong` tinyint DEFAULT NULL,
  `LuongCB` smallint DEFAULT NULL,
  `HSLuong` tinyint DEFAULT NULL,
  `HSPC` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `LUONG`
--

INSERT INTO `LUONG` (`BacLuong`, `LuongCB`, `HSLuong`, `HSPC`) VALUES
(1, 800, 2, 2),
(2, 900, 2, 2),
(3, 1000, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `NHANVIEN`
--

CREATE TABLE `NHANVIEN` (
  `MaNV` varchar(10) DEFAULT NULL,
  `HoTenNV` varchar(18) DEFAULT NULL,
  `NgaySinh` varchar(10) DEFAULT NULL,
  `QueQuan` varchar(9) DEFAULT NULL,
  `GioiTinh` varchar(5) DEFAULT NULL,
  `DanToc` varchar(20) DEFAULT NULL,
  `SoDienThoai` int DEFAULT NULL,
  `MaPB` varchar(10) DEFAULT NULL,
  `MaCV` varchar(10) DEFAULT NULL,
  `MaTDHV` varchar(10) DEFAULT NULL,
  `BacLuong` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `NHANVIEN`
--

INSERT INTO `NHANVIEN` (`MaNV`, `HoTenNV`, `NgaySinh`, `QueQuan`, `GioiTinh`, `DanToc`, `SoDienThoai`, `MaPB`, `MaCV`, `MaTDHV`, `BacLuong`) VALUES
('0001      ', 'Huynh Van AN', '1960-12-15', 'BenTre', 'Nam  ', 'Kinh                ', 977674699, '01        ', '001       ', '01        ', 3),
('0002      ', 'Tran Huynh Giao', '1970-03-10', 'LongAn', 'Nu   ', 'Kinh                ', 97673408, '01        ', '002       ', '01        ', 3),
('0003      ', 'Nguyen Trung Thanh', '1970-03-10', 'BenTre', 'Nam  ', 'Kinh                ', 966001122, '02        ', '003       ', '02        ', 2),
('0004      ', 'Nguyen Phi Hong', '1969-02-11', 'HaNoi', 'Nam  ', 'Kinh                ', 987560001, '03        ', '004       ', '02        ', 2),
('0005      ', 'Tran Anh Tuyet', '1980-10-20', 'VinhLong', 'Nu   ', 'Kinh                ', 334511002, '04        ', '005       ', '02        ', 2),
('0006      ', 'Ha Thanh Hung', '1980-04-10', 'TienGiang', 'Nam  ', 'Kinh                ', 123400991, '05        ', '006       ', '03        ', 1),
('0007      ', 'Nguyen Thu Trang', '1973-10-23', 'CanTho', 'Nu   ', 'Kinh                ', 123400113, '06        ', '007       ', '04        ', 1),
('0008      ', 'Trinh Thao Nguyen', '1972-05-19', 'DongThap', 'Nu   ', 'Kinh                ', 123400889, '07        ', '008       ', '05        ', 1),
('0009      ', 'Tran Be Ba', '1980-02-19', 'AnGiang', 'Nu   ', 'Kinh                ', 123400551, '08        ', '009       ', '01        ', 2),
('0010      ', 'Thu Hoai', '1980-10-20', 'BenTre', 'Nu   ', 'Kinh                ', 123499550, '09        ', '010       ', '02        ', 2);

-- --------------------------------------------------------

--
-- Table structure for table `PHONGBAN`
--

CREATE TABLE `PHONGBAN` (
  `MaPB` varchar(10) DEFAULT NULL,
  `TenPB` varchar(10) DEFAULT NULL,
  `DiaChi` varchar(11) DEFAULT NULL,
  `SDTPB` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `PHONGBAN`
--

INSERT INTO `PHONGBAN` (`MaPB`, `TenPB`, `DiaChi`, `SDTPB`) VALUES
('01        ', 'PhongCT', 'ChauThanhBT', 75877311),
('02        ', 'PhongGD', 'ChauThanhBT', 75872112),
('03        ', 'PhongHCNS', 'ChauThanhBT', 75872113),
('04        ', 'PhongKT', 'ChauThanhBT', 75872114),
('05        ', 'PhongKD', 'ChauThanhBT', 75872115),
('06        ', 'PhongXNK', 'ChauThanhBT', 75872116),
('07        ', 'PhongTN', 'ChauThanhBT', 75872117),
('08        ', 'PhongHop', 'ChauThanhBT', 75872118),
('09        ', 'PhongKDinh', 'ChauThanhBT', 7572119),
('10        ', 'Kho', 'ChauThanhBT', 7572120);

-- --------------------------------------------------------

--
-- Table structure for table `sysdiagrams`
--

CREATE TABLE `sysdiagrams` (
  `name` varchar(9) DEFAULT NULL,
  `principal_id` tinyint DEFAULT NULL,
  `diagram_id` tinyint DEFAULT NULL,
  `version` tinyint DEFAULT NULL,
  `definition` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sysdiagrams`
--

INSERT INTO `sysdiagrams` (`name`, `principal_id`, `diagram_id`, `version`, `definition`) VALUES
('Diagram_0', 1, 1, 1, 'D0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF0900060000000000000000000000010000000100000000000000001000000200000001000000FEFFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFF06000000FEFFFFFF040000000500000007000000FEFFFFFF08000000FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52006F006F007400200045006E00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000500FFFFFFFFFFFFFFFF0200000000000000000000000000000000000000000000000000000000000000F0DF03650E2FD80103000000000A0000000000006600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000201FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000C6000000000000006F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040002010100000004000000FFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000040000009E02000000000000010043006F006D0070004F0062006A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000F0000005F00000000000000010000000200000003000000FEFFFFFF05000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E000000FEFFFFFF10000000FEFFFFFF12000000130000001400000015000000160000001700000018000000190000001A0000001B000000FEFFFFFFFEFFFFFF1E0000001F00000020000000210000002200000023000000240000002500000026000000FEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000428000A0E100C05000080010000000F00FFFF01000000007D00000D83000066350000CA94000023470000DE805B10F195D011B0A000AA00BDCB5C0000080030000000000200000100000038002B00000009000000D9E6B0E91C81D011AD5100A0C90F5739F43B7F847F61C74385352986E1D552F8A0327DB2D86295428D98273C25A2DA2D01000000380000000001000000003000A509000007000080010000009E02000000800000060000805363684772696400000000000000000043485543565564000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021433412080000003F200000A60900007856341207000000140100004300480055004300560055000000AA150600000000000000000000000000000000B2AA150400000000000000030000000000000000000000000100000001000000000000F07D055AA07C055AF07D055A40ED945840ED94589CED94589CED9458A4ED9458A4ED9458E8ED9458E8ED9458F0ED9458F0ED945864EE945864EE9458C0EE9458C0EE9458C8EE9458C8EE9458E8EE9458E8EE9458CCEF9458CCEF9458D4EF9458D4EF945840F0945840F0945850F0945850F0945858F0945858F0945890F0945890F094584CF194584CF1945854F1945854F1945810F6945810F694583CF694583CF694585CF694585CF6000000000000000000000100000005000000540000002C0000002C0000002C0000003400000000000000000000000C3F00004A150000000000002D010000070000000C000000070000001C0100002E0E00009A0B000028050000720600007E040000BC070000A6090000C8050000A60900003A0C00005C08000000000000010000003F200000A609000000000000020000000200000002000000020000001C0100002C1000000000000001000000CD1C0000A703000000000000000000000000000002000000020000001C0100002E0E00000100000000000000CD1C0000A703000000000000000000000000000002000000020000001C0100002E0E00000000000000000000B04C00008522000000000000000000000D00000004000000040000001C0100002E0E0000C2100000500A000078563412040000005600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000070000004300480055004300560055000000000000000000000000000000000000000000000000000000000000000000000000000100FEFF030A0000FFFFFFFF00000000000000000000000000000000170000004D6963726F736F66742044445320466F726D20322E300010000000456D626564646564204F626A6563740000000000F439B2710000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C00000000000000000000000100260000007300630068005F006C006100620065006C0073005F00760069007300690062006C0065000000010000000B0000001E000000000000000000000000000000000000006400000000000000000000000000000000000000000000000000010000000100000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0033003600330030002C0031002C0032003900370030002C0035002C0031003900380030000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0034003100340030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C00330036000300440064007300530074007200650061006D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000160002000300000006000000FFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000011000000820200000000000053006300680065006D00610020005500440056002000440065006600610075006C0074000000000000000000000000000000000000000000000000000000000026000200FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000001C0000001600000000000000440053005200450046002D0053004300480045004D0041002D0043004F004E00540045004E0054005300000000000000000000000000000000000000000000002C0002010500000007000000FFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000001D000000420200000000000053006300680065006D00610020005500440056002000440065006600610075006C007400200050006F007300740020005600360000000000000000000000000036000200FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000270000001200000000000000330030000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600330030000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0033003600330030002C00310032002C0034003200390030002C00310031002C0032003600340030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000C0000000B0000004E61BC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000DBE6B0E91C81D011AD5100A0C90F573900000200F06E01650E2FD801000200001048450000000000000000000000000000000000640100004400610074006100200053006F0075007200630065003D00500043005C00530051004C0045005800500052004500530053003B0049006E0069007400690061006C00200043006100740061006C006F0067003D004300530044004C003B0049006E00740065006700720061007400650064002000530065006300750072006900740079003D0054007200750065003B004D0075006C007400690070006C00650041006300740069007600650052006500730075006C00740053006500740073003D00460061006C00730065003B005000610063006B00650074002000530069007A0065003D0034003000390036003B004100700070006C00690063006100740069006F006E0020004E0061006D0065003D0022004D006900630072006F0073006F00660074002000530051004C00200053006500720076006500720020004D0061006E006100670065006D0065006E0074002000530074007500640069006F002200000000800500140000004400690061006700720061006D005F0030000000000224000E000000430048005500430056005500000008000000640062006F00000001000000D68509B3BB6BF2459AB8371664F0327008004E0000007B00310036003300340043004400440037002D0030003800380038002D0034003200450033002D0039004600410032002D004200360044003300320035003600330042003900310044007D0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000C0000000B0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062885214');

-- --------------------------------------------------------

--
-- Table structure for table `TRINHDOHOCVAN`
--

CREATE TABLE `TRINHDOHOCVAN` (
  `MaTDHV` varchar(10) DEFAULT NULL,
  `TTDHV` varchar(3) DEFAULT NULL,
  `CNganh` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `TRINHDOHOCVAN`
--

INSERT INTO `TRINHDOHOCVAN` (`MaTDHV`, `TTDHV`, `CNganh`) VALUES
('01        ', 'TS', 'KinhDoanh'),
('02        ', 'ThS', 'KeToan'),
('03        ', 'DH', 'CNTT'),
('04        ', 'CD', 'CNSinhHoc'),
('05        ', 'TC', 'CoKhi');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
