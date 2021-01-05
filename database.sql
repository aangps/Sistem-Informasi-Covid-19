
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hasil_test
-- ----------------------------
DROP TABLE IF EXISTS `hasil_test`;
CREATE TABLE `hasil_test`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_instansi` int(11) NULL DEFAULT NULL,
  `tanggal_test` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `instansi`(`id_instansi`) USING BTREE,
  CONSTRAINT `instansi` FOREIGN KEY (`id_instansi`) REFERENCES `instansi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hasil_test
-- ----------------------------
INSERT INTO `hasil_test` VALUES (8, 8, '2020-06-03');
INSERT INTO `hasil_test` VALUES (9, 9, '2020-03-23');
INSERT INTO `hasil_test` VALUES (10, 10, '2020-06-13');
INSERT INTO `hasil_test` VALUES (11, 11, '2020-06-03');
INSERT INTO `hasil_test` VALUES (12, 12, '2020-06-03');
INSERT INTO `hasil_test` VALUES (13, 13, '2020-06-03');
INSERT INTO `hasil_test` VALUES (14, 14, '2020-04-09');
INSERT INTO `hasil_test` VALUES (15, 15, '2020-01-24');
INSERT INTO `hasil_test` VALUES (16, 16, '2020-03-03');
INSERT INTO `hasil_test` VALUES (17, 17, '2020-05-20');
INSERT INTO `hasil_test` VALUES (18, 18, '2020-05-29');
INSERT INTO `hasil_test` VALUES (19, 19, '2020-05-28');
INSERT INTO `hasil_test` VALUES (20, 20, '2020-05-16');
INSERT INTO `hasil_test` VALUES (21, 21, '2020-05-06');
INSERT INTO `hasil_test` VALUES (22, 22, '2020-06-04');
INSERT INTO `hasil_test` VALUES (23, 23, '2020-06-02');
INSERT INTO `hasil_test` VALUES (24, 24, '2020-06-01');
INSERT INTO `hasil_test` VALUES (25, 25, '2020-01-06');
INSERT INTO `hasil_test` VALUES (26, 26, '2020-06-02');
INSERT INTO `hasil_test` VALUES (27, 27, '2020-05-31');
INSERT INTO `hasil_test` VALUES (28, 28, '2020-05-30');
INSERT INTO `hasil_test` VALUES (29, 29, '2020-02-06');
INSERT INTO `hasil_test` VALUES (30, 30, '2020-02-22');
INSERT INTO `hasil_test` VALUES (31, 31, '2020-04-13');
INSERT INTO `hasil_test` VALUES (32, 32, '2020-05-31');
INSERT INTO `hasil_test` VALUES (33, 33, '2020-05-20');
INSERT INTO `hasil_test` VALUES (34, 34, '2020-02-14');
INSERT INTO `hasil_test` VALUES (35, 35, '2020-08-17');
INSERT INTO `hasil_test` VALUES (36, 36, '2020-04-02');
INSERT INTO `hasil_test` VALUES (37, 37, '2020-01-23');
INSERT INTO `hasil_test` VALUES (38, 38, '2020-04-21');
INSERT INTO `hasil_test` VALUES (39, 39, '2020-04-21');
INSERT INTO `hasil_test` VALUES (40, 40, '2020-05-13');
INSERT INTO `hasil_test` VALUES (41, 41, '2020-04-24');
INSERT INTO `hasil_test` VALUES (42, 42, '2020-02-10');
INSERT INTO `hasil_test` VALUES (43, 43, '2020-05-19');
INSERT INTO `hasil_test` VALUES (44, 44, '2020-07-13');
INSERT INTO `hasil_test` VALUES (45, 45, '2020-05-05');
INSERT INTO `hasil_test` VALUES (46, 46, '2020-03-18');
INSERT INTO `hasil_test` VALUES (47, 47, '2020-05-19');

