-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2020 at 07:00 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mariabsen`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE IF NOT EXISTS "absensi" (
`id_absensi` int(10) NOT NULL,
  `nis` varchar(500) NOT NULL,
  `nm_kelas` char(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `ket` enum('H','S','I','A') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `keterangan` varchar(300) NOT NULL,
  `tanggal` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `info` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `jam_pelajaran` varchar(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=539 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `absensi_sholat`
--

CREATE TABLE IF NOT EXISTS "absensi_sholat" (
`id_absensi` int(10) NOT NULL,
  `nis` varchar(500) NOT NULL,
  `nm_kelas` char(50) NOT NULL,
  `ket` enum('S','TS','HL') NOT NULL,
  `keterangan` varchar(300) NOT NULL,
  `tanggal` char(20) NOT NULL,
  `info` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absensi_sholat`
--

INSERT INTO "absensi_sholat" (`id_absensi`, `nis`, `nm_kelas`, `ket`, `keterangan`, `tanggal`, `info`) VALUES
(11, '121233740003175848', 'IX-C', 'S', 'waw', '25/02/2020', 'succes'),
(12, '121233740003175859', 'IX-C', 'TS', 'wadu', '25/02/2020', 'succes'),
(13, '121233740003175868', 'IX-C', 'TS', 'parrsss', '25/02/2020', 'succes'),
(14, '121233740003175871', 'IX-C', 'HL', 'hmm', '25/02/2020', 'succes');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE IF NOT EXISTS "kelas" (
`id_kelas` int(10) NOT NULL,
  `nm_kelas` char(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO "kelas" (`id_kelas`, `nm_kelas`) VALUES
(20, 'VII-D'),
(21, 'VII-E'),
(19, 'VII-C'),
(4, 'IX-E'),
(5, 'IX-D'),
(6, 'IX-F'),
(18, 'VII-B'),
(17, 'VII-A'),
(14, 'IX-A'),
(15, 'IX-B'),
(16, 'IX-C'),
(22, 'VII-F'),
(23, 'VIII-A'),
(24, 'VIII-B'),
(25, 'VIII-C'),
(26, 'VIII-D'),
(27, 'VIII-E'),
(28, 'VIII-F');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `id_siswa` varchar(40) DEFAULT NULL,
  `nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nis` varchar(40) NOT NULL DEFAULT '',
  `jns_kel` enum('Laki-laki','Perempuan') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tgl_lahir` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `tmpt_lahir` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `nm_kelas` varchar(40) NOT NULL,
  `nama_ortu` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama`, `nis`, `jns_kel`, `tgl_lahir`, `tmpt_lahir`, `alamat`, `nm_kelas`, `nama_ortu`) VALUES
('121233740003175888', 'ZIARA LAILATUL FAJRI', '121233740003175888', 'Perempuan', '190704', 'SEMARANG', 'Bantardowo RT. 02 RW. 07', 'IX-C', 'Totok Budi Santoso'),
('121233740003175830', 'ZAINUS PRAMUDYA', '121233740003175830', 'Laki-laki', '291104', 'KABUPATEN SEMARANG', 'kepil RT. 04 RW. 02', 'IX-C', 'Nur Riyadin'),
('121233740003175934', 'WAHYU LISTIA KANDUNG', '121233740003175934', 'Perempuan', '020105', 'KABUPATEN SEMARANG', 'SEKARAN RT.01/RW.02', 'IX-C', 'MUHLISIN'),
('121233740003175933', 'VISIA MARGARETHA DAVINA', '121233740003175933', 'Perempuan', '031005', 'SEMARANG', 'Jl. Cempaka Sari Timur RT. 04 RW. 01', 'IX-C', 'Muhammad Muhajir'),
('121233740003186157', 'THALITA BRIGITA RAHMADINA', '121233740003186157', 'Perempuan', '220705', 'SEMARANG ', 'Jl. Taman Siswa RT. 01 RW. 05', 'IX-C', 'Nurdin'),
('121233740003175828', 'RAYNALDY SUGIHARTONO', '121233740003175828', 'Laki-laki', '300104', 'SEMARANG', 'Delik Sari RT. 02 RW. 06', 'IX-C', 'Otang Sumianto'),
('121233740003175825', 'NOR HIDAYAT', '121233740003175825', 'Laki-laki', '280705', 'SEMARANG', 'Pakintelan RT. 04 RW. 02', 'IX-C', 'Hery Sugiyono'),
('121233740003175822', 'MUNASIKIN', '121233740003175822', 'Laki-laki', '200804', 'SEMARANG', 'WATUSARI RT. 02 / RW. 06 PAKINTELAN', 'IX-C', 'MARYONO'),
('121233740003175859', 'MUKHAMMAD ANDRE FIRMANSYAH', '121233740003175859', 'Laki-laki', '160604', 'KOTA SEMARANG', 'Muntal RT. 01 RW. 05', 'IX-C', 'Ngatiyono'),
('121233740003175820', 'MUHAMMAD YAFIQ BAGUS ADHISAPUTRO', '121233740003175820', 'Laki-laki', '070704', 'SEMARANG', 'Jl. Talangsari I No. 48 RT.02 RW. 01', 'IX-C', 'Adhi Supriyanto'),
('121233740003186176', 'MUHAMMAD MIFTAHKHUDIN', '121233740003186176', 'Laki-laki', '231004', 'SEMARANG', 'Pakintelan', 'IX-C', 'Busro'),
('121233740003175813', 'KHILMA MIFTAKHUDDIN', '121233740003175813', 'Laki-laki', '160504', 'KABUPATEN SEMARANG', 'PATEMON RT.01/RW.04', 'IX-C', 'SOLIKIN'),
('121233740003175848', 'KHAFID MAULANA', '121233740003175848', 'Laki-laki', '180804', 'SEMARANG', 'PAKINTELAN RT 04 RW 03 MANGUNSARI GUNUNGPATI', 'IX-C', 'KASTURI'),
('121233740003175927', 'IDA AYU NAJWASARI', '121233740003175927', 'Perempuan', '010105', 'SEMARANG', 'Patemon RT. 03 RW. 02', 'IX-C', 'Sukadi'),
('121233740003186158', 'HILMY HABIB KURNIAWAN', '121233740003186158', 'Laki-laki', '170505', 'SEMARANG', 'Pakintelan RT. 03 RW. 02', 'IX-C', 'Ikhwan'),
('121233740003175844', 'FAJAR INDRA APRILIAWAN', '121233740003175844', 'Laki-laki', '130404', 'DEMAK', 'Kuncir RT. 01 RW. 03', 'IX-C', 'Siswoyo'),
('121233740003175871', 'DINI AMALIA', '121233740003175871', 'Perempuan', '080604', 'SEMARANG', 'WATUSARI RT. 03 / RW.06 PAKINTELAN', 'IX-C', 'ABDUL ROCHIM'),
('121233740003186156', 'DEDY KURNIAWAN', '121233740003186156', 'Laki-laki', '030704', 'SEMARANG', 'Patemon RT. 03 RW. 04', 'IX-C', 'Tulkah'),
('121233740003175918', 'AULIA KASANAH', '121233740003175918', 'Perempuan', '310505', 'SEMARANG', 'Gebyog RT. 02 RW. 03', 'IX-C', 'Wagiyono'),
('121233740003175868', 'AULIA EKA RIZQI NASRUDIEN', '121233740003175868', 'Perempuan', '120405', 'KABUPATEN SEMARANG', 'Jl. Cempaka Sari Timur 3 No. 14 RT. 03 RW. 01', 'IX-C', 'IMAM NASRODIN'),
('121233740003196187', 'Ahmad Fadin Nadzir Mashadi', '121233740003196187', 'Laki-laki', '12 Maret 2007', '', 'Kalisidi, RT. 05 RW. 06,Ungaran Barat', 'VII-A', 'Kholiq Mashadi'),
('121233740003196188', 'Ahmad Yafi Fauzan', '121233740003196188', 'Laki-laki', '23 Juni 2007', '', 'Wonodri Krajan, No. 503 RT. 07 RW. 06,Semarang Selatan', 'VII-A', 'Mochamad Chidir'),
('121233740003196189', 'Ahmad Zaenal Arifin', '121233740003196189', 'Laki-laki', '17 April 2007', '', 'Ds. Lemahireng RT 001 RW 003 ,Bawen', 'VII-A', 'Juriyanto'),
('121233740003196190', 'Akbar Muslim', '121233740003196190', 'Laki-laki', '05 Mei 2004', '', 'Dsn. Krajan RT. 04 RW. 03 ,Bawen', 'VII-A', 'Slamet Hartono'),
('121233740003196191', 'Akrom Anwarul Masalik', '121233740003196191', 'Laki-laki', '18 Maret 2007', '', 'Parengsari, Gowongan RT. 03 RW, 05,Ungaran Barat', 'VII-A', 'Mohamad Sodiq'),
('121233740003196192', 'Aldewangga Kusuma Habsyi', '121233740003196192', 'Laki-laki', '21 November 2006', '', 'Jl. Trajutrisno II/ 219 A, RT. 04 RW. 02,Semarang Barat', 'VII-A', 'Subekhi'),
('121233740003196193', 'Aldi Saputra', '121233740003196193', 'Laki-laki', '06 Juni 2006', '', 'Saptamarga III, RT. 05 RW. 01,Tembalang', 'VII-A', 'Teteg Slamet'),
('121233740003196194', 'Anas Ahmad Fahrezi', '121233740003196194', 'Laki-laki', '05 Juni 2007', '', 'Ngetuk RT. 01 RW. 06 ,Pringapus', 'VII-A', 'Turyadi'),
('121233740003196195', 'Annas Syafiq Kurniawan', '121233740003196195', 'Laki-laki', '10 April 2007', '', 'Macanmati, RT. 02 RW. 02,Pringapus', 'VII-A', 'Irvan Kurniawan'),
('121233740003196196', 'Ardhika Rafa Farel', '121233740003196196', 'Laki-laki', '21 Agustus 2007', '', 'Krajan RT 001 RW 001,Bergas', 'VII-A', ''),
('121233740003196197', 'Aziz Wahyu Ramadhan', '121233740003196197', 'Laki-laki', '02 November 2005', '', 'Krajan RT 007 RW 002,Bergas', 'VII-A', 'Alim Kurniawan'),
('121233740003196198', 'Decka Dyo Kurniawan', '121233740003196198', 'Laki-laki', '12 Agustus 2007', '', 'Lingk Berokah RT 001 RW 006,Bawen', 'VII-A', 'Subagiyo'),
('121233740003196199', 'Enru Halim Wiryanto', '121233740003196199', 'Laki-laki', '19 Januari 2007', '', 'Lemah Ireng RT 004 RW 003,Bawen', 'VII-A', 'Sabarudin'),
('121233740003196200', 'Ferdito Nelson Arisky', '121233740003196200', 'Laki-laki', '29 September 2005', '', 'Jl. Sapta Marga III/330 RT 001 RW 009,Banyumanik', 'VII-A', 'Aji Dwi Apriyanto'),
('121233740003196201', 'Fikri Muhamad Nadhif', '121233740003196201', 'Laki-laki', '29 Mei 2007', '', 'Jl. Pancong RT. 03 RW. 02,Cilincing', 'VII-A', 'Sarjono'),
('121233740003196202', 'Firas Ahmadinejad', '121233740003196202', 'Laki-laki', '31 Januari 2007', '', 'Krajan RT 009 RW 002,Bergas', 'VII-A', 'Gunarto'),
('121233740003196203', 'Hanif Saifullah', '121233740003196203', 'Laki-laki', '05 Juli 2007', '', 'Jl. Tarupolo, RT 08 RW 10,Semarang Barat', 'VII-A', 'Warsito'),
('121233740003196204', 'Irfansyah Maulana', '121233740003196204', 'Laki-laki', '05 September 2007', '', 'Jl. Bukit Cempaka 10 No. 248 RT 006 RW 021,Tembalang', 'VII-A', 'Arif Hartanto'),
('121233740003196205', 'Izza Viano Maharam', '121233740003196205', 'Laki-laki', '07 November 2006', '', 'Dk. Kaligetas RT 002 RW 004,Mijen', 'VII-A', 'Tolami'),
('121233740003196206', 'Luthfi Azhril Muhammad Fathin M', '121233740003196206', 'Laki-laki', '10 Juni 2006', '', 'Jl. Dewi Sartika Barat No. 23, RT. 06 RW. 03,Gunungpati', 'VII-A', 'Muslimin'),
('121233740003196207', 'M. Wildan Zaeduniam', '121233740003196207', 'Laki-laki', '08 Januari 2008', '', 'Kp. Gedong RT 006 RW 005,Kaliwungu Selatan', 'VII-A', 'Muzaedun'),
('121233740003196208', 'Mahardika Septa Avril Choirul Putra', '121233740003196208', 'Laki-laki', '14 April 2007', '', 'Tawangsari, RT. 01 RW. 01,Semarang Barat', 'VII-A', 'Muhamad Choirudin'),
('121233740003196209', 'Muh Zaenal Wachid Syehan', '121233740003196209', 'Laki-laki', '19 Maret 2007', '', 'Dk. Kaligetas RT 04 RW 04,Mijen', 'VII-A', 'Pranyoto'),
('121233740003196210', 'Muhamad Alvin Al Muttaqin', '121233740003196210', 'Laki-laki', '18 April 2007', '', 'Pakis RT 004  RW 001,Beringin', 'VII-A', 'Imamul Muttaqin'),
('121233740003196211', 'Muhamad Dimas Abimanyu', '121233740003196211', 'Laki-laki', '26 Maret 2007', '', 'Tegalsari RT 006 RW 003,Pringapus', 'VII-A', 'Yudi Afriyanto'),
('121233740003196212', 'Muhamad Farhan Indratama', '121233740003196212', 'Laki-laki', '15 Oktober 2006', '', 'Bulu RT 001 RW 006,Ungaran Timur', 'VII-A', 'Mukminin'),
('121233740003196213', 'Muhamad Faris', '121233740003196213', 'Laki-laki', '26 Maret 2007', '', 'Jl. Jurang Blimbing RT, 01 RW, 04,Tembalang', 'VII-A', 'Suyono'),
('121233740003196214', 'Muhammad Agus Noval', '121233740003196214', 'Laki-laki', '12 Agustus 2007', '', 'Gonotimur RT. 02 RW. 03 ,Limbangan', 'VII-A', 'Salim'),
('121233740003196215', 'Muhammad Galih Wicaksana', '121233740003196215', 'Laki-laki', '11 Februari 2007', '', 'Tembalang RT 02 RW 03,Tembalang', 'VII-A', 'Marsudiyanto'),
('121233740003196217', 'Nicky Zahwan Sandar Putro', '121233740003196217', 'Laki-laki', '30 Mei 2007', '', 'Ngijo RT 003 RW 001,Gunungpati', 'VII-A', 'Santoso'),
('121233740003196218', 'Raditya Bagus Putra Laksono', '121233740003196218', 'Laki-laki', '12 Juni 2007', '', 'Perum Villa Sapen River Park,Ungaran Barat', 'VII-A', 'Eko Budi Laksono'),
('121233740003196219', 'Rifky Aprilian Mazunata', '121233740003196219', 'Laki-laki', '06 April 2007', '', 'Dsn. Compok, RT. 03 RW. 05,Ungaran Barat', 'VII-A', 'Nasropi'),
('121233740003196220', 'Rio Royyan Amin', '121233740003196220', 'Laki-laki', '28 Oktober 2006', '', 'Jl. Boom Lama, RT. 01 RW. 03,Semarang Utara', 'VII-A', 'Toha Al Amin'),
('121233740003196221', 'Royyan Alaika', '121233740003196221', 'Laki-laki', '21 April 2007', '', 'Malangsari I RT 004 RW 007,Pedurungan', 'VII-A', 'Muhammad Iksan'),
('121233740003196222', 'Syahril Hamdan Hakiqi', '121233740003196222', 'Laki-laki', '28 September 2006', '', 'Tanjung Beludu, RT. 05 RW. 02,Kelayang', 'VII-A', 'Zakaria'),
('121233740003196223', 'Taufiqurrohman Al Ghozali', '121233740003196223', 'Laki-laki', '19 Oktober 2006', '', 'Dk. Kebandingan, RT. 08 RW. 03,Warureja', 'VII-A', 'Suripna'),
('121233740003196224', 'Teguh Bramantya Jati', '121233740003196224', 'Laki-laki', '17 Juni 2006', '', 'Tembalang RT 001 RW 004,Tembalang', 'VII-A', 'Riswanto'),
('121233740003196225', 'Yunan Ahmad Sofian', '121233740003196225', 'Laki-laki', '22 Oktober 2006', '', 'Jl. Tarupolo Raya RT 006 RW 03,Semarang Barat', 'VII-A', 'Tarsono (Alm)'),
('121233740003196226', 'Aditya Putra Sabana', '121233740003196226', 'Laki-laki', '16 September 2006', '', 'Watusari, RT. 01 RW. 06,Gunungpati', 'VII-B', 'Budi Wahyono'),
('121233740003196227', 'Adiva Larisky Mabriansyah', '121233740003196227', 'Perempuan', '01 Oktober 2007', '', 'Jetis RT. 01 RW. 01,Gunungpati', 'VII-B', 'Wagiran'),
('121233740003196228', 'Efan Mahda Priyana', '121233740003196228', 'Laki-laki', '14 Juni 2007', '', 'Banaran, RT. 03 RW. 04,Gunungpati', 'VII-B', 'Mudrikin'),
('121233740003196229', 'Agung Hadi Prasetyo', '121233740003196229', 'Laki-laki', '10 Maret 2007', '', 'Patemon, RT. 02 RW. 02 ,Gunungpati', 'VII-B', 'Ngatiyono (Alm)'),
('121233740003196230', 'Alganesa Eka Putra', '121233740003196230', 'Laki-laki', '30 Maret 2007', '', 'Watusari RT 02 RW 06,Gunungpati', 'VII-B', 'Setiyawan Puji Mulyono'),
('121233740003196231', 'Ali Cahya Mukti', '121233740003196231', 'Laki-laki', '12 Mei 2006', '', 'Jl. Dewi Sartika Timur RT. 02 RW. 05,Gunungpati', 'VII-B', 'Soni Prasetyo'),
('121233740003196232', 'Darma Adi Setiawan', '121233740003196232', 'Laki-laki', '10 Mei 2007', '', 'Kepil RT 004 RW 002,Gunungpati', 'VII-B', 'sumaryadi'),
('121233740003196233', 'Devaro Ridho Damara', '121233740003196233', 'Laki-laki', '21 Maret 2007', '', 'Taman Puri Sartika Blok C-189,Gunungpati', 'VII-B', 'Beny Yulianto'),
('121233740003196234', 'Dina Pratiwi', '121233740003196234', 'Perempuan', '05 Juni 2007', '', 'Wonorejo Selatan, RT. 02 RW. 05,Bandongan ', 'VII-B', 'Sipyani'),
('121233740003196235', 'Eka Bagas Saputra', '121233740003196235', 'Laki-laki', '07 Mei 2006', '', 'Muntal, RT. 02 RW. 05,Gunungpati', 'VII-B', 'Susiyanto'),
('121233740003196236', 'Feri Setiawan', '121233740003196236', 'Laki-laki', '05 Juli 2006', '', 'Sekaran, RT. 03 RW. 01,Gunungpati', 'VII-B', 'Samto'),
('121233740003196237', 'Firda Zulfa Aulia', '121233740003196237', 'Perempuan', '06 Januari 2007', '', 'Banaran RT 008 RW 005,Gunungpati', 'VII-B', 'Sukarman'),
('121233740003196238', 'Iqbal Yogi Saputra', '121233740003196238', 'Laki-laki', '17 Juli 2006', '', 'Sekaran,Gunungpati', 'VII-B', 'Sardi'),
('121233740003196239', 'Lantang Rukmana Jiwa', '121233740003196239', 'Laki-laki', '23 Mei 2006', '', 'Dk. Pengkol RT. 06 RW. 01,Gunungpati', 'VII-B', 'Amral Yustian'),
('121233740003196240', 'Muhammad Sofian Arif', '121233740003196240', 'Laki-laki', '10 Juli 2007', '', 'Patemon RT 002 RW 003,Gunungpati', 'VII-B', 'Mafsudin'),
('121233740003196241', 'Muhammad Ikhsan Aditya', '121233740003196241', 'Laki-laki', '02 Februari 2007', '', 'Patemon RT. 03 RW. 04,Gunungpati', 'VII-B', 'Abdul wahid'),
('121233740003196242', 'Muhammad Ilyas Sadzali', '121233740003196242', 'Laki-laki', '24 Maret 2007', '', 'Kandri, RT, 07 RW. 01,Gunungpati', 'VII-B', 'Amin, SH'),
('121233740003196243', 'Muhammad Mahesa Galih Pratama', '121233740003196243', 'Laki-laki', '20 April 2007', '', 'Patemon RT 003 RW 001,Gunungpati ', 'VII-B', 'Abdul Majid'),
('121233740003196244', 'Muhammad Naufal Firmansyah', '121233740003196244', 'Laki-laki', '29 Juli 2006', '', 'jl. Kendeng III/5 RT 001 RW 003,Gajahmungkur', 'VII-B', 'Rochman'),
('121233740003196245', 'Mukhamad Rakha Bagas Nur Arfiansah', '121233740003196245', 'Laki-laki', '11 Maret 2007', '', 'Patemon RT 03 RW 02,Gunungpati', 'VII-B', ''),
('121233740003196246', 'Nabila Rizqi Putri', '121233740003196246', 'Perempuan', '06 Juni 2007', '', 'Dsn. Gebug, RT. 04 RW. 09,Ungaran Barat', 'VII-B', 'Sriyanto'),
('121233740003196247', 'Nadya Fauzia', '121233740003196247', 'Perempuan', '02 Juni 2007', '', 'Pakintelan, RT. 04 RW. 01,Gunungpati', 'VII-B', 'Iwan Susariyono'),
('121233740003196248', 'Nala Fitria Milatina', '121233740003196248', 'Perempuan', '07 Oktober 2007', '', 'Kebonmanis, RT. 04 RW. 03,Gunungpati', 'VII-B', 'Sukari'),
('121233740003196249', 'Panji Setiawan', '121233740003196249', 'Laki-laki', '24 April 2007', '', 'Sedayu, RT. 03 RW. 01,Gunungpati', 'VII-B', 'Suratman'),
('121233740003196250', 'Puti Hyachinta', '121233740003196250', 'Perempuan', '12 Agustus 2007', '', 'Jl. Raya Mangunsari - Pakintelan,Gunungpati', 'VII-B', 'Yulio Enzeno'),
('121233740003196252', 'Rahma Purnama Sari', '121233740003196252', 'Perempuan', '25 November 2006', '', 'Kalialang Baru, RT. 02 RW. 07,Gunungpati', 'VII-B', 'Purwadi'),
('121233740003196253', 'Rifky Prasetyo Widiarto', '121233740003196253', 'Laki-laki', '04 April 2007', '', 'Gg. Bima, Banaran, RT. 03 RW. 05,Gunungpati', 'VII-B', 'Wiwin Widiarto'),
('121233740003196254', 'Rizky Cahyo Maulana', '121233740003196254', 'Laki-laki', '22 April 2005', '', 'Krajan, RT. 01 RW. 01,Bergas', 'VII-B', 'Masrichan '),
('121233740003196255', 'Saka Rizki Nur Ahlian', '121233740003196255', 'Laki-laki', '11 Agustus 2006', '', 'Patemon RT 2 RW 3,Gunungpati', 'VII-B', 'Nur Sodik'),
('121233740003196256', 'Siti Ayu Ningseh Wibowo', '121233740003196256', 'Perempuan', '30 Mei 2007', '', 'Drono, RT 02 RW II,Tawangharjo', 'VII-B', 'Wibowo'),
('121233740003196257', 'Tazkiyya Amalia Haqqin Nabilah Ali', '121233740003196257', 'Perempuan', '06 November 2006', '', 'Sekaran, RT. 03 RW. 03,Gunungpati', 'VII-B', 'Jumali'),
('121233740003196258', 'Tefanni Naillah Ammar Lin', '121233740003196258', 'Perempuan', '22 November 2006', '', 'Dsn. Gebug, RT. 04 RW. 09,Ungaran Barat', 'VII-B', 'Terry Rama Gunawan'),
('121233740003196259', 'Ubai Al Firdaus', '121233740003196259', 'Laki-laki', '11 Mei 2007', '', 'Jl. Candi Sukuh RT 006 RW 004,Ngaliyan', 'VII-B', 'Alim'),
('121233740003196261', 'Zulian Adi Pradita ', '121233740003196261', 'Laki-laki', '27 Juli 2007', '', 'Sekaran, RT. 04 RW. 01,Gunungpati', 'VII-B', 'Zulaedi'),
('121233740003196262', 'Achmad Fatih Syahrul Mubarok', '121233740003196262', 'Laki-laki', '30 September 2007', '', 'Kalongan RT 1 RW 8,Ungaran Timur', 'VII-C', 'Yusri'),
('121233740003196263', 'Afta Ayuningtiyas Habsari Yuliyanto', '121233740003196263', 'Perempuan', '11 November 2006', '', 'Gebyog, RT. 03 RW. 03,Gunungpati', 'VII-C', 'Yuliyanto'),
('121233740003196264', 'Aida Siska Nur Prdana', '121233740003196264', 'Perempuan', '10 Januari 2007', '', 'Tambakaji RT 008 RW 001,Ngaliyan', 'VII-C', 'Markum Maryanto'),
('121233740003196265', 'Akhmad Huda Khoeruman', '121233740003196265', 'Laki-laki', '22 Juni 2007', '', 'Sabrangan, RT. 04 RW. 03,Gunungpati', 'VII-C', 'Ngatiman'),
('121233740003196266', 'Alya Aulia', '121233740003196266', 'Perempuan', '28 Agustus 2007', '', 'Pegiringan RT 013 RW 005,Bantarbolang', 'VII-C', 'Busro'),
('121233740003196267', 'Angelina Djolie', '121233740003196267', 'Perempuan', '11 November 2007', '', 'Patemon RT 003 RW 004,Gunungpati', 'VII-C', 'Ruslan Guci'),
('121233740003196268', 'Anisa Tri Utami', '121233740003196268', 'Perempuan', '11 Desember 2006', '', 'Jln. Jurang Brimbing RT 004 RW 004,Tembalang', 'VII-C', 'Lagi'),
('121233740003196269', 'Berliana Putri Diqta Az Zahra', '121233740003196269', 'Perempuan', '22 Juli 2007', '', 'Jl. Candi Mas Raya No. 117, RT. 01 RW. 07,Ngaliyan', 'VII-C', 'Nur Mohamad Sodiq'),
('121233740003196270', 'Bimantara Prima Satria', '121233740003196270', 'Laki-laki', '18 November 2006', '', 'Kalilangse 38, RT. 08 RW. 04,Gajahmungkur', 'VII-C', 'Dicky Susilo'),
('121233740003196350', 'Fajar Indah Wulansari', '121233740003196350', 'Perempuan', '01 Juni 2007', '', 'Kluwak RT. 02 RW. 04 ,Limbangan', 'VII-C', 'Rawuh'),
('121233740003196271', 'Galang Nur Ridwan Prasetya', '121233740003196271', 'Laki-laki', '21 April 2007', '', 'Borobudur Timur RT. 04 RW. 09,Semarang Barat', 'VII-C', 'Yuwono'),
('121233740003196272', 'Irvan Bagus Santoso', '121233740003196272', 'Laki-laki', '07 Februari 2007', '', 'Kaligetas, RT. 02 RW. 04,Mijen', 'VII-C', 'Nur Wakhid'),
('121233740003196274', 'Latifatul Umu Syadiyah', '121233740003196274', 'Perempuan', '31 Juli 2007', '', 'Kalongan RT 1 RW 8,Ungaran Timur', 'VII-C', 'Mufti Nasrulloh'),
('121233740003196276', 'Mohammad Riswan Hidayatullah', '121233740003196276', 'Laki-laki', '15 September 2006', '', 'Tugurejo RT 003 RW 001 ,Tugu', 'VII-C', 'Mohammad Al Ashar'),
('121233740003196278', 'Muhamad Soleh', '121233740003196278', 'Laki-laki', '05 Mei 2007', '', 'Dk. Kaligetas, RT. 02 RW. 04,Mijen', 'VII-C', 'Sriyono'),
('121233740003196279', 'Muhammad Albas Alwi Alfirdausi', '121233740003196279', 'Laki-laki', '23 Maret 2007', '', 'Lerep, RT. 03 RW. 03,Ungaran Barat', 'VII-C', 'Ahmad Muhaimin '),
('121233740003196282', 'Nayla Aprillia Salma', '121233740003196282', 'Perempuan', '16 April 2007', '', 'Dk. Rowo Tengah RT, 02 RW, 04,Tembalang', 'VII-C', 'Rudy Agus Giyanto'),
('121233740003196283', 'Nida Akrima Zahara', '121233740003196283', 'Perempuan', '23 Juli 2006', '', 'Ds. Pluwang RT 001 RW 007,Bergas', 'VII-C', 'Suwito'),
('121233740003196284', 'Nur Afni Oktafia', '121233740003196284', 'Perempuan', '13 Juni 2007', '', 'Krajan RT 001 RW 001,Bergas', 'VII-C', 'Warsono'),
('121233740003196285', 'Nurdianingsih', '121233740003196285', 'Perempuan', '01 April 2007', '', 'Jl. Jurang Blimbing RT, 04 RW, 04,Tembalang', 'VII-C', 'Rusijadi'),
('121233740003196287', 'Rafeyla Falasiva Mecca Wardhani', '121233740003196287', 'Perempuan', '31 Desember 2006', '', 'Perum BPN Jl. Isaac Newton No. 142, RT. 06 RW. 01,Gunungpati', 'VII-C', 'Ali Murthado Haru Swasana'),
('121233740003196288', 'Raya Brilliant Oktaviana', '121233740003196288', 'Perempuan', '25 Oktober 2007', '', 'Ds. Jawu RT 002 RW 005,Boja', 'VII-C', 'Suyanto'),
('121233740003196290', 'Sabina Nashwa Sarahan', '121233740003196290', 'Perempuan', '15 Mei 2007', '', 'Perumahan Grand Permadani No. 5, Cebongan, RT. 01 RW. 01,Argomulyo', 'VII-C', 'Sodiqno'),
('121233740003196291', 'Saira Ramadani', '121233740003196291', 'Perempuan', '27 September 2002', '', 'Sidorejo, RT. 13 RW. 04,Warungasem', 'VII-C', 'Dinoyo'),
('121233740003196292', 'Salma Nisaul Khairani', '121233740003196292', 'Perempuan', '08 Mei 2007', '', 'Madrasah Blok C RT. 19 RW. 05,Sindang', 'VII-C', 'Wahyudin'),
('121233740003196293', 'Shelly Rahmawati', '121233740003196293', 'Perempuan', '29 Januari 2007', '', 'Jl. Tentara Pelajar, RT. 03 RW. 01, Kebondalem,Kendal', 'VII-C', 'Zaenal Abidin'),
('121233740003196294', 'SHinta Laura Candra Kirana', '121233740003196294', 'Perempuan', '25 Maret 2007', '', 'Krajan RT 004 RW 001,Bergas', 'VII-C', 'Sigit Gunawan'),
('121233740003196295', 'Sinta Wahdatul Khusna', '121233740003196295', 'Perempuan', '24 Mei 2007', '', 'Ds. Cemangklek RT 003 RW 004,Limbangan', 'VII-C', 'Ngadikin'),
('121233740003196297', 'Talita Nuanza Salsabilla', '121233740003196297', 'Perempuan', '01 Oktober 2007', '', 'Wujil Krajan RT. 01 RW. 04,Bergas', 'VII-C', 'Ahmad Zulfa'),
('121233740003196298', 'Viona Angel Sekarwangi', '121233740003196298', 'Perempuan', '29 Desember 2007', '', 'Jl. Candi Pawon Raya No. 09 RT. 11 RW. 03 ,Ngaliyan', 'VII-C', 'Sujiono'),
('121233740003196299', 'Wildan Audrey Bintang Prasetya', '121233740003196299', 'Laki-laki', '14 November 2006', '', 'Dsn. Blanten RT. 06 RW. 03,Gemuh', 'VII-C', 'Dwi Bagus Prasetya'),
('121233740003196300', 'Zahira Chairunnisa Az Zahra', '121233740003196300', 'Perempuan', '10 Desember 2006', '', 'Jl. Banjarsari  GG Gayamsari RT 001 RW 002,Tembalang', 'VII-C', 'Muhammad Sholikhin'),
('121233740003196301', 'Zaky Fajrul Falah', '121233740003196301', 'Laki-laki', '23 Oktober 2007', '', 'Wonoasri RT 002 RW 008,Pringapus', 'VII-C', 'Rosidi'),
('121233740003196302', 'Najwa Balqis Prahesthi Sutedja', '121233740003196302', 'Perempuan', '31 Agustus 2004', '', 'Perum Sindang Barang Asri Blok D No. 8,Kota Bogor Barat', 'VII-C', 'RM Donny Bambang Priambodo'),
('121233740003196303', 'Agustin Nur Elsa Safera', '121233740003196303', 'Perempuan', '17 Agustus 2006', '', 'Patemon RT 001 RW 002,Gunungpati', 'VII-D', 'Marwan'),
('121233740003196304', 'Alvaris Ardiyansah', '121233740003196304', 'Laki-laki', '22 Juli 2007', '', 'Pakintelan, RT. 02 RW. 02,Gunungpati', 'VII-D', 'Agus Prayitno'),
('121233740003196305', 'Bagas Tri Widianto', '121233740003196305', 'Laki-laki', '21 Mei 2007', '', 'Patemon RT 001 RW 003,Gunungpati', 'VII-D', 'Suhardi Kiswanto'),
('121233740003196306', 'Biharul Itsqi Ubaidillah', '121233740003196306', 'Laki-laki', '03 Februari 2006', '', 'Muntal, RT. 02 RW. 05,Gunungpati', 'VII-D', 'Muh Zaeni'),
('121233740003196307', 'Dania Nashabilla', '121233740003196307', 'Perempuan', '17 Juni 2007', '', 'Pakintelan, RT. 01 RW. 04,Gunungpati', 'VII-D', 'Munawar'),
('121233740003196308', 'Dicky Caesar Yoga Alfarel', '121233740003196308', 'Laki-laki', '02 November 2006', '', 'Ampel Gading, RT. 02 RW. 03,Gunungpati ', 'VII-D', 'Ery Sulistiono'),
('121233740003196309', 'Dinda Kartika Sari', '121233740003196309', 'Perempuan', '18 Juli 2007', '', 'Dk. Sedayu, RT 07 RW. 01,Gunungpati', 'VII-D', 'Sono Yuanto'),
('121233740003196310', 'Dwi Nur Prasetya', '121233740003196310', 'Laki-laki', '25 November 2007', '', 'Pakintelan, RT. 04 RW. 03,Gunungpati', 'VII-D', 'Bejo Sumariyadi'),
('121233740003196311', 'Evelyn Nissa Apriliani Farizal', '121233740003196311', 'Perempuan', '08 April 2007', '', 'Gg. Kenanga No. 18 RT. 04 RW. 04 Banaran,Gunungpati', 'VII-D', 'Ramdan Farizal'),
('121233740003196312', 'Farel Utama Ardiansyah Saputra', '121233740003196312', 'Laki-laki', '08 Mei 2007', '', 'Jl. Bantardowo, RT. 02 RW. 07,Gunungpati', 'VII-D', 'Sumardiyanto'),
('121233740003196313', 'Fatur Aprilian Islami', '121233740003196313', 'Laki-laki', '14 April 2007', '', 'Jetis RT. 01 RW. 01,Gunungpati', 'VII-D', 'Slamet'),
('121233740003196315', 'Firstian Dirga Dwi Cheisar', '121233740003196315', 'Laki-laki', '19 Mei 2007', '', 'Mangunsari, RT. 03 RW. 04,Gunungpati', 'VII-D', 'Sudirman'),
('121233740003196316', 'Firza Junian Mahardhika', '121233740003196316', 'Laki-laki', '14 Juni 2007', '', 'Kebonmanis, RT. 04 RW. 03,Gunungpati', 'VII-D', 'Wijayanto'),
('121233740003196317', 'Gangsar Akmal Roziqi', '121233740003196317', 'Laki-laki', '16 November 2006', '', 'Muntal RT 001 RW 003,Gunungpati', 'VII-D', 'Rukiman'),
('121233740003196318', 'Ghina Salwa', '121233740003196318', 'Perempuan', '23 Desember 2007', '', 'Jl. Orang Kayo Pingai No. 85A RT. 09,Jambi Timur', 'VII-D', 'Andi Setiawan'),
('121233740003196319', 'Lyera Dini Al Farini', '121233740003196319', 'Perempuan', '10 Desember 2006', '', 'Gg. Mangga No. 07 RT. 01 RW. 02,Gunungpati', 'VII-D', 'Nurkhoris'),
('121233740003196321', 'Marshelly Dwi Cahyani', '121233740003196321', 'Perempuan', '05 Maret 2005', '', 'Ngijo, RT. 06 RW. 02,Gunungpati', 'VII-D', 'Bolot Hadimasruri'),
('121233740003196322', 'Mega Alvionita Sari', '121233740003196322', 'Perempuan', '28 Juni 2007', '', 'Watusari RT 001 RW 006,Gunungpati', 'VII-D', 'Sholihin'),
('121233740003196323', 'Muhammad Abdul Fatah', '121233740003196323', 'Laki-laki', '25 Mei 2006', '', 'Pakintelan, RT. 04 RW. 01,Gunungpati', 'VII-D', 'Muhammad Hazin'),
('121233740003196324', 'Muhammad Adika Ferdiansyah', '121233740003196324', 'Laki-laki', '05 Maret 2007', '', 'Muntal, RT. 01 RW. 05,Gunungpati', 'VII-D', 'Sukardi'),
('121233740003196325', 'Muhammad Afrizal Restu Fadilah', '121233740003196325', 'Laki-laki', '19 Agustus 2006', '', 'Kradenan Lama, RT. 02 RW. 05,Gunungpati', 'VII-D', 'Teguh Urip Widodo'),
('121233740003196326', 'Muhammad Danu Prakasa', '121233740003196326', 'Laki-laki', '03 April 2007', '', 'Dsn. Winongsari, RT. 01 RW. 02,Gunungpati', 'VII-D', 'Muhamat Nasroh'),
('121233740003196327', 'Muhammad Ihza Maulana', '121233740003196327', 'Laki-laki', '30 Maret 2008', '', 'Patemon, RT. 03 RW. 01,Gunungpati', 'VII-D', 'Zaenal Arifin '),
('121233740003196328', 'Muhammad Rohib', '121233740003196328', 'Laki-laki', '27 Oktober 2006', '', 'Jagalan, RT. 05 RW. 01,Gunungpati', 'VII-D', 'Holik'),
('121233740003196329', 'Mukhamad Khoirurizzani Niyar Maulana', '121233740003196329', 'Laki-laki', '21 Februari 2007', '', 'Patemon, RT. 01 RW. 03,Gunungpati', 'VII-D', 'Khoirum'),
('121233740003196332', 'Nur Afiiifatuzzahro', '121233740003196332', 'Perempuan', '13 Januari 2007', '', 'Pongangan, RT. 04 RW. 01,Gunungpati', 'VII-D', 'Bachrudin'),
('121233740003196333', 'Pradita Wisnu Arfian', '121233740003196333', 'Laki-laki', '01 Oktober 2007', '', 'Kepil RT 03 RW 02,Gunungpati', 'VII-D', 'Zaenal Arifin '),
('121233740003196334', 'Putra Galuh Ahmad Kusuma', '121233740003196334', 'Laki-laki', '18 April 2007', '', 'Pakintelan, RT. 03 RW. 01,Gunungpati', 'VII-D', 'M. Asrori'),
('121233740003196335', 'Rangga Putra Aldy Pratama', '121233740003196335', 'Laki-laki', '17 Januari 2007', '', 'Kepil RT 03 RW 02,Gunungpati', 'VII-D', 'Solikin'),
('121233740003196336', 'Septia Vivi Ani', '121233740003196336', 'Perempuan', '01 September 2006', '', 'Watusari RT 03 RW 06,Gunungpati', 'VII-D', ''),
('121233740003196337', 'Siti Faiyatus Solekah', '121233740003196337', 'Perempuan', '26 Maret 2007', '', 'Pakintelan RT 003 RW 004,Gunungpati', 'VII-D', 'Sukur'),
('121233740003196372', 'Triyani Indi Rahmasari', '121233740003196372', 'Perempuan', '01 Maret 2006', '', 'Patemon, RT. 02 RW. 06,Gunungpati', 'VII-D', 'Sudarmadi'),
('121233740003196338', 'Zaydan Fazlerab Ramadhan', '121233740003196338', 'Laki-laki', '09 Oktober 2005', '', 'Jl. Menoreh Selatan III, RT. 05 RW. 04,Gajahmungkur', 'VII-D', 'Supandi'),
('121233740003196339', 'Adam Qomarro Lazzana Diara', '121233740003196339', 'Laki-laki', '27 April 2009', '', 'Jl. Surtikanti Raya No. 12, RT. 07 RW.03 ,Semarang Utara', 'VII-E', 'Fiki Ferdiansyah'),
('121233740003196340', 'Agus Tri Nugroho', '121233740003196340', 'Laki-laki', '02 Januari 2007', '', 'Pakintelan RT. 02 RW. 03,gunungpati', 'VII-E', 'Rochmat Subagiyo'),
('121233740003196341', 'Aldi Firmansyah', '121233740003196341', 'Laki-laki', '26 September 2006', '', 'Patemon RT 003 RW 001,Gunungpati', 'VII-E', 'Tumaziin'),
('121233740003196342', 'Angga Maulana Purniawan', '121233740003196342', 'Laki-laki', '21 Februari 2005', '', 'Delik Rejosari, RT. 03 RW. 04,Gunungpati', 'VII-E', 'Teguh Tristiawan'),
('121233740003196343', 'Ari Prasetyo Nusantoro', '121233740003196343', 'Laki-laki', '24 Mei 2006', '', 'Patemon, RT. 04 RW. 01,Gunungpati', 'VII-E', 'Tri Hatmono'),
('121233740003196344', 'Arkhan Dzaky Maulana', '121233740003196344', 'Laki-laki', '09 Januari 2007', '', 'Randusari, RT. 05 RW. 02 ,Gunungpati', 'VII-E', 'Soleman'),
('121233740003196345', 'Asyifa Naura Febriyanti', '121233740003196345', 'Perempuan', '17 Februari 2007', '', 'Delik Rejosari, RT. 02 RW. 04,Gunungpati', 'VII-E', 'Nuryanto'),
('121233740003196346', 'Atha Rahadatul Aisyi Fitri', '121233740003196346', 'Perempuan', '15 November 2005', '', 'Puntan RT 01 RW 01,Gunungpati', 'VII-E', 'Rusmijan'),
('121233740003196347', 'Axeel Putra Setia Wijaya', '121233740003196347', 'Laki-laki', '15 Desember 2006', '', 'Deliksari, RT. 04 RW. 06,Gunungpati', 'VII-E', 'Andi Wijaya'),
('121233740003196348', 'Danang Putra Setiawan', '121233740003196348', 'Laki-laki', '21 Juli 2006', '', 'Kalisegoro, RT. 02 RW. 02,Gunungpati', 'VII-E', 'Tasliman Sindung'),
('121233740003196349', 'Dimas Habil Mahardika', '121233740003196349', 'Laki-laki', '06 Januari 2007', '', 'Kepil RT 004 RW 002,Gunungpati', 'VII-E', 'Zunianto'),
('121233740003196351', 'Fernanda Tito Negara', '121233740003196351', 'Laki-laki', '11 Mei 2006', '', 'Jl. Kendeng III/ 33 RT 03 RW 03,Gajahmungkur', 'VII-E', 'Dedy Irawan Dwi Negoro'),
('121233740003196352', 'Laili Athya Lillah', '121233740003196352', 'Perempuan', '22 April 2006', '', 'Jl. Kelud Selatan I/ 7,Gajahmungkur', 'VII-E', 'Trismianto'),
('121233740003196354', 'Muhamad Hanafi', '121233740003196354', 'Laki-laki', '09 Februari 2007', '', 'Sriging Patemon, RT. 04 RW 01,Gunungpati', 'VII-E', 'Suyono'),
('121233740003196355', 'Muhamad Ragil Salsabilla', '121233740003196355', 'Laki-laki', '26 November 2006', '', 'Pakintelan RT 004 RW 002,Gunungpati', 'VII-E', 'Sudirman'),
('121233740003196356', 'Muhammad Andre Setiawan', '121233740003196356', 'Laki-laki', '08 Mei 2007', '', 'Patemon RT. 02 RW. 02,Gunungpati', 'VII-E', 'Khaeruman'),
('121233740003196357', 'Muhammad Fahmi Apriano Deftendi', '121233740003196357', 'Laki-laki', '06 April 2006', '', 'Trangkil Baru, RT. 06 RW. 10,Gunungpati', 'VII-E', 'Sujarwo'),
('121233740003196358', 'Muhammad Habib Vega P', '121233740003196358', 'Laki-laki', '15 Juni 2006', '', 'Watusari, RT. 02 RW. 06,Gunungpati', 'VII-E', 'Muhammad Agus Adha'),
('121233740003196359', 'Muhammad Hasan', '121233740003196359', 'Laki-laki', '14 November 2006', '', 'Muntal Gang Durian RT. 02 RW. 04,Gunungpati', 'VII-E', 'Djunaidi'),
('121233740003196360', 'Muhammad Nouval Zaky', '121233740003196360', 'Laki-laki', '09 Agustus 2006', '', 'Patemon, RT. 02 RW. 01,Gunungpati', 'VII-E', 'Muh Zamrowi'),
('121233740003196361', 'Muhammad Zuhdan Zahrul A', '121233740003196361', 'Laki-laki', '13 Desember 2006', '', 'Tledok, RT. 04 RW. 04,Kajoran', 'VII-E', 'Muh Amin'),
('121233740003196362', 'Okta Fadhillah Rahma', '121233740003196362', 'Perempuan', '03 Oktober 2006', '', 'Pakintelan,Gunungpati', 'VII-E', 'Muhibin'),
('121233740003196363', 'Rafi ananda', '121233740003196363', 'Laki-laki', '25 Desember 2006', '', 'Sekaran, RT. 01 RW. 02,Gunungpati ', 'VII-E', 'Sutrisno'),
('121233740003196364', 'Rahmad Bayu Mukti', '121233740003196364', 'Laki-laki', '31 Oktober 2006', '', 'Jl. Kalialang Lama RT.03 RW. 01,Gunungpati', 'VII-E', 'Moch Moeriyadi'),
('121233740003196365', 'Rando Lisdiantoro', '121233740003196365', 'Laki-laki', '19 Maret 2007', '', 'Sekaran, RT. 02 RW. 01,Gunungpati', 'VII-E', 'Mukanan'),
('121233740003196366', 'Rifaa Maheswari', '121233740003196366', 'Perempuan', '09 Desember 2006', '', 'Trangkil, RT. 01 RW. 10,Gunungpati', 'VII-E', 'Slamet Harsono'),
('121233740003196368', 'Rizky Muhammad Alvian', '121233740003196368', 'Laki-laki', '17 Februari 2007', '', 'Patemon RT 001 RW 003,Gunungpati', 'VII-E', 'Munadi'),
('121233740003196369', 'Sarifatul Munawaroh', '121233740003196369', 'Perempuan', '20 April 2006', '', 'Banaran RT 008 RW 005,Gunungpati', 'VII-E', 'Hadi Maryanto'),
('121233740003196370', 'Satria Daffa Putra', '121233740003196370', 'Laki-laki', '29 Januari 2007', '', 'Pengkol, RT. 02 RW.01,Gunungpati', 'VII-E', 'Solikhin'),
('121233740003196371', 'Satria Gilang Ramadhan', '121233740003196371', 'Laki-laki', '13 September 2007', '', 'Muntal RT 001 RW 003,Gunungpati', 'VII-E', 'Imam Taufiq '),
('121233740003196373', 'Vicky Prasetyo Bima Sakti', '121233740003196373', 'Laki-laki', '20 November 2006', '', 'Kepil RT 004 RW 002,Gunungpati', 'VII-E', 'Muchamad Khaeroni'),
('121233740003196374', 'Vino Dian Asmoro', '121233740003196374', 'Laki-laki', '29 Maret 2007', '', 'Ngijo RT 03 RW 02,Gunungpati', 'VII-E', 'Supriyanto'),
('121233740003196375', 'Agni Febriyanti', '121233740003196375', 'Perempuan', '19 Februari 2007', '', 'Taman Beringin Mulya no 21,Ngaliyan', 'VII-F', 'Agus Daryanto'),
('121233740003196376', 'Alicia Reva Haidiyana', '121233740003196376', 'Perempuan', '02 Januari 2007', '', 'Lingk Berokah RT 001 RW 006,Bawen', 'VII-F', ''),
('121233740003196377', 'Amalia Dita Habsari', '121233740003196377', 'Perempuan', '30 Juni 2007', '', 'Jl. Cumi-cumi VI RT. 01 RW. 04,Semarang Utara', 'VII-F', 'Chumaidi'),
('121233740003196378', 'Amanda Novadhilatul Zaida', '121233740003196378', 'Perempuan', '05 Agustus 2007', '', 'Duwet, RT. 03 RW. 04,Pringapus', 'VII-F', 'Moh Muhaimin'),
('121233740003196379', 'Amania Nilnal Muna', '121233740003196379', 'Perempuan', '28 November 2005', '', 'Krajan RT 009 RW 002,Bergas', 'VII-F', 'Ahmad Sibyani'),
('121233740003196380', 'Anggun Khaulida Rahma', '121233740003196380', 'Perempuan', '28 Juli 2006', '', 'Randusari, RT, 02 RW, 02,Gunungpati', 'VII-F', 'Alaik Habibi'),
('121233740003196381', 'Anisa Dwi Khaerani', '121233740003196381', 'Perempuan', '30 Juli 2007', '', 'Sirayu, RT. 01 RW. 02 ,Gunungpati', 'VII-F', 'Loso'),
('121233740003196382', 'Annisa Farah Vizahran', '121233740003196382', 'Perempuan', '15 April 2007', '', 'Kaligetas RT 006 RW 004 ,Mijen', 'VII-F', 'SM Robbi Abdullah'),
('121233740003196383', 'Arina Sabila Mustaqima', '121233740003196383', 'Perempuan', '12 Mei 2007', '', 'Jl. Kertanegara Selatan III/20B RT 004 RW 002,Semarang Selatan', 'VII-F', 'Amrulloh'),
('121233740003196384', 'Aulia Nafisa Azzahro', '121233740003196384', 'Perempuan', '25 Juli 2007', '', 'Tegalgunung RT 00 RW 006,Limbangan', 'VII-F', 'Ainur Sholeh'),
('121233740003196386', 'Briza Belva Agustina', '121233740003196386', 'Perempuan', '18 Agustus 2007', '', 'Langensari Barat RT 003 RW 004,Ungaran Barat', 'VII-F', 'Kristanto'),
('121233740003196387', 'Desta Ayu Anggraeni', '121233740003196387', 'Perempuan', '06 Desember 2006', '', 'Ds. Kedungdowo RT 001 RW 004,Boja', 'VII-F', 'Iin Indrawan'),
('121233740003196388', 'Dhina Novitasari', '121233740003196388', 'Perempuan', '03 Desember 2007', '', 'Ketapang RT 21 RW 07,Kendal', 'VII-F', 'Karjono'),
('121233740003196389', 'Dhukha Rahmandani Rizki', '121233740003196389', 'Perempuan', '06 Januari 2007', '', 'Randusari RT 003 RW 002,Gunungpati', 'VII-F', 'Sanusi'),
('121233740003196390', 'Fadia Aulia Rahma', '121233740003196390', 'Perempuan', '16 Juli 2007', '', 'Nyatnyono, RT. 03 RW. 04,Ungaran Barat', 'VII-F', 'Sujono Alias Jon Kamal'),
('121233740003196392', 'Farah Miftahul Aulia', '121233740003196392', 'Perempuan', '03 November 2006', '', 'Krajan RT 004 RW 001,Limbangan', 'VII-F', 'Miftahuddin'),
('121233740003196393', 'Fitri Ainur Riza', '121233740003196393', 'Perempuan', '15 Oktober 2007', '', 'Ketapang RT 011 RW 004,Kendal', 'VII-F', 'Romadhon'),
('121233740003196394', 'Ginda Nabila Iftinan', '121233740003196394', 'Perempuan', '02 Januari 2006', '', 'Jl. Damar Utara V No. 262 RT. 01 RW. 07,Banyumanik', 'VII-F', 'Gondo Edi Triwibowo'),
('121233740003196395', 'Hazkiya Venus Hanun Nugroho', '121233740003196395', 'Perempuan', '04 Juni 2007', '', 'Lingk Berokah RT 001 RW 006,Bawen', 'VII-F', 'Edy Yogo Nugroho (alm)'),
('121233740003196396', 'Hilda Azzahra', '121233740003196396', 'Perempuan', '15 Juni 2007', '', 'Prampelan RT 03 RW 06,Sidorejo', 'VII-F', 'Komarudin'),
('121233740003196397', 'Khaila Ika Pratiwi', '121233740003196397', 'Laki-laki', '26 Desember 2006', '', 'Dk. Jamalsari RT. 05 RW. 02,Mijen', 'VII-F', 'Komari'),
('121233740003196398', 'Laila Zahrotul Fitria', '121233740003196398', 'Perempuan', '10 November 2006', '', 'Tambakaji RT 002 RW 001,Ngaliyan', 'VII-F', 'Nasirudin Aziz'),
('121233740003196399', 'Malsa Amalia Putri', '121233740003196399', 'Perempuan', '27 Maret 2007', '', 'Penggaron Regency A-1 RT, 07 RW, 03,Pedurungan', 'VII-F', 'Muhamad Malik'),
('121233740003196400', 'Mikki Chika Asyrra', '121233740003196400', 'Perempuan', '27 Juli 2007', '', 'Bergas Kidul, RT. 01 RW. 02,Bergas', 'VII-F', 'Joko Purnomo'),
('121233740003196401', 'Naila Aida Rahma', '121233740003196401', 'Perempuan', '30 Agustus 2005', '', 'Bulu RT 03 RW 06,Ungaran Timur', 'VII-F', 'Muhamad Saeroji'),
('121233740003196402', 'Natasya Nurul Aisyah', '121233740003196402', 'Perempuan', '19 Juli 2007', '', 'Jl. Gombel Permai V/ 394A,Banyumanik', 'VII-F', 'Mustaqim'),
('121233740003196403', 'Nayla Khairun Nisa', '121233740003196403', 'Perempuan', '28 Juni 2006', '', 'Jl. Jurang Blimbing RT, 01 RW, 04,Tembalang', 'VII-F', 'Riyoko'),
('121233740003196404', 'Novita Putri Widhi Ayati', '121233740003196404', 'Perempuan', '13 November 2006', '', 'Puntan RT 001 RW 001,Gunungpati', 'VII-F', 'Subur'),
('121233740003196405', 'Nuningtyas Kayla Rahmanisa', '121233740003196405', 'Perempuan', '30 Agustus 2007', '', 'Dk. Kaligetas RT 03 RW 04,Mijen', 'VII-F', 'Ali Imron'),
('121233740003196406', 'Nuril Anisa Azzahra', '121233740003196406', 'Laki-laki', '28 April 2007', '', 'Pucung, RT, 03 RW, 01  ,Ngaliyan', 'VII-F', 'Dwi Purwanto'),
('121233740003196407', 'Saniatus Sarah Al khumairoh', '121233740003196407', 'Perempuan', '28 Desember 2005', '', 'Ds. Dukuhsari RT 005 RW 003 ,Bringin', 'VII-F', 'Muhamad Nur Wahid'),
('121233740003196408', 'Septy  Azzahra Eryan Pratama', '121233740003196408', 'Perempuan', '08 September 2006', '', 'Ds. Blater RT 004 RW 006,Bandungan', 'VII-F', 'Khamim Riyanto'),
('121233740003196409', 'Suhaela Maulida Syahrani', '121233740003196409', 'Perempuan', '17 April 2006', '', 'Randusari, RT, 005 RW, 002,Gunungpati', 'VII-F', 'Nur Aziz'),
('121233740003196410', 'Talitha Yuha Salsabila', '121233740003196410', 'Perempuan', '01 September 2006', '', 'Perum Permata Tembalang Cluster Dahlia No. 28 RT. 05 RW. 05,Tembalang', 'VII-F', 'Hadi Suparman'),
('121233740003196411', 'Wafiq Aindana Zulfa', '121233740003196411', 'Perempuan', '11 Desember 2006', '', 'Cepoko RT 002 RW 001 ,Gunungpati', 'VII-F', 'Eko Purwanto'),
('121233740003196412', 'Wilda Ismatus Sarifah', '121233740003196412', 'Perempuan', '04 Februari 2008', '', 'Dk. Gempol RT 002 RW 005,Kaliwungu', 'VII-F', 'Ismail'),
('121233740003196413', 'Winda Azuro Kholidya', '121233740003196413', 'Perempuan', '15 April 2007', '', 'Jl. Husein Hamzah Komp. Batara Indah 3 No. B-1 RT. 03 RW. 25 ,Pontianak Barat', 'VII-F', 'Moh Kholil'),
('121233740003196414', 'Zahra Ayu Alifia', '121233740003196414', 'Perempuan', '24 Juli 2006', '', 'Jl. Bader 2, RT. 05 RW. 08,Semarang Utara', 'VII-F', 'Edi Wahyudi Saputro'),
('0000000000000008', 'ETSNA WULANDARI', '0000000000000008', 'Perempuan', '05 Februari 2007', '', 'Perum Kanaya Land 2 No. 25,Mranggen', 'VII-F', 'Supartono'),
('121233740003186120', 'Agustin Indah Kusniah', '121233740003186120', 'Perempuan', '25/08/2005', '', 'Kliris, RT. 03 RW. 01,Kliris,Boja', 'VIII-A', 'Nur Cholis'),
('121233740003186121', 'Aina Widia Kumala', '121233740003186121', 'Perempuan', '03/12/2005', '', 'Dusun Pluwang, RT. 02 RW. 07,Wringin Putih,Bergas', 'VIII-A', 'Kastono'),
('121233740003186124', 'Alya Nayla Marsha', '121233740003186124', 'Perempuan', '30/03/2006', '', 'Jl. Jangli Krajan Blok E No. 32 RT. 05 RW. 06,Karanganyar Gunung,Candisari', 'VIII-A', 'Slamet Riyadi'),
('121233740003185990', 'Anisya Nurul Aflya', '121233740003185990', 'Perempuan', '09/02/2006', '', 'Dsn. Jambon RT. 03 RW. 04,Lanjan,Sumowono', 'VIII-A', 'Alim Sukamto'),
('121233740003186126', 'Azhara Mutya Kanza', '121233740003186126', 'Perempuan', '21/04/2005', '', 'Jl. Margoyoso II RT. 05 RW. 04 ,Tambakaji,Ngaliyan', 'VIII-A', 'Sriyanto'),
('121233740003186128', 'Azkya Qorsya Salwa Rambing', '121233740003186128', 'Perempuan', '06/01/2006', '', 'Wonodri Krajan 2, RT. 05 RW. 01,Wonodri,Semarang Selatan', 'VIII-A', 'Amrudin Mahfudz Juma`i'),
('121233740003186129', 'Ciara Vivian Neysa', '121233740003186129', 'Perempuan', '29/04/2006', '', 'Perum Kampoeng Hollywood Blok B8/ No. 22 RT. 07 RW. 04,Sadeng,Gunung Pati', 'VIII-A', 'Yaumun Nasir'),
('121233740003186130', 'Fenida Rahmawati', '121233740003186130', 'Perempuan', '06/09/2006', '', 'Pringsari, RT. 03 RW. 01,Pringsari,Pringapus', 'VIII-A', 'Choirun'),
('121233740003186132', 'Fisya Khaqimatunisa', '121233740003186132', 'Perempuan', '10/07/2005', '', 'Dk. Puntan RT. 01 RW. 01,Ngijo,Gunung Pati', 'VIII-A', 'Kurniawan'),
('121233740003186133', 'Gendhis Zuhro Salsabila Kohar', '121233740003186133', 'Perempuan', '24/06/2006', '', 'Bangsri RT. 03 RW. 01 ,Bangsri,Bulakamba', 'VIII-A', 'Wakhidul Kohar'),
('121233740003186134', 'Hatritsal Nisa Karima', '121233740003186134', 'Perempuan', '19/09/2006', '', 'Campurejo, RT. 04 RW. 01,Campurejo,Boja', 'VIII-A', 'Nurhadi'),
('121233740003186135', 'Hazna Rizky Faiza', '121233740003186135', 'Perempuan', '16/02/2006', '', 'Jl. Tanjungsari V/ 33 RT. 07 RW. 02,Sumurboto,Banyumanik', 'VIII-A', 'Susila Budi Santosa'),
('121233740003186146', 'Jihan Amalia Nailil Amani', '121233740003186146', 'Perempuan', '05/06/2006', '', 'Ds. Kumpulrejo, RT. 02 RW. 04,Kumpulrejo,Patebon', 'VIII-A', 'Abdul Qohar'),
('121233740003186136', 'Khusni Anisha', '121233740003186136', 'Perempuan', '03/05/2005', '', 'Dsn. Pluwang, RT. 08 RW. 07,Wringin Putih,Bergas', 'VIII-A', 'Slamet'),
('121233740003186006', 'Marissa Mutiara Zulva', '121233740003186006', 'Perempuan', '12/01/2006', '', 'Patemon RT. 03 RW. 03,Patemon,Gunung Pati', 'VIII-A', 'Hasan Faisol'),
('121233740003186138', 'Nabila Septiana Dewi', '121233740003186138', 'Perempuan', '27/09/2006', '', 'Tega Gunung RT. 02 RW. 06,Pagerwojo,Limbangan', 'VIII-A', 'Ainur Khakim'),
('121233740003186140', 'Nadia Syifa Ul Khikmah', '121233740003186140', 'Perempuan', '26/08/2006', '', 'Pringsari, RT. 03 RW. 01,Pringsari,Pringapus', 'VIII-A', 'Hadi Saprowi'),
('121233740003186174', 'Najwa Maulida Zein', '121233740003186174', 'Perempuan', '01/04/2006', '', 'Jatisari Asabri Blok D 5/23 RT. 01 RW. 10,Jatisari,Mijen ', 'VIII-A', 'Jaenal Abidin, S.Pd'),
('121233740003186169', 'Nala Aulatul Zahra', '121233740003186169', 'Perempuan', '13/12/2006', '', 'Ds. Campurejo, RT. 04 RW. 01,Campurejo,Boja', 'VIII-A', 'Muchsin '),
('121233740003186144', 'Naysilla Puspa Irawan', '121233740003186144', 'Perempuan', '19/08/2006', '', 'Perum Kampoeng Harmony Blok K 22 Ungaran,Keji,Ungaran Barat', 'VIII-A', 'Rocky Irawan'),
('121233740003186145', 'Nur Hidayah', '121233740003186145', 'Perempuan', '11/06/2005', '', 'Jl. Dr. Ismail, RT. 02 RW. 11,Gisikdrono,Semarang Barat', 'VIII-A', 'Suhartadi'),
('121233740003186147', 'Qotrun Nada Salwa', '121233740003186147', 'Perempuan', '23/04/2006', '', 'Rembes, RT. 01 RW. 01 ,Rembes,Bringin', 'VIII-A', 'M. Mudatsir'),
('121233740003186149', 'Raychatuz Zahra', '121233740003186149', 'Perempuan', '30/03/2006', '', 'Dk. Jatibarang RT. 01 RW. 01 ,Jatibarang,Mijen', 'VIII-A', 'Slamet Riyadi'),
('121233740003186150', 'Tasya Alifa Ar-Zahra', '121233740003186150', 'Perempuan', '02/09/2006', '', 'Dempel Selatan II, RT. 02 RW 16,Muktiharjo Kidul,Pedurungan', 'VIII-A', 'Suranto'),
('121233740003186045', 'Tsalits Fauziyah', '121233740003186045', 'Perempuan', '28/04/2006', '', 'Jl. Tengah Paal,Paal,Nanga Pinoh', 'VIII-A', 'Nandar'),
('121233740003186046', 'Ulya Wafiroh ', '121233740003186046', 'Perempuan', '22/07/2005', '', 'Dsn Pakis, RT. 04 RW. 01,Pakis,Bringin', 'VIII-A', 'Slamet Riyadi'),
('121233740003186152', 'Zahrani Cahya Andita Putri', '121233740003186152', 'Perempuan', '30/08/2005', '', 'Jl. Pelem Gedong RT. 02 RW. 02,Tambakaji,Ngaliyan', 'VIII-A', 'Endrik Cahyono'),
('121233740003186050', 'Zidna Ilman Nafia', '121233740003186050', 'Perempuan', '28/08/2006', '', 'Jl. Pelem Gedong,Tambakaji,Ngaliyan', 'VIII-A', 'Winarto'),
('121233740003186085', 'A. Wildan Kevin Assyauqi', '121233740003186085', 'Laki-laki', '08/06/2006', '', 'Patemon, RT. 03 RW. 04,Patemon,Gunungpati', 'VIII-B', 'Makin'),
('121233740003186087', 'Aji Dwi Saputra', '121233740003186087', 'Laki-laki', '18/09/2005', '', 'Jl. Srinindito Timur/ II No. 899,Ngemplaksimongan ,Semarang Barat', 'VIII-B', 'Abdul Malik'),
('121233740003186021', 'Aliffia Puspa Ningrum', '121233740003186021', 'Perempuan', '02/08/2006', '', 'Jl. Jatisari RT. 02 RW. 02 ,Patemon,Gunung Pati', 'VIII-B', 'Much Sokib'),
('121233740003186089', 'Alma Unatus Sholikhah', '121233740003186089', 'Perempuan', '07/02/2006', '', 'Patemon, RT. 03 RW. 04,Patemon,Gunung Pati', 'VIII-B', 'Singgih Sudarmono'),
('121233740003186091', 'Andreas Bagas Pratama', '121233740003186091', 'Laki-laki', '10/04/2005', '', 'Pakintelan RT. 01 RW. 01,Pakintelan,Gunung Pati', 'VIII-B', 'Purwanto'),
('121233740003186092', 'Annisa Shylfa Maulina', '121233740003186092', 'Perempuan', '23/05/2006', '', 'Trangkil RT. 01 RW. 10 ,Sukorejo ,Gunung Pati', 'VIII-B', 'Didik Hermawan'),
('121233740003186093', 'Azzahra Salsa Nabilah', '121233740003186093', 'Perempuan', '24/11/2005', '', 'Pakintelan, RT. 02 RW. 02,Pakintelan,Gunung Pati', 'VIII-B', 'Suwarso'),
('121233740003186094', 'Bagas Cahyo Rosady', '121233740003186094', 'Laki-laki', '20/05/2006', '', ',Sekaran,Gunung Pati', 'VIII-B', 'Kosong'),
('121233740003186029', 'Farkhan Ariffudin', '121233740003186029', 'Laki-laki', '04/09/2005', '', 'Sekaran RT. 01 RW. 04,Sekaran,Gunung Pati', 'VIII-B', 'Nuryani'),
('121233740003186095', 'Febyan Akbar Fadila', '121233740003186095', 'Laki-laki', '06/02/2006', '', 'Banaran, RT. 03 RW. 05,Sekaran,Gunung Pati', 'VIII-B', 'Trimo '),
('121233740003186099', 'M. Abdee Prastyo', '121233740003186099', 'Laki-laki', '24/12/2004', '', 'Gg. Kutilang RT. 03 RW. 04 Patemon,Patemon,Gunung Pati', 'VIII-B', 'Dian Setyo Prayogo'),
('121233740003186165', 'Hidayatunnisa', '121233740003186165', 'Perempuan', '27/12/2006', '', 'Kosong', 'VIII-B', 'Kosong'),
('121233740003186100', 'Miladia Salas Nadzia', '121233740003186100', 'Perempuan', '30/01/2006', '', 'Patemon, RT. 01 RW. 04,Patemon,Gunung Pati', 'VIII-B', 'Khoeri'),
('121233740003186102', 'Muhammad Bagus Setiaji Nugroho', '121233740003186102', 'Laki-laki', '13/05/2006', '', 'Sekaran, RT. 01 RW. 03,Sekaran,Gunung Pati', 'VIII-B', 'Sunardi'),
('121233740003186103', 'Muhammad Davin Rayhan Hafiz', '121233740003186103', 'Laki-laki', '08/02/2006', '', 'Patemon, RT. 03 RW. 01,Patemon,Gunung Pati', 'VIII-B', 'Muhar '),
('121233740003186098', 'Muhammad Dhimas Oktavian Ramadhan', '121233740003186098', 'Laki-laki', '14/10/2005', '', 'Ngijo, RT. 03 RW. 03,Ngijo,Gunung Pati', 'VIII-B', 'Maskon'),
('121233740003186105', 'Muhammad Ikhsan Qoharo', '121233740003186105', 'Laki-laki', '30/08/2005', '', 'Sekaran, RT. 03 RW. 03,Sekaran,Gunung Pati', 'VIII-B', 'Muchib'),
('121233740003186039', 'Muhammad Zaky Kurniawan', '121233740003186039', 'Laki-laki', '15/05/2006', '', 'Ngijo RT. 04 RW. 02,Ngijo,Gunung Pati', 'VIII-B', 'Suwartono'),
('121233740003186139', 'Nadia Abidatun Nuronia', '121233740003186139', 'Perempuan', '13/06/2006', '', 'Lingkungan Kolangkaling RT. 02 RW. 03,Wujil,Bergas', 'VIII-B', 'Atim Suyadi'),
('121233740003186106', 'Natasya Dewi Amaliah', '121233740003186106', 'Perempuan', '03/05/2006', '', 'Muntal, RT. 02 RW. 04,Mangunsari,Gunung Pati', 'VIII-B', 'Gusyanto'),
('121233740003186107', 'Nuraeni', '121233740003186107', 'Perempuan', '16/01/2006', '', 'Sumurgunung, RT. 03 RW. 05,Sumurrejo,Gunung Pati', 'VIII-B', 'Sumarno'),
('121233740003186108', 'Opi Kharisma Sara Ayuningrum', '121233740003186108', 'Perempuan', '27/10/2005', '', 'Sekaran, RT. 02 RW. 07,Sekaran,Gunung Pati', 'VIII-B', 'Ngatiyono'),
('121233740003186109', 'Raditya Muhamad Zaki', '121233740003186109', 'Laki-laki', '21/06/2006', '', 'Patemon, RT. 03 RW. 04,Patemon,Gunung Pati', 'VIII-B', 'Nuryanto'),
('121233740003186148', 'Rahmazeni Ainun Zulfaa', '121233740003186148', 'Perempuan', '12/01/2006', '', 'Sekaran, RT. 01 RW. 02,Sekaran,Gunung Pati', 'VIII-B', 'Suyono'),
('121233740003186111', 'Rasya Yumna Attaya Husna Bilhaq', '121233740003186111', 'Laki-laki', '01/04/2006', '', 'Patemon, RT. 03 RW. 02 No. 28,Patemon,Gunung Pati', 'VIII-B', 'Nuryahman'),
('121233740003186112', 'Rizqi Fikrianto', '121233740003186112', 'Laki-laki', '28/10/2006', '', 'Trangkil RT. 01 RW. 10 ,Sukorejo ,Gunung Pati', 'VIII-B', 'Imron Mashadi'),
('121233740003186044', 'Tegar Gava Pamungkas', '121233740003186044', 'Laki-laki', '14/06/2006', '', 'Patemon RT. 03 RW. 01,Patemon,Gunung Pati', 'VIII-B', 'Lamin'),
('121233740003186116', 'Sofi Ardianti', '121233740003186116', 'Perempuan', '23/09/2005', '', 'Banaran, RT. 02 RW. 04,Sekaran,Gunung Pati', 'VIII-B', 'Suharno'),
('121233740003186084', 'Zildan Maha Yogi Pinandhita', '121233740003186084', 'Laki-laki', '18/03/2006', '', 'Plalangan RT. 05 RW. 01,Plalangan,Gunungpati', 'VIII-B', 'Ahmad Mawahib'),
('121233740003185984', 'Abdul Aziz Wahyudi', '121233740003185984', 'Laki-laki', '05/12/2004', '', 'Jl. Gunung Talang Timur RT. 05 RW. 02,Bendan Duwur,Gajah Mungkur', 'VIII-C', 'Supriyanto'),
('121233740003185987', 'Ahmad Najib Adji Nugraha', '121233740003185987', 'Laki-laki', '04/11/2005', '', 'Lingkungan Krajan Kidul RT. 01 RW. 05 ,Wujil,Bergas', 'VIII-C', 'Ahmad Nurodin'),
('121233740003185988', 'Alfarizky Noer Ardiansyah', '121233740003185988', 'Laki-laki', '14/10/2003', '', 'Jl. Tanjungsari No. 17 RT. 07 RW. 06,Pedurungan Tengah ,Pedurungan', 'VIII-C', 'Wibisono Arif Dewanto'),
('121233740003186123', 'Alifia Fattah', '121233740003186123', 'Perempuan', '27/07/2006', '', 'Perum Ungaran Baru A-116, RT. 02 RW. 12,Leyangan,Ungaran Timur', 'VIII-C', 'Mulyadi '),
('121233740003186125', 'Arifah Nur Qothsalani', '121233740003186125', 'Perempuan', '11/03/2006', '', 'Dk. Pengkol, RT. 01 RW. 01,Mangunsari,Gunung Pati', 'VIII-C', 'Sulis Priyono'),
('121233740003185991', 'Arifani Umayah', '121233740003185991', 'Perempuan', '01/03/2006', '', 'Klurahan, RT. 04 RW. 06,Tuntang,Tuntang', 'VIII-C', 'Muhroji'),
('121233740003185959', 'Fajar Dwi Saputra', '121233740003185959', 'Laki-laki', '20/12/2005', '', 'Lingkungan Kolangkaling RT. 02 RW. 03,Wujil,Bergas', 'VIII-C', 'Sukirno'),
('121233740003185997', 'Fatkhu Amanullah', '121233740003185997', 'Laki-laki', '24/06/2006', '', 'Watupawon RT. 01 RW. 05 ,Kawengen ,Ungaran Timur', 'VIII-C', 'Rohman'),
('121233740003186168', 'Fitron Nazid', '121233740003186168', 'Laki-laki', '03/11/2005', '', 'Randusari, RT. 02 RW. 02 ,Nongkosawit,Gunung Pati', 'VIII-C', 'Nasikin'),
('121233740003185998', 'Hareva Esayani', '121233740003185998', 'Perempuan', '06/09/2006', '', 'Dusun Kliwonan RT. 01 RW. 03 ,Ngabean,Boja', 'VIII-C', 'Khuzaeni');
INSERT INTO `siswa` (`id_siswa`, `nama`, `nis`, `jns_kel`, `tgl_lahir`, `tmpt_lahir`, `alamat`, `nm_kelas`, `nama_ortu`) VALUES
('121233740003185999', 'Ianatul Azizah ', '121233740003185999', 'Perempuan', '08/01/2006', '', 'Cepoko RT. 03 RW. 01,Cepoko,Gunung Pati', 'VIII-C', 'Ansori'),
('121233740003186000', 'Ilmando Dewantoro Adi', '121233740003186000', 'Laki-laki', '01/05/2006', '', 'Jl. Pusponjolo Tengah III No. 80 A RT. 07 RW. 02,Gisikdrono,Semarang Barat', 'VIII-C', 'Adi Waluyo'),
('121233740003186001', 'Juliananda Hindri Nurbaya', '121233740003186001', 'Perempuan', '16/07/2006', '', 'Ngempon RT. 03 RW. 05,Ngempon ,Bergas ', 'VIII-C', 'Hendro Trisnanto'),
('121233740003186002', 'Kamalunniam Khairul Insan', '121233740003186002', 'Laki-laki', '16/10/2006', '', 'Pondok Jangli Indah No. 9 RT. 08 RW. 01,Jangli ,Tembalang', 'VIII-C', 'Dwi Santoso'),
('121233740003186097', 'Khusna Muntaza', '121233740003186097', 'Laki-laki', '19/02/2006', '', 'Patemon, RT. 02 RW. 03,Patemon,Gunung Pati', 'VIII-C', 'Saud'),
('121233740003186004', 'Lukman Syarif Hidayatullah', '121233740003186004', 'Laki-laki', '19/05/2006', '', 'Randusari, RT. 02 RW. 02 ,Nongkosawit,Gunung Pati', 'VIII-C', 'M. Darmin'),
('121233740003186167', 'Mahendra Mangar', '121233740003186167', 'Laki-laki', '15/11/2005', '', 'Jl. Rabiadjala RT. 06 RW. 04 Siwalima,Siwalima,Pulau - Pulau Aru', 'VIII-C', 'Achmad Maming'),
('121233740003186005', 'Mahida Ilva Nafisa Aisy', '121233740003186005', 'Perempuan', '29/09/2005', '', 'Lingkungan Kolangkaling RT. 01 RW. 03,Wujil,Bergas', 'VIII-C', 'Muslimin'),
('121233740003186164', 'Muchamad Sofiyan Nur Ardiansyah', '121233740003186164', 'Laki-laki', '28/11/2005', '', 'Sekaran, RT. 05 RW. 01,Sekaran,Gunung Pati', 'VIII-C', 'Dian Heri Susanto'),
('121233740003186007', 'Muhamad Ridhwan Mustamil', '121233740003186007', 'Laki-laki', '03/10/2005', '', 'Jambearum, RT. 03 RW. 01 ,Jambearum,Patebon', 'VIII-C', 'Muchtar'),
('121233740003186009', 'Muhamad Zacky Fatahilah', '121233740003186009', 'Laki-laki', '28/05/2006', '', 'Mangkang Kulon RT. 02 RW. 03,Mangkang Kulon,Tugu', 'VIII-C', 'Siswanto'),
('121233740003185966', 'Muhammad Alfiano Wahyu Saputra', '121233740003185966', 'Laki-laki', '28/09/2005', '', 'Karanggawang, RT. 01 RW. 01 ,Mluweh,Ungaran Timur', 'VIII-C', 'Karyono Kayan'),
('121233740003186037', 'Muhammad Rivan Ari Irwansyah', '121233740003186037', 'Laki-laki', '02/06/2005', '', 'Patemon RT. 03 RW. 04 ,Pakintelan ,Gunung Pati', 'VIII-C', 'Anton Suprianto'),
('121233740003186040', 'Muhammad Zaky Maulana', '121233740003186040', 'Laki-laki', '04/09/2006', '', 'Plalangan RT. 05 RW. 01,Plalangan,Gunung Pati', 'VIII-C', 'Supriyadi '),
('121233740003186137', 'Nabila Ardiani Safitri', '121233740003186137', 'Perempuan', '07/11/2005', '', 'Pecangaan Wetan, RT. 02 RW. 03,Pecangaan wetan,Pecangaan ', 'VIII-C', 'Akhlis Cipto Adi'),
('121233740003186011', 'Nadhifa Ayu Nur Khasanah', '121233740003186011', 'Perempuan', '19/05/2006', '', 'Genuk Karanglo RT. 06 RW. 02,Tegalsari,Candisari', 'VIII-C', 'Puji Azis'),
('121233740003186142', 'Nasywa Brysa Riyanto', '121233740003186142', 'Perempuan', '14/01/2006', '', 'Jl. Talangsari IV No. 5 RT.03 RW. 06,Bendan Duwur,Gajah Mungkur', 'VIII-C', 'Adi Riyanto'),
('121233740003186143', 'Nata Risa Nova Dwiyanto', '121233740003186143', 'Perempuan', '23/11/2005', '', 'Dsn. Kambangan, RT. 03 RW. 13,Gondoriyo,Bergas', 'VIII-C', 'Nur Dwiyanto'),
('121233740003186042', 'Radiyta Dwi Permana', '121233740003186042', 'Laki-laki', '18/06/2006', '', 'Kp. Wonosari RT. 02 RW. 02,Plalangan,Gunung Pati', 'VIII-C', 'Anhar'),
('121233740003185975', 'Reyhan Praditya Risvan Alviano', '121233740003185975', 'Laki-laki', '08/12/2005', '', 'Jl. Jawa Raya No. 10 RT. 02 RW. 02,Leyangan,Ungaran Timur', 'VIII-C', 'Endrik Indrawan'),
('121233740003186015', 'Syifaa Syafira', '121233740003186015', 'Perempuan', '12/03/2006', '', 'Dsn. Karang Talun RT. 02 RW. 03,Truko,Bringin', 'VIII-C', 'Samhudi'),
('121233740003186049', 'Yulia Saputri', '121233740003186049', 'Perempuan', '21/07/2006', '', 'Karangturi RT. 07 RW. 02,Bogosari,Guntur', 'VIII-C', 'Sunaryo'),
('121233740003186119', 'Zaacky Shobakhul Akbar', '121233740003186119', 'Laki-laki', '10/01/2006', '', 'Cepoko RT. 03 RW. 01,Cepoko,Gunung Pati', 'VIII-C', 'Sugiyono'),
('121233740003186017', 'Zulva Aisya Putri', '121233740003186017', 'Perempuan', '10/07/2004', '', 'Karang Pete RT. 10 RW. 06,Ngempon,Bergas', 'VIII-C', 'Sinun'),
('121233740003186051', 'Abell Daniel Perdosa', '121233740003186051', 'Laki-laki', '08/08/2005', '', 'Ngijo RT. 03 RW. 02,Ngijo,Gunung Pati', 'VIII-D', 'Eko Ariyanto'),
('121233740003186086', 'Ahmad Nabil', '121233740003186086', 'Laki-laki', '10/09/2005', '', 'Jl. Kakap No. 79A RT. 10 RW. 01 ,Kuningan,Semarang Utara', 'VIII-D', 'Yulio Enzeno'),
('121233740003186020', 'Ahmad Zakki Izudin', '121233740003186020', 'Laki-laki', '23/09/2005', '', 'Pakintelan RT. 04 RW. 04,Pakintelan ,Gunung Pati', 'VIII-D', 'Achmad Khadzik'),
('121233740003185989', 'Aliah Anugrah Rikayati', '121233740003185989', 'Perempuan', '12/08/2006', '', 'Jl. WR. Supratman RT. 05 RW. 12,Gisikdrono,Semarang Barat', 'VIII-D', 'Temu Riyadi'),
('121233740003186022', 'Alvin Sadam Assasia', '121233740003186022', 'Laki-laki', '26/03/2006', '', 'Patemon RT. 03 RW. 01,Patemon,Gunung Pati', 'VIII-D', 'Fuad Fajar Buana'),
('121233740003186055', 'Anninda Arum Bhakti', '121233740003186055', 'Perempuan', '29/08/2006', '', 'Pakintelan RT. 04 RW. 03,Pakintelan,Gunung Pati', 'VIII-D', 'Slamet Riyadi'),
('121233740003186161', 'Aulia Nur Rohmah', '121233740003186161', 'Perempuan', '14/08/2006', '', 'Pakintelan, RT. 04 RW. 03,Pakintelan ,Gunung Pati', 'VIII-D', 'Mugiyarno'),
('121233740003186026', 'Dimas Aditya Dwi Setiawan', '121233740003186026', 'Laki-laki', '27/06/2005', '', 'Jetis RT. 05 RW. 01,Kalisegoro,Gunung Pati', 'VIII-D', 'Untung Setiawan'),
('121233740003186028', 'Erik Kurniawan', '121233740003186028', 'Laki-laki', '24/07/2006', '', 'Kalisegoro RT. 02 RW. 03,Kalisegoro,Gunung Pati', 'VIII-D', 'M. Surikan'),
('121233740003186063', 'Gavin Pradana Putra', '121233740003186063', 'Laki-laki', '18/02/2006', '', 'Mangunsari, RT. 04 RW. 04,Mangunsari,Gunung Pati', 'VIII-D', 'Sudarlianto'),
('121233740003186030', 'Hanum Dwi Andriani', '121233740003186030', 'Perempuan', '23/09/2005', '', 'Muntal RT. 01 RW. 05 ,Patemon,Gunung Pati', 'VIII-D', 'Ahmad Mundzakir'),
('121233740003186032', 'Heru Noriyawan', '121233740003186032', 'Laki-laki', '19/08/2005', '', 'Watusari RT. 03 RW. 06 ,Pakintelan ,Gunung Pati', 'VIII-D', 'Sutarman'),
('121233740003186065', 'Maura Aulia Pramesti', '121233740003186065', 'Perempuan', '14/01/2006', '', 'Mangunsari, RT. 02 RW. 04,Mangunsari,Gunung Pati', 'VIII-D', 'Rudi Nugroho'),
('121233740003186033', 'Muhamad Abdul Rokhim', '121233740003186033', 'Laki-laki', '24/12/2005', '', 'Pakintelan RT. 04 RW. 03,Pakintelan ,Gunung Pati', 'VIII-D', 'M Syaiful Basrowi'),
('121233740003186066', 'Muhamad Danan Jaya', '121233740003186066', 'Laki-laki', '20/06/2006', '', 'Pakintelan RT. 02 RW. 05,Pakintelan,Gunung Pati', 'VIII-D', 'Teguh Wiyono'),
('121233740003186036', 'Muhammad Abdul Aziz', '121233740003186036', 'Laki-laki', '03/12/2005', '', 'Pakintelan RT. 01 RW. 03,Pakintelan ,Gunung Pati', 'VIII-D', 'Suwondo'),
('121233740003186068', 'Muhammad Anas Fahri', '121233740003186068', 'Laki-laki', '09/12/2005', '', 'Patemon RT. 01 RW. 01,Patemon,Gunung Pati', 'VIII-D', 'Rosikin'),
('121233740003186038', 'Muhammad Riyandhika Putra', '121233740003186038', 'Laki-laki', '25/04/2006', '', 'Pakintelan RT. 03 RW. 06,Pakintelan ,Gunung Pati', 'VIII-D', 'MH. Saeri '),
('121233740003186163', 'Muhammad Syafril Fahrezi ', '121233740003186163', 'Laki-laki', '26/04/2005', '', 'Kauman RT. 03 RW. 05 Boja,Boja,Boja', 'VIII-D', 'Agus Dadi'),
('121233740003186175', 'Muhammad Zafi Faqih Fawwaz', '121233740003186175', 'Laki-laki', '13/05/2006', '', 'Banaran RT. 02 RW. 05,Sekaran,Gunung Pati', 'VIII-D', 'Fitrotul Munir'),
('121233740003186069', 'Nabil Dwi Arga Pamungkas', '121233740003186069', 'Laki-laki', '06/06/2006', '', 'Ngijo, RT. 02 RW. 02,Ngijo,Gunung Pati', 'VIII-D', 'Sumarno'),
('121233740003186070', 'Nalendra Aditya Saputra', '121233740003186070', 'Laki-laki', '04/12/2005', '', 'Pakintelan RT. 03 RW. 04,Pakintelan,Gunung Pati', 'VIII-D', 'Suparno'),
('121233740003186043', 'Rafi Ardika Dwi Pamungkas', '121233740003186043', 'Laki-laki', '03/04/2005', '', 'Pakintelan RT. 05 RW. 05,Pakintelan,Gunung Pati', 'VIII-D', 'Sis Mulyono'),
('121233740003186072', 'Rafi Ridho Pratama', '121233740003186072', 'Laki-laki', '07/12/2004', '', 'Ds. Muntal Kidul RT. 01 RW. 06,Pakintelan,Gunung Pati', 'VIII-D', 'Ngandika Muslim'),
('121233740003186113', 'Rosya Lestari Putri Naida', '121233740003186113', 'Perempuan', '14/12/2005', '', 'Sekaran, RT. 01 RW. 02,Sekaran,Gunung Pati', 'VIII-D', 'Rois'),
('121233740003186075', 'Said Nuril Anwar', '121233740003186075', 'Laki-laki', '11/07/2006', '', 'Patemon RT. 01 RW. 04,Patemon,Gunung Pati', 'VIII-D', 'Supirman'),
('121233740003186080', 'Silfi Arofah', '121233740003186080', 'Perempuan', '15/01/2005', '', 'Patemon, RT. 01 RW. 02,Patemon,Gunung Pati', 'VIII-D', 'Sunandar'),
('121233740003186115', 'Silfiya Eka Mardiani', '121233740003186115', 'Perempuan', '04/09/2005', '', 'Banaran, RT. 03 RW. 05,Sekaran,Gunung Pati', 'VIII-D', 'Mawardi'),
('121233740003186117', 'Tirta Nur Salama', '121233740003186117', 'Perempuan', '20/05/2006', '', 'Patemon, RT. 03 RW. 04,Patemon,Gunung Pati', 'VIII-D', 'Slamet Andrianto'),
('121233740003186118', 'Tyas Apriliani', '121233740003186118', 'Perempuan', '05/04/2006', '', 'Sekaran, RT. 04 RW. 01,Sekaran,Gunung Pati', 'VIII-D', 'Munasir'),
('121233740003186047', 'Umi Salma Islami', '121233740003186047', 'Perempuan', '09/05/2005', '', 'Jl. Menoreh Utara III RT. 11 RW. 01 ,Gajah Mungkur,Gunung Pati', 'VIII-D', 'Kasmudi'),
('121233740003186083', 'Wahyu Diah Pramhadita', '121233740003186083', 'Perempuan', '20/07/2004', '', 'Dsn. Lorog RT. 01 RW. 06,Lerep,Ungaran Barat', 'VIII-D', 'Agus Tugiyanto'),
('121233740003186052', 'Abid Ghulam Ahmad', '121233740003186052', 'Laki-laki', '05/02/2006', '', 'Pakintelan RT. 03 RW. 06,Pakintelan,Gunung Pati', 'VIII-E', 'Muh Zuhri '),
('121233740003186053', 'Afrizal Amri', '121233740003186053', 'Laki-laki', '09/07/2005', '', 'Kalisegoro RT. 01 RW. 02,Kalisegoro,Gunung Pati', 'VIII-E', 'Muharnadi'),
('121233740003186054', 'Ahmad David Cahyono', '121233740003186054', 'Laki-laki', '03/08/2005', '', 'Ngijo RT. 02 RW. 02,Ngijo,Gunung Pati', 'VIII-E', 'Haryadi'),
('121233740003196180', 'Ahmad Syarif', '121233740003196180', 'Laki-laki', '21/12/2005', '', 'Kosong', 'VIII-E', 'Kosong'),
('121233740003186023', 'Ananda Farid Najmudin', '121233740003186023', 'Laki-laki', '01/11/2005', '', 'Dk. Rejosari RT. 03 RW. 01,Ngijo,Gunung Pati', 'VIII-E', 'Fatkhurohman'),
('121233740003186056', 'Ariella Belva Juliasantika', '121233740003186056', 'Perempuan', '11/07/2006', '', 'Patemon RT. 03 RW. 01,Pakintelan,Gunung Pati', 'VIII-E', 'Istiyanto'),
('121233740003186024', 'Azzahra Febry Fatmawati', '121233740003186024', 'Perempuan', '19/02/2006', '', 'Patemon RT. 01 RW. 02,Patemon,Gunung Pati', 'VIII-E', 'Agus Siswantoro'),
('121233740003186058', 'Dandi Tya Yudha Saputra', '121233740003186058', 'Laki-laki', '19/12/2005', '', 'Sekaran, RT. 05 RW. 01,Sekaran,Gunung Pati', 'VIII-E', 'Samun'),
('121233740003186025', 'Diah Ayu Fitriasih', '121233740003186025', 'Perempuan', '01/11/2005', '', 'Banaran RT. 01 RW. 05,Sekaran,Gunung Pati', 'VIII-E', 'Kastiyono'),
('121233740003186027', 'Elisya Anggun Margareta', '121233740003186027', 'Perempuan', '23/06/2006', '', 'Ampelgading RT. 02 RW. 03 ,Kalisegoro,Gunung Pati', 'VIII-E', 'Parman'),
('121233740003186061', 'Fawwaz Naufaldi Abrar', '121233740003186061', 'Laki-laki', '01/10/2005', '', 'Patemon RT. 01 RW. 02,Patemon,Gunung Pati', 'VIII-E', 'Muntowib'),
('121233740003186062', 'Ganjar Setyawan', '121233740003186062', 'Laki-laki', '10/07/2006', '', ',,Gunung Pati', 'VIII-E', 'Kawari'),
('121233740003186031', 'Herlina Novita Sari', '121233740003186031', 'Perempuan', '22/01/2006', '', 'Sekaran RT. 01 RW. 03 ,Sekaran,Gunung Pati', 'VIII-E', 'Nurkholis'),
('121233740003186034', 'Muhamad Asyroful Anam', '121233740003186034', 'Laki-laki', '21/05/2005', '', 'Watusari RT. 01 RW. 06,Patemon,Gunung Pati', 'VIII-E', 'Bakri'),
('121233740003186067', 'Muhammad Afrizal', '121233740003186067', 'Laki-laki', '16/02/2006', '', 'Patemon, RT. 02 RW. 01,Patemon,Gunung Pati', 'VIII-E', 'Soeryadi'),
('121233740003186035', 'Muhammad Fadiil Kurniawan', '121233740003186035', 'Laki-laki', '05/02/2006', '', 'Pakintelan RT. 05 RW. 03,Pakintelan ,Gunung Pati', 'VIII-E', 'Ehsanudin'),
('121233740003186041', 'Niken Aulia Kuswardani', '121233740003186041', 'Perempuan', '11/03/2006', '', 'Banaran RT. 01 RW. 05,Sekaran,Gunung Pati', 'VIII-E', 'Sukardi'),
('121233740003186071', 'Puja Syahputri Bungalasti', '121233740003186071', 'Perempuan', '13/06/2005', '', 'Banaran RT. 03 RW. 05,Sekaran,Gunung Pati', 'VIII-E', 'Lasiman'),
('121233740003186074', 'Revana Sheila Anandita', '121233740003186074', 'Perempuan', '01/06/2005', '', 'Dk. Watusari RT. 02 RW. 06 ,Pakintelan,Gunung Pati', 'VIII-E', 'Nuryadi'),
('121233740003186076', 'Septia Wahyu Rane Isnawati', '121233740003186076', 'Perempuan', '05/09/2005', '', 'Dk. Randusari RT. 05 RW. 02,Nongkosawit,Gunung Pati', 'VIII-E', 'Sunarso '),
('121233740003186077', 'Serly Diyah Nopstianti', '121233740003186077', 'Perempuan', '09/11/2004', '', 'Pakintelan RT. 04 RW. 03,Pakintelan,Gunung Pati', 'VIII-E', 'Suharko'),
('121233740003186078', 'Sevika Prasselina', '121233740003186078', 'Perempuan', '30/09/2005', '', 'Patemon, RT. 03 RW. 01,Patemon,Gunung Pati', 'VIII-E', 'Eko Prasetyo'),
('121233740003186079', 'Shivana Shelly Anindita', '121233740003186079', 'Perempuan', '01/06/2005', '', 'Watusari, RT. 02 RW. 06,Pakintelan,Gunung Pati', 'VIII-E', 'Nuryadi'),
('121233740003186081', 'Sinang Maulana Akbar', '121233740003186081', 'Laki-laki', '20/09/2005', '', 'Randusari, RT. 01 RW. 02 ,Nongkosawit,Gunung Pati', 'VIII-E', 'Achmat Miftakhul Munir'),
('121233740003186082', 'Vino Dwi Natalis', '121233740003186082', 'Laki-laki', '25/12/2006', '', 'Kalisegoro RT. 02 RW. 03,Kalisegoro,Gunung Pati', 'VIII-E', 'Muh Rochim'),
('121233740003185951', 'Abi Bayu Saputra', '121233740003185951', 'Laki-laki', '26/07/2006', '', 'Perum Hacienda Blok E-5, RT. 09 RW. 01,Jangli ,Tembalang', 'VIII-F', 'Purnomo'),
('121233740003185952', 'Adam Farid Romadhon', '121233740003185952', 'Laki-laki', '16/10/2005', '', 'Kalipancur RT. 01 RW. 03,Bambangkerep,Ngaliyan ', 'VIII-F', 'Sutoyo'),
('121233740003185953', 'Ahmad Taufiq Soleh Udin', '121233740003185953', 'Laki-laki', '09/05/2006', '', 'Dsn. Gumuk Mas RT. 38 RW. 07,Karangsari,Bantur', 'VIII-F', 'Qosim'),
('121233740003185954', 'Akbar Maulana Dafa', '121233740003185954', 'Laki-laki', '15/10/2005', '', 'Ds. Ngrembel RT. 03 RW. 07 ,Gunungpati,Gunung Pati', 'VIII-F', 'Sony Sunarno'),
('121233740003185955', 'Ali Mahmud', '121233740003185955', 'Laki-laki', '07/03/2006', '', 'Dsn. Tegalgunung RT. 01 RW. 06,Pagerwojo,Limbangan', 'VIII-F', 'Ismoko'),
('121233740003185957', 'Fahmi Khoirul Anam', '121233740003185957', 'Laki-laki', '17/05/2006', '', 'Sendang Rejo RT. 01 RW. 07 ,Nyatnyono,Ungaran Barat', 'VIII-F', 'Moh Aliman'),
('121233740003185958', 'Faiz Haikal Aufa', '121233740003185958', 'Laki-laki', '11/12/2005', '', 'Gembongan RT. 10 RW. 04 ,Karangjati,Bergas', 'VIII-F', 'Muhammad Yani'),
('121233740003185960', 'Fattah Hidayat Isfahani', '121233740003185960', 'Laki-laki', '25/11/2005', '', 'Dsn. Krajan, RT. 01 RW. 03 Lemahireng,Lemahireng,Bawen ', 'VIII-F', 'Sariyanto'),
('121233740003196183', 'Farel Junino Firmansyah', '121233740003196183', 'Laki-laki', '20/06/2006', '', 'Kosong', 'VIII-F', 'Wagiman'),
('121233740003186096', 'Ilham Cahyajiwa Wardaya', '121233740003186096', 'Laki-laki', '13/04/2006', '', 'Jl. Jatisari Timur XIII RT. 06 RW. 13,Gisikdrono,Semarang Barat', 'VIII-F', 'Kusno Wardoyo'),
('121233740003185961', 'Imam Ibnu Fajar', '121233740003185961', 'Laki-laki', '08/08/2005', '', 'Dsn. Krajan, RT. 01 RW. 03 Lemahireng,Lemahireng,Bawen ', 'VIII-F', 'Kasiran'),
('121233740003185962', 'Ismail Dias Muhtadi', '121233740003185962', 'Laki-laki', '30/09/2005', '', 'Ngaglik Lama No. 72 RT. 01 RW. 05,Bendungan,Gajah Mungkur', 'VIII-F', 'Didik Muhtadi'),
('121233740003185963', 'Marshall Ahmad Al-Ghibran', '121233740003185963', 'Laki-laki', '15/01/2006', '', 'Lingkungan Kolangkaling RT. 01 RW. 03,Wujil,Bergas', 'VIII-F', 'Ibnu Habib Trinugroho'),
('121233740003185964', 'Muhamad Ali Ridho', '121233740003185964', 'Laki-laki', '16/01/2006', '', 'Jl. Pakunegara RT. 13 ,Raja,Arut Selatan', 'VIII-F', 'Misbah'),
('121233740003185965', 'Muhamad Riyan Alfattoni', '121233740003185965', 'Laki-laki', '06/11/2005', '', 'Lingkungan Kolangkaling RT. 01 RW. 03,Wujil,Bergas', 'VIII-F', 'Riyanto'),
('121233740003186101', 'Muhammad Akmaludin Sharif Hidayatullah', '121233740003186101', 'Laki-laki', '08/03/2005', '', 'Jl. Yudistira I/ IA, RT. 02 RW. 10,Lerep,Ungaran Barat', 'VIII-F', 'A. Fathoni Purwanto'),
('121233740003185967', 'Muhammad Ariful Haq', '121233740003185967', 'Laki-laki', '08/11/2005', '', 'Pedurungan Kidul RT. 05 RW. 12,Pedurungan Kidul ,Pedurungan', 'VIII-F', 'Kahar'),
('121233740003185968', 'Muhammad Atik Fata Royan', '121233740003185968', 'Laki-laki', '29/10/2005', '', 'Lingkungan Krajan Lor RT. 03 RW. 04,Wujil,Bergas', 'VIII-F', 'Marsono'),
('121233740003185969', 'Muhammad Cahaya Putra', '121233740003185969', 'Laki-laki', '09/07/2006', '', 'Kalisidi, RT. 04 RW. 06,Kalisidi,Ungaran Barat ', 'VIII-F', 'Muh Mustolih'),
('121233740003185970', 'Muhammad Hafidz Kuswara', '121233740003185970', 'Laki-laki', '19/12/2005', '', 'Kosong', 'VIII-F', 'Kosong'),
('121233740003185971', 'Muhammad Sirojuddin Al Fattah', '121233740003185971', 'Laki-laki', '18/04/2005', '', 'Ketileng II/ 24 RT. 04 RW. 25,Sendangmulyo,Tembalang', 'VIII-F', 'Suharmanto'),
('121233740003185972', 'Muhammad Sulthon Ibrahim', '121233740003185972', 'Laki-laki', '15/09/2005', '', 'Karangroto RT. 05 RW. 02 ,Karangroto,Genuk', 'VIII-F', 'Nasron'),
('121233740003186010', 'Muhammad Zaky Khan Nasir', '121233740003186010', 'Laki-laki', '18/01/2006', '', 'Jl. Karangroto RT. 01 RW. 02,Genuk,Genuk', 'VIII-F', 'Muhammad Nasir'),
('121233740003185973', 'Qinan Arrafi', '121233740003185973', 'Laki-laki', '28/12/2005', '', 'Jl. Damar Barat IV/ 105 RT. 03 RW. 10,Padangsari,Banyumanik', 'VIII-F', 'Muchamad Yusuf '),
('121233740003186012', 'Ragil Surya Abadi', '121233740003186012', 'Laki-laki', '29/12/2005', '', 'Dusun Kedungdowo RT. 06 RW. 04 ,Campurejo,Boja', 'VIII-F', 'Sariyadi'),
('121233740003186013', 'Reyvanda Cahya Pradana', '121233740003186013', 'Laki-laki', '06/06/2006', '', 'Desa Merbuh RT. 01 RW. 02 ,Merbuh,Singorojo', 'VIII-F', 'Mustaqbilal'),
('121233740003185976', 'Shahiful Umar Singgih', '121233740003185976', 'Laki-laki', '08/05/2004', '', 'Perum Trangkil Sejahtera RT. 03 RW. 10,Sukorejo ,Gunungpati', 'VIII-F', 'Sumadi'),
('121233740003185978', 'Wafa Hadi Nur Wakhid', '121233740003185978', 'Laki-laki', '20/07/2006', '', 'Dsn. Tegalgunung RT. 01 RW. 03,Pagerwojo,Limbangan', 'VIII-F', 'Nur Rohman'),
('121233740003185979', 'Wildan Arjunawal Al Busthomy', '121233740003185979', 'Laki-laki', '22/11/2005', '', 'Lingkungan Klego RT. 04 RW. 01 ,Ngempon ,Bergas', 'VIII-F', 'M. Zaenuri'),
('121233740003185981', 'Zakky Hanif Al Faiz', '121233740003185981', 'Laki-laki', '13/10/2005', '', 'Jl. Wonosari Tengah No. 24 C,Wonosari,Ngaliyan ', 'VIII-F', 'Edi Setyo Wibowo'),
('121233740003185983', 'Zidan Aly Syahbana', '121233740003185983', 'Laki-laki', '15/07/2006', '', 'Lingkungan Gembongan RT. 04 RW. 04 ,Karangjati,Bergas', 'VIII-F', 'Saeroji'),
('121233740003175835', 'AHMAD RIFKI', '121233740003175835', 'Laki-laki', '130705', 'BLORA', 'JL. KAUMAN NO. 02 PATEMON RT. 03 RW. 02', 'IX-A', 'ROKAM'),
('121233740003175837', 'ALFIANUR WILDAN HANAFI', '121233740003175837', 'Laki-laki', '240104', 'KENDAL', 'JL. KAUMAN NO. 01 RT. 03 RW. 02', 'IX-A', 'SARMANI'),
('121233740003175767', 'ALI FATIKHUL IZZA', '121233740003175767', 'Laki-laki', '020205', 'KAB. SEMARANG', 'Jl. Kauman No. 01 Patemon', 'IX-A', 'Haryawan Adi Nugroho'),
('121233740003175840', 'ARDI RISKY SETIAWAN', '121233740003175840', 'Laki-laki', '050304', 'KENDAL', 'JL. KAUMAN NO. 01 RT. 03 RW. 02', 'IX-A', 'MAWARDI'),
('121233740003175769', 'ARYA MUKTI DWIMA IQBAL', '121233740003175769', 'Laki-laki', '220305', 'KAB. SEMARANG', 'JL. KAUMAN NO. 01 RT. 03 RW. 02', 'IX-A', 'SIDIQIYAH'),
('121233740003175770', 'CHANDRA NUR FATTAH', '121233740003175770', 'Laki-laki', '040505', 'SEMARANG', 'JL. KAUMAN NO. 01 RT. 03 RW. 02', 'IX-A', 'SAMINO'),
('121233740003175771', 'DEVON SURYA', '121233740003175771', 'Laki-laki', '141104', 'PURWOKERTO', 'JL. KAUMAN NO. 01 RT. 03 RW. 02', 'IX-A', 'PRAPTO SUSILO'),
('121233740003175772', 'DIKA ARIFIAN', '121233740003175772', 'Laki-laki', '220505', 'KAB.SEMARANG', 'JL. KAUMAN NO. 01 RT. 03 RW. 02', 'IX-A', 'SUPARI'),
('121233740003175846', 'FARCHAN BRIYAN AFIANSYAH', '121233740003175846', 'Laki-laki', '160405', 'KENDAL', 'JL. KAUMAN NO. 01 RT. 03 RW. 02', 'IX-A', 'ABDUL ROHMAN'),
('121233740003175774', 'GUS NUR ALIF', '121233740003175774', 'Laki-laki', '180905', 'SEMARANG', 'JL. KAUMAN NO. 01 RT. 03 RW. 02', 'IX-A', 'JUMAIRI'),
('121233740003175849', 'KHOIRUL HUDA', '121233740003175849', 'Laki-laki', '100805', 'KABUPATEN SEMARANG', 'JL. KAUMAN NO. 01 RT. 03 RW. 02', 'IX-A', 'PARYADI'),
('121233740003175778', 'M. RIZKY RAMADHAN', '121233740003175778', 'Laki-laki', '181005', 'SEMARANG', 'JL. KAUMAN NO. 01 RT. 03 RW. 02', 'IX-A', 'PAHRUL ROJI'),
('121233740003175851', 'MOHAMMAD ILHAM FAHRUQI', '121233740003175851', 'Laki-laki', '291204', 'SEMARANG', 'JATIBARANG RT 1 RW 1 MIJEN', 'IX-A', 'NUR WACHID'),
('121233740003175852', 'MUHAMAD FAIZ IRFAN', '121233740003175852', 'Laki-laki', '161204', 'KENDAL', 'JL. KAUMAN NO. 01 RT. 03 RW. 02', 'IX-A', 'SUTRISNO'),
('121233740003175780', 'MUHAMAD IRVAN ARAVI', '121233740003175780', 'Laki-laki', '210104', 'KABUPATEN SEMARANG', 'JL. KAUMAN NO. 01 RT. 03 RW. 02', 'IX-A', 'ARIS SUSIYANTO'),
('121233740003175781', 'MUHAMMAD AZHAR ALWY', '121233740003175781', 'Laki-laki', '200605', 'SEMARANG', 'JL. KAUMAN NO. 01 RT. 03 RW. 02', 'IX-A', 'SURADI'),
('121233740003175782', 'MUHAMMAD BIMA RAHADITYA', '121233740003175782', 'Laki-laki', '130105', 'KABUPATEN SEMARANG ', 'JL. KAUMAN NO. 01 RT. 03 RW. 02', 'IX-A', 'SUTRIMO'),
('121233740003175783', 'MUHAMMAD CHOIRUL HAMMAM', '121233740003175783', 'Laki-laki', '081105', 'SEMARANG', 'JL. KAUMAN NO. 01 RT. 03 RW. 02', 'IX-A', 'ACHMAD SAEFODIN'),
('121233740003175784', 'MUHAMMAD DAFFA` DHIYA ULHAQ', '121233740003175784', 'Laki-laki', '190905', 'KABUPATEN SEMARANG', 'Jl. Kauman RT. 03 RW. 02 Patemon', 'IX-A', 'Muhamad Kholik'),
('121233740003175785', 'MUHAMMAD DICKY DESTIAN', '121233740003175785', 'Laki-laki', '121204', 'KABUPATEN SEMARANG', 'JL. KAUMAN NO. 01 RT. 03 RW. 02', 'IX-A', 'ACHMAD DAYARI'),
('121233740003175855', 'MUHAMMAD FAQIH MASYARIL HARAM', '121233740003175855', 'Laki-laki', '171005', 'BATANG', 'JL. KAUMAN NO. 01 RT. 03 RW. 02', 'IX-A', 'KHOLID KAELANI'),
('121233740003175788', 'MUHAMMAD NIKO AMINNUDIN YUNUS', '121233740003175788', 'Laki-laki', '200305', 'KABUPATEN SEMARANG', 'JL. KAUMAN NO. 01 RT. 03 RW. 02', 'IX-A', 'SUGIYANTO'),
('121233740003175789', 'NANDO DIAS EKA HARPIAN', '121233740003175789', 'Laki-laki', '260804', 'KENDAL', 'JL. KAUMAN NO. 01 RT. 03 RW. 02', 'IX-A', 'SUPARDI'),
('121233740003175792', 'RIZA AHMAD WIJAYA ', '121233740003175792', 'Laki-laki', '260804', 'KABUPATEN SEMARANG', 'JL. KAUMAN NO. 01 RT. 03 RW. 02', 'IX-A', 'MASDUQI'),
('121233740003175793', 'RIZKI HAIKHAL FIKRI', '121233740003175793', 'Laki-laki', '051204', 'KUNINGAN', 'JL. KAUMAN NO. 01 RT. 03 RW. 02', 'IX-A', 'DIDIN KUSNADI'),
('121233740003175832', 'ADYUTA HARNINDITO', '121233740003175832', 'Laki-laki', '240804', 'SEMARANG', 'JL. WUNISARI RT. 05 RW. 04', 'IX-B', 'SUHARYAWAN'),
('121233740003175800', 'AHMAD ADI ANDREAN', '121233740003175800', 'Laki-laki', '201204', 'SEMARANG', 'WATUSARI RT. 02 / RW. 06 PATEMON', 'IX-B', 'SURURI'),
('121233740003175763', 'AHMAD ARIF HABIBI', '121233740003175763', 'Laki-laki', '030805', 'SEMARANG', 'JL. KAUMAN NO. 01 RT. 03 RW. 02', 'IX-B', 'WIDODO'),
('121233740003165690', 'ALDIRA NOVA RHAMADAN', '121233740003165690', 'Laki-laki', '101104', 'SEMARANG', 'PAKINTELAN RT. 03 RW.04', 'IX-B', 'WAGIYO'),
('121233740003175867', 'ASTRI ADILA', '121233740003175867', 'Perempuan', '230804', 'SEMARANG', 'SEDAYU RT. 03 RW. 01', 'IX-B', 'TRIMONO'),
('121233740003175805', 'ATILA SALSA SETIA WIJAYA', '121233740003175805', 'Laki-laki', '160705', 'SEMARANG', 'DELIK SAI RT. 04 RW. 06 R', 'IX-B', 'ANDI WIJAYA'),
('121233740003175919', 'AULIA NURANTI', '121233740003175919', 'Perempuan', '041004', 'SEMARANG', 'Pakintelan RT. 01 RW. 04', 'IX-B', 'Kuwat'),
('121233740003175806', 'BAYU AJI NURWAHID', '121233740003175806', 'Laki-laki', '210505', 'SEMARANG', 'SEKARAN RT.02/RW.02', 'IX-B', 'BUDI RUSMIYANTO'),
('121233740003175870', 'DIKA RAHMAWATI', '121233740003175870', 'Perempuan', '281204', 'SEMARANG', 'Sedayu RT. 02 RW. 01', 'IX-B', 'Branto'),
('121233740003175843', 'DZAMAR AULADI WICAKSONO', '121233740003175843', 'Laki-laki', '151004', 'SEMARANG', 'Sekaran RT. 02 RW. 01', 'IX-B', 'Sutaryo'),
('121233740003175923', 'ERIKA LIHAM SARI', '121233740003175923', 'Perempuan', '181202', 'SEMARANG', 'Sekaran, RT. 03 RW. 01', 'IX-B', 'Koderi'),
('121233740003175872', 'ERLIN MADALENA', '121233740003175872', 'Perempuan', '170105', 'TEMANGGUNG ', 'Muntal RT. 01 RW. 05', 'IX-B', 'Wagiyono'),
('121233740003175925', 'HENY LESTIYAWATI', '121233740003175925', 'Perempuan', '031005', 'SEMARANG', 'MUNTAL RT. 01 / RW. 03 NGIJO', 'IX-B', 'SUMARI'),
('121233740003175926', 'HEPY DWI ARDIYANA', '121233740003175926', 'Perempuan', '310505', 'SEMARANG', 'Ampel Gading RT. 02 RW. 03', 'IX-B', 'Ngadiono'),
('121233740003175775', 'ILHAM EKA  RANTAU PUTRA', '121233740003175775', 'Laki-laki', '300904', 'KUNDI', 'Jatirejo RT.06 RW. 01', 'IX-B', 'Solifin'),
('121233740003175847', 'KEVIN HERLESTA  RAMADHAN', '121233740003175847', 'Laki-laki', '131004', 'SEMARANG', 'JLN. CEPERSARI RT. 04 / RW. 05', 'IX-B', 'HERU PURNOMO'),
('121233740003175812', 'KEVIN JEAN KALONTA', '121233740003175812', 'Laki-laki', '170904', 'SEMARANG', 'Muntal RT. 01 RW. 05', 'IX-B', 'Arie Boy Kalanta'),
('121233740003175930', 'MARTIAH LISTIYANTI', '121233740003175930', 'Perempuan', '191204', 'KOTA SEMARANG', 'Patemon RT. 01 RW. 01', 'IX-B', 'Martono'),
('121233740003175877', 'MILANA INTAN KUSUMAWATI', '121233740003175877', 'Perempuan', '050505', 'SEMARANG', 'Sironjang, RT. 01 RW. 01', 'IX-B', 'Santoso'),
('121233740003175857', 'MUHAMMAD YUSUF EFENDI', '121233740003175857', 'Laki-laki', '200703', 'SEMARANG', 'Dk. Kepil RT. 04 RW. 02', 'IX-B', 'Subchan'),
('121233740003175823', 'NAUFAL BAGUS HENDRYANSAH', '121233740003175823', 'Laki-laki', '150704', 'SEMARANG', 'Patemon RT. 03 RW. 02', 'IX-B', 'Agus Hendry Cahyanto'),
('121233740003175887', 'VIRGINA ARTHA MEVIA DESVITA', '121233740003175887', 'Perempuan', '061204', 'SEMARANG', 'Kalisegoro RT. 02 RW. 01', 'IX-B', 'Rusmiyadi'),
('121233740003175932', 'TIARA DEWI SEPTIANI', '121233740003175932', 'Perempuan', '220903', 'KOTA SEMARANG', 'Ngijo RT. 04 RW. 01', 'IX-B', 'Santoso'),
('121233740003175861', 'RAFIQURAHMAN WAKHID SAPUTRA', '121233740003175861', 'Laki-laki', '010105', 'SEMARANG ', 'Kalialang Lama RT. 01 RW. 01', 'IX-B', 'Ismanto'),
('121233740003175864', 'YUDA', '121233740003175864', 'Laki-laki', '090604', 'SEMARANG', 'Winongsari RT. 05 RW. 02', 'IX-B', 'Suwartiah'),
('121233740003175833', 'AFANDI KURNIAWAN', '121233740003175833', 'Laki-laki', '220603', 'SEMARANG', 'Bantardowo RT. 02 RW. 07', 'IX-C', 'Juwasis'),
('121233740003175803', 'ANGGA SYAHPUTRA PRATAMA', '121233740003175803', 'Laki-laki', '060604', 'SEMARANG', 'Perum Mangunsari Asri No. 113 RT. 07 RW. 04', 'IX-C', 'Slamet Widodo'),
('121233740003175914', 'ADINDA NUR RAMADANI', '121233740003175914', 'Perempuan', '281005', 'SEMARANG', 'Kalisegoro, RT. 06 RW. 02', 'IX-D', 'Nuryanto'),
('121233740003175765', 'AHMAD MAULANA PRADANY', '121233740003175765', 'Laki-laki', '231204', 'KAB. SEMARANG', 'Ngabeyan, RT. 04 RW. 03', 'IX-D', 'Saryono'),
('121233740003175917', 'ANITA PUTRI NUR CAHYATI', '121233740003175917', 'Perempuan', '071004', 'KOTA SEMARANG', 'Sriging RT. 01 RW. 01', 'IX-D', 'Muh Zaeni'),
('121233740003175768', 'ARDI RAFI NURCAHYONO', '121233740003175768', 'Laki-laki', '291104', 'SEMARANG', 'KALIGETAS RT 4 RW 4 JATIBARANG', 'IX-D', 'MISROH'),
('121233740003175842', 'DIMAS WAHYU ADI PRATAMA', '121233740003175842', 'Laki-laki', '061204', 'SEMARANG', 'Pakintelan RT. 02 RW. 01', 'IX-D', 'Surani'),
('121233740003175924', 'FEBRIANA DINI RAHMA ANGGRAENI', '121233740003175924', 'Perempuan', '240205', 'SEMARANG', 'Patemon RT. 03 RW. 01', 'IX-D', 'Muh Fauzi'),
('121233740003175810', 'ILHAM WAHYU SAPUTRA', '121233740003175810', 'Laki-laki', '110405', 'KABUPATEN SEMARANG ', 'Jl. Bukitsari RT. 01 RW. 05', 'IX-D', 'Sampit Ifansah'),
('121233740003175811', 'JULIAN ADI SAPUTRO', '121233740003175811', 'Laki-laki', '150704', 'SEMARANG', 'SEKARAN RT.01/RW.02', 'IX-D', 'SUDARNO'),
('121233740003175929', 'LENI MUNAFISAH', '121233740003175929', 'Perempuan', '280304', 'SEMARANG', 'Patemon RT. 02 RW. 01', 'IX-D', 'Kuat Santosa'),
('121233740003175816', 'MUHAMAD DAFA HARDIANTO', '121233740003175816', 'Laki-laki', '230604', 'KOTA SEMARANG', 'Patemon RT. 02 RW. 02', 'IX-D', 'Zaenal Arifin'),
('121233740003175854', 'MUHAMMAD DUTA RADITYA', '121233740003175854', 'Laki-laki', '160605', 'SEMARANG', 'Pakintelan RT. 01 RW. 03', 'IX-D', 'Ahmad Muhtarom'),
('121233740003175856', 'MUHAMMAD FARID ANJAS HAMMAM', '121233740003175856', 'Laki-laki', '190405', 'KAB.SEMARANG', 'SEKARAN RT.03/RW.03', 'IX-D', 'MUHAMMAD AHSIN'),
('121233740003175819', 'MUHAMMAD SANDI NUGROHO', '121233740003175819', 'Laki-laki', '120105', 'KOTA SEMARANG', 'SEKARAN RT.01/RW.04', 'IX-D', 'MUHLISIN'),
('121233740003175821', 'MUHAMMAD YUSUF  ', '121233740003175821', 'Laki-laki', '180804', 'SEMARANG', 'MUNTAL RT. 01 / RW.05 PATEMON', 'IX-D', 'AGUNG NUGROHO'),
('121233740003175826', 'NUR ROKHMAN', '121233740003175826', 'Laki-laki', '151104', 'DEMAK', 'SEKARAN RT.01/RW.02', 'IX-D', 'MURSALIM'),
('121233740003175827', 'NURHIDAYAT', '121233740003175827', 'Laki-laki', '151204', 'SEMARANG', 'Rejosari RT. 05 RW. 01', 'IX-D', 'Teguh Santoso'),
('121233740003175881', 'PUTRI NURKHASANAH', '121233740003175881', 'Perempuan', '220605', 'GROBOGAN', 'Kp. Margorejo Barat RT. 02 RW. 04', 'IX-D', 'Eko Priyanto'),
('121233740003175790', 'RAGA EKA SATRIA', '121233740003175790', 'Laki-laki', '290805', 'SEMARANG', 'Sendangmulyo RT. 01 RW. 06', 'IX-D', 'Hofman Hara'),
('121233740003175882', 'RAKHMAH PUTRI ARISTA', '121233740003175882', 'Perempuan', '090605', 'KEBUMEN', 'Jl. Menoreh Utara XIII RT. 10 RW. 01', 'IX-D', 'Amad Sobirin'),
('121233740003175791', 'RIDWAN MAULANA', '121233740003175791', 'Laki-laki', '100605', 'KAB. SEMARANG', 'Macanmati RT 03 RW 02', 'IX-D', 'Suprapto'),
('121233740003196177', 'RISQY SEPTIAN WULANDARI', '121233740003196177', 'Perempuan', '220904', 'SEMARANG', 'Dsn. Niten, RT. 15 RW. 04', 'IX-D', 'Khamidun'),
('121233740003175884', 'SHAFIRA OCTAVIANI', '121233740003175884', 'Perempuan', '301004', 'SEMARANG', 'Watusari RT. 01 RW. 06', 'IX-D', 'Zaenal Subkhi'),
('121233740003175885', 'SYABRINA DESTRA ROSSILOWATI', '121233740003175885', 'Perempuan', '181204', 'SEMARANG ', 'Pakintelan RT. 01 RW. 04', 'IX-D', 'Rusiyanto'),
('121233740003175886', 'SYAHWA RAHMAWATI', '121233740003175886', 'Perempuan', '151104', 'SEMARANG', 'Pakintelan RT. 01 RW. 04', 'IX-D', 'Witi'),
('121233740003175797', 'ZIDA ZADAN', '121233740003175797', 'Laki-laki', '010705', 'SEMARANG', 'KEDUNG JANGAN RT 3 RW 3 PURWOSARI', 'IX-D', 'MIFTAHUN'),
('121233740003175798', 'ABDUL QODIR JAELANI', '121233740003175798', 'Laki-laki', '141004', 'KAB.SEMARANG', 'SEKARAN RT.01/RW.01', 'IX-E', 'MOCHAMAD ASNAWI'),
('121233740003175831', 'ABILUZZIHDA', '121233740003175831', 'Laki-laki', '040505', 'DEPOK', 'Pongangan RT. 04 RW. 02', 'IX-E', 'Muhammad Zuhdi'),
('121233740003175799', 'AGIL PRAKOSA MANSYA', '121233740003175799', 'Laki-laki', '191104', 'SEMARANG', 'Ampelgading RT. 02 RW. 03', 'IX-E', 'Seman'),
('121233740003175834', 'AHMAD BAGUS NASIRUDDIN', '121233740003175834', 'Laki-laki', '190904', 'DEMAK', 'Pakintelan RT. 02 RW. 04', 'IX-E', 'Arwani Achmad'),
('121233740003175801', 'AHSAN NASHRULLAH', '121233740003175801', 'Laki-laki', '070305', 'SEMARANG', 'PAKINTELAN RT 02 RW 04', 'IX-E', 'MUCH. KHOEROMIN'),
('121233740003175915', 'AIDA RAHMA SAFITRI ', '121233740003175915', 'Perempuan', '141104', 'SEMARANG', 'Patemon RT. 03 RW. 01', 'IX-E', 'Usup'),
('121233740003175838', 'ANDI MUHAMAD FIKRI WIJAYA', '121233740003175838', 'Laki-laki', '180205', 'KAB. SEMARANG', 'Patemon, RT. 03 RW. 02', 'IX-E', 'Nurkholis'),
('121233740003175802', 'ANGGA SANTOSA MANSYA', '121233740003175802', 'Laki-laki', '191104', 'SEMARANG', 'Ampelgading RT. 02 RW. 03', 'IX-E', 'Seman'),
('121233740003175916', 'ANISAK RAHMAWATI', '121233740003175916', 'Perempuan', '230405', 'SEMARANG', 'Patemon RT. 02 RW. 02', 'IX-E', 'Abdur Rohman'),
('121233740003175804', 'ARDI YULIYANTO', '121233740003175804', 'Laki-laki', '130704', 'DEMAK', 'SEKARAN RT.05/RW.01', 'IX-E', 'TUKIRAN'),
('121233740003175936', 'AURA VIRGA MAULITA', '121233740003175936', 'Perempuan', '190405', 'SEMARANG', 'SEKARAN RT.01/RW.01', 'IX-E', 'MURODI'),
('121233740003175921', 'DEWI NURLITA SARI', '121233740003175921', 'Perempuan', '040904', 'PALANGKARAYA', 'Patemon RT. 03 RW. 02', 'IX-E', 'Mustofa'),
('121233740003175922', 'DWI LINDA OKTAVIYANI', '121233740003175922', 'Perempuan', '221004', 'SEMARANG', 'Patemon RT. 03 RW. 04', 'IX-E', 'Muhamad Kamri'),
('121233740003175773', 'FAJAR HARUN ARRASID', '121233740003175773', 'Laki-laki', '280305', 'SEMARANG', 'Kalirejo RT. 05 RW. 04', 'IX-E', 'Abdul Rohman'),
('121233740003175809', 'HUSEIN ATMAJALADRI', '121233740003175809', 'Laki-laki', '240804', 'SEMARANG', 'Pakintelan RT. 02 RW. 04', 'IX-E', 'Anang Arifin'),
('121233740003175814', 'KHOIRUL HUDA ALFI PUJIYANTO', '121233740003175814', 'Laki-laki', '180304', 'SEMARANG', 'Banaran RT. 01 RW. 04', 'IX-E', 'MUNTADHIRIN'),
('121233740003175928', 'LAYINATUS SYIVA ANNAJWA', '121233740003175928', 'Perempuan', '211104', 'SEMARANG', 'Patemon RT. 03 RW. 01', 'IX-E', 'Zaenal Arifin'),
('121233740003175815', 'M. SAEFUL NURUL RIZKY', '121233740003175815', 'Laki-laki', '011204', 'KAB. SEMARANG ', 'Patemon, RT. 01 RW. 02', 'IX-E', 'Dimyati'),
('121233740003175817', 'MUHAMAD QIDAM KHOLIQ', '121233740003175817', 'Laki-laki', '040505', 'SEMARANG', 'Patemon RT. 01 RW. 02', 'IX-E', 'Akhrori'),
('121233740003175853', 'MUHAMMAD BUDI CHOIRIANTO', '121233740003175853', 'Laki-laki', '201205', 'SEMARANG', 'Patemon RT. 01 RW. 02', 'IX-E', 'Sunarto'),
('121233740003175824', 'NAUFAL MUHAMMAD ANANTA FIRDAUS', '121233740003175824', 'Laki-laki', '170205', 'KABUPATEN SEMARANG', 'SEKARAN RT.01/RW.02', 'IX-E', 'NURYANTO'),
('121233740003175880', 'NAYLA ALFITRIA', '121233740003175880', 'Perempuan', '230205', 'KOTA SEMARANG', 'KANDRI, GUNUNGPATI', 'IX-E', 'AMIN'),
('121233740003175863', 'REINARDI HARIANJA GUCI', '121233740003175863', 'Laki-laki', '231204', 'BOGOR', 'Patemon RT. 03 RW. 04', 'IX-E', 'Ruslan Guci'),
('121233740003175931', 'RIZKY DINI AMIARTI', '121233740003175931', 'Perempuan', '080904', 'SEMARANG', 'Patemon RT. 03 RW. 01', 'IX-E', 'Mahmudi'),
('121233740003175883', 'RODHOTUL JANAH', '121233740003175883', 'Perempuan', '110604', 'KOTA SEMARANG', 'Banaran RT. 06 RW. 04', 'IX-E', 'ZAENUN'),
('121233740003175912', 'SITI ZULAIKHO AZZAHRA', '121233740003175912', 'Perempuan', '170505', 'KAB. SEMARANG ', 'Jl. Kapri No. 02 RT. 04', 'IX-E', 'Zuhdi Amin'),
('121233740003175889', 'ADELIA NURJAYANTI', '121233740003175889', 'Perempuan', '020905', 'KABUPATEN SEMARANG', 'Pringsari RT. 01 RW. 02', 'IX-F', 'Jailani'),
('121233740003175866', 'ASHMA` AFIFAH', '121233740003175866', 'Perempuan', '290405', 'SEMARANG', 'Jl. Pelem Gedong RT. 02 RW. 02', 'IX-F', 'Aslam'),
('121233740003175890', 'ATINA ALDA SADENA', '121233740003175890', 'Perempuan', '170105', 'KABUPATEN SEMARANG', 'Kebon Agung RT. 01 RW. 03', 'IX-F', 'Muhamad Suharto Siswoyo'),
('121233740003175891', 'CITRA REVINA ILMIATY', '121233740003175891', 'Perempuan', '120605', 'BREBES', 'Ds. Sisalam RT. 02 RW. 05', 'IX-F', 'Juneri'),
('121233740003175892', 'DWI SISKA MEILIA', '121233740003175892', 'Perempuan', '190504', 'KENDAL', 'Tegal Gunung RT. 02 RW. 03', 'IX-F', 'Rusyanto'),
('121233740003175893', 'FARIDA AULIYA NUR MILLAH', '121233740003175893', 'Perempuan', '260904', 'KAB. SEMARANG', 'Pringsari RT. 06 RW. 01', 'IX-F', 'Kusnin'),
('121233740003175894', 'FATMA SANATA ARMADHANI', '121233740003175894', 'Perempuan', '090105', 'LAWANG', 'Jl. Fatmawati No. 45 RT. 11 RW. 02', 'IX-F', 'Hermawan Dwi Saputra'),
('121233740003175873', 'INDAH WAHYU SAFITRI', '121233740003175873', 'Perempuan', '051204', 'KABUPATEN SEMARANG', 'Gedanganak RT. 04 RW. 06', 'IX-F', 'Ihwan'),
('121233740003175895', 'INTAN AMELIA SADIDA', '121233740003175895', 'Perempuan', '120604', 'KENDAL', 'Pagerwojo RT. 01 RW. 03', 'IX-F', 'Ardiyono'),
('121233740003175896', 'INTAN NURAENI', '121233740003175896', 'Perempuan', '240805', 'KAB. SEMARANG', 'DOPLANG I, RT 03 RW 04', 'IX-F', 'NUR CHOLIS'),
('121233740003175897', 'IZMAHALLUR ROHMA AL UMAM', '121233740003175897', 'Perempuan', '310505', 'SEMARANG', 'Jl. Taman Semeru RT. 05 RW. 04', 'IX-F', 'Khotibul Umam'),
('121233740003175898', 'IZZUN NADA', '121233740003175898', 'Perempuan', '250505', 'JEPARA', 'MINDAHAN KIDUL, RT.02 RW.04', 'IX-F', 'NOR HAMID'),
('121233740003175899', 'JAUZA DIEN ZAHRA', '121233740003175899', 'Perempuan', '130905', 'SEMARANG', 'MUNTAL RT. 01 / RW. 06 PAKINTELAN', 'IX-F', 'MARGO RIYANTO'),
('121233740003175900', 'LIDYA HANIFA', '121233740003175900', 'Perempuan', '111204', 'KAB. SEMARANG', 'Lopait, RT. 01 RW. 01', 'IX-F', 'MUSLIMIN'),
('121233740003175901', 'LUTFI ASFA HAFI FIRDAUSY', '121233740003175901', 'Perempuan', '311204', 'KABUPATEN SEMARANG ', 'Jl. Bangka No. 17A RT. 04 RW. 06', 'IX-F', 'Muhamad Akhib'),
('121233740003175875', 'LUTHFA NAYLIYA FARADIS', '121233740003175875', 'Perempuan', '280805', 'KAB. SEMARANG', 'Wahyurejo RT. 02 RW. 07', 'IX-F', 'Muhammad Zaini'),
('121233740003175902', 'NAILA AULIA KAMAL', '121233740003175902', 'Perempuan', '040805', 'MADIUN', 'Pongangan RT. 01 RW. 01', 'IX-F', 'Sofiyani'),
('121233740003175879', 'NANDITA KHASANATUL UMMA', '121233740003175879', 'Perempuan', '271104', 'KENDAL', 'Jatisari Indah Blok EE1 No. 6 RT. 07 RW. 07', 'IX-F', 'Agus Kuwantono'),
('121233740003175903', 'NILAM SALWA NUR LATIFAH', '121233740003175903', 'Perempuan', '240106', 'SEMARANG', 'KALIGETAS RT 1 RW 4 PURWOSARI', 'IX-F', 'NUR KHOLIS'),
('121233740003175904', 'NURUL SOFFIA ANGGRENI', '121233740003175904', 'Perempuan', '200105', 'SEMARANG', 'Jl. Sri Rejeki Timur II/ 28 RT. 08 RW. 06', 'IX-F', 'Sunarso'),
('121233740003175905', 'PUTRI RUKMA HARDANI', '121233740003175905', 'Perempuan', '180205', 'SEMARANG', 'SETRO, RT 01,RW 05', 'IX-F', 'HARI SUSANTO'),
('121233740003175907', 'SALMA AZIZI', '121233740003175907', 'Perempuan', '301104', 'SEMARANG', 'WATUSARI RT. 03 / RW.06 PAKINTELAN', 'IX-F', 'RUSLIN'),
('121233740003175908', 'SALSABILA NINDHITA SARI', '121233740003175908', 'Perempuan', '260505', 'SEMARANG', 'Jl. Tengiri 7 RT. 07 RW. 06', 'IX-F', 'Didik Budiarto'),
('121233740003175909', 'SARAH', '121233740003175909', 'Perempuan', '090205', 'KAB. SEMARANG', 'LOPAIT', 'IX-F', 'MUHAMMAD DIMHARI'),
('121233740003175910', 'SEFIRA PUTRI AMALIA', '121233740003175910', 'Perempuan', '301104', 'SEMARANG', 'MRANGGEN RT. 01 / RW. 05 MANGUNSARI', 'IX-F', 'MULYANTO'),
('121233740003175911', 'SITI NUR CHOLISAH', '121233740003175911', 'Perempuan', '180504', 'SEMARANG', 'WATUSARI RT. 02 / RW. 06 PATEMON', 'IX-F', 'MARNO'),
('121233740003175913', 'ZIDHA NOERAFIFAH', '121233740003175913', 'Perempuan', '231104', 'KABUPATEN SEMARANG', 'Wahyurejo RT. 01 RW. 07', 'IX-F', 'Khoeruddin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id_user` int(10) NOT NULL,
  `user` char(25) COLLATE latin1_general_ci NOT NULL,
  `pass` char(200) COLLATE latin1_general_ci NOT NULL,
  `confirm` char(200) COLLATE latin1_general_ci NOT NULL,
  `level` enum('Admin','Wali-Kelas','Guru-Mapel') COLLATE latin1_general_ci NOT NULL,
  `nama` char(50) COLLATE latin1_general_ci NOT NULL,
  `foto` char(200) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `user`, `pass`, `confirm`, `level`, `nama`, `foto`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', 'Admin', 'system/images/avatar-1-256.png'),
(2, 'walikelas', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 'Wali-Kelas', 'Wali-Kelas', 'system/images/avatar-1-256.png'),
(3, 'gurumapel', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 'Guru-Mapel', 'Guru-Mapel', 'system/images/avatar-1-256.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
 ADD PRIMARY KEY (`id_absensi`);

--
-- Indexes for table `absensi_sholat`
--
ALTER TABLE `absensi_sholat`
 ADD PRIMARY KEY (`id_absensi`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
 ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
 ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
MODIFY `id_absensi` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=539;
--
-- AUTO_INCREMENT for table `absensi_sholat`
--
ALTER TABLE `absensi_sholat`
MODIFY `id_absensi` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
MODIFY `id_kelas` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
