/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 127.0.0.1:3306
 Source Schema         : db_olshop

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 09/09/2020 11:22:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_barang
-- ----------------------------
DROP TABLE IF EXISTS `tbl_barang`;
CREATE TABLE `tbl_barang`  (
  `id_barang` int(11) NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_kategori` int(11) NULL DEFAULT NULL,
  `harga` int(11) NULL DEFAULT NULL,
  `deskripsi` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `gambar` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `berat` int(11) NOT NULL,
  PRIMARY KEY (`id_barang`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_barang
-- ----------------------------
INSERT INTO `tbl_barang` VALUES (1, 'Redmi Note 9', 8, 3400000, 'Deskripsi', 'redmi-note-9.jpg', 500);
INSERT INTO `tbl_barang` VALUES (2, 'Redmi Note 8', 8, 3100000, 'Deskripsi', 'redmi-note-8.jpg', 600);
INSERT INTO `tbl_barang` VALUES (3, 'Antam Gift Series 1 Gr', 9, 1000000, 'Emas Asli', '5cc1a687cbdfd_20190425192231-1.jpg', 11);
INSERT INTO `tbl_barang` VALUES (5, 'SEPATU NIKE', 6, 172000, 'sepatu sangat ringan dipakai sepatu dengan kualitas grade original, sepatu grade ORI adalah sepatu yg dipacking dengan box sesuai originalnya sepatu denagan kualitas unggulan dibuat menggunakan bahan lembut yang mengikuti lekuk kaki tidak keras sangat elegan dan cocok buat teman teman memberikan kesan modis casual dan trendy sangat berkualitas\r\nSepatu sesuai dengan pic + box\r\nPerkiraan size\r\nUkuran sepatu ;\r\n37 = 22 cm\r\n38 = 23 cm\r\n39 = 24 cm\r\n40 = 25 cm\r\n41 = 26 cm\r\n42 = 27 cm\r\n43 = 28 cm\r\n44 = 29 cm', 'Screenshot_1.jpg', 800);
INSERT INTO `tbl_barang` VALUES (6, '5 Dinar Public Gold', 9, 22000000, 'Dinar', '104363280_571202677124587_5297911331856275177_n.jpg', 100);
INSERT INTO `tbl_barang` VALUES (7, 'Xiaomi Mi Air 2S TWS', 10, 870000, 'Xiaomi Mi Air 2S TWS', 'Screenshot_4.jpg', 300);
INSERT INTO `tbl_barang` VALUES (8, 'Dinar Antam', 9, 200000, 'Blender Giling', 'antam_koin_1_dinar_emas_antam_full04_nsu30s6a.jpg', 1000);

-- ----------------------------
-- Table structure for tbl_gambar
-- ----------------------------
DROP TABLE IF EXISTS `tbl_gambar`;
CREATE TABLE `tbl_gambar`  (
  `id_gambar` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` int(11) NOT NULL,
  `ket` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `gambar` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id_gambar`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 26 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_gambar
-- ----------------------------
INSERT INTO `tbl_gambar` VALUES (1, 3, 'gambar 1', 'gambar (1).jpg');
INSERT INTO `tbl_gambar` VALUES (2, 3, 'gambar 2', 'gambar (2).jpg');
INSERT INTO `tbl_gambar` VALUES (3, 3, 'gambar 3', 'gambar (3).jpg');
INSERT INTO `tbl_gambar` VALUES (4, 3, 'gambar 4', 'gambar (4).jpg');
INSERT INTO `tbl_gambar` VALUES (5, 3, 'gambar 5', 'gambar (5).jpg');
INSERT INTO `tbl_gambar` VALUES (6, 1, 'Gambar hp', 'hp.jpg');
INSERT INTO `tbl_gambar` VALUES (11, 2, 'Gambar 3', '7c6c3183baf8ec0e70c1050e94590274.png');
INSERT INTO `tbl_gambar` VALUES (8, 2, 'ket 1', '007515200_1532563175-Jaringan_irigasi-ok.jpg');
INSERT INTO `tbl_gambar` VALUES (12, 2, 'asdasd', 'Cadangan_Emas_Palsu_China_Jadi_Skandal_Terbesar_Dalam_Sejarah.jpg');
INSERT INTO `tbl_gambar` VALUES (13, 1, 'Sekolah Favorit', 'cara-ampuh-membedakan-emas-palsu-dengan-emas-asli-secara-praktis-image-2017-11-10-154814.png');
INSERT INTO `tbl_gambar` VALUES (14, 1, 'Gambar 3', 'aa.jpg');
INSERT INTO `tbl_gambar` VALUES (15, 5, 'sepatu  nike', 'Screenshot_2.jpg');
INSERT INTO `tbl_gambar` VALUES (16, 5, 'sepatu  nike', 'Screenshot_3.jpg');
INSERT INTO `tbl_gambar` VALUES (17, 5, 'sepatu  nike', 'Screenshot_41.jpg');
INSERT INTO `tbl_gambar` VALUES (18, 6, 'dinar', '104369803_571202500457938_2380333369834103872_n.jpg');
INSERT INTO `tbl_gambar` VALUES (19, 6, 'dinar', '104463294_571202403791281_3288079409569155424_n.jpg');
INSERT INTO `tbl_gambar` VALUES (20, 6, 'dinar', '105388602_571202433791278_3412922114720110387_n.jpg');
INSERT INTO `tbl_gambar` VALUES (21, 6, 'dinar', '105692854_571202347124620_8948597222915416632_n.jpg');
INSERT INTO `tbl_gambar` VALUES (22, 7, 'Xiaomi Mi Air 2S TWS 1', 'IMG_1497.jpg');
INSERT INTO `tbl_gambar` VALUES (23, 7, 'Xiaomi Mi Air 2S TWS 2', 'xiaomi-mi-airdots-pro-2-tws-bluetooth-earphone-white-1.jpg');
INSERT INTO `tbl_gambar` VALUES (24, 7, 'Xiaomi Mi Air 2S TWS 3', 'xiaomi-mi-airdots-pro-2-tws-earphone-white.jpg');
INSERT INTO `tbl_gambar` VALUES (25, 8, 'Dinar', '81823543_a1468d3e-2b0d-4da7-9aa4-3314e51b75c6_700_700.jpg');

-- ----------------------------
-- Table structure for tbl_kategori
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kategori`;
CREATE TABLE `tbl_kategori`  (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_kategori`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_kategori
-- ----------------------------
INSERT INTO `tbl_kategori` VALUES (1, 'Pakaian Wanita');
INSERT INTO `tbl_kategori` VALUES (2, 'Pakaian Laki-Laki');
INSERT INTO `tbl_kategori` VALUES (3, 'Perhiasan');
INSERT INTO `tbl_kategori` VALUES (4, 'Aksesoris');
INSERT INTO `tbl_kategori` VALUES (5, 'Sepatu Wanita');
INSERT INTO `tbl_kategori` VALUES (6, 'Sepatu Laki-Laki');
INSERT INTO `tbl_kategori` VALUES (8, 'Smartphone');
INSERT INTO `tbl_kategori` VALUES (9, 'Logam Mulia');
INSERT INTO `tbl_kategori` VALUES (10, 'Aksesoris HP');
INSERT INTO `tbl_kategori` VALUES (11, 'Elektronik');

-- ----------------------------
-- Table structure for tbl_pelanggan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pelanggan`;
CREATE TABLE `tbl_pelanggan`  (
  `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pelanggan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `foto` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id_pelanggan`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_pelanggan
-- ----------------------------
INSERT INTO `tbl_pelanggan` VALUES (1, 'Padang Tekno', 'padang.tekno@gmail.com', '1234', 'foto.jpg');
INSERT INTO `tbl_pelanggan` VALUES (2, 'Maman', 'maman@gmail.com', '1234', 'foto.jpg');

-- ----------------------------
-- Table structure for tbl_rekening
-- ----------------------------
DROP TABLE IF EXISTS `tbl_rekening`;
CREATE TABLE `tbl_rekening`  (
  `id_rekening` int(11) NOT NULL AUTO_INCREMENT,
  `nama_bank` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_rek` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `atas_nama` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_rekening`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_rekening
-- ----------------------------
INSERT INTO `tbl_rekening` VALUES (1, 'BRI', '5434-4382-3434-4345', 'Padang Tekno');
INSERT INTO `tbl_rekening` VALUES (2, 'BNI', '3342-3456-2346', 'Padang Tekno');

-- ----------------------------
-- Table structure for tbl_rinci_transaksi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_rinci_transaksi`;
CREATE TABLE `tbl_rinci_transaksi`  (
  `id_rinci` int(11) NOT NULL AUTO_INCREMENT,
  `no_order` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_barang` int(11) NULL DEFAULT NULL,
  `qty` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_rinci`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_rinci_transaksi
-- ----------------------------
INSERT INTO `tbl_rinci_transaksi` VALUES (3, '20200812O3XECOUY', 8, 1);
INSERT INTO `tbl_rinci_transaksi` VALUES (4, '20200812O3XECOUY', 7, 2);
INSERT INTO `tbl_rinci_transaksi` VALUES (5, '20200812O3XECOUY', 6, 3);
INSERT INTO `tbl_rinci_transaksi` VALUES (6, '20200812O3XECOUY', 5, 4);
INSERT INTO `tbl_rinci_transaksi` VALUES (7, '20200812O3XECOUY', 3, 5);
INSERT INTO `tbl_rinci_transaksi` VALUES (8, '20200812MKV2NIY9', 8, 1);
INSERT INTO `tbl_rinci_transaksi` VALUES (9, '20200812MKV2NIY9', 7, 2);
INSERT INTO `tbl_rinci_transaksi` VALUES (10, '20200812MKV2NIY9', 6, 3);
INSERT INTO `tbl_rinci_transaksi` VALUES (11, '20200812BNHQ0F9S', 8, 1);
INSERT INTO `tbl_rinci_transaksi` VALUES (12, '20200812BNHQ0F9S', 7, 2);
INSERT INTO `tbl_rinci_transaksi` VALUES (13, '20200812BNHQ0F9S', 6, 4);
INSERT INTO `tbl_rinci_transaksi` VALUES (14, '20200812BNHQ0F9S', 5, 1);
INSERT INTO `tbl_rinci_transaksi` VALUES (15, '20200812BNHQ0F9S', 1, 1);
INSERT INTO `tbl_rinci_transaksi` VALUES (16, '20200812BNHQ0F9S', 2, 1);
INSERT INTO `tbl_rinci_transaksi` VALUES (17, '202008128VGYFL1H', 7, 1);
INSERT INTO `tbl_rinci_transaksi` VALUES (18, '20200813RJUV2MGH', 8, 1);
INSERT INTO `tbl_rinci_transaksi` VALUES (19, '20200813RJUV2MGH', 7, 1);
INSERT INTO `tbl_rinci_transaksi` VALUES (20, '20200813RJUV2MGH', 6, 1);

-- ----------------------------
-- Table structure for tbl_setting
-- ----------------------------
DROP TABLE IF EXISTS `tbl_setting`;
CREATE TABLE `tbl_setting`  (
  `id` int(1) NOT NULL,
  `nama_toko` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lokasi` int(11) NULL DEFAULT NULL,
  `alamat_toko` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `no_telpon` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_setting
-- ----------------------------
INSERT INTO `tbl_setting` VALUES (1, 'Toko Padang Tekno', 152, 'Jl. Imam Bonjol No.118, Kota Padang', '082284033333');

-- ----------------------------
-- Table structure for tbl_transaksi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_transaksi`;
CREATE TABLE `tbl_transaksi`  (
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelanggan` int(11) NULL DEFAULT NULL,
  `no_order` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_order` date NULL DEFAULT NULL,
  `nama_penerima` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hp_penerima` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `provinsi` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kota` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `kode_pos` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `expedisi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `paket` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `estimasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ongkir` int(11) NULL DEFAULT NULL,
  `berat` int(11) NULL DEFAULT NULL,
  `grand_total` int(11) NULL DEFAULT NULL,
  `total_bayar` int(11) NULL DEFAULT NULL,
  `status_bayar` int(1) NULL DEFAULT NULL,
  `bukti_bayar` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `atas_nama` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_bank` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_rek` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_order` int(1) NULL DEFAULT NULL,
  `no_resi` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_transaksi
-- ----------------------------
INSERT INTO `tbl_transaksi` VALUES (13, 1, '20200812MKV2NIY9', '2020-08-12', 'Badu Atai', '0822832222222', 'Sumatera Utara', 'Samosir', 'Jl. Agus Salim no.10', '266555', 'jne', 'OKE', '3-6 Hari', 82000, 1900, 67940000, 68022000, 0, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `tbl_transaksi` VALUES (12, 1, '20200812O3XECOUY', '2020-08-12', 'Ani', '0822832222222', 'DKI Jakarta', 'Jakarta Pusat', 'Jl. Agus Salim', '266555', 'tiki', 'ECO', '4 Hari', 40000, 5155, 73628000, 73668000, 1, 'bukti_bayar1.jpeg', 'Budi', 'BNI', '1234-1234-1234', 3, 'BDG9993829329382');
INSERT INTO `tbl_transaksi` VALUES (14, 1, '20200812BNHQ0F9S', '2020-08-12', 'andi', '0822832222222', 'Banten', 'Cilegon', 'Jl. Imbon', '266555', 'jne', 'OKE', '2-3 Hari', 36000, 3900, 96612000, 96648000, 1, 'bukti_bayar.jpeg', 'Budi', 'BRI', '2938-1212-1212-1212', 3, 'JKT02283923927392');
INSERT INTO `tbl_transaksi` VALUES (15, 1, '202008128VGYFL1H', '2020-08-12', 'Lius', '0822832222222', 'Banten', 'Lebak', 'Jl. Agus Salim', '266555', 'jne', 'OKE', '3-6 Hari', 12000, 300, 870000, 882000, 0, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `tbl_transaksi` VALUES (16, 2, '20200813RJUV2MGH', '2020-08-13', 'Maman', '0822832222222', 'Riau', 'Dumai', 'Jl. Agus Salim', '266555', 'jne', 'OKE', '3-6 Hari', 78000, 1400, 23070000, 23148000, 0, NULL, NULL, NULL, NULL, 0, NULL);

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `username` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `level_user` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 'Mardalius', 'admin', 'admin', 1);
INSERT INTO `tbl_user` VALUES (2, 'Budi', 'user', 'user', 2);
INSERT INTO `tbl_user` VALUES (4, 'Andi', 'andi', '12345', 2);

SET FOREIGN_KEY_CHECKS = 1;