-- ----------------------------
-- Table structure for instansi
-- ----------------------------
DROP TABLE IF EXISTS `instansi`;
CREATE TABLE `instansi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_dokter` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_lab` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `lab`(`id_lab`) USING BTREE,
  CONSTRAINT `lab` FOREIGN KEY (`id_lab`) REFERENCES `lab` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of instansi
-- ----------------------------
INSERT INTO `instansi` VALUES (8, 'Klinik Ilkom', 'Dr. Dokter', 10);
INSERT INTO `instansi` VALUES (9, 'Rumah Sakit Umum Bandung', 'Wisnu', 11);
INSERT INTO `instansi` VALUES (10, 'Rumah Sakit Surya', 'Kojiro', 12);
INSERT INTO `instansi` VALUES (11, 'Rs Unud', 'Dr. Dokter', 13);
INSERT INTO `instansi` VALUES (12, 'Rs Unud', 'Dr. Dokter', 14);
INSERT INTO `instansi` VALUES (13, 'Rs Lombok', 'Dr. Dokter', 15);
INSERT INTO `instansi` VALUES (14, 'RSUD Lombok barat', 'dr. Bakianto', 16);
INSERT INTO `instansi` VALUES (15, 'RSU Kinta Medika', 'dr. Prasasta', 17);
INSERT INTO `instansi` VALUES (16, 'RS Medika Persada', 'dr. Anastasia', 18);
INSERT INTO `instansi` VALUES (17, 'RS Prima Medika', 'dr. Calista', 19);
INSERT INTO `instansi` VALUES (18, 'RS Cakra Nusantara', 'dr. Padma Hasanah', 20);
INSERT INTO `instansi` VALUES (19, 'RSUD Jaya Sastrika', 'dr. Maryadi Habibi', 21);
INSERT INTO `instansi` VALUES (20, 'RSUD Minahasa', 'dr. Maya Prastuti', 22);
INSERT INTO `instansi` VALUES (21, 'Prima Medical Centre', 'dr. Ifa Purwanti', 23);
INSERT INTO `instansi` VALUES (22, 'Rs Jaya Sentosa', 'Dr. Mahmud', 24);
INSERT INTO `instansi` VALUES (23, 'Klinik Kalipacar', 'dr. alex', 25);
INSERT INTO `instansi` VALUES (24, 'Puskesmas Donggalan', 'dr. supri adi', 26);
INSERT INTO `instansi` VALUES (25, 'Klinik kesehatan PNS', 'dr. Kustiawati', 27);
INSERT INTO `instansi` VALUES (26, 'Klinik kesehatan PNS', 'dr. Kustiawati', 28);
INSERT INTO `instansi` VALUES (27, 'Klinik kesehatan PNS', 'dr. Widyanto, SpKK', 29);
INSERT INTO `instansi` VALUES (28, 'Klinik kesehatan PNS', 'dr. Kustiawati', 30);
INSERT INTO `instansi` VALUES (29, 'Klinik kesehatan PNS', 'dr. Kustiawati', 31);
INSERT INTO `instansi` VALUES (30, 'Rs Dharma', 'Frans', 32);
INSERT INTO `instansi` VALUES (31, 'Rs Graha', 'Jimmy', 33);
INSERT INTO `instansi` VALUES (32, 'Rs Adi Sucipto', 'Rudy', 34);
INSERT INTO `instansi` VALUES (33, 'Rs Kweri', 'Tudi', 35);
INSERT INTO `instansi` VALUES (34, 'Rs Surya Graha', 'Prans', 36);
INSERT INTO `instansi` VALUES (35, 'Rs Trans Kapuas', 'Dinda Ica', 37);
INSERT INTO `instansi` VALUES (36, 'Rs Jember', 'Erna ', 38);
INSERT INTO `instansi` VALUES (37, 'Rs Jua ', 'Lara Putri', 39);
INSERT INTO `instansi` VALUES (38, 'Rs Persada', 'Kresna', 40);
INSERT INTO `instansi` VALUES (39, 'Rs Cermat', 'Gilang ', 41);
INSERT INTO `instansi` VALUES (40, 'Rs Lores', 'Andre', 42);
INSERT INTO `instansi` VALUES (41, 'Rs Umum Banyuwangi', 'Audi', 43);
INSERT INTO `instansi` VALUES (42, 'Rs Wedangga', 'Sentosa', 44);
INSERT INTO `instansi` VALUES (43, 'Rs Owen Bhakti', 'Haresta', 45);
INSERT INTO `instansi` VALUES (44, 'Rs Umum Bondowoso', 'Jordan', 46);
INSERT INTO `instansi` VALUES (45, 'Rs Husada', 'Yeda', 47);
INSERT INTO `instansi` VALUES (46, 'Rs Jahdid Selatan', 'Letra A', 48);
INSERT INTO `instansi` VALUES (47, 'Rs Mata Baru', 'Kirana Kasih', 49);

-- ----------------------------
-- Table structure for kabupaten
-- ----------------------------
DROP TABLE IF EXISTS `kabupaten`;
CREATE TABLE `kabupaten`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `redzone` enum('iya','tidak') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kabupaten
-- ----------------------------
INSERT INTO `kabupaten` VALUES (5, 'Banyuwangi', 'tidak');
INSERT INTO `kabupaten` VALUES (6, 'Surabaya', 'tidak');
INSERT INTO `kabupaten` VALUES (7, 'Lombok Barat', 'tidak');
INSERT INTO `kabupaten` VALUES (8, 'Lombok Tengah', 'tidak');
INSERT INTO `kabupaten` VALUES (9, 'Lombok Timur', 'tidak');
INSERT INTO `kabupaten` VALUES (10, 'Malang', 'iya');
INSERT INTO `kabupaten` VALUES (11, 'Bandung', 'iya');
INSERT INTO `kabupaten` VALUES (12, 'Jogja', 'tidak');
INSERT INTO `kabupaten` VALUES (13, 'Sidoarjo', 'iya');
INSERT INTO `kabupaten` VALUES (14, 'Jember', 'iya');
INSERT INTO `kabupaten` VALUES (15, 'Bondowoso', 'tidak');
INSERT INTO `kabupaten` VALUES (16, 'Jakarta', 'iya');
INSERT INTO `kabupaten` VALUES (17, 'flores timur', 'tidak');
INSERT INTO `kabupaten` VALUES (18, 'kupang', 'tidak');
INSERT INTO `kabupaten` VALUES (19, 'bulukumba', 'iya');
INSERT INTO `kabupaten` VALUES (20, 'Bogor', 'iya');
INSERT INTO `kabupaten` VALUES (21, 'Purwakarta', 'tidak');
INSERT INTO `kabupaten` VALUES (22, 'Sukabumi', 'iya');
INSERT INTO `kabupaten` VALUES (23, 'Tasikmalaya', 'tidak');
INSERT INTO `kabupaten` VALUES (24, 'Bekasi', 'tidak');
INSERT INTO `kabupaten` VALUES (25, 'morowali', 'iya');
INSERT INTO `kabupaten` VALUES (26, 'donggala', 'tidak');
INSERT INTO `kabupaten` VALUES (27, 'toli toli', 'tidak');
INSERT INTO `kabupaten` VALUES (28, 'buton', 'tidak');
INSERT INTO `kabupaten` VALUES (29, 'minahasa', 'tidak');
INSERT INTO `kabupaten` VALUES (30, 'bitung', 'tidak');
INSERT INTO `kabupaten` VALUES (31, 'fak fak', 'iya');
INSERT INTO `kabupaten` VALUES (32, 'manokwari', 'iya');
INSERT INTO `kabupaten` VALUES (33, 'balangan', 'tidak');
INSERT INTO `kabupaten` VALUES (34, 'Tabalong', 'iya');
INSERT INTO `kabupaten` VALUES (35, 'Tapin', 'iya');
INSERT INTO `kabupaten` VALUES (36, 'Kotabaru', 'iya');
INSERT INTO `kabupaten` VALUES (37, 'Barito Kuala', 'iya');
INSERT INTO `kabupaten` VALUES (38, 'Kutai Barat', 'tidak');
INSERT INTO `kabupaten` VALUES (39, 'Kutai Timur', 'iya');
INSERT INTO `kabupaten` VALUES (40, 'Kutai Kartanegara', 'tidak');
INSERT INTO `kabupaten` VALUES (41, 'Paser', 'tidak');
INSERT INTO `kabupaten` VALUES (42, 'Nunukan', 'tidak');
INSERT INTO `kabupaten` VALUES (43, 'Malinau', 'tidak');
INSERT INTO `kabupaten` VALUES (44, 'Berau', 'tidak');
INSERT INTO `kabupaten` VALUES (45, 'Tana Tidung', 'tidak');
INSERT INTO `kabupaten` VALUES (46, 'Penajam Paser Utara', 'iya');
INSERT INTO `kabupaten` VALUES (47, 'Gunung Mas', 'iya');
INSERT INTO `kabupaten` VALUES (48, 'Kapuas', 'tidak');
INSERT INTO `kabupaten` VALUES (49, 'Katingan', 'iya');
INSERT INTO `kabupaten` VALUES (50, 'Katingan', 'tidak');
INSERT INTO `kabupaten` VALUES (51, 'Lamandau', 'iya');
INSERT INTO `kabupaten` VALUES (52, 'Murung Raya', 'iya');
INSERT INTO `kabupaten` VALUES (53, 'Seruyan', 'iya');
INSERT INTO `kabupaten` VALUES (54, 'Sukamara', 'tidak');

-- ----------------------------
-- Table structure for lab
-- ----------------------------
DROP TABLE IF EXISTS `lab`;
CREATE TABLE `lab`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hasil` enum('positif','negatif','reaktif') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lab
-- ----------------------------
INSERT INTO `lab` VALUES (10, 'RS. Unud', 'negatif', 'hasil negatif');
INSERT INTO `lab` VALUES (11, 'Lab A', 'positif', '');
INSERT INTO `lab` VALUES (12, 'Lab Surya ', 'negatif', '');
INSERT INTO `lab` VALUES (13, 'RS. Unud', 'negatif', '');
INSERT INTO `lab` VALUES (14, 'RS. Unud', 'negatif', '');
INSERT INTO `lab` VALUES (15, 'RS. Lombok', 'negatif', '');
INSERT INTO `lab` VALUES (16, 'Sudino Medika', 'reaktif', '');
INSERT INTO `lab` VALUES (17, 'Sudino Medika', 'negatif', '');
INSERT INTO `lab` VALUES (18, 'Jingga Farma', 'negatif', '');
INSERT INTO `lab` VALUES (19, 'Prima Medika', 'negatif', '');
INSERT INTO `lab` VALUES (20, 'NIC Medical', 'negatif', '');
INSERT INTO `lab` VALUES (21, 'Kinta MedikaFarma', 'reaktif', '');
INSERT INTO `lab` VALUES (22, 'MINAHASA MEDICAL CENTRE', 'negatif', '');
INSERT INTO `lab` VALUES (23, 'Prima Medika', 'negatif', '');
INSERT INTO `lab` VALUES (24, 'Rs Maju Mundur', 'negatif', 'aman');
INSERT INTO `lab` VALUES (25, 'Lab klinik kalipacar', 'negatif', 'Negatif');
INSERT INTO `lab` VALUES (26, 'Balai Teknik Kesehatan Lingkungan dan Pengendalian Penyakit Surabaya', 'negatif', 'Negatif');
INSERT INTO `lab` VALUES (27, 'Laboratorium Kesehatan Surabaya', 'reaktif', 'positif');
INSERT INTO `lab` VALUES (28, 'Laboratorium Kesehatan Surabaya', 'negatif', 'Reaktif');
INSERT INTO `lab` VALUES (29, 'Laboratorium Kesehatan Surabaya', 'reaktif', 'Reaktif');
INSERT INTO `lab` VALUES (30, 'Laboratorium Kesehatan Surabaya', 'negatif', 'Reaktif');
INSERT INTO `lab` VALUES (31, 'Laboratorium Kesehatan Surabaya', 'negatif', 'Reaktif');
INSERT INTO `lab` VALUES (32, 'Lab Were', 'negatif', '');
INSERT INTO `lab` VALUES (33, 'Lab ter', 'positif', '');
INSERT INTO `lab` VALUES (34, 'Lab Han', 'positif', '');
INSERT INTO `lab` VALUES (35, 'Lab Jan', 'negatif', '');
INSERT INTO `lab` VALUES (36, 'Lab Hird', 'negatif', '');
INSERT INTO `lab` VALUES (37, 'Lab GJ', 'positif', '');
INSERT INTO `lab` VALUES (38, 'Lab Sev', 'negatif', '');
INSERT INTO `lab` VALUES (39, 'Lab Fre', 'reaktif', '');
INSERT INTO `lab` VALUES (40, 'Lab Ser', 'positif', '');
INSERT INTO `lab` VALUES (41, 'Lab 3S', 'negatif', '');
INSERT INTO `lab` VALUES (42, 'Lab AMG', 'negatif', '');
INSERT INTO `lab` VALUES (43, 'Lab RE', 'positif', '');
INSERT INTO `lab` VALUES (44, 'Lab Ude', 'negatif', '');
INSERT INTO `lab` VALUES (45, 'Lab Ydeh', 'positif', '');
INSERT INTO `lab` VALUES (46, 'Lab Ver', 'reaktif', '');
INSERT INTO `lab` VALUES (47, 'Lab Jed', 'negatif', '');
INSERT INTO `lab` VALUES (48, 'Lab Fd', 'negatif', '');
INSERT INTO `lab` VALUES (49, 'Lab Lima Satu', 'reaktif', '');

