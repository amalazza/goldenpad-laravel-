-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2020 at 10:12 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `goldenpad`
--

-- --------------------------------------------------------

--
-- Table structure for table `bahasa`
--

CREATE TABLE `bahasa` (
  `id` int(10) UNSIGNED NOT NULL,
  `bahasa` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bahasa`
--

INSERT INTO `bahasa` (`id`, `bahasa`, `created_at`, `updated_at`) VALUES
(1, 'Bahasa Indonesia', '2020-07-05 10:00:00', '2020-07-05 10:00:00'),
(2, 'English', '2020-07-05 10:00:00', '2020-07-05 10:00:00'),
(3, 'Korean', '2020-07-05 08:36:00', '2020-07-05 08:36:00'),
(4, 'Italian', '2020-07-05 08:36:46', '2020-07-05 08:36:46'),
(5, 'Arabic', '2020-07-05 08:36:52', '2020-07-05 08:36:52'),
(6, 'Malay', '2020-07-05 08:37:16', '2020-07-05 08:37:16'),
(7, 'Spanish', '2020-07-05 08:37:44', '2020-07-05 08:37:44'),
(8, 'Japanase', '2020-07-05 08:37:51', '2020-07-05 08:37:51'),
(9, 'Chinese', '2020-07-05 08:38:19', '2020-07-05 08:38:19'),
(10, 'Latin', '2020-07-05 08:38:28', '2020-07-05 08:38:28');

-- --------------------------------------------------------

--
-- Table structure for table `cerita`
--

CREATE TABLE `cerita` (
  `id` int(10) UNSIGNED NOT NULL,
  `isbn` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cerita` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_bahasa` int(10) UNSIGNED NOT NULL,
  `id_target` int(10) UNSIGNED NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cerita`
--

INSERT INTO `cerita` (`id`, `isbn`, `penulis`, `judul`, `deskripsi`, `cerita`, `id_bahasa`, `id_target`, `foto`, `created_at`, `updated_at`) VALUES
(1, '6767', 'Amalazza', 'jackson dan 3 lainnya', 'Jackson dan tiga temannya menemukan markas rahasia yang kemudian hari dijadikan sebagai tempat tongkrongan mereka. Mereka adalah Jackson, Adit, Tomas dan Rini. Sayangnya, salah satu dari mereka menjalin kasih sayang yang mana tak pada tempatnya. Hal baru yang mengganggu datang, menghancurkan mereka juga markas.', '<p><a name=\"_Hlk505632309\">&ldquo;Jackson!!!!&rdquo; teriak seseorang.</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dia yang merasa terpanggil akhirnya berhenti dari lari. Menengok siapa gerangan yang memanggilnya bagai orang mau nagih utang.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Cepet Rani.. Tuh gerbangnya mau ditutup!!&rdquo; teriak bocah bernama Jacson tersebut. Guna memaksimalkan waktu untuk lari lagi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Namun juga gadis mungil yang tadi berteriak tak bisa mencapai Jacson sampai mereka melihat gerbang sekolah sudah di tutup.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Akhirnya, mereka yang sudah terlambat sekolah, mengakhiri dengan diam-diam menyelinap pada pintu rahasia yang mungkin mereka saja yang tau.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Gambarkanlah pintu itu tertutupi semak-semak rimbun di samping sekolah yang mana juga adalah hutan rindang. Sekolah ini bukan sekolah pedesaan, hanya saja letaknya pas bersebelahan dengan lahan mirip hutan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Kita masuk abis upacara aja Jack. Gue mau tidur dulu di markas, ngantuk abis anjir&hellip; tadi malem marathon drama korea.&rdquo; Si gadis mungil berbicara.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mereka sudah melewati lorong. Dan sampailah di markas yang disebut tadi. Keadaan markas ini, seperti di film-film. Ada computer, ada ranjang tidur lengkap dengan kasurnya, walau seperti tak dicuci setahun. Juga ada peralatan mereka.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mereka itu, bukan hanya gadis mungil dan bocah bernama Jacson. Ada dua lagi anggota himpunan markas rahasia tersebut. Si jenius bernama Adit. Satu lagi Tomas, kutu buku abis.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Jack, lo putus lagi ya sama Indah?&rdquo; Gadis mungil bernama Rani itu membuka pembicaraan, lalu setelahnya merubuhkan tubuhnya di ranjang.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Kepo lo.&rdquo; Itu Jackson, sedang duduk di depan computer.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Hih, kan gue temen lo. Sapa tau gue bisa bantu.&rdquo; Rani cemberut.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Dikekang mulu gue ama dia. Males.&rdquo; Jackson.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Yaudah sih putus aja. Di kelas gue ada yang mau tuh sama lo.. Temen gue, namanya Tania,&rdquo; jelas Rini.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Kalo gue maunya sama lo gimana?&rdquo; Jackson serius.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Ngawur lu..&rdquo; Rini terbahak.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Terdengar decitan pintu dari arah sekolah. Dan dua orang lelaki memasuki markas tersebut.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Oy, ga ada upacara. Cepetan ke kelas. Keburu Bu Diyah keliling.&rdquo; Kata seorang berperawakan putih, tinggi dan rapi dari ujung kaki sampai rambutnya. Itu Adit.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Rin, ayooooo&rdquo; kata Tomas.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lalu mereka keluar markas. Rini dan Tomas duduk dikelas 11 IPA 1 sedang Jackson dan Adit berada dikelas 12 IPA 2.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Benar. Jackson menyukai Rini, sahabatnya semenjak pindah ke Bandung. Kurang lebih 5 tahun Jackson mengenal Rini, tetangganya. Lima tahun tersebut lah rasa suka Jackson hanya dianggap bercandaan oleh Rini. Karena notabene Rini salah mengira, kalau Jackson adalah Playboy. Terlebih lagi Jackson menyadari, tak bisa menggantikan cinta pertama Rini bernama Rex yang sudah meninggal.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Rini juga mengerti perasaan Jackson. Ia adalah orang yang gampang mengenal gerak gerik lawan, apakah orang tersebut suka atau benci dengannya. Rini adalah pribadi yang ceria, namun juga brandal. Galak, tapi juga suka oppa oppa korea. Menurutnya, adegan-adegan romantis yang ada di drama korea, mengingatkannya dengan Rex. Pacar paling manis yang pernah ada. Rini kehilangan Rex, adalah juga kesalahannya. Kesalahan yang sampai sekarang paling membekas dikala hujan menyerbu Bandung.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bel istirahat berbunyi. Rini langsung bangkit, ke arah meja Tomas. &ldquo;Tom, traktir gue dong. Ga bawa duit gue&hellip; serius deh.&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Minta aja tuh ama Jackson&rdquo; timpal Tomas.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Ah, ga enak gue. Dari dulu minta ama dia mulu kan. Pliiisssss.&rdquo; Rini.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Ahhhh, nanti gue kenalin ama cewek kelas sebelah deh. Temen gue namanya Sekar.&rdquo; Rini teriak, sambil gebrak-gebrak meja.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Iya iyaaaaaaaaaaa..&rdquo; jawab Tomas.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lalu mereka menuju kantin.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Di kantin, Jackson dan Adit menunggu dua sohibnya lagi untuk makan bareng. Tradisi ini sudah ada sejak saat pertama Rini dan Tomas masuk SMA ini.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Jack, lo beneran mau nembak Rini lagi?&rdquo; Adit menyenggol sikut Jackson.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Bakal gue kejar sampe dia mau wkwkwk&rdquo; Jackson membalas.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dua sohibnya pun datang.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Lagi ngomongin gue yaaaaaaaa&hellip;&rdquo; Rini.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tomas duduk santai dengan buku di tangannya. Adit tak menghiraukan candaan garing milik Rini. Begitupun Jackson.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Huh, dasar. Cowok cowok belagu..&rdquo; Rini cemberut.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Saat Rini akan duduk, ia disenggol oleh perempuan. &ldquo;Minggir!!&rdquo; suara Indah. Si penyenggol duduk di tempat Rini.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Rini.. balas dendam! Dia berpindah duduk di samping Jacson. Dan menempelkan kepalanya ke arah pundak Jackson. &ldquo;Jack, masa aku di gituin ama mantan kamuuuuuuuu&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Jan sok centil deh lo..&rdquo; ditunjukan kepada Rini.</p>\r\n\r\n<p>&ldquo;Jack, lo kenapa sih? Kok gak angkat telpon aku, gak bales sms aku?&rdquo; rengekan Indah, tak lupa wajah yang dibuat-buat untuk memelas.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Lo sih ngekang-ngekang segala. Lo kira lo emaknya apah&hellip;&rdquo; Rini bersuara, nada ledekan seperti anak kecil.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Diem lo bangsat!!! Dasar parasite.&rdquo; Indah berdiri, menyodorkan minuman yang tujuannya akan meluncur ke wajah Rini.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dengan gesit Jackson menangkis tangan Indah, sampailah minuman tersebut tumpah di ubin yang tak berdosa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Gue putus ga ada sangkut pautnya sama Rini. Jangan libatin dia dimasalah ini. Dan gue muak sama lo.&rdquo; Suara Jackson lirih, dingin, untuk pendengaran wanita ini bisa diartikan menakutkan. Selanjutnya Jackson pergi. Dari arahnya, ia akan memejamkan mata di markas dengan tikus-tikus yang bercicuit menenangkannya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Di markas.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Jack..&rdquo; Rini bersuara.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Jackson masih memejamkan matanya di ranjang.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Lo putus sama Indah bukan gara-gara gue kan?&rdquo;</p>\r\n\r\n<p>&ldquo;Maaf Jack..&rdquo; Rini lagi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Bisa ga lo lupain Rex? Gue udah nunggu lama Rin.. Liat gue sekali aja!&rdquo; Jackson bangun. Berbicara dalam duduk menunduk.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pada percakapan itu, sudah tak ada lagi hal baru. Semuanya sudah terjawab seperti biasanya. Mereka adalah teman, sahabat, keluarga. Tak ada perbedaan kelamin dalam hal ini. Dan lagi, Rini sungguh sudah mencintai Rex. Cinta anak SMA yang katanya cinta monyet. Namun bagi Rini, sungguh cinta monyet sialan. Ingin sekali ia melihat Jackson, sebagai lelaki. Kenyataannya ia adalah teman.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sampai pada suatu waktu, ada anak baru dari Jakarta. Dia lelaki. Tinggi, putih, berambut hitam, bermata sipit, dan pendiam. Itu semua kesimpulan dari anak ganteng dan keren.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lelaki tersebut masuk di kelas Rini. Kala itu Rini sedang tidur, sampai tak mendengar gaduh-gaduh sorak dari para perempuan di kelasnya menyambut kedatangan idol baru di sekolahnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Rini dan anak ganteng itu bertemu pada saat jam istirahat. Rini secara ajaib terbangun ketika mendengar bel. Juga karena panggilan dari meja depan, dari Tomas yang mana sinyal untuk segera ke kantin dan memenuhi ritual gengnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kali ini berbeda, Rini tak ikut. Rini mencetak sejarah barunya pada waktu tersebut. Jam istirahat kala itu.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo;Gue Andi..&rdquo; anak ganteng tadi secara tiba-tiba mengenalkan dirinya pada Rini saat dimana Rini baru terbangun.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 1, 2, '20200706194750.jpg', '2020-07-05 17:00:00', '2020-07-06 12:47:50'),
(7, '1221', 'Inti Fatul Khoiroh', 'my father my hero', '“Is, nanti sore ke rumahku ya?” sebelum berangkat ke sekolah, kubaca sebuah pesan singkat dari Septi, sebelumnya Septi mengatakan kepadaku kalau mama papanya memang tidak ada di rumah setiap Kamis sore. Dan dari kemarin aku memang sudah meminta izin kepada emak, dan gayung pun bersambut. Emak mengizinkanku.\r\n“Mak, Iis berangkat ke sekolah, habis itu nanti langsung ke rumah Septi” kucium punggung tangan emak\r\n“Ingat pesan emak jangan sampai kamu bikin masalah di sana”\r\n“Bapak mana Mak?” sebenarnya Aku sudah tahu jawabannya. Pasti bapak sudah bekerja di ladang. Ini hanya basa-basiku saja, pasti emak tahu maksudku.', '<p>&ldquo;Is, nanti sore ke rumahku ya?&rdquo; sebelum berangkat ke sekolah, kubaca sebuah pesan singkat dari Septi, sebelumnya Septi mengatakan kepadaku kalau mama papanya memang tidak ada di rumah setiap Kamis sore. Dan dari kemarin aku memang sudah meminta izin kepada emak, dan gayung pun bersambut. Emak mengizinkanku.</p>\r\n\r\n<p>&ldquo;Mak, Iis berangkat ke sekolah, habis itu nanti langsung ke rumah Septi&rdquo; kucium punggung tangan emak.<br />\r\n&ldquo;Ingat pesan emak jangan sampai kamu bikin masalah di sana&rdquo;<br />\r\n&ldquo;Bapak mana Mak?&rdquo; sebenarnya Aku sudah tahu jawabannya. Pasti bapak sudah bekerja di ladang. Ini hanya basa-basiku saja, pasti emak tahu maksudku.<br />\r\n&ldquo;Nyari bapak atau mau minta uang?&rdquo; aku hanya cengengesan. Emak memberiku selembar kertas bernominal lima ribu tersebut. Dua ribu untuk transportasi berangkat dan dua ribu lainnya untuk pulang. Tapi hari ini aku sedikit mendapatkan rezeki, soalnya waktu pulang nanti naik mobil Septi, lumayan lah aku bisa memberi makan ayam plastik yang sangat jarang kuberi makan.</p>\r\n\r\n<p>Kamis, 14:56 WIB<br />\r\n&ldquo;Pak Maman, jemput sekarang ya?&rdquo;<br />\r\nSepti dengan mudah menelepon sopirnya untuk segera menjemputnya, sementara aku jika ingin pulang bisa jadi harus menunggu berbagai menit-menit, itupun belum tentu mendapatkan tempat duduk.</p>\r\n\r\n<p>Dalam hitungan menit mobil berwarna hitam yang mewah itu berhenti tepat di depan aku dan Septi berdiri.<br />\r\n&ldquo;Pak, di restoran ya? aku lapar&rdquo;<br />\r\n&ldquo;Siap non&rdquo; kurasa Septi adalah anak yang paling beruntung. Septi cerdas, pintar, cantik dan satu lagi dia tidak sombong.</p>\r\n\r\n<p>&ldquo;Ayo makan!&rdquo; ucap Septi, berbagai makanan dihidangkan, aku teringat Lala yang waktu itu menangis gara-gara ingin makan spageti. Tapi bapak waktu itu punya saja ide, bapak membelikan mie goreng instan dan sosis seribuan.<br />\r\n&ldquo;Nih.. spaghetti tuh cuma mie goreng ada sosisnya sama ada saosnya. Tapi Lala jangan maka saos itu dibuat dari cabe busuk&rdquo; begitu kira-kira ucapan bapak. Lala yang memang masih kelas 3 SD percaya begitu saja. ia senang sekali bisa makan spaghetti ala bapak.<br />\r\n&ldquo;Iis kok senyum-senyum?&rdquo;<br />\r\n&ldquo;Aku ingat adik. Dulu pengen banget makan spaghetti&rdquo;<br />\r\n&ldquo;Ya udah deh kapan-kapan kalau aku main ke rumahmu kubawain. ayo makan!&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kamis, 20:30 WIB<br />\r\n&ldquo;Papa, kapan pulangnya?&rdquo; Septi tersambung dengan papanya melalui via telepon.<br />\r\n&ldquo;Aduh sayang papa lagi sibuk nih&rdquo; aku dapat mendengar apa yang dikatakan oleh papa Septi<br />\r\n&ldquo;Kamu mau apa papa beliin&rdquo; tanpa menjawab Septi langsung memutuskan percakapan itu. Ia menangis.<br />\r\n&ldquo;Septi, udah sep?&rdquo;<br />\r\n&ldquo;Aku benci papa dia lebih menginginkan pekerjaan daripada anaknya&rdquo;<br />\r\n&ldquo;Papa kamu kerja itu demi kamu kan?&rdquo;<br />\r\n&ldquo;Kalau tujuannya cuma cari uang. Aku butuh berapa juta hanya untuk menikmati waktu bersamanya?&rdquo; hatiku turut merasakan apa yang dirasakan Septi. Aku menyadari ayahku memang bukan orang yang berpendidikan tinggi setiap hari bekerja di ladang tapi beliau selalu mengajariku arti kebersamaan. Makan malam dengan menu seadanya, sholat berjamaah, dan kata beliau menanam jagung di kebun adalah sebuah piknik.</p>\r\n\r\n<p>Jam menunjukkan pukul setengah sepuluh, aku dan Septi belum bisa tidur apalagi suara kucing yang membuat kami semakin takut. Kalau di rumah biasanya bapak yang mengusir kucing dan menunggunya sehingga anak-anaknya dapat tidur dengan nyenyak.<br />\r\n&ldquo;Septi, aku takut&rdquo;<br />\r\n&ldquo;Aku juga&rdquo; memejamkan mata adalah cara yang kami bisa.</p>\r\n\r\n<p>Keesokan harinya aku berangkat dari rumah Septi. Aku lupa buku fisikaku tertinggal di rumah, bapak dan emak tidak memiliki handphone tentu saja aku tidak bisa menghubunginya. Aku pasrah bila hari ini mendapat hukuman Bu Maya. Perasaanku berkecamuk aku takut Bu Maya yang notabene guru killer, sementara aku sungkan jika meminta Septi mengantarkanku ke rumahku.<br />\r\n&ldquo;Kok dari tadi bengong sih?&rdquo;<br />\r\n&ldquo;Nggak pa-pa kok sep&rdquo; alibiku</p>\r\n\r\n<p>Kulihat seorang lelaki yang terseok-seok mengayuh sepeda di belakang kami. Itu bapak, kenapa bapak kesini? aku buru-buru menghampiri bapak.<br />\r\n&ldquo;Ada apa pak?&rdquo;<br />\r\nBapak mengeluarkan buku dari kantong plastik hitam ternyata itu buku fisikaku.<br />\r\n&ldquo;Bapak liat buku itu.. biasanya hari Jumat kamu bingung gara-gara buku ini&rdquo; aku meneteskan air mata, bapak dengan susah payah mengayuh sepeda ke sekolah hanya untuk mengantarkan buluku.<br />\r\n&ldquo;Ini buat jajan&rdquo; bapak memberikan uang sepuluh ribu. Jarang sekali biasanya bapak hanya memberi lima atau tujuh ribu.<br />\r\n&ldquo;Jangan banyak-banyak pak&rdquo;<br />\r\n&ldquo;Maafin bapak ya, bapak nggak pernah ngasih kamu uang buat jajan&rdquo;<br />\r\n&lsquo;nggak papa pak asal bapak selalu ada untuk keluarga itu lebih dari cukup&rsquo;ucapku dalam hati</p>\r\n\r\n<p>&ldquo;Pak doain Iis supaya bisa bahagian bapak dan emak&rdquo; aku mencium tangan bapak.<br />\r\n&ldquo;Bapak sudah bangga kepadamu nak&rdquo;<br />\r\nBapak akhirnya pulang kembali dan aku juga masuk ke kelas untuk mengikuti pelajaran.</p>\r\n\r\n<p>Cerpen Karangan: Inti Fatul Khoiroh<br />\r\nBlog / Facebook: Inti Fatul Khoiroh<br />\r\nSaya hanya penulis amatir&hellip;<br />\r\nMaaf karyanya jelek</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cerpen My Father My Hero merupakan cerita pendek karangan&nbsp;<strong><a href=\"http://cerpenmu.com/penulis/inti-fatul-khoiroh\">Inti Fatul Khoiroh</a></strong>, kamu dapat mengunjungi halaman khusus penulisnya untuk membaca cerpen cerpen terbaru buatannya.</p>', 1, 3, '20200706194816.png', '2020-07-06 01:47:57', '2020-07-06 12:48:16'),
(9, '5556', 'Indah', 'tuhan maha pengasih', 'Di dunia perpustakaan dan pusat informasi, penyusunan katalog dan klasifikasi buku merupakan hal yang lazim dilakukan. Dengan koleksi yang beraneka ragam dan semakin kompleks, penyusunan buku secara sistematik atas buku dan pustaka lain akan memudahkan penggunanya dalam melakukan pencarian informasi, yang pada akhirnya dapat meningkatkan kenyamanan dalam kunjungan dan peminjaman buku. Bagi pustakawan sendiri, penggunaan klasifikasi dan katalog yang tepat dapat membuat penyusunan dan pelacakan buku menjadi jauh lebih mudah, deteksi kebutuhan buku lebih cepat lewat analisis yang lebih tajam.', '<p>Di dunia perpustakaan dan pusat informasi, penyusunan katalog dan klasifikasi buku merupakan hal yang lazim dilakukan. Dengan koleksi yang beraneka ragam dan semakin kompleks, penyusunan buku secara sistematik atas buku dan pustaka lain akan memudahkan penggunanya dalam melakukan pencarian informasi, yang pada akhirnya dapat meningkatkan kenyamanan dalam kunjungan dan peminjaman buku. Bagi pustakawan sendiri, penggunaan klasifikasi dan katalog yang tepat dapat membuat penyusunan dan pelacakan buku menjadi jauh lebih mudah, deteksi kebutuhan buku lebih cepat lewat analisis yang lebih tajam.</p>\r\n\r\n<p>Klasifikasi buku termudah bagi sebuah kumpulan koleksi buku adalah menurut bentuk fisiknya. Jika anda memiliki rak buku yang terbatas, maka anda dapat memilah buku berdasarkan dimensi buku seperti tinggi dan tebal buku. Bentuk seperti ini paling banyak dijumpai di taman-taman baca, karena praktis dilakukan oleh pustakawan. Pencarian buku, biasanya bergantung pada ingatan pustakawan dan diperlukan waktu yang cukup lama untuk melakukan pencarian saat koleksi buku sudah semakin banyak. Klasifikasi lain yang mudah dilakukan adalah dengan mengurutkannya berdasarkan judul buku atau pengarangnya. Dengan demikian, pencarian akan lebih mudah dilakukan. Hanya saja, bentuk-bentuk klasifikasi sederhana ini&nbsp; tidak memberikan kesempatan bagi kita untuk melakukan telaah cepat, buku-buku jenis apa saja yang anda miliki, dan koleksi seperti apa yang masih harus ditambah.</p>\r\n\r\n<p>Ada beberapa klasifikasi yang sering digunakan di banyak perpustakaan, di antaranya Dewey Decimal Classification (DDC) dan Library of Congress (LC).</p>\r\n\r\n<p>Sistem Klasifikasi Dewey merupakan sistem yang lengkap, mencakup semua bidang, dan saat ini merupakan sistem yang paling banyak digunakan. Sistem ini menggunakan 3 digit untuk menandakan kelas, di mana kelas tersebut dibagi kembali secara spesifik di digit kedua, ketiga, dan seterusnya. Perhatikan kelas awal berikut:</p>\r\n\r\n<p>000 &ndash; Karya umum<br />\r\n100 &ndash; Filsafat<br />\r\n200 &ndash; Agama<br />\r\n300 &ndash; Ilmu sosial<br />\r\n400 &ndash; Bahasa<br />\r\n500 &ndash; Sains<br />\r\n600 &ndash; Teknologi<br />\r\n700 &ndash; Seni, olahraga<br />\r\n800 &ndash; Kesusastraan<br />\r\n900 &ndash; Sejarah, geografi</p>\r\n\r\n<p>Digit kedua,</p>\r\n\r\n<p>&nbsp;</p>', 1, 4, '20200706194846.jpg', '2020-07-06 04:14:30', '2020-07-06 12:48:46'),
(10, '2211', 'Refaluna A.Z', 'kesedihan yang terlalu', 'Kesedihan masih terpampang jelas di wajah bunda. Kehilangan ayah membuat kami terpukul, bunda menangis sejadi-jadinya. Tidak berhenti, kini hanya ada aku, bunda dan dik Rena.\r\nSebelum lanjut, namaku Zacheya Audrina. Kalian boleh memanggilku Sheya. Dengan ketiadaan ayah, hidupku tak bisa tergambarkan.', '<p>Kesedihan masih terpampang jelas di wajah bunda. Kehilangan ayah membuat kami terpukul, bunda menangis sejadi-jadinya. Tidak berhenti, kini hanya ada aku, bunda dan dik Rena.</p>\r\n\r\n<p>Sebelum lanjut, namaku Zacheya Audrina. Kalian boleh memanggilku Sheya. Dengan ketiadaan ayah, hidupku tak bisa tergambarkan.</p>\r\n\r\n<p>&ldquo;Sudah Sya, ini hari ke tujuh ayahmu tiada, kamu masih sedih aja! Kamu harus semangat!&rdquo; Aisya berkata dengan penuh emosi.<br />\r\n&ldquo;Aisy sayang, kalau kamu mau pergi silahkan, aku mau disini ya..&rdquo;<br />\r\n&ldquo;Lha?! Aku tuh nyemangatin kamu biar kamu semangat! Gak sedih! Malah diusir, gimana sih?!&rdquo; Celotehnya.<br />\r\n&ldquo;Sudah deh, kasihan juga Sheya.&rdquo; Gaudrina membawa kedamaian kembali.<br />\r\n&ldquo;Ih, aku terus yang salah!&rdquo; Aisya pergi bersama Shara dengan kesal.</p>\r\n\r\n<p>Aku dan Gaudrina memandang gumpalan awan yang indah di atas sana. Tak terasa, air mataku jatuh melihat keindahan alam semesta.</p>\r\n\r\n<p>&ldquo;Dri, terima kasih ya! Kamu sudah menyadarkanku! Sekarang, aku harus berusaha sebaik mungkin untuk membahagiakan bunda, makasihhh&hellip; kamu sahabat terbaikku!&rdquo;<br />\r\n&ldquo;Iya&hellip; iya&hellip; lepas deh, geli nih.&rdquo;<br />\r\n&ldquo;Maaf Dri, ke kantin yuk! Nyusul Aisya&hellip;&rdquo;<br />\r\n&ldquo;Nah gitu dong, ayo!&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pulang sekolah&hellip;<br />\r\n&ldquo;Bunda, Sheya pulang!&rdquo;<br />\r\n&ldquo;Sheya? Tolong jaga dek Rena ya! Bunda mau ke makam ayah.&rdquo;<br />\r\n&ldquo;Makam ayah? Lagi? Bunda harus ikhlasin ayah bun, memang takdir ayah harus begitu!&rdquo;<br />\r\n&ldquo;Sudahlah, kamu diam di rumah!&rdquo;</p>\r\n\r\n<p>Bunda keluar rumah dan menaiki motor matic di garasi. Aku berjalan menuju kamarku, aku berganti baju lalu pergi ke kamar dek Rena.</p>\r\n\r\n<p>&ldquo;Dek Rena ternyata tidur, aku masak kali ya? Telepon Gaudrina deh! Pinjem tabletnya Rena!&rdquo; Gumamku.</p>\r\n\r\n<p>Aku pencet nomor telepon Gaudrina dan aku tekan call. Tililit!<br />\r\n&ldquo;Halo Rena, ada apa?&rdquo; Suara seberang sana memulai percakapan.<br />\r\n&ldquo;Halo, ini Sheya, pakai tabletnya Rena.&rdquo;<br />\r\n&ldquo;Oh&hellip; Sheya, ada apa?&rdquo;<br />\r\n&ldquo;Kamu ke rumahku ya?&rdquo;<br />\r\n&ldquo;Maaf Sya, aku harus belajar nih&hellip; maaf banget.&rdquo;<br />\r\n&ldquo;Ya udah gak papa, da&hellip;&rdquo;<br />\r\n&ldquo;Da&hellip;&rdquo;<br />\r\nAku tutup telepon dan segera meletakkan tablet Rena di tempat semula.</p>\r\n\r\n<p>Tililitt! Tablet Rena berbunyi setelah kuletakkan.<br />\r\n&ldquo;Lho? Jangan jangan Gaudrina mau ke sini&hellip; angkat ah!&rdquo; Aku bergembira, &ldquo;Halo,&rdquo;<br />\r\n&ldquo;Oh halo, ini bulek Fatin, ibumu kecelakaan Sheya! Om Hamam perjalanan jemput kamu! Siap-siap ya, sudah dulu,&rdquo;<br />\r\n&ldquo;Bulek&hellip; bulek&hellip; kok mati?&rdquo;</p>\r\n\r\n<p>Aku terkaget dan segera membangunkan dek Rena. Kami bersiap siap, setelah itu menunggu di teras rumah.<br />\r\n&ldquo;Anak-anak, ayo masuk!&rdquo; Seru seseorang dari dalam mobil sedan.<br />\r\n&ldquo;Om Hamam? Ayo Rena!&rdquo; Kami masuk dan mobil segera meluncur ke rumah sakit.<br />\r\n&ldquo;Bunda kalian ada di ICU, nanti jangan berisik ya?&rdquo;<br />\r\n&ldquo;Iya om!&rdquo;</p>\r\n\r\n<p>Kami gelisah, tidak lama kemudian kita sampai. Bulek Fatin menunggu di kursi tunggu. Aku dan dek Rena menghampirinya.<br />\r\n&ldquo;Bulek.. bunda nggak kenapa-kenapa kan?&rdquo; Dek Rena mulai menangis.<br />\r\n&ldquo;Iya, bunda kalian nggak kenapa-kenapa, berdoa ya?&rdquo; Bulek menahan air mata.</p>\r\n\r\n<p>Do&rsquo;a kami terus mengalir tanpa henti. Tetapi semua terlambat! Bunda sudah tidak bisa diselamatkan karena terbentur tepat di bagian jantung.<br />\r\n&ldquo;Maafkan kami&hellip;&rdquo; dokter hanya bisa meminta maaf.<br />\r\nKini hanya tangis yang ada, sungguh aku akan selalu mengingat hari itu! Hari kesedihan yang terlalu!</p>\r\n\r\n<p>Cerpen Karangan: Refaluna A.Z<br />\r\nBlog / Facebook: Refaluna Aurum Zahra<br />\r\nHai, namaku Refaluna, suka ceritaku? Kalau ada kesalahan mohon koreksi!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cerpen Kesedihan yang Terlalu merupakan cerita pendek karangan&nbsp;<strong><a href=\"http://cerpenmu.com/penulis/refaluna-a-z\">Refaluna A.Z</a></strong>, kamu dapat mengunjungi halaman khusus penulisnya untuk membaca cerpen cerpen terbaru buatannya.</p>', 1, 3, '20200706194936.png', '2020-07-06 04:28:23', '2020-07-06 12:49:36'),
(11, '5657', 'John', 'diligent', 'A diligent, calm, and smart boy began his journey from his village to the town where he continued his study at a university. Bagus Alghani was a pride of the small village as he was familiar with his faith and he was also a son of the village chief. One of his weaknesses was that he was a snail. He rarely got out of his house and had only a few friends.\r\n\r\nRiding an old ugly vehicle, he confused where to find a dormitory as he knew nothing about this town and he never came there before. It was a week before the lecture started. He wandered near the campus, but all dormitory around there were full.', '<p>A diligent, calm, and smart boy began his journey from his village to the town where he continued his study at a university. Bagus Alghani was a pride of the small village as he was familiar with his faith and he was also a son of the village chief. One of his weaknesses was that he was a snail. He rarely got out of his house and had only a few friends.</p>\r\n\r\n<p>Riding an old ugly vehicle, he confused where to find a dormitory as he knew nothing about this town and he never came there before. It was a week before the lecture started. He wandered near the campus, but all dormitory around there were full.</p>\r\n\r\n<p>A boy came to him when he took a rest in front of a mosque.</p>\r\n\r\n<p>Hi boy, can I help you?</p>\r\n\r\n<p>Are you a new student?</p>\r\n\r\n<p>&lsquo;Yes, I am. I&rsquo;m looking for a dormitory, but all of dormitory are full&rsquo;, said bagus.</p>\r\n\r\n<p>My name is abdul.</p>\r\n\r\n<p>I&rsquo;m bagus.</p>\r\n\r\n<p>You are too late, every dormitory near here has been full. You must go bit far from here. I can show you the dorm if you wish&rsquo;,said bagus.</p>\r\n\r\n<p>Bagus received his offer because he really needed to find a dorm as soon as possible.</p>\r\n\r\n<p>It was cheap, small and a bit disorder. He got no idea for finding another place.</p>\r\n\r\n<p>He forced himself to stay at this hell. He was the only one occupant of the dormitory. Not only far from the campus, it was also dirty, silent, and stinky. Nothing&rsquo;s good of this place excepted the owner who was patient and sociable.</p>\r\n\r\n<p>The first night he slept at the dorm, he was awaken at 2.15 am, one thing that habitually happened when one occupied a new home. He then went on his sleeping.</p>\r\n\r\n<p>A nice morning Bagus started his activity as a new student at a favorite university, he smiled along his way to campus.</p>\r\n\r\n<p>He got tired of his activity at the campus. In his first day, he was introduced to the regulation of the campus. Rector, deans, and some professor also attended the event. He got no friend at that time because he was a closed boy.</p>\r\n\r\n<p>At the second night he was awaken again with no reason at the same time 2.15 am. He couldn&rsquo;t continue his sleeping. He was anxious and feeling something strange toward himself.</p>\r\n\r\n<p>In the class, his lecture got mad of him because he was asleep. He was lucky that he was not sent out by the lecture. He was still forgiven by the lecture.</p>\r\n\r\n<p>After the class, a beautiful girl came to him and began a conversation with him. He got his first friend from his class.</p>\r\n\r\n<p>Why are you so sleepy?</p>\r\n\r\n<p>Didn&rsquo;t you sleep tonight?</p>\r\n\r\n<p>My name is Imelda. Can I know your name?</p>\r\n\r\n<p>Sure! I&rsquo;m Bagus. I couldn&rsquo;t sleep tonight. I&rsquo;m not used to living at a dormitory. Are you my&nbsp; classmate?</p>\r\n\r\n<p>Yes, I am. I saw you were mocked by the lecture.</p>\r\n\r\n<p>After having dinner at the dormitory. He went sleeping as he was very&nbsp; tired and sleepy.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; In the third night he stayed at the dorm, he was awaken again at 2.15 am. He couldn&rsquo;t sleep again until the sun knocked on my door.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;He had a class at 10 am at that day. He spent his leisure time at library to find some books he needed for doing his assignment. Suddenly someone called on his name.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hi gussss. How&rsquo;s life?</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Just so so. What are you doing here?</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I need some books for reference of my scripts.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lsquo;Owh I don&rsquo;t know you are a student too.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; What about your dormitory?</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I&rsquo;m still not used to it. I met some strange there. May be it is just my feeling, but it is so stronge.</p>\r\n\r\n<p>Abdul didn&rsquo;t know anything about this. He felt sorry to bagus.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bagus went to his class after getting some books for his assignment. He underwent his boring class with his boring professor named Tutu. An old professor who had served the university for fifty years.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; At the evening when he wanted to take a bath, he felt something from room 7. He slept at night because he had a lot of assignment.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; His three friends visited him to discuss about assignment. They were one group with Bagus. Bagus was the best student among them. He was persuaded by them to finish all the assignment himself while they were playing game.</p>', 2, 4, '20200706194953.jpg', '2020-07-06 04:39:05', '2020-07-06 12:49:53'),
(12, '8755', 'Harry', 'i sat on the bus', 'I sat on the bus, on my way to school.\r\nListening to music, and paying little to no attention to the other students.\r\nAt one of the stops, my mind snapped back to reality.\r\nI looked towards the small house. Tommy’s house, I thought.\r\nA hand slipped through the drapes of the window and waved the bus driver to move on.\r\n‘He’s sick’, I thought, paying no large amount of attention to the situation.', '<p>I sat on the bus, on my way to school.</p>\r\n\r\n<p>Listening to music, and paying little to no attention to the other students.</p>\r\n\r\n<p>At one of the stops, my mind snapped back to reality.</p>\r\n\r\n<p>I looked towards the small house. Tommy&rsquo;s house, I thought.</p>\r\n\r\n<p>A hand slipped through the drapes of the window and waved the bus driver to move on.</p>\r\n\r\n<p>&lsquo;He&rsquo;s sick&rsquo;, I thought, paying no large amount of attention to the situation.</p>\r\n\r\n<p>The day flew by.</p>\r\n\r\n<p>I watched the local news channel after school, and what I heard paralyzed me.</p>\r\n\r\n<p>Tommy&rsquo;s entire family was murdered that day by an unknown suspect.</p>\r\n\r\n<p>After hearing this news, I moved back up to my room and quietly fell asleep.</p>\r\n\r\n<p>The next day, I sat on the bus.</p>\r\n\r\n<p>We drove past Tommy&rsquo;s house and the bus driver, unaware of Tommy&rsquo;s families fate, stopped at his home.</p>\r\n\r\n<p>As I was about to get up and explain to her what had happened, something caught my eye.</p>\r\n\r\n<p>A pale hand slipped through the drapes of the window and waved the bus driver to move on.</p>\r\n\r\n<p>I sat on the bus, terrified.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>A Mother&rsquo;s Call</strong></p>\r\n\r\n<p>A young girl is playing in her bedroom when she hears her mother call to her from the kitchen, so she runs down the stairs to meet her mother.&nbsp;As she&rsquo;s running through the hallway, the door to the cupboard under the stairs opens, and a hand reaches out and pulls her in.</p>\r\n\r\n<p>It&rsquo;s her mother.</p>\r\n\r\n<p>She whispers to her child, &ldquo;Don&rsquo;t go into the kitchen. I heard it too.&rdquo;</p>\r\n\r\n<p><strong>Four</strong></p>\r\n\r\n<p>My daughter woke me around 11:50 last night. My wife and I had picked her up from her friend Sally&rsquo;s birthday party, brought her home, and put her to bed. My wife went into the bedroom to read while I fell asleep watching the Braves game.</p>\r\n\r\n<p>&ldquo;Daddy,&rdquo; she whispered, tugging my shirt sleeve. &ldquo;Guess how old I&rsquo;m going to be next month.&rdquo;</p>\r\n\r\n<p>&ldquo;I don&rsquo;t know, beauty,&rdquo; I said as I slipped on my glasses. &ldquo;How old?&rdquo;</p>\r\n\r\n<p>She smiled and held up four fingers.</p>\r\n\r\n<p>It is 7:30 now. My wife and I have been up with her for almost 8 hours. She still refuses to tell us where she got them.</p>\r\n\r\n<p><strong>Menacing Paintings</strong></p>\r\n\r\n<p>It was midnight. You were running through the forest in a heavy downpour when you see a small shack in the distance. Desperately longing for a refuge from the rain, you decided to take shelter there until the morning comes. A bolt of lightning strikes just as you opened the door, letting you catch a glimpse of the worn-out furniture inside the wooden shack.</p>\r\n\r\n<p>Inside, you notice that there are so many paintings plastered all over the wall. Even under the dim light, you can see that the paintings were highly detailed and realistically drawn, yet there is something odd about them. Another lightning flash briefly illuminates the room, revealing the menacing gaze that all the figures in the paintings had. Each figure in the paintings seems to be looking straight at you, giving you an uneasy feeling. One of them even seemed to move when you are not looking.</p>\r\n\r\n<p>Shuddering, you determined that it may be best for you to just ignore it and sleep it off. However, the unsettling aura that emanates from the paintings, accompanied by the noise from the storm outside makes it hard to fall into slumber. Despite all that, you managed to keep your eye shut and sleep, albeit scarcely, through the night.</p>\r\n\r\n<p>A shining ray of light from the sun wakes you up in the next morning. You let out a sigh of relief, knowing that last night was probably just a nightmare. But after your eyes sweep through the surroundings, you let out a shriek of horror. On all the spots where there were paintings last night, you only found windows.</p>\r\n\r\n<p>&nbsp;</p>', 2, 2, '20200706195033.jpg', '2020-07-06 04:41:19', '2020-07-06 12:50:33'),
(13, '5444', 'Amalazza', 'ray as rex in the real story', '\"Rex Rashad, tokoh dari novel Orizuka yang berkarakter pandai, cool dengan sikap cueknya dan hanya bersikap spesial kepada Audy (orang yang dicintai)\" gumumku saat selesai membaca novel. Dan saat itu pula aku sangat menginginkan cowok sepertinya walaupun kelihatannya yaa hanya ada di dunia fiksi tentunya. Tapi aku berjanji akan menemukannya. Tentu menemukannya atau mungkin harus menemukannya.', '<p>&quot;Rex Rashad, tokoh dari novel Orizuka yang berkarakter pandai, cool dengan sikap cueknya dan hanya bersikap spesial kepada Audy (orang yang dicintai)&quot; gumumku saat selesai membaca novel. Dan saat itu pula aku sangat menginginkan cowok sepertinya walaupun kelihatannya yaa hanya ada di dunia fiksi tentunya. Tapi aku berjanji akan menemukannya. Tentu menemukannya atau mungkin harus menemukannya.</p>\r\n\r\n<p>Paginya aku bangun dan bersiap sekolah. Dengan hanya mandi dan memakai seragam lanjut dengan sarapan, pagi ku terasa singkat. Aku sadar wajahku sekarang tak sebagus remaja putri lainnya yang maybe perfect. Tapi di novel, seorang Audy yang biasa-biasa saja bisa ditaksir Rex yang kelewat sempurna. Aku mungkin bisa. Aku terbahak saat baru saja memikirkan itu.</p>\r\n\r\n<p>&quot;APRIL&quot; teriak seseorang, yang membuatku berbalik dan mendapati Dani sedang ke arahku.</p>\r\n\r\n<p>&quot;Ah yaa. Apa?&quot; tanyaku sambil menggaruk kepala yang tidak gatal.</p>\r\n\r\n<p>&quot;Kamu udah mengambil keputusan kan? Soal masalah kita kemarin?&quot; ucap Dani yang sedang mengatur nafasnya setelah berlari mengejarku di koridor.</p>\r\n\r\n<p>&quot;Eh, apa? Oh aku-belum bis a a jawab sekarang&quot; kataku gagap. Kemarin Dani menyatakan cintanya, dan tentu saja aku bingung. Karena sebelumnya kami hanya teman biasa. Lagian walaupun dia cowok keren di sekolah, tetap saja cowok idamanku itu cowok kayak Rex. Aku sudah bertekat bulat kan?.</p>\r\n\r\n<p>&quot;Hah? Oh ya udah. Cepet jawab yaa. Aku ke kelas duluan, daaah&quot; Dani pergi sambil melambai.</p>\r\n\r\n<p>Aku sepertinya sudah gila karena ingin menolak cinta dari Dani. Dulu memang aku sempat kagum, tapi agak ilfil saat dia gonta-ganti cewek. Dari situlah aku jadi enggak berselera lagi dengannya. Dan mungkin Sandra teman sekelasku akan melabrak karena sejak dulu dia suka sama Dani dan secara terang-terangan menyatakan sukanya itu. Jauh beda dengan cewek sekarang yang main kode-kode atau apalah itu. Sandra jauh kelewat jujur dengan perasaanya dan seakan belum kapok ditolak Dani berkali-kali.</p>\r\n\r\n<p>Saat melintasi salah satu ruang kelas 11,&nbsp; aku melirik untuk sekedar berkaca pada jendela. Namun aku dikejutkan oleh sosok pangeran. Iya benar pangeran. Memakai seragam sekolah yang sama denganku. Wajah cueknya ketara sekali. MEMBACA BUKU, yang tak biasanya anak laki-laki lakukan. Dan tak perduli sekeliling. Baru saja aku melebarkan mataku untuk sekedar melihat lebih jelas, sosok yang aku lihat berbelok dari buku ke arahku maksudku jendela, tapi dia melihatku. Aku salah tingkah, sungguh. Tapi selang beberapa menit menatapku dia berpaling menatap bukunya itu. Dengan hati yang melayang-layang terbang aku menggumumkan bahwa dialah orangnya. Rex Rashad yang ada di dunia nyata. Oh my God thanks.</p>\r\n\r\n<p>Yang aku bayangkan sebelumnya ternyata benar. Sandra melabrakku di kelas.</p>\r\n\r\n<p>&quot;Eh April, apa bagusnya lo sih. Lo kan bukan siapa-siapa. Lo harus jauhin Dani. Kalo gak, abis lo sama gue&quot; bentak Sandra di depan semua orang yang saat ini seperti menonton pertunjukan.</p>\r\n\r\n<p>&quot;Gak usah lo ingetin, lagian gue gak suka sama Dani. Trus emang gue bukan siapa-siapa kok. Gak usah khawatir, gue juga udah nemu pangeran gue kok&quot; ucapku dan terus membayangkan anak kelas 11 yang mirip Rex tadi.</p>\r\n\r\n<p>&quot;Apa? jadi ini jawaban lo Pril?&quot; suara cowok kedengarannya mendekat. Dan itu Dani.</p>\r\n\r\n<p>&quot;Ah Dan, bukan maksud gue. Cuma maaf, gue gak bisa terima lo. Maaf banget ya&quot; aku setengah terkejut saat Dani tau-tau ada di belakangku.</p>\r\n\r\n<p>Sandra dan orang-orang yang di kelas tampaknya puas. Tapi Dani diam saja, tak berkata apa-apa. Wajahnya tampak kecewa. Ah aku ini kenapa sih, kenapa menolak Dani yang sekeren itu. Saat sedang melamunkan itu, aku dibangunkan oleh suara serak-serak basah yang aku mimpikan sebagai suara Rex. Oh my God itukah Rex?</p>\r\n\r\n<p>&quot;Bang, gue mau ngomong&quot; suara itu melantun. Membangunkanku dari lamunan. Aku melihat ke arah suara itu yang ternyata cowok kelas 11 yang aku anggap itu Rex</p>\r\n\r\n<p>&quot;Ah, apaa&nbsp; sih, udah sana pergi Ray. Gue ada urusan?&quot; Dani sepertinya kesal karena diganggu.</p>\r\n\r\n<p>&quot;Ayah kecelakaan&quot; kesal Ray.</p>\r\n\r\n<p>Semua orang terdiam, hening melanda. Tapi aku langsung bicara &quot;Hah? Apa? Dan, Dan- DANI&quot; Aku menggoyang-goyangkan pundak Dani yang sekarang seperti mati suri.</p>\r\n\r\n<p>&quot;Hah?&quot; ucap Dani, belum sadar dari mati surinya.</p>\r\n\r\n<p>&quot;Ayah kamu, ayah kamu&quot; jelasku.</p>\r\n\r\n<p>Dani akhirnya tersadar dan langsung berlari menuju guru BK untuk meminta izin keluar. Tapi ketika si-Ray mau mengejar Dani, dia melihatku sejenak sesudahnya malah lari mengejar Dani.</p>\r\n\r\n<p>&quot;Adiknya Dani itu cuek banget. Gak bisa deket sama orang. Di kelas 11 saja dia hanya punya satu teman. Apa lagi hobinya membaca. Sepertinya sifat dia 180 derajat terbalik dari Dani&quot; suara Sandra terdengar oleh telingaku. Dan aku menyimpulkan bahwa dia adik Dani. Dan dia adalah Rex di dunia nyata.</p>\r\n\r\n<p>Setelah beberapa hari aku dan Sandra sepakat untuk menjenguk ayahnya Ray dan Dani. Aku sudah menerima informasi dimana rumah sakit ayahnya Ray berada. Aku kan mau cari muka sama calon mertua eh.</p>\r\n\r\n<p>&quot;April, kok ke sini?&quot; ucap Dani saat baru melihatku dan Sandra.</p>\r\n\r\n<p>&quot;Ah, tadi aku sama Sandra sepakat mau jenguk ayah kamu. Ayah kamu dimana?&quot; jelasku, tak mau berlama-lama dengan Dani karena well aku merasa bersalah sudah menolaknya.</p>\r\n\r\n<p>Dani baru membuka mulutnya untuk berbicara. Seseorang berbadan kurus, tinggi, berwajah cuek menghampiri Dani. &quot;Ayah udah sadar&quot; ia berkata dan langsung pergi.</p>\r\n\r\n<p>Aku menghampiri Dani dan berkata &quot; bolehkan kami jenguk?&quot;.</p>\r\n\r\n<p>Dani hanya mengangguk dan menggandeng tanganku. Aku tau sekarang tampang Sandra mungkin meledak. Tapi aku buru-buru melepaskan tangan Dani &quot;aku jalan sendiri aja, kan ada Sandra juga&quot; ucapku dan melirik Sandra.</p>\r\n\r\n<p>Ayah Dani dan Ray kelihatannya tak begitu parah, masih bisa bercanda dengan kami yang sekarang ada di ruang rawatnya. Malah sempat ada kalimat &quot;Wah ternyata Ray dan Dani sudah pintar memilih&quot;.</p>\r\n\r\n<p>Aku memang terkejut karena setengah tak percaya, dan mungkin tak mengerti. Untuk menjelaskan maksud itu, aku bertanya &quot;maksud om? memilih apa ya? April gak paham&quot;.</p>\r\n\r\n<p>Semua orang tertawa dan aku seperti badut yang sekarang ini sedang ditertawakan. Dan pastilah aku tau, Rey hanya meringis gak jelas, persis seperti Rex. Ray kelihatannya memang benar-benar Rex yang nyata.</p>\r\n\r\n<p>&quot;Ah lupakan lah. Ayah ini memang gitu, suka becanda. Tapi mungkin ada benarnya juga yah&quot; segah Dani. Mungkin kasihan padaku yang malu sekali pake banget.</p>\r\n\r\n<p>Suasana berjalan seperti itu. Tertawa, bahagia tanpa ada yang ingat bahwa sedang ada di rumah sakit yang mana adalah tempatnya orang sakit.</p>\r\n\r\n<p>Aku baru saja beranjak dari kantin dan sedang berjalan di koridor rumah sakit. Mataku tercengang saat melihat Rex -eh maksudku Ray duduk di salah satu kursi panjang yang disediakan rumah sakit. Aku tentu saja menghampirinya dan duduk di sampingnya *bisabayangkan.</p>\r\n\r\n<p>&quot;Hay&quot; sapaku agar terkesan baik.</p>\r\n\r\n<p>Rey melirikku, diam sebentar lalu menghiraukanku. Layaknya Rex yang menghiraukan Audy- di novel.</p>\r\n\r\n<p>&quot;Kamu itu udah bersikap cuek dari lahir yaa?&quot; tanyaku, agak gerogi namun selesai menuntaskan kalimat tanya itu.</p>\r\n\r\n<p>Lagi-lagi Ray terdiam, namun sikap diamnya itu yang membuatku makin cinta, uhuk cintaa.</p>\r\n\r\n<p>&quot;Gak papa kok kalo kamu gak jawab. Tapi seenggaknya aku udah ngeliat kamu senyum tadi tuh rasanya seneng&quot; aku pikir aku menyesal saat baru saja mengatakannya. Karena aku pasti dikira cewek penggoda, eeeuuu.</p>\r\n\r\n<p>Tapi Ray berhasil melihatku lagi. Ternyata usahaku berhasil, walaupun terlihat murahan. Sebenarnya aku gak suka dengan sikapku sekarang. Tapi demi Ray.</p>\r\n\r\n<p>&nbsp;</p>', 1, 1, '20200706195103.jpg', '2020-07-06 04:48:01', '2020-07-06 12:51:03');
INSERT INTO `cerita` (`id`, `isbn`, `penulis`, `judul`, `deskripsi`, `cerita`, `id_bahasa`, `id_target`, `foto`, `created_at`, `updated_at`) VALUES
(14, '3443', 'Lalisa', 'mi hombre', '\"Rex Rashad, un personaje de la novela de Orizuka que es inteligente, genial con su actitud genial y solo actúa especial para Audy (seres queridos)\" murmuré cuando terminé de leer la novela. Y en ese momento también realmente quería un chico como él, aunque parecía existir solo en el mundo de la ficción, por supuesto. Pero prometo que lo encontraré. Por supuesto, encuéntralo o quizás tengas que encontrarlo.', '<p>&quot;Rex Rashad, un personaje de la novela de Orizuka que es inteligente, genial con su actitud genial y solo act&uacute;a especial para Audy (seres queridos)&quot; murmur&eacute; cuando termin&eacute; de leer la novela. Y en ese momento tambi&eacute;n realmente quer&iacute;a un chico como &eacute;l, aunque parec&iacute;a existir solo en el mundo de la ficci&oacute;n, por supuesto. Pero prometo que lo encontrar&eacute;. Por supuesto, encu&eacute;ntralo o quiz&aacute;s tengas que encontrarlo.<br />\r\nA la ma&ntilde;ana siguiente me despert&eacute; y me prepar&eacute; para la escuela. Simplemente d&aacute;ndome una ducha y vistiendo un uniforme avanzado con el desayuno, mi ma&ntilde;ana se siente corta. Me doy cuenta de que mi cara ahora no es tan buena como otras adolescentes que podr&iacute;an ser perfectas. Pero en la novela, Rex puede evaluar una Audiencia mediocre que es demasiado perfecta. Yo podr&iacute;a ser capaz de hacerlo. Me ech&eacute; a re&iacute;r al pensarlo.<br />\r\n&quot;ABRIL&quot; grit&oacute; alguien, que me hizo dar la vuelta y descubri&oacute; que Dani ven&iacute;a hacia m&iacute;.<br />\r\n&quot;Ah s&iacute;. &iquest;Qu&eacute;?&quot; Pregunt&eacute;, rasc&aacute;ndome la cabeza que no me picaba.<br />\r\n&quot;Has tomado tu decisi&oacute;n, &iquest;verdad? &iquest;Sobre nuestro problema ayer?&quot; dijo Dani, quien estaba ajustando su respiraci&oacute;n despu&eacute;s de correr detr&aacute;s de m&iacute; en el corredor.<br />\r\n&quot;Eh, &iquest;qu&eacute;? Oh, no puedo responder ahora&quot;, tartamude&eacute;. Ayer Dani expres&oacute; su amor y, por supuesto, estaba confundido. Porque antes solo &eacute;ramos amigos comunes. Adem&aacute;s, aunque es un tipo genial en la escuela, mi tipo ideal es un tipo como Rex. Estaba determinado, &iquest;verdad?<br />\r\n&quot;&iquest;Eh? Oh, cierto. Date prisa y responde, est&aacute; bien. Ir&eacute; a clase primero, adi&oacute;s&quot; Dani se fue mientras saludaba.<br />\r\nMe parece una locura porque quiero rechazar el amor de Dani. Al principio me sorprend&iacute;a, pero es un poco il&iacute;cito cuando cambia de chicas. A partir de ah&iacute; me volv&iacute; menos apetito con &eacute;l. Y tal vez mi compa&ntilde;era de clase Sandra se estrelle porque siempre le gusta Dani y expresa abiertamente su alegr&iacute;a. Muy diferente de la chica que juega los c&oacute;digos o lo que sea. Sandra es demasiado honesta con sus sentimientos y parece no haber renunciado a que Dani la rechazara muchas veces.<br />\r\nAl cruzar una de las aulas 11, mir&eacute; para mirar por la ventana. Pero me sorprendi&oacute; la figura de un pr&iacute;ncipe. S&iacute;, cierto pr&iacute;ncipe. Usando el mismo uniforme escolar que yo. Su rostro era muy llamativo. LECTURA DE LIBROS, que los ni&ntilde;os no suelen hacer. Y no importa el entorno. Justo ahora abr&iacute; mucho los ojos para ver m&aacute;s claramente, la figura que vi se volvi&oacute; del libro hacia m&iacute;. Me refiero a la ventana, pero &eacute;l me vio. Estaba inc&oacute;modo, de verdad. Pero despu&eacute;s de unos minutos me mir&oacute; y se volvi&oacute; para mirar el libro. Con un coraz&oacute;n volador, anunci&eacute; que &eacute;l era la persona. Rex Rashad en el mundo real. Dios m&iacute;o, gracias.<br />\r\nLo que imagin&eacute; antes result&oacute; ser cierto. Sandra se top&oacute; conmigo en clase.<br />\r\n&quot;Eh April, qu&eacute; hay de bueno en ti. No eres nadie. Tienes que mantenerte alejado de Dani. Si no, entonces eres igual que yo&quot;, gru&ntilde;&oacute; Sandra frente a todos los que estaban viendo una actuaci&oacute;n.<br />\r\n&quot;De todos modos, no necesitas recordar, no me gusta Dani. Entonces realmente no soy nadie. No te preocupes, tambi&eacute;n he conocido a mi pr&iacute;ncipe de todos modos&quot;, dije y segu&iacute; imaginando a estudiantes de 11&ordm; grado que se parec&iacute;an a Rex antes.<br />\r\n&quot;&iquest;Qu&eacute;? &iquest;Entonces esta es tu respuesta, Pril?&quot; el sonido de un chico acerc&aacute;ndose. Y esa es Dani.<br />\r\n&quot;Ah Dan, no quise decir eso. Solo lo siento, no puedo aceptarte. Realmente lo siento&quot;, estaba medio sorprendida cuando Dani supo que estaba detr&aacute;s de m&iacute;.<br />\r\nSandra y la gente de la clase parec&iacute;an satisfechos. Pero Dani no dijo nada, no dijo nada. Su cara parec&iacute;a decepcionada. Ah, qu&eacute; estoy haciendo, por qu&eacute; est&aacute; rechazando a Dani tan genial. Cuando estaba so&ntilde;ando con eso, me despert&oacute; la voz ronca y h&uacute;meda que so&ntilde;&eacute; como la voz de Rex. Oh dios mio es ese Rex?<br />\r\n&quot;Bang, quiero decir&quot;, cantaba la voz. Despi&eacute;rtame de los sue&ntilde;os. Mir&eacute; la voz que result&oacute; ser el chico de 11 &deg; grado que pens&eacute; que era Rex<br />\r\n&quot;Ah, qu&eacute; diablos, se fue Ray. &iquest;Tengo negocios?&quot; Dani parece molesto por ser interrumpido.<br />\r\nEl &quot;accidente de pap&aacute;&quot; molest&oacute; a Ray.<br />\r\nTodos estaban en silencio, silenciosamente golpeados. Pero inmediatamente dije &quot;&iquest;Eh? &iquest;Qu&eacute;? Y, Dan-DANI&quot; Sacud&iacute; el hombro de Dani, que ahora parec&iacute;a estar suspendido.<br />\r\n&quot;&iquest;Hah?&quot; Dani dijo, a&uacute;n no consciente de su muerte.<br />\r\n&quot;Tu padre, tu padre&quot;, le expliqu&eacute;.<br />\r\nDani finalmente recuper&oacute; la conciencia e inmediatamente corri&oacute; hacia el maestro de BK para pedir permiso para salir. Pero cuando el Ray quer&iacute;a perseguir a Dani, me vio por un momento despu&eacute;s de eso y en su lugar corri&oacute; detr&aacute;s de Dani.<br />\r\n&quot;La hermana de Dani es muy ignorante. No puede estar cerca de nadie. En el grado 11 ella solo ten&iacute;a un amigo. Adem&aacute;s, su pasatiempo es leer. Parece que est&aacute; a 180 grados al rev&eacute;s de Dani&quot; La voz de Sandra fue escuchada por mis o&iacute;dos. Y conclu&iacute; que era la hermana de Dani. Y &eacute;l es Rex en el mundo real.<br />\r\nDespu&eacute;s de unos d&iacute;as, Sandra y yo acordamos visitar a su padre Ray y Dani. Recib&iacute; informaci&oacute;n sobre d&oacute;nde est&aacute; el hospital del padre de Ray. Quiero encontrar una cara con posibles suegros eh.<br />\r\n&quot;April, &iquest;por qu&eacute; vienes aqu&iacute;?&quot; dijo Dani cuando nos vio a m&iacute; y a Sandra.<br />\r\n&quot;Ah, Sandra y yo acordamos visitar a tu padre. &iquest;D&oacute;nde est&aacute; tu padre?&quot; Le expliqu&eacute;, no queriendo quedarme con Dan</p>', 7, 4, '20200706195144.jpg', '2020-07-06 04:49:59', '2020-07-06 12:51:44'),
(15, '8677', 'Cha Eun Woo', 'oppa', 'Dani는 입을 벌려 연설을했습니다. 얇고 키가 크고 무지한 사람이 Dani에게 다가 갔다. \"아빠는 깨어있다\"고 말했다.\r\n다니에게 다가 가서 \"방문 할 수 있을까요?\"\r\nDani는 방금 고개를 끄덕이고 내 손을 잡았습니다. 이제 산드라의 모습이 폭발 할 수 있음을 알고 있습니다. 그러나 나는 서둘러 Dani의 손을 놓아 버렸다. \"나는 혼자 걸을 것이다. Sandra도있다.\"나는 Sandra를 바라보고 말했다.\r\nDani와 Ray의 아버지는 그렇게 나쁘지 않았으며, 여전히 그의 와드에 있던 우리와 농담을 할 수있었습니다. 실제로 \"와이와 다니가 선택하는 것이 좋았습니다\"라는 문장이있었습니다.\r\n나는 그것을 믿지 않았기 때문에 실제로 놀랐으며, 아마도 이해하지 못했습니다. 그 목적을 설명하기 위해 \"무엇을 의미합니까? 무엇을 선택합니까? 4 월은 이해하지 못합니다\"라고 물었습니다.', '<p>Dani는 입을 벌려 연설을했습니다. 얇고 키가 크고 무지한 사람이 Dani에게 다가 갔다. &quot;아빠는 깨어있다&quot;고 말했다.<br />\r\n다니에게 다가 가서 &quot;방문 할 수 있을까요?&quot;<br />\r\nDani는 방금 고개를 끄덕이고 내 손을 잡았습니다. 이제 산드라의 모습이 폭발 할 수 있음을 알고 있습니다. 그러나 나는 서둘러 Dani의 손을 놓아 버렸다. &quot;나는 혼자 걸을 것이다. Sandra도있다.&quot;나는 Sandra를 바라보고 말했다.<br />\r\nDani와 Ray의 아버지는 그렇게 나쁘지 않았으며, 여전히 그의 와드에 있던 우리와 농담을 할 수있었습니다. 실제로 &quot;와이와 다니가 선택하는 것이 좋았습니다&quot;라는 문장이있었습니다.<br />\r\n나는 그것을 믿지 않았기 때문에 실제로 놀랐으며, 아마도 이해하지 못했습니다. 그 목적을 설명하기 위해 &quot;무엇을 의미합니까? 무엇을 선택합니까? 4 월은 이해하지 못합니다&quot;라고 물었습니다.<br />\r\n모두가 웃었고 나는 지금 웃고 있던 광대와 같았습니다. 물론 Rey와 마찬가지로 Rey도 불분명하게 찡그 렸습니다. 레이는 진짜 렉스 인 것 같았다.<br />\r\n&quot;아 잊어 버려.이 아버지는 정말 그런 농담을 좋아한다. 그러나 어쩌면 요점도있을 것이다.&quot;Dani가 외쳤다. 너무 부끄러워서 미안해<br />\r\n분위기가 그렇게갑니다. 사람들이 아픈 병원이 있다는 것을 기억하는 사람없이 웃으면 서 행복합니다.<br />\r\n나는 방금 식당을 떠났고 병원 복도를 걷고 있었다. Rex를 보았을 때 나는 놀랐습니다. Ray는 병원이 제공 한 긴 의자 중 하나에 앉아있었습니다. 나는 자연스럽게 그에게 다가 가서 그 옆에 앉았다.<br />\r\n&quot;이봐&quot;나는 좋아 보인다고 말합니다.<br />\r\n레이는 나를보고 잠시 멈추었다가 나를 무시했다. 렉스처럼 소설에서 오디를 무시합니다.<br />\r\n&quot;당신은 이미 태어날 무지입니까?&quot; 나는 약간 긴장했지만 물었다.<br />\r\n다시 Ray는 조용했지만 그의 침묵은 나를 더 사랑하고 기침하는 사랑으로 만들었다.<br />\r\n&quot;당신이 대답하지 않으면 괜찮아요.하지만 적어도 당신이 미소를봤을 때 기분이 좋아요.&quot;방금 말했을 때 미안하다고 생각합니다. 나는 매혹적인 소녀로 착각해야하기 때문에, eeeee.<br />\r\n그러나 Ray는 나를 다시 만났다. 싼 것처럼 보이지만 내 사업이 성공한 것으로 나타났습니다. 사실 나는 지금 내 태도를 좋아하지 않습니다. 그러나 레이를 위해서.<br />\r\n&quot;당신은 Dani의 남자 친구입니다.&quot;라고 Ray는 말했다.<br />\r\n나는 고개를 저으며&ldquo;아니, 나는 Dani의 남자 친구가 아닙니다. 나는 11 학년 때부터 그를 알고 있지만 우리에게는 특별한 것이 없습니다. 왜 그런가요?&rdquo;<br />\r\n&quot;당신은 내 동생을 받아 들여야한다. 그래서 그는 그에게서 나아갈 수있다.&quot;레이는 그의 말에 찔 렸다.<br />\r\n&quot;Dariii&quot;나는 계속했다.<br />\r\n&quot;사파에서&quot;그는 마침내 그의 문장을 끝냈다.<br />\r\n나는 단어를 소화하기 위해 잠시 멈췄다. 나는 지금 이해하지만 누가 사파입니다. &quot;Safa ...&quot;내 문장이 중단되었습니다<br />\r\n레이는 내 문장을 어 기고 &quot;남자 친구 전에. 그는.&quot;<br />\r\n&quot;그는&quot;다시 불완전한 문장을 계속했다.<br />\r\n&quot;그는 이미 거기에 없습니다. 그리고 나는 그것을 일으켰습니다. 그래서 당신이 당신의 사랑으로 동생을 치료할 수 있기를 바랍니다.&quot;라고 Ray는 설명했습니다.<br />\r\n알았어 지금은 이해. 하지만 난 못해 난 그냥 너를 좋아해 &quot;너희가 유죄가 될 때까지 사파 뭐하는거야?&quot;<br />\r\n&quot;그 당시에 Dani와 Safa는 함께 걷고있었습니다. 나는 분명히 보았습니다. 처음에 Safa를 좋아한다면 이야기하고 싶었지만, 나는 내 동생 앞에있었습니다. &quot;레이는 내게 그의 눈이 눈물로 가득 차 있다고 말했다. 그는 항상 문장을 중지합니다.<br />\r\n&quot;그리고&quot;나는 문장을 반복했다.<br />\r\n&quot;이제 그는 거기에 없다. 나는이 모든 것을 만들었다. 나는 내 동생의 행복을 책임지고있다. 나는 너에게 무혼하고 내 동생을 받아 들인다&quot;고 Ray는 말했다.<br />\r\n&quot;레이, 난 못해. 나는 이미 다른 사람을 좋아한다. 그리고 그게 너야.&quot;<br />\r\n레이는 내가 이해하지 못한 표정으로 나를 쳐다 봤다. 그는 내 왼손을 잡았다. 나는 그것이 무엇을 의미하는지 모른다. 그러나 그는 &quot;나를 좋아하지 않는다. 나는 할 수 없다. 나는 정말로 할 수 없다. 지금 당장 나를 잊고 동생과 함께 당신의 인생을 계속한다&quot;고 말했다. 그 후 레이는 떠났다.<br />\r\n나는 그 자리에서 울었다. 걷는 사람들은 혼자 울면서 미쳤다고 생각할 수 있습니다. 나는 황폐했다. 무슨 소리 야? 게다가 그는 실제로 사파에게 유죄가 아니었다. 그러나 아마도 이런 식이어야합니다. 아마도 그는 사파가 그를 도우러 갔기 때문에 황폐했을 수도 있습니다. 나는 이제 &quot;사랑이 없어도된다&quot;는 말의 의미를 이해합니다.<br />\r\n그 다음날 나는 Dani를 만났다. 그는 농구를하고있다.<br />\r\n&quot;Daaaan. Dani&quot;농구장 가장자리에서 소리 쳤다.<br />\r\nDani는 누가 전화했는지 검색했습니다. 그리고 내 시선을 만났다. &quot;4 월, 뭐하고 있니?&quot;첫 문장이 나왔습니다.<br />\r\n&quot;내가 말하고 싶다&quot;나는 다시 소리 쳤다.<br />\r\n달리면서 내게 다가오는 것. &quot;뭐가 잘못 되었 니?&quot; 그는 물었다.<br />\r\n&quot;난 당신이 내 여자 친구가되어 줘요&quot;나는 웃으려고 노력한다고 말합니다.<br />\r\n다니가 말했다. &quot;허. 뭐? 용서해!<br />\r\n&quot;나는 당신이 내 여자 친구가 된 것을 받아들입니다.&quot;나는 문장을 반복했다.<br />\r\n&quot;ㅏ</p>', 3, 1, '20200706195212.jpg', '2020-07-06 04:51:52', '2020-07-06 12:52:12'),
(16, '3453', 'Sato Takeru', 'himura', '私はダニからの愛を拒絶したいので、私はクレイジーに見えます。初めはびっくりしましたが、女の子を変えるのはちょっと面白くないです。そこから、私は彼との食欲が減りました。そして、多分私のクラスメートのサンドラはクラッシュするでしょう。なぜなら彼女はいつもダニが好きで、オープンに彼女の喜びを表現しているからです。コードなど何でもする女の子とは全然違う。サンドラは自分の気持ちに正直すぎて、何度も断られたダニをあきらめなかったようです。', '<p>私はダニからの愛を拒絶したいので、私はクレイジーに見えます。初めはびっくりしましたが、女の子を変えるのはちょっと面白くないです。そこから、私は彼との食欲が減りました。そして、多分私のクラスメートのサンドラはクラッシュするでしょう。なぜなら彼女はいつもダニが好きで、オープンに彼女の喜びを表現しているからです。コードなど何でもする女の子とは全然違う。サンドラは自分の気持ちに正直すぎて、何度も断られたダニをあきらめなかったようです。<br />\r\n11番目の教室の1つを横切るとき、私は一瞥して窓を見ているだけでした。でも王子の姿にびっくりしました。はい、正しい王子様。私と同じ制服を着ています。彼の顔はとても印象的でした。男の子が通常はしない本を読んでいます。そして、環境に関係なく。ちょうど今、私はもっとはっきりと見るために目を大きくしました。私が見た姿は本から私に向かって転向しましたが、彼は私を見ました。本当にぎこちなかった。しかし、数分後、彼は私を見て、本を見るようになりました。飛んでくる心を持って、私は彼がその人であることを発表しました。実世界のレックス・ラシャド。ああ、神様、ありがとう。<br />\r\n以前に想像したことが本当であることが判明しました。サンドラはクラスで私にぶつかった。<br />\r\n「ええ4月、あなたの良さ。あなたは誰でもない。あなたはダニから離れなければならない。そうでなければ、あなたは私と同じだ」サンドラは、現在公演を見ているすべての人の前でうなずいた。<br />\r\n「とにかく覚えておく必要はありません。ダニは好きではありません。それで私は本当に誰もいません。心配しないで、とにかく王子にも会いました」と言って、レックスのように見えた11年生を想像し続けました。<br />\r\n「何？これがあなたの答えです、プリル？」近づいてくる男の音。そして、それはダニです。<br />\r\n「ああダン、私はそれを意味しませんでした。申し訳ありませんが、あなたを受け入れることはできません。本当に申し訳ありません」ダニは彼女が私の後ろにいることを知ったとき、私は半分ショックを受けました。<br />\r\nサンドラとクラスの人々は満足しているようでした。しかし、ダニは何も言わなかった、何も言わなかった。彼の顔はがっかりした。ああ、私は何をしているのか、なぜそのようなクールなダニを拒否しているのですか？私はそれについて空想をしていると、レックスの声として夢見ていたしわがれた湿った声に目覚めました。ああ私の神はそのレックスですか？<br />\r\n「バング、言いたい」声が歌っていた。白昼夢から目覚めさせて。レックスだと思った11年生の声を見て<br />\r\n「ああ、一体、レイはなくなった。私には商売があるのか​​？」ダニは中断されることにイライラしているようです。<br />\r\n「パパ事故」はレイを混乱させた。<br />\r\n誰もが黙っていて、黙っていた。でも、すぐに「えっ？何？そして、だんだに」と言ったところ、肩をすくめた。<br />\r\n「あれ？」ダニは言った、まだ彼の死に気づいていません。<br />\r\n「あなたの父よ、あなたの父よ」と私は説明した。<br />\r\nダニはついに意識を取り戻し、すぐにBKの先生の方へ走って出て行く許可を求めました。しかし、レイがダニを追いかけたかったとき、彼はその後しばらくの間私を見て、代わりにダニを追いかけました。<br />\r\n「ダニの妹はとても無知です。誰にも近づくことはできません。11年生のとき、彼女には友達が1人しかいませんでした。趣味は読書です。彼女はダニから180度逆さまになっているようです」サンドラの声が耳に聞こえました。そして私は彼がダニの妹であると結論しました。そして、彼は実世界ではレックスです。<br />\r\n数日後、サンドラと私は彼の父レイとダニを訪ねることに同意しました。レイの父親の病院がどこにあるかについての情報を受け取りました。将来の義理の妻の顔を見つけたいです。<br />\r\n「4月、なぜここに来たの？」ダニは彼女が私とサンドラを見たときに言った。<br />\r\n「ああ、私とサンドラはあなたのお父さんを訪ねることに同意しました。あなたのお父さんはどこですか？」私は拒否した罪悪感をよく感じたので、ダニと一緒に居たくないと説明しました。<br />\r\nダニは口を開けて話しました。細くて背が高く、無知な男がダニに近づいた。 「お父さんは目を覚ましている」と彼は言ってすぐに去った。<br />\r\n私はダニに近づき、「訪問できますか？」と言った。<br />\r\nダニはうなずき、私の手を握った。サンドラの外見が爆発するかもしれないことを今知っています。しかし、私は慌ててダニの手を離しました。「私は一人で歩きます。サンドラもいます」と私は言って、サンドラをちらりと見ました。<br />\r\nダニとレイの父親はそれほど悪くないようでした、彼らは今でも彼の病棟にいる私たちと冗談を言うことができました。実際、「レイとダニは選択が上手だとわかったわ」という文章がありました。<br />\r\n信じられなかったし、多分理解できなかったので、本当に驚きました。その目的を説明するために、「どういう意味ですか？何を選択するのですか？4月はわかりません」と尋ねました。<br />\r\nみんな笑って、今笑っているピエロみたいだった。そしてもちろん、私は知っています。レイはレックスのように不明瞭にしかめっ面をしました。レイは本当のレックスのようでした。<br />\r\n「ああ、忘れてください。この父親は本当にそうで、冗談が好きです。でも、ポイントもあるかもしれません」とダニは叫んだ。使用してとても恥ずかしかった私のために多分ごめんなさい。<br />\r\nそんな雰囲気です。病気の病院があることを誰も覚えていないのに、笑って幸せ。<br />\r\n私は食堂を出たばかりで、病院の廊下を歩いていました。私の目がしつこい</p>', 8, 3, '20200706115552.jpg', '2020-07-06 04:54:52', '2020-07-06 10:33:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `nama_genre`, `created_at`, `updated_at`) VALUES
(1, 'Action', '2020-07-05 17:00:00', '2020-07-05 17:00:00'),
(2, 'Fantasi', '2020-07-05 17:00:00', '2020-07-05 17:19:32'),
(3, 'Fiksi', '2020-07-05 17:17:23', '2020-07-05 17:17:23'),
(4, 'Horror', '2020-07-05 17:17:29', '2020-07-05 17:17:29'),
(5, 'Humor', '2020-07-05 17:17:37', '2020-07-05 17:17:37'),
(6, 'Misteri', '2020-07-05 17:17:50', '2020-07-05 17:17:50'),
(7, 'Non Fiksi', '2020-07-05 17:17:59', '2020-07-05 17:17:59'),
(8, 'Adventure', '2020-07-05 17:18:32', '2020-07-05 17:18:32'),
(9, 'Romance', '2020-07-05 17:19:00', '2020-07-05 17:19:00'),
(10, 'Spiritual', '2020-07-05 17:19:09', '2020-07-05 17:19:09');

-- --------------------------------------------------------

--
-- Table structure for table `genre_cerita`
--

CREATE TABLE `genre_cerita` (
  `id_cerita` int(10) UNSIGNED NOT NULL,
  `id_genre` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genre_cerita`
--

INSERT INTO `genre_cerita` (`id_cerita`, `id_genre`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-07-05 17:00:00', '2020-07-05 17:00:00'),
(1, 2, '2020-07-05 17:00:00', '2020-07-05 17:00:00'),
(7, 7, '2020-07-06 04:35:32', '2020-07-06 04:35:32'),
(7, 10, '2020-07-06 01:47:57', '2020-07-06 01:47:57'),
(9, 10, '2020-07-06 04:14:30', '2020-07-06 04:14:30'),
(10, 3, '2020-07-06 04:28:23', '2020-07-06 04:28:23'),
(10, 9, '2020-07-06 04:28:23', '2020-07-06 04:28:23'),
(11, 4, '2020-07-06 04:39:05', '2020-07-06 04:39:05'),
(11, 6, '2020-07-06 04:39:05', '2020-07-06 04:39:05'),
(12, 1, '2020-07-06 04:41:19', '2020-07-06 04:41:19'),
(12, 4, '2020-07-06 04:41:19', '2020-07-06 04:41:19'),
(12, 9, '2020-07-06 04:41:19', '2020-07-06 04:41:19'),
(13, 3, '2020-07-06 04:48:01', '2020-07-06 04:48:01'),
(13, 5, '2020-07-06 04:48:01', '2020-07-06 04:48:01'),
(13, 9, '2020-07-06 04:48:01', '2020-07-06 04:48:01'),
(14, 8, '2020-07-06 04:49:59', '2020-07-06 04:49:59'),
(14, 9, '2020-07-06 04:49:59', '2020-07-06 04:49:59'),
(15, 2, '2020-07-06 04:51:53', '2020-07-06 04:51:53'),
(15, 3, '2020-07-06 04:51:53', '2020-07-06 04:51:53'),
(15, 9, '2020-07-06 04:51:53', '2020-07-06 04:51:53'),
(16, 1, '2020-07-06 04:54:52', '2020-07-06 04:54:52'),
(16, 8, '2020-07-06 04:54:52', '2020-07-06 04:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_05_051116_create_cerita_table', 2),
(5, '2020_07_05_051729_create_bahasa_table', 2),
(6, '2020_07_05_052214_create_target_table', 2),
(7, '2020_07_05_232109_create_genre_table', 2),
(8, '2020_07_05_232509_create_genre_cerita_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `target`
--

CREATE TABLE `target` (
  `id` int(10) UNSIGNED NOT NULL,
  `target_pembaca` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `target`
--

INSERT INTO `target` (`id`, `target_pembaca`, `created_at`, `updated_at`) VALUES
(1, 'Tingkat menengah (8-13 tahun)', '2020-07-05 10:00:00', '2020-07-05 10:00:00'),
(2, 'Dewasa muda (13-18 tahun)', '2020-07-05 09:06:37', '2020-07-05 09:07:14'),
(3, 'Dewasa baru (18-25 tahun)', '2020-07-05 09:07:49', '2020-07-05 09:07:49'),
(4, 'Dewasa (25 tahun ke atas)', '2020-07-05 09:08:06', '2020-07-05 09:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` enum('admin','operator') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `level`, `created_at`, `updated_at`) VALUES
(8, 'Nurul Amala Azza', 'mala@goldenpad.app', NULL, '$2y$10$imYTwL2JwIFwNMmwieblluNyOhY3gTFAbwNjy5CRwlhaTxEILdZP2', 'VYzILDUTkcnLzluJMMNbCARU9mWolJyoov2rtlOeibkprCWVAHUWKmdimljq', 'admin', '2019-01-15 01:09:57', '2020-07-05 02:35:25'),
(9, 'Sato Takeru', 'sato@goldenpad.app', NULL, '$2y$10$imYTwL2JwIFwNMmwieblluNyOhY3gTFAbwNjy5CRwlhaTxEILdZP2', 'CTxnk5asvKH559391Gbnteuin7nCXNGm42oahzE0FHSo3uKacB0lEOXsXB82', 'operator', '2019-01-15 01:09:57', '2020-07-05 02:35:36'),
(10, 'Joko Pinurbo', 'joko@goldenpad.app', NULL, '$2y$10$3O7FPt52DV5jcGhHkzF74uPdiovW37vu5Nqu7RJpvFGWyAzUK0/.S', 'AW0CNsFswwtrK0Ts3MfnSlgCd12UoH3InFHXWC6m1SbIRKdBVL6x7GSXoWih', 'operator', '2020-07-05 02:36:12', '2020-07-05 02:36:12'),
(12, 'Asep', 'asep@goldenpad.app', NULL, '$2y$10$Ih8RK8zYnPs1TEQBxw3uR.YvlFduMbEPi1WHP6sOQwoUN7hqWJ8YW', NULL, 'operator', '2020-07-05 02:43:36', '2020-07-05 02:43:36'),
(13, 'Tutur Tinular', 'tutur@goldenpad.app', NULL, '$2y$10$dj78Xm7f5XQMAJYqt1W1m.hhK6DFuJeZn/NwACAmZSicJ85w.wn4m', NULL, 'operator', '2020-07-05 02:44:03', '2020-07-05 02:44:03'),
(14, 'Siti Srilestari', 'siti@goldenpad.app', NULL, '$2y$10$wYXYLCPwZ4581MVgD71PnuahWg8xK4a3HYAMz5FjEz2TyNJizF.Vy', NULL, 'operator', '2020-07-05 02:45:28', '2020-07-06 12:46:19'),
(15, 'Milea', 'milea@goldenpad.app', NULL, '$2y$10$TFc03hXnsMQy2TAPZuqAtu3HRmZtbsZ3GJBInnSIHg3zDct/Y/L7S', NULL, 'operator', '2020-07-05 02:46:02', '2020-07-05 02:46:02'),
(16, 'Dilan', 'dilan@goldenpad.app', NULL, '$2y$10$EL7O2Dlko/498hIJ2UOlhOxH7n6t9uAu44at/LXMAdSI/BymGBlsC', NULL, 'operator', '2020-07-05 02:46:18', '2020-07-05 02:46:18'),
(17, 'Adnan', 'adnan@goldenpad.app', NULL, '$2y$10$8tjaV1/b4wnRYHhul3U2P.eO/2UINJvRJV3VwX5mT5A92NaULkcoe', NULL, 'operator', '2020-07-05 02:46:40', '2020-07-05 02:46:40'),
(18, 'admin', 'admin@goldenpad.app', NULL, '$2y$10$2IUsug.tryxoQTKD4z2v4.8wSSX3M6FQQl2uHUxtfU0pq4I0oNwiS', 'VjAR6nUVyndXUTNrFOREw125KVitGR19DeifRKsTaIGVcuU58Ppx3hKOqocM', 'admin', '2020-07-05 02:47:04', '2020-07-05 02:47:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bahasa`
--
ALTER TABLE `bahasa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cerita`
--
ALTER TABLE `cerita`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cerita_isbn_unique` (`isbn`),
  ADD KEY `cerita_id_bahasa_foreign` (`id_bahasa`),
  ADD KEY `cerita_id_taget_foreign` (`id_target`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre_cerita`
--
ALTER TABLE `genre_cerita`
  ADD PRIMARY KEY (`id_cerita`,`id_genre`),
  ADD KEY `genre_cerita_id_cerita_index` (`id_cerita`),
  ADD KEY `genre_cerita_id_genre_index` (`id_genre`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `target`
--
ALTER TABLE `target`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bahasa`
--
ALTER TABLE `bahasa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cerita`
--
ALTER TABLE `cerita`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `target`
--
ALTER TABLE `target`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cerita`
--
ALTER TABLE `cerita`
  ADD CONSTRAINT `cerita_id_bahasa_foreign` FOREIGN KEY (`id_bahasa`) REFERENCES `bahasa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cerita_id_taget_foreign` FOREIGN KEY (`id_target`) REFERENCES `target` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `genre_cerita`
--
ALTER TABLE `genre_cerita`
  ADD CONSTRAINT `genre_cerita_id_cerita_foreign` FOREIGN KEY (`id_cerita`) REFERENCES `cerita` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `genre_cerita_id_genre_foreign` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