-- ----------------------------
-- Table structure for pendatang
-- ----------------------------
DROP TABLE IF EXISTS `pendatang`;
CREATE TABLE `pendatang`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nik` bigint(20) NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_kelamin` enum('L','P') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal_masuk` timestamp(0) NULL DEFAULT current_timestamp(0),
  `id_kabupaten` int(11) NULL DEFAULT NULL,
  `id_petugas` int(11) NULL DEFAULT NULL,
  `id_hasil_test` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `petugas`(`id_petugas`) USING BTREE,
  INDEX `kabupaten`(`id_kabupaten`) USING BTREE,
  INDEX `hasil_test`(`id_hasil_test`) USING BTREE,
  CONSTRAINT `hasil_test` FOREIGN KEY (`id_hasil_test`) REFERENCES `hasil_test` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `kabupaten` FOREIGN KEY (`id_kabupaten`) REFERENCES `kabupaten` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `petugas` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pendatang
-- ----------------------------
INSERT INTO `pendatang` VALUES (9, 2346254678452345, 'Aang Pangantyas Sampurna', 'L', '2020-06-03 20:25:52', 5, 3, 8);
INSERT INTO `pendatang` VALUES (10, 1234523456123456, 'Agus Surya', 'L', '2020-06-03 21:22:52', 11, 1, 9);
INSERT INTO `pendatang` VALUES (11, 6349827364827361, 'Rizky Putra', 'L', '2020-06-03 21:25:33', 12, 1, 10);
INSERT INTO `pendatang` VALUES (12, 142364758928734, 'Nella Kharisma', 'P', '2020-06-03 21:31:59', 16, 1, 11);
INSERT INTO `pendatang` VALUES (13, 1582736495617256, 'Syahiba Saufa', 'P', '2020-06-03 21:33:47', 5, 1, 12);
INSERT INTO `pendatang` VALUES (14, 1827392837283940, 'Ketut Kusuma', 'L', '2020-06-03 21:37:21', 7, 2, 13);
INSERT INTO `pendatang` VALUES (15, 8313294821, 'Makara Waluyo', 'L', '2020-06-03 22:05:47', 7, 2, 14);
INSERT INTO `pendatang` VALUES (16, 8031247321, 'Kania Andriani', 'P', '2020-06-03 22:07:26', 9, 2, 15);
INSERT INTO `pendatang` VALUES (17, 8753236458, 'Danang Prakasa', 'L', '2020-06-03 22:09:12', 25, 2, 16);
INSERT INTO `pendatang` VALUES (18, 5643284721, 'Paramita Nasyiah', 'P', '2020-06-03 22:45:26', 19, 2, 17);
INSERT INTO `pendatang` VALUES (19, 8374512341, 'Dinda Wulandari', 'P', '2020-06-03 22:49:03', 30, 2, 18);
INSERT INTO `pendatang` VALUES (20, 8310245732, 'Jono Simanjuntak', 'L', '2020-06-03 23:49:45', 25, 2, 19);
INSERT INTO `pendatang` VALUES (21, 8094124238, 'Daryani Sihombing', 'P', '2020-06-03 23:59:18', 29, 2, 20);
INSERT INTO `pendatang` VALUES (22, 8473690365, 'Rina Purwanti', 'P', '2020-06-04 00:09:33', 27, 2, 21);
INSERT INTO `pendatang` VALUES (23, 2738419283748234, 'Hotman Paris', 'L', '2020-06-04 00:45:12', 16, 3, 22);
INSERT INTO `pendatang` VALUES (24, 8492751827420582, 'rika adiana', 'P', '2020-06-04 03:22:58', 33, 3, 23);
INSERT INTO `pendatang` VALUES (25, 8492751827427865, 'Budi Supriyadi', 'L', '2020-06-04 03:33:26', 26, 3, 24);
INSERT INTO `pendatang` VALUES (26, 4728901748293718, 'Hajah Nurul Sobah', 'P', '2020-06-04 03:37:35', 37, 3, 25);
INSERT INTO `pendatang` VALUES (27, 56010101827310001, 'Galih cahyadi', 'L', '2020-06-04 03:41:23', 39, 3, 26);
INSERT INTO `pendatang` VALUES (28, 1902030466660003, 'Nurul Hidayah', 'P', '2020-06-04 03:45:46', 47, 3, 27);
INSERT INTO `pendatang` VALUES (29, 506050191890001, 'Vivian Afifah', 'P', '2020-06-04 03:57:25', 41, 3, 28);
INSERT INTO `pendatang` VALUES (30, 3212314531000004, 'Dia Damayanti', 'P', '2020-06-04 04:00:32', 39, 3, 29);
INSERT INTO `pendatang` VALUES (31, 3724501238293718, 'Adi Guna', 'L', '2020-06-04 12:04:23', 20, 1, 30);
INSERT INTO `pendatang` VALUES (32, 5739002432245756, 'Galung', 'L', '2020-06-04 12:06:05', 12, 1, 31);
INSERT INTO `pendatang` VALUES (33, 8723017123127203, 'Galuh', 'P', '2020-06-04 12:08:41', 22, 1, 32);
INSERT INTO `pendatang` VALUES (34, 234163748298790, 'Wira Hadi', 'L', '2020-06-04 12:11:50', 21, 1, 33);
INSERT INTO `pendatang` VALUES (35, 2245678784853276, 'Slamet Sulaiman', 'L', '2020-06-04 12:15:48', 54, 1, 34);
INSERT INTO `pendatang` VALUES (36, 4728901748293745, 'Hiro Pamungkas', 'L', '2020-06-04 12:19:00', 48, 1, 35);
INSERT INTO `pendatang` VALUES (37, 3498925758493890, 'Riska Meda', 'P', '2020-06-04 12:21:09', 14, 1, 36);
INSERT INTO `pendatang` VALUES (38, 9454923556203718, 'Tessa Putri', 'P', '2020-06-04 12:23:24', 44, 1, 37);
INSERT INTO `pendatang` VALUES (39, 845338121723293223, 'Kelvin ', 'L', '2020-06-04 12:26:18', 11, 1, 38);
INSERT INTO `pendatang` VALUES (40, 3578752766259708, 'Narestha ', 'L', '2020-06-04 12:29:52', 16, 1, 39);
INSERT INTO `pendatang` VALUES (41, 3443566900293726, 'Hartana Jingga', 'L', '2020-06-04 12:32:50', 20, 1, 40);
INSERT INTO `pendatang` VALUES (42, 7048234548353710, 'Lova Ayu', 'P', '2020-06-04 12:36:51', 5, 1, 41);
INSERT INTO `pendatang` VALUES (43, 143345646293732, 'Taufik G', 'L', '2020-06-04 12:39:33', 24, 1, 42);
INSERT INTO `pendatang` VALUES (44, 46210001458314769, 'Darmo Agus', 'L', '2020-06-04 12:42:52', 21, 1, 43);
INSERT INTO `pendatang` VALUES (45, 14019181727309992, 'Ningsih Era', 'P', '2020-06-04 12:44:44', 15, 1, 44);
INSERT INTO `pendatang` VALUES (46, 56981598764310254, 'Ryan ', 'L', '2020-06-04 12:47:39', 24, 1, 45);
INSERT INTO `pendatang` VALUES (47, 25599121827309885, 'Dermatu Darmo', 'L', '2020-06-04 12:50:00', 6, 1, 46);
INSERT INTO `pendatang` VALUES (48, 66019235713310050, 'Sevia Eestia', 'P', '2020-06-04 12:52:25', 13, 1, 47);

-- ----------------------------
-- Table structure for perbatasan
-- ----------------------------
DROP TABLE IF EXISTS `perbatasan`;
CREATE TABLE `perbatasan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of perbatasan
-- ----------------------------
INSERT INTO `perbatasan` VALUES (1, 'Pelabuhan Gilimanuk', NULL);
INSERT INTO `perbatasan` VALUES (2, 'Pelabuhan Padangbai', NULL);
INSERT INTO `perbatasan` VALUES (3, 'Bandar Udara Internasional Ngurah Rai', NULL);

-- ----------------------------
-- Table structure for petugas
-- ----------------------------
DROP TABLE IF EXISTS `petugas`;
CREATE TABLE `petugas`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_perbatasan` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `perbatasan`(`id_perbatasan`) USING BTREE,
  CONSTRAINT `perbatasan` FOREIGN KEY (`id_perbatasan`) REFERENCES `perbatasan` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of petugas
-- ----------------------------
INSERT INTO `petugas` VALUES (1, 'petugas Pelabuhan Gilimanuk', 'gilimanuk', 'gilimanuk', 1);
INSERT INTO `petugas` VALUES (2, 'petugas Pelabuhan Padangbai', 'padangbai', 'padangbai', 2);
INSERT INTO `petugas` VALUES (3, 'petugas Bandar Udara Internasional Ngurah Rai', 'bandara', 'bandara', 3);

-- ----------------------------
-- Table structure for rumah_sakit
-- ----------------------------
DROP TABLE IF EXISTS `rumah_sakit`;
CREATE TABLE `rumah_sakit`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rumah_sakit
-- ----------------------------
INSERT INTO `rumah_sakit` VALUES (1, 'RSUP Sanglah', 'Jl. Diponegoro, Dauh Puri Klod, Kec. Denpasar Bar., Kota Denpasar, Bali 80113', '(0361) 227911');
INSERT INTO `rumah_sakit` VALUES (2, 'RSUD Sanjiwani Gianyar', 'Jl. Ciung Wanara-Gianyar No.2, Gianyar, Kec. Gianyar, Kabupaten Gianyar, Bali 80511', '(0361) 943049');
INSERT INTO `rumah_sakit` VALUES (3, 'RSUD Kab. Buleleng', 'Jl. Ngurah Rai No.30, Astina, Kec. Buleleng, Kabupaten Buleleng, Bali 81113', '(0362) 22046');
INSERT INTO `rumah_sakit` VALUES (4, 'RSUD Tabanan', 'l. Pahlawan No.14, Delod Peken, Kec. Tabanan, Kabupaten Tabanan, Bali 82121', '(0361) 811027');
INSERT INTO `rumah_sakit` VALUES (5, 'RSUD Wangaya', 'Jl. Kartini No.133, Dauh Puri Kaja, Kec. Denpasar Utara, Kota Denpasar, Bali 80231', '(0361) 222141');
INSERT INTO `rumah_sakit` VALUES (6, 'RSUD Bali Mandara', 'Jl. By Pass Ngurah Rai No.548, Sanur Kauh, Kec. Denpasar Sel., Kota Denpasar, Bali', '(0361) 4490566');
INSERT INTO `rumah_sakit` VALUES (7, 'RSD Mangusada', 'Jalan Raya Kapal, Mangupura, Mengwi, Kapal, Kec. Mengwi, Kabupaten Badung, Bali 80351', '(0361) 9006813');
INSERT INTO `rumah_sakit` VALUES (8, 'RSU Universitas Udayana', 'Jl. Rumah Sakit Unud, Jimbaran, Kec. Kuta Sel., Kabupaten Badung, Bali 80361', '(0361) 8953670');
INSERT INTO `rumah_sakit` VALUES (9, 'RSU Negara', 'Jl. Wijaya Kusuma No.17, Baler Bale Agung, Kec. Negara, Kabupaten Jembrana, Bali 82218', '(0365) 41006');
INSERT INTO `rumah_sakit` VALUES (10, 'RSUD Klungkung', 'Jl. Flamboyan No.40, Semarapura Kauh, Kec. Klungkung, Kabupaten Klungkung, Bali 80714', '(0366) 21172');
INSERT INTO `rumah_sakit` VALUES (11, 'RS Pratama Giri Emas', 'Sangsit, Sawan, Kabupaten Buleleng, Bali 81171', '(0362) 3303884');

SET FOREIGN_KEY_CHECKS = 1;
