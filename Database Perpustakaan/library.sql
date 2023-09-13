-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Sep 2023 pada 04.10
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail_url` text NOT NULL,
  `pdf_url` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `synopsis` text DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `category_id`, `title`, `thumbnail_url`, `pdf_url`, `author`, `synopsis`, `created_at`, `updated_at`) VALUES
(1, 6, 'The Psychology of Money', 'img1689215746.jpg', '', 'Morgan Housel', 'Kesuksesan dalam mengelola uang tidak selalu tentang apa yang Anda ketahui. Ini tentang bagaimana Anda berperilaku. Dan perilaku sulit untuk diajarkan, bahkan kepada orang yang sangat pintar sekalipun. Seorang genius yang kehilangan kendali atas emosinya bisa mengalami bencana keuangan. Sebaliknya, orang biasa tanpa pendidikan finansial bisa kaya jika mereka punya sejumlah keahlian terkait perilaku yang tak berhubungan dengan ukuran kecerdasan formal.\r\n\r\nUanginvestasi, keuangan pribadi, dan keputusan bisnisbiasanya diajarkan sebagai bidang berbasis matematika, dengan data dan rumus memberi tahu kita apa yang harus dilakukan. Namun di dunia nyata, orang tidak membuat keputusan finansial di spreadsheet. Mereka membuatnya di meja makan, atau di ruang rapat, di mana sejarah pribadi, pandangan unik Anda tentang dunia, ego, kebanggaan, pemasaran, dan berbagai insentif bercampur.\r\n\r\nDalam The Psychology of Money, penulis pemenang penghargaan, Morgan Housel membagikan 19 cerita pendek yang mengeksplorasi cara-cara aneh orang berpikir tentang uang dan mengajari Anda cara memahami salah satu topik terpenting dalam hidup dengan lebih baik.', '2023-07-11 15:35:46', '2023-07-11 15:35:46'),
(2, 12, 'MAHIR PIDATO DAN MC', 'img1689216343.jpg', '', 'Adelina Nurmalasari', 'Banyak orang yang memiliki ide brilian, namun dia tidak dapat atau tidak pandai menyampaikan ide tersebut kepada orang lain. Akhirnya, ide yang dia miliki tidak dianggap atau tidak dipakai. Banyak orang yang berkeringat dan gemetar saat tampil di podium. Atau, banyak orang yang bolak-balik ke kamar kecil sebelum tampil, sehingga lupa akan apa yang harus dikatakan, padahal sebelum tampil konsepnya sudah matang. Lain halnya dengan orang yang terbiasa berbicara di depan umum, di mana orang tersebut akan mendapatkan kesan baik dari audiens yang mendengarkannya. Begitu juga dengan ajakannya, orang lain akan dapat dengan mudah mengikuti apa yang diucapkannya.\r\nPadahal sejatinya, keahlian public speaking, seperti menjadi MC ataupun berpidato dapat dipelajari. Seorang instruktur pidato di sebuah lembaga kursus khusus pidato yang sangat terkenal, Dale Carnegie, mengemukakan bahwa pidato bukan suatu seni yang hanya bisa dilakukan oleh orang berbakat, melainkan termasuk keterampilan yang dapat dilakukan oleh orang biasa yang berminat.\r\nOleh karena itu, buku yang sedang Anda baca ini menyajikan berbagai teori yang dapat Anda pelajari untuk menjadi seorang pembicara yang andal dan diminati oleh massa. Di samping itu, dalam buku ini juga disajikan berbagai contoh naskah pidato dan MC dalam berbagai kesempatan, sehingga setidaknya Anda memiliki acuan naskah dalam menyusun naskah pidato.', '2023-07-11 15:45:43', '2023-07-11 15:45:43'),
(3, 11, 'Sejarah Peradaban Islam Indonesia', 'img1689216809.jpg', '', 'Prof. Dr. Musyrifah Sunanto', 'Islam di Indonesia (Asia Tenggara) merupakan salah satu dari tujuh cabang peradaban Islam di dunia setelah peradaban Islam Arab, Islam Persi, Islam Turki, Islam Afrika Hitam, Islam anak benua India, dan Islam Cina. Peradaban Islam Arab Melayu (Asia Tenggara) memiliki ciri-ciri universial menyebabkan peradabannya sangat khas, yaitu tetap mempertahankan integralitasnya, tetapi tetap mempunyai unsur-unsur yang khas kawasannya. Hal ini karena sifat Islam yang dapat melebur dengan budaya-budaya lokal.\r\n\r\nDi Indonesia, kedatangan Islam menjadikan masyarakat Indonesia mengalami transformasi, yaitu yang tadinya agraris-feodal menjadi masyarakat kota (civilized). Tidak mengherankan jika nusantara menjadi maju dalam bidang perdagangan, terutama dengan bangsa-bangsa di Timur Tengah, seperti bangsa Arab, Persi dan India. Melalui para pedagang Muslim inilah Islam diperkenalkan kepada masyarakat Nusantara. Mereka secara perlahan dan bertahap memperkenalkan Islam yang toleran dan persamaan derajat. Hal ini tentu saja sangat menarik karena dalam masyarakat Hindu-Jawa justru lebih menekankan perbedaan derajat. Dalam jangka waktu yang tidak begitu lama Islam telah memberikan sumbangan peradaban yang besar di bumi Nusantara. Namun hal tersebut tidak berlangsung lama sejalan dengan masuknya para pedagang Barat (mula-mula Portugis, Spanyol, kemudian Belanda dan Inggris) yang menggunakan kekerasan untuk menaklukkan kerajaan-kerajaan Islam.\r\n\r\nBuku ini merupakan buku daras bagi mahasiswa Fakultas Ushuluddin dan Fakultas Adab di UIN/IAIN/PTIS. Buku ini perlu dimiliki oleh para guru dan dosen sejarah peradaban Islam. Fokus kajian buku ini lebih menekankan perkembangan peradaban Islam di Indonesia baik itu dalam politik, budaya, pendidikan, intelektual, dan lain-lain.', '2023-07-11 15:53:29', '2023-07-11 15:53:29'),
(4, 13, 'Psikologi Islam', 'img1689216936.jpg', '', 'Ibnu Sina', 'Hidup di dunia yang semakin bergerak cepat dan menuntut banyak hal seperti sekarang, kita menghadapi banyak sekali gangguan mental yang bermunculan sebagai respons atas kondisi yang terjadi.\r\n\r\nMisalnya ada gangguan kecemasan (anxiety), psikosomatis, dan banyak istilah lainnya yang menggambarkan tentang beragamnya kondisi jiwa atau mental manusia modern yang tidak baik-baik saja.\r\nMeski demikian, ini bukan hal baru. Sebab pada masa Ibnu Sina (980–1037 M) kita bisa mendapati ada orang yang mengidap skizofrenia.\r\n\r\nLuar biasanya, Ibnu Sina telah menemukan metode penyembuhannya.\r\n\r\nJika bukunya yang paling populer, al-Qânûn fî at-Thibb (Kanon Ilmu Kedokteran) dijadikan rujukan kedokteran dunia, maka kitab Ahwâl an-Nafs (Ragam Perilaku Jiwa) dan Tsalâts Rasâ`il fî an-Nafs (Tiga Risalah Tentang Jiwa) yang terjemahannya sedang Anda pegang ini, banyak dijadikan rujukan utama ilmu psikologi.\r\n\r\n\r\nDalam dua bukunya ini, Ibnu Sina menguraikan berbagai rumusan mendasar atas ragam masalah kesehatan mental.\r\n\r\nUlama serba bisa ini mengeksplorasi secara mendalam kondisi mental manusia, tidak hanya memotret gejala-gejalanya saja. Membaca buku yang ditulis hampir 1000 tahun lalu ini kita seakan dibimbing untuk mengenal diri sendiri dan orang lain di sekitar kita.\r\n\r\nMeski klasik, buku ini masih relevan dibaca kembali dan dijadikan rujukan dalam menjawab bermacam problem kesehatan mental masa kini.\r\n\r\nInilah buku referensi utama para pakar psikologi dunia.', '2023-07-11 15:55:36', '2023-07-11 15:55:36'),
(5, 6, 'Atomic Habits', 'img1689217125.jpg', '', 'James Clear', 'Orang mengira ketika Anda ingin mengubah hidup, Anda perlu memikirkan hal-hal besar. Namun pakar kebiasaan terkenal kelas dunia James Clear telah menemukan sebuah cara lain. Ia tahu bahwa perubahan nyata berasal dari efek gabungan ratusan keputusan kecildari mengerjakan dua push-up sehari, bangun lima menit lebih awal, sampai menahan sebentar hasrat untuk menelepon.\r\n\r\nIa menyebutnya atomic habits.\r\n\r\nIa menyingkap beberapa trik sederhana dalam hidup kita (seni Menumpuk Kebiasaan yang terlupakan, kekuatan tak terduga Aturan Dua Menit, atau trik untuk masuk ke dalam Zona Goldilocks), dan menggali ke dalam teori psikologi dan neurosains paling baru untuk menerangkan mengapa semua itu penting. Dalam rangka itu, ia menceritakan kisah-kisah inspiratif para peraih medali emas Olimpiade, para CEO terkemuka, dan ilmuwan-ilmuwan istimewa yang telah menggunakan sains tentang kebiasaan-kebiasaan kecil untuk tetap produktif, tetap termotivasi, dan bahagia.\r\n\r\nPerubahan-perubahan kecil ini akan mendatangkan pengaruh revolusioner pada karier Anda, hubungan pribadi Anda, dan hidup Anda.', '2023-07-11 15:58:45', '2023-07-11 15:58:45'),
(6, 12, 'Juara Pidato 3 Bahasa', 'img1689217136.jpg', '', 'Andi Holilulloh, S.Pd.I., M.A.', 'Buku Juara Pidato 3 Bahasa(Arab-Inggris-Indonesia) ini merupakan buku paling mudah untuk digunakan panduan bagi para siswa maupun santri dalam berlatih maupun berlomba pidato. Di dalam buku ini bukan hanya menyajikan beragam tema pidato saja, akan tetapi juga menyajikan berbagai macam teknik yang dapat digunakan ketika berpidato serta contoh teks Master Ceremony atau pembawa acara dalam tiga bahasa.\r\n\r\nBuku mahir pidato ini mendapat tanggapan antusias dari para siswa dan para santri karena meliputi tiga bahasa yaitu teks pidato bahasa Indonesia, teks pidato bahasa Inggris dan juga teks pidato bahasa Arab. Kiranya, buku ini sangat membantu siapa saja yang ingin berlatih pidato dan membantu, memenangkan lomba pidato.', '2023-07-11 15:58:56', '2023-07-11 15:58:56'),
(7, 11, 'Penaklukan Muslim Yang Mengubah Dunia', 'img1689217397.jpg', '', 'Hugh Kennedy', 'Belasan tahun setelah Nabi Muhammad wafat, kaum Muslim berhasil menaklukkan pusat-pusat peradaban Timur Dekat kuno: menggulingkan Kekaisaran Persia, sebuah kekuasaan regional yang besar; mempecundangi Byzantium menjadi negara “pinggiran”; dan mencabik-cabik wilayah Kekaisaran Roma yang amat luas. Dalam masa seratus tahun, pasukan Muslim bahkan sukses mengobrak-abrik kekuasaan Dinasti China Tang di kawasan timur, hingga menekuk Spanyol di wilayah barat.\r\n\r\nTak hanya di sektor militer, ekspansi Islam juga menguasai mata rantai niaga, budaya, agama, dan politik—yang telah berusia ribuan tahun—di kisaran pantai utara dan pantai selatan Mediterania. Dan untuk pertama kalinya dalam sejarah, kaum Muslim berhasil membangun kekuasaan politik atas dasar keimanan tunggal, yang melenyapkan eksistensi agama pribumi semisal Zoroasterianisme di Persia, Buddhisme di Asia Tengah, dan Hinduisme di banyak wilayah Lembah Industan.\r\n\r\nPenaklukan Muslim yang Mengubah Dunia adalah riwayat mengenai ekspansi terbesar Islam sepanjang sejarah. Buku ini menuturkan secara gamblang bagaimana bangsa Arab Muslim merengkuh kekuasaan secara mudah dan cepat, serta bagaimana Islam dengan segera menjadi agama yang dianut masyarakat dan bangsa taklukan. Ditulis berdasarkan riset yang teliti dan sumber rujukan yang tepercaya, buku ini merupakan jejak sejarah yang tak mungkin diabaikan oleh siapa pun, khususnya umat Islam.', '2023-07-11 16:03:17', '2023-07-11 16:03:17'),
(8, 14, 'Muhammad Al-Fatih #1', 'img1689217532.jpg', '', 'Handri Satria dan Sayf Muhammad Isa', 'Berawal dari padang rumput dl Asia Tengah, bangkitlah para kesatria Islam Turki Utsmani yang menyandang gelar Ghazi. Mereka menginspirasi umat Islam dan mengingatkan kembali pada janji Rasulullah untuk menaklukkan Konstantinopel. Sepak terjang mereka menggentarkan musuh-musuh Islam. Dari garis keturunan merekalah akan lahir seorang penakluk besar, Muhammad Al-Fatih. Kisah ini tentang jatuh dan bangkitnya Sultan Muhammad AI-Fatih, juga kegigihannya dalam berjuang mewujudkan janji Rasulullah, Penaklukan Konstantinopel.', '2023-07-11 16:05:32', '2023-07-11 16:05:32'),
(9, 14, 'Muhammad Al-Fatih #2', 'img1689217658.jpg', '', 'Handri Satria dan Sayf Muhammad Isa', 'Berawal dari padang rumput dl Asia Tengah, bangkitlah para kesatria Islam Turki Utsmani yang menyandang gelar Ghazi. Mereka menginspirasi umat Islam dan mengingatkan kembali pada janji Rasulullah untuk menaklukkan Konstantinopel. Sepak terjang mereka menggentarkan musuh-musuh Islam. Dari garis keturunan merekalah akan lahir seorang penakluk besar, Muhammad Al-Fatih. Kisah ini tentang jatuh dan bangkitnya Sultan Muhammad AI-Fatih, juga kegigihannya dalam berjuang mewujudkan janji Rasulullah, Penaklukan Konstantinopel.', '2023-07-11 16:07:38', '2023-07-11 16:07:38'),
(10, 14, 'Muhammad Al-Fatih #3', 'img1689217755.jpg', '', 'Handri Satria dan Sayf Muhammad Isa', 'Dan waktunya pun tiba. Setelah melakukan berbagai persiapan bersama pasukannya, kini saatnya Sultan Mehmet menunjukkan kekuatannya. Pangeran yang dipersiapkan oleh ayahnya sejak dini ini rnenjelma menjadi kuda hitam yang menghentak lawannya. Berhasilkah sultan yang dijuluki Al-Fatih ini mewujudkan mimpi banyak muslim saat itu? Bagaimana ia menyusun strategi untuk menaklukan Konstantinopel? Apakah ini akhir dari kisah sang penakluk imperium terbesar pada masanya itu ? Simak kisahnya dalam buku ini.', '2023-07-11 16:09:15', '2023-07-11 16:09:15'),
(11, 2, 'Rahasia Sehat Nabi Muhammad', 'img1689217795.jpg', '', 'dr. Muhammad Suwardi', 'Ada seorang manusia yang tidak pernah sakit selama hidupnya? Siapakah beliau? Beliau adalah junjungan kita, Muhammad Rasulullah saw. Pernah sekali saja beliau menderita demam hanya saat hendak wafat. Selain demam itu, Rasulullah benar-benar tidak pernah sakit.\r\nBenarkah Rasulullah tidak pernah sakit karena mukjizat sebagai seorang rasul? Tanpa adanya ikhtiar dari beliau?\r\nDengan konsep tersebut, berbagai penyakit pun menjadi enggan untuk menyerang. Apa rahasianya?', '2023-07-11 16:09:55', '2023-07-11 16:09:55'),
(12, 3, 'Kalkulus Jilid 1', 'img1689218027.jpg', '', 'Endang Dedy, M.Si, Encum Sumiaty, M.Si, Dr. Dadang Juandi, M.Si dan Dr. Kusnandi, M.Si', 'Kalkulus Jilid 1 berisi materi-materi yang menunjang perkuliahan kalkulus diferensial dan kalkulus integral. Materi yang dibahas meliputi sistem bilangan real, limit, asimtot, turunan, aplikasi diferensial, integral dan aplikasinya, serta barisan dan deret tak terhingga. Materi disajikan dalam 10 Bab dengan susunan yang sistematis sehingga sangat sesuai untuk dijadikan buku referensi dalam mata kuliah kalkulus diferensial dan kalkulus integral.\r\n\r\nIsi buku telah disesuaikan dengan silabus mata kuliah terkait. Penyajian dalam buku ini dibuat sesederhana mungkin namun tetap rinci dan detail agar mudah dipahami oleh mahasiswa. Pembahasan materi menekankan pada pemahaman konseptual, namun tetap disertai dengan contoh soal untuk menguji pemahaman mahasiswa serta menguji keterampilan perhitungan dan penerapan materi.', '2023-07-11 16:13:47', '2023-07-11 16:13:47'),
(13, 2, 'Para Shahabiyat Nabi', 'img1689218277.jpg', '', 'Dr. Abdul Hamid as-Suhaibani', 'Wanita adalah makhluk istimewa yang memiliki peran penting dalam kehidupan. Kemajuan dan kehancuran suatu umat banyak dipengaruhi oleh kaum wanita. Oleh karena itu, musuh-musuh islam akan berusaha merusak kaum wanita dengan berbagai cara, di antaranya menjauhkan mereka dari sejarah para pendahulunya, kaum wanita terbaik umat ini, sehingga mereka tidak lagi berkepribadian luhur, dan tidak lagi mengikuti jalan kemuliaan yang pernah ditempuh oleh para shahabiyat, kaum wanita terbaik umat ini.\r\n\r\nDari sini, maka mengenalkan para shahabiyat kepada mereka adalah suatu keniscayaan.\r\n\r\nDalam buku Para Shahabiyat Nabi ini, anda akan mendapatkan potret perjalanan hidup para shahabiyat Nabi Muhammad yang mulia, yang telah menyaksikan fajar dakwah islam dan ikut serta di dalamnya, mengibarkan panji-panji tauhid, membela kebenaran, dan berdiri teguh di sisi rasulullah untuk membela, menolong, dan mendukung beliau.\r\n\r\nAnda juga akan mendapatkan bagaimana keimanan meresap ke dalam hati mereka, sehingga mereka tetap tegar di jalan dakwah meskipun aral rintangan datang silih berganti, teguh membela kebenaran walaupun bahaya mengintai dari segala arah, berjuang demi islam walaupun harus mengorbankan hal yang paling berharga yang dimiliki, mengedapankan kenikmatan yang abadi daripada kenikmatan yang fana, dan lebih memilih keridhaan Allah daripada keridhaan manusia.\r\n\r\nDengan merujuk kepada sumber-sumber yang terpercaya, buku ini berhasil menggambarkan dengan baik tentang sikap-sikap perjuangan, pengorbanan, dan keteladanan kaum wanita generasi awal umat ini, yang senantiasa dikenang sepanjang sejarah dan menjadi kebanggan kaum wanita muslimah setelahnya.', '2023-07-11 16:17:57', '2023-07-11 16:17:57'),
(14, 15, 'Hamka : From A To Z', 'img1689218396.jpg', '', 'Emhaf', 'Haji Abdul Malik Karim Amrullah atau Buya HAMKA adalah ulama-pujangga genius yang pernah dimiliki bangsa Indonesia. Tak ada yang meragukan kegeniusan sosoknya yang berhasil menulis Tafsir Al-Azhar dalam penjara semasa rezim Sukarno. Bahkan, sosoknya layak disandingkan dengan deret filsuf besar dari Eropa. Mantan ketua MUI pertama (1977-1981) ini banyak menulis karya besar, baik dalam bentuk sastra Melayu maupun kitab-kitab, sehingga tahun 1959, Hamka mendapatkan gelar Doktor Honoris Causa dari Universitas Al-Azhar, Kairo, atas jasanya dalam syiar Islam dengan bahasa Melayu. Tahun 1974, dia memperoleh gelar kehormatan dari Universitas Nasional Malaysia di bidang kesusasteraan dan gelar profesor dari Universitas Prof. Dr. Moestopo. Saking banyaknya buku yang ditulisnya, ia disebut sebagai \"Hamzah Fansuri Era Modern\". Meskipun mempelajari filsafat secara otodidak, karya filsafatnya yang berjudul \"Falsafah Hidup\" layak diapresiasi dan cukup untuk mendaulatnya sebagai filsuf terbesar Nusantara di abad 20. Karya-karya Hamka dikenal dan menjadi perhatian umum, di antaranya Tafsir Al-Azhar, Tenggelamnya Kapal Van Der Wijck, Di Bawah Lindungan Ka\'bah, dan Merantau ke Deli.', '2023-07-11 16:19:56', '2023-07-11 16:19:56'),
(15, 2, 'Belajar Dari Kesehatan Nabi', 'img1689218719.jpg', '', 'Abdul Malik Al-Qasim', 'Maha Suci Allah, yang mengutus kepada kita Rasul yang mulia. Rasul, yang tatapan matanya penuh kasih sayang, yang curahan tenaga, fikiran, keringat, dan cucuran darahnya semata demi keselamatan kita. Hari-harinya, lahir batinnya, tertumpah demi membimbing kita semua. Ia memberikan petuah, nasihat, dan keteladanan yang sempurna, agar kita semua mengerti makna yang paling hakiki dari kehidupan ini.\r\n.\r\nSungguh, cinta kita kepada rasul adalah konsekuensi keimanan kita, yakni dengan bersungguh-sunguh mempelajari perilaku beliau, meneladaninya, dan sepenuh hati mengamalkan perintahnya serta menjauhi segala larangannya.\r\n.\r\nBerikut adalah ‘close up’ kehidupan keseharian Beliau Shallallahu ‘Alaihi wa Sallam, yang khas dan begitu menakjubkan. Ditulis dengan sangat rinci dan menekankan keteladanan, hingga memudahkan bagi siapa saja yang hendak mengambil uswah dari sang junjungan.', '2023-07-11 16:25:19', '2023-07-11 16:25:19'),
(16, 6, 'Change Your Bad Habit', 'img1689219312.png', '', 'Badrul Munir Buchori', 'Buku ini akan mengubah cara berpikir kita agar menjadi pribadi yang lebih baik, lebih berani bermimpi dan berani mewujudkan, optimis dalam menghadapi tantangan. Selain itu, dijelaskan pula bagaimana pengaruh lingkungan terhadap pembentukan kepribadian kita, peran orang lain, dan bagaimana menghadapi orang lain. Beberapa pembahasan lain yang ada dalam buku ini yaitu:\r\n• Bagaimana menjadi pribadi yang berkarakter kuat?\r\n• Bagaimana menjadi high quality person?\r\n• Bagaimana mendesain peta kehidupan kita?\r\n• Bagaimana menemukan passion kita?\r\n• Bagaimana cara mengubah kebiasaan buruk kita?\r\n• Bagaimana cara mendisiplinkan diri?\r\n• Bagaimana cara belajar dari orang-orang sukses?\r\n• Bagaimana menjadi seorang trendsetter?', '2023-07-11 16:35:12', '2023-07-11 16:35:12'),
(17, 2, 'Memahami Sains Modern', 'img1689219576.jpg', '', 'Nidhal Guessoum', 'Dengan lugas dan bernas, buku ini: menyajikan sejarah singkat sains, menunjukkan perkembangannya sampai ke bentuk “modern”; menjelaskan apa sebenarnya “sains modern” dan bagaimana cara kerjanya, berikut kritik terhadapnya; merangkum “seluruh sains (dasar) yang harus Anda ketahui” dan “apa yang belum diketahui”; membahas “apa kata Islam mengenai topik-topik ini” dan “Islam dan sains di masa depan kita”, dari Ledakan Besar dan evolusi sampai perubahan iklim dan rekayasa genetika, menunjukkan titik-titik gesekan dan bagaimana menyelesaikannya; menyuguhkan cara menghindari kesalahan/pernyataan keliru/hoaks dan perenungan tentang apa yang dibawakan sains kepada manusia dan mengapa sains harus peduli kepada agama. Tak kalah memikat, mula-mula dijabarkan kaidah-kaidah dasar literasi sains (apa yang perlu masyarakat ketahui/pahami mengenai sains)—bukan hanya sekumpulan fakta (berapa umur Bumi atau alam semesta, apa itu gen, dll.), walau mengetahui fakta itu penting. Yang juga penting dan bahkan lebih penting adalah memahami perbedaan antara fakta, hukum, teori, hipotesis, dan model sains; cara sains berfungsi, keterbatasan dan kekurangan sains, dan cara menilai informasi sains dari sumber yang kini kian beragam.', '2023-07-11 16:39:36', '2023-07-11 16:39:36'),
(19, 17, 'Masa Muda dan Kisah-Kisah Lainnya', 'img1689220052.jpg', '', 'Joseph Conrad', 'Ini hanya bisa terjadi di Inggris, tempat hidup orang-orangnya berkelindan dengan laut, bisa dikatakan begitu—laut merembesi hidup sebagian besar rakyatnya, dan mereka tahu sedikit-sedikit atau tahu banyak segala sesuatu soal laut, baik dalam segi keterpesonaan, pelayaran, atau mata pencaharian dari situ.\r\n\r\nJoseph Conrad, pengarang Polandia yang dianggap sebagai salah satu novelis berbahasa Inggris terhebat, melalui karya-karya sastranya sering kali menampilkan latar belakang kelautan, merefleksikan pengaruh karier awalnya dalam armada kapal niaga, dan penggambarannya atas gelora semangat manusia dalam dunia yang kejam dan acuh tak acuh akibat imperialisme dan kolonialisme Eropa.', '2023-07-11 16:47:32', '2023-07-11 16:47:32'),
(20, 6, 'Better Than Before', 'img1689220455.jpg', '', 'Gretchen Rubin', 'Menurut Gretchen Rubin dalam Better Than Before, ia dapat mengidentifikasi setiap pendekatan yang benar-benar berhasil. Dengan kemampuannya dalam mengobservasi dan menyusun cerita, Rubin menjawab pertanyaan-pertanyaan kompleks tentang kebiasaan. Rubin menemukan rahasia untuk mengubah kebiasaan yaitu yang pertama kita harus mengenal diri kita sendiri. Ketika kita ingin membentuk kebiasaan yang sesuai dengan diri kita, kita akan mencapai kesuksesan meskipun kita pernah gagal sebelumnya.\r\nPendekatan dari sebuah buku Self Help yang menekankan pada manfaat bagi pengembangan atau pengelolaan diri seseorang bisa dipetakan dari berbagai kutub pendekatan berikut ini: ilmiah vs praktis, umum/helicopter view vs detail. Bila dalam buku The Power of Habit, Duhigg mempesona kita dengan membawanya pada berbagai penelitian ilmiah terkait “Kebiasaan”, maka dalam buku ini, Rubin memberikan pendekatan yang berbeda. Dengan latar belakang seperti itu, kita bisa melihat pendekatannya yang detail dan praktis terhadap topik yang tengah ia geluti. Setelah bukunya terkait “Kebahagiaan” cukup sukses di pasar, maka “Kebiasaan” adalah topik berikutnya yang ia pilih karena menurutnya untuk mencapai kebahagiaan, orang perlu mengubah berbagai kebiasaan buruknya. Dari sana ia mencoba memformulasikan sebuah pemahaman yang dapat mempermudahnya dan para pembacanya tentunya mengenai berbagai tool dan pendekatan dalam membentuk sebuah kebiasaan baik dan meninggalkan kebiasaan yang buruk.', '2023-07-11 16:54:15', '2023-07-11 16:54:15'),
(21, 2, 'Lembaga Hidup', 'img1689220657.jpg', '', 'Prof. Dr. Hamka', 'Garis perjalanan hidup setiap manusia telah ditetapkan sejak dalam kandungan. Rejeki telah tersedia. Ajal telah tentu. Amal usaha telah terbentang. Inilah “Lembaga Hidup”. Tuangan yang berbentuk menurut barang-barang yang dicita-citakan akan tercipta setelah bahan-bahannya dituangkan ke dalamnya.\r\n\r\nMelalui buku ini, Buya Hamka mengajak kita untuk berikhtiar menuang lembaga hidup kita masing-masing dengan berbagai kewajiban sesuai tuntunan Islam dan tidak membiarkannya menjadi sebatas lembaga. “Marilah berusaha, moga-moga sesuailah usaha kita dengan ketentuan yang telah disediakan Tuhan buat kita,” nasihat Buya.\r\n\r\nDi buku ketiga seri Mutiara Falsafah Buya Hamka ini ragam kewajiban diuraikan, mulai kewajiban kepada diri pribadi, keluarga, masyarakat, ilmu pengetahuan, tanah air, politik, hingga harta benda. Dan, di atas semua itu, diuraikan juga kewajiban yang terpenting; kewajiban kepada Allah Swt.', '2023-07-11 16:57:37', '2023-07-11 16:57:37'),
(22, 2, 'Falsafah Hidup', 'img1689220852.jpg', '', 'Prof. Dr. Hamka', 'Lahir, berjuang, dan akhirnya mati. Demikianlah kita menjalani hidup. Melalui buku ini, Hamka menguraikan tentang rahasia kehidupan dan perilaku manusia. Akhirnya Buya sampai pada kesimpulan, “Islam memulangkan kekuasaan kepada Allah belaka, yang Esa di dalam kekuasaan-Nya. Itulah Tauhid, yang mengakui Tuhan hanya Satu. Setelah itu memandang manusia sama derajatnya. Tidak ada kelebihan si anu dan si fulan, semuanya sama di sisi Tuhan; kelebihan seorang diri yang lain hanyalah takwanya, budinya dan kecerdasan akalnya. Bukan karena pangkat atau harta kekayaan. Tangan si lemah dibimbing sehingga beroleh kekuatan. Diambil hak dari tangan yang kuat dan kuasa lalu dipindahkan kepada yang lemah, sehingga tegaklah perimbangan. Inilah hidup yang dikehendaki Islam. Inilah Falsafah Hidup yang kita kehendaki…”\r\n\r\nHidup seperti inilah yang menghasilkan ribuan orang mulia yang berguna di kehidupan dunia sampai akhirat. Dan, bila kita bisa mewujudkannya dalam kehidupan sehari-hari, kita akan menjadi “garam” dunia. Insya Allah.', '2023-07-11 17:00:52', '2023-07-11 17:00:52'),
(23, 2, 'Tasawuf Modern', 'img1689221093.jpg', '', 'Prof. Dr. Hamka', 'Buku ini tidak menguraikan tentang tasawuf, meski judulnya Tasawuf Modern. Buku ini tetap relevan, meski ditulis puluhan tahun yang lalu. Temanya tentang bahagia, topik yang tidak pernah selesai diperbincangkan, dan selalu ingin diwujudukan oleh siapa pun, di mana pun, dan dengan cara apa pun.\r\n\r\nDitulis oleh cendekiawan muslim berwawasan luas, dengan latar belakang sastrawan, menjadikan buku ini bukan saja kaya makna, tapi juga enak dibaca. Mari kita lihat salah satu uraiannya, “…Berbagailah yang timbul ketika memberi keputusan. Ada yang mengatakan baik, sebab sayang, ada yang mengatakan buruk, sebab benci. Berbagai ragam keputusan menurut pengalaman, ilmu, dan penyelidikan….bahagia dan celaka itu hanya berpusat kepada sanubari orang, bukan pada zat barang yang dilihat. Bagi kebanyakan orang, masuk bui menjadi kecelakaan dan kehinaan, bagi setengahnya pula, menjadi kemuliaan dan kebahagiaan.”\r\n\r\nSeringkali orang mencari bahagia dengan mengorbankan waktu, tenaga, keluarga, bahkan nyawa. Padahal, bahagia ada di dalam diri kita, dekat dengan kita.', '2023-07-11 17:04:53', '2023-07-11 17:04:53'),
(24, 6, 'Filosofi Teras', 'img1689222519.jpg', '', 'Henry Manampiring', 'Lebih dari 2.000 tahun lalu, sebuah mazhab filsafat menemukan akar masalah dan juga solusi dari banyak emosi negatif. Stoisisme, atau Filosofi Teras, adalah filsafat Yunani-Romawi kuno yang bisa membantu kita mengatasi emosi negatif dan menghasilkan mental yang tangguh dalam menghadapi naik-turunnya kehidupan. Jauh dari kesan filsafat sebagai topik berat dan mengawang-awang, Filosofi Teras justru bersifat praktis dan relevan dengan kehidupan Generasi Milenial dan Gen-Z masa kini.', '2023-07-11 17:28:39', '2023-07-11 17:28:39'),
(25, 11, 'Sirah Nabawiyah', 'img1689222741.jpg', '', 'Syaikh Shafiyyurrahman Al-Mubarakfuri', 'Perjalanan hidup Rasulullah, adalah lautan yang luas membentang, dengan kebeningan airnya yang kebiruan. Di sana tersimpan pesona alami nan abadi. Tiada mata yang bosan memandang. Tiada hati yang jemu menikmati. Tiada berhenti orang menyelami. Karena sosok beliau, adalah pesona sepanjang masa.\r\n\r\nBuku Sirah Nabawiyah ini mencoba menyajikan pesona-pesona itu. Sebagai buku yang berhasil meraih juara satu lomba karya tulis tentang sirah Rasulullah, yang diprakarsai Rabithah Al-Alam Al-lslami. Tidak mengherankan jika karya ini juga memiliki pesona tersendiri untuk dibaca dan dinikmati.', '2023-07-11 17:32:21', '2023-07-11 17:32:21'),
(26, 14, 'Khalid Bin Walid : Sang Pedang Allah', 'img1689222997.jpg', '', 'Handri Satria dan Sayf Muhammad Isa', '\"Bendera perang dibawa oleh Zaid, lalu ia berperang hingga syahid. Kemudian\r\nbendera diambil oleh Ja\'far, dan ia berperang hingga syahid. Setelah itu,bendera\r\nperang dibawa oleh pedang di antara pedang-pedangnya Allah\r\n(saifullah-yakni Khalid bin Walid-)\r\nhingga Allah memenangkan kaum muslimin.\"\r\n\r\nKhalid mengisahkan dahsyatnya Perang Mu\'tah dengan mengatakan,\"Sembilan\r\npedang di tanganku telah patah. Tidak tersisa kecuali pedang buatan Yaman.\"\r\n(HR.Bukhari,dalam Kitab Al-Maghazi,\r\nBab Ghazwatu Mu\'tah min Ardhi Syam:4017)', '2023-07-11 17:36:37', '2023-07-11 17:36:37'),
(27, 1, 'Tentang Kamu', 'img1689223485.jpg', '', 'Tere Liye', 'Terima kasih untuk kesempatan mengenalmu,\r\nitu adalah salah sat anugerah terbesar hidupku.\r\nCinta memang tidak perlu ditemukan,\r\ncintalah yang akan menemukan kita.\r\n\r\nTerima kasih. Nasihat lama itu benar sekali,\r\naku tidak akan menangis karena sesuatu telah berakhir,\r\n tapi aku akan tersenyum karena sesuatu itu pernah terjadi.\r\n\r\nMasa lalu. Rasa sakit. Masa depan. Mimpi-mimpi.\r\nSemua akan berlalu, seperti sungai yang mengalir.\r\nMaka biarlah hidupku mengalir\r\nseperti sungai kehidupan.', '2023-07-11 17:44:45', '2023-07-11 17:44:45'),
(28, 1, 'Dunia Sophie', 'img1689223751.jpg', '', 'Jostein Gaarder', 'Sophie, seorang pelajar sekolah menengah berusia empat belas tahun. Suatu hari sepulang sekolah, dia mendapat sebuah surat misterius yang hanya berisikan satu pertanyaan: “Siapa kamu?”\r\n\r\nBelum habis keheranannya, pada hari yang sama dia mendapat surat lain yang bertanya: “Dari manakah datangnya dunia?”\r\n\r\nSeakan tersentak dari rutinitas hidup sehari-hari, surat-surat itu mempuat Sophie mulai mempertanyakan soal-soal mendasar yang tak pernah dipikirkannya selama ini. Dia mulai belajar filsafat.', '2023-07-11 17:49:11', '2023-07-11 17:49:11'),
(29, 1, 'Negeri 5 Menara', 'img1689224135.jpg', '', 'A. Fuadi', 'Man Jadda Wajada, siapa yang sungguh-sungguh akan berhasil. Kalimat itu bukan hanya “mantra” dalam cerita novel Negeri 5 Menara. Kata-kata juga dimaknai seutuhnya selama pembuatan filmnya oleh mereka yang terlibat. Buku ini menyajikan rangkaian kisah di balik sorot kamera; keringat, air mata, juga tawa milik mereka yang telah bahu-membahu menciptakan sebuah karya layar lebar.Simak perjalanan yang meliputi serunya perburuan pemeran Sahibul Menara, upaya menembus Pondok Modern Gontor, hingga gerilya syuting di London. Kisah kisah di balik layar ini akan melengkapi dan menjadi kesaksian terwujudnya sebuah keyakinan: Man Jadda Wajada.', '2023-07-11 17:55:35', '2023-07-11 17:55:35'),
(30, 18, 'THE POWER OF IDEAS', 'img1689228803.jpg', '', 'BJ HABIBIE', 'Gagasan, pencerahan, dan kiat inspirasi Habibie telah banyak menginspirasi masyarakat dan bangsa, sekaligus memperlihatkan the power of ideas. Semuanya telah membentuk dan memperkaya peradaban bangsa. Kuncinya terletak pada semua gagasan yang pernah disampaikannya, bukanlah terbatas sebagai orasi dan catatan di atas kertas belaka, tetapi sudah dijalani, ditunjukkan, dan dibuktikannya.', '2023-07-11 19:13:23', '2023-07-11 19:13:23'),
(31, 1, 'KAHLIL GIBRAN Setitis Air Mata, Seulas Senyum', 'img1689229020.jpg', '', 'KAHLIL GIBRAN', 'Kahlil Gibran tidak berbicara tentang sesuatu yang muluk-muluk yang ada di awang-uwung, tapi ia berbicara tentang sesuatu yang mendasar dalam hidup, sesuatu yang sangat dekat dengan kehidupan kita sehari-hari, dan tak terpisahkan dari diri kita, seperti cinta dan rindu, kesedihan dan kebahagiaan, anak-anak, makanan dan minuman, kebebasan, persahabatan, keluarga, kasih sayang, laut, siang dan malam, keinginan, jodoh dan pernikahan, doa, nyanyian, juga tentang kehidupan dan kematian. Namun, Gibran mendedahkan kebijaksanaan dalam tema-tema kehidupan sehari-hari itu. Meskipun tema-tema yang dimiliki dan dirasakan seluruh manusia tersebut kuno, tapi Gibran mampu menghadirkan tema-tema itu menjadi terasa lebih segar dan kaya—sesuatu yang menginspirasi dan membuka cakrawala batin kita. Bagi Gibran, tidak ada cara tercepat dan ampuh untuk manusia meraih kebahagiaan dan kedamaian kecuali kemauan dan keberanian menyelami hati, jiwa, dan nalar sehatnya sendiri-sendiri. Setidaknya, syair-syair penyair berdarah Arab Lebanon ini menawarkan hal tersebut; mengajak kita berselancar ke relung-relung rahasia diri kita sendiri.', '2023-07-11 19:17:00', '2023-07-11 19:17:00'),
(32, 14, 'Doraemon 5', 'img1689229038.jpg', '', 'Fujiko. F. Fujio', NULL, '2023-07-11 19:17:18', '2023-07-11 19:17:18'),
(33, 1, 'Prodigy', 'img1689229256.jpg', '', 'Marie Lu', 'Setelah berhasil meloloskan diri dari eksekusi publik, Day yang ditemani oleh June lari ke Las Vegas. Mereka memerlukan bantuan Kelompok Patriot untuk menyembuhkan luka tembak di kaki Day, menemukan Eden, serta menyelundup ke Koloni. Sebagai balas budi, Day dan June harus membantu menyulut pemberontakan rakyat Republik dan membunuh Elector yang baru, Anden. June bersedia melakukan apa pun demi Day, namun instingnya mengatakan bahwa Anden tidaklah sekejam Elector sebelumnya dan rencana pembunuhan ini adalah sesuatu yang salah. Selain itu, ada yang mencurigakan dalam diri Razor, pemimpin Kelompok Patriot. June berusaha membuat Day sepaham dengannya, tapi Day sudah terlanjur digelapkan oleh amarah pada pemerintahan Republik.\r\nDalam dunia yang kacau balau ini, masing-masing pihak berpegang teguh pada apa yang mereka yakini.', '2023-07-11 19:20:56', '2023-07-11 19:20:56'),
(34, 6, 'Getting to YES', 'img1689229264.jpg', '', 'Rger Fisher, William Ury, dan Bruce Patton', 'Metode negosiasi langsung yang dapat diterapkan secara universal untuk berbagai perselisihan pribadi serta profesional tanpa merasa dimanfaatkan—dan menjadi marah Getting to YES menyajikan strategi yang ringkas, selangkah demi selangkah, dan terbukti untuk mencapai kesepakatan yang dapat diterima semua pihak dalam berbagai macam konflik—entah melibatkan orangtua dan anak, tetangga, atasan dan bawahan, pelanggan dan perusahaan, penyewa, atau diplomat. Berdasarkan hasil karya Harvard Negotiation Project, kelompok yang terus-menerus menangani negosiasi dan resolusi konflik pada segala tingkatan, mulai dari lingkup rumah tangga, bisnis, hingga internasional, Getting to YES memberitahu Anda cara untuk: • Memisahkan pribadi dari permasalahan; • Berfokus pada kepentingan, bukan posisi; • Bekerja sama menciptakan berbagai pilihan yang memuaskan kedua belah pihak; dan • Sukses bernegosiasi dengan orang yang lebh kuat, yang menolak untuk bermain sesuai aturan, atau yang menggunakan “trik-trik kotor”.', '2023-07-11 19:21:04', '2023-07-11 19:21:04'),
(35, 1, 'Champion', 'img1689229418.jpg', '', 'Marie Lu', 'Perang kembali pecah. Pihak Republik dan Koloni saling mencurigai satu sama lain sebagai dalang di balik penyebaran virus baru yang mematikan. Kali ini, Koloni berada di atas angin karena bersekutu dengan Afrika. Untuk bertahan, Republik harus menemukan vaksin dari virus tersebut, dan jawabannya ada dalam diri Eden, adik Day. Atas perintah Elector, June harus membujuk Day untuk menyerahkan satu-satunya keluarga yang dimiliki pemuda itu.\r\nSetelah semua penderitaan dan kehilangan yang mereka alami karena Republik, sanggupkah Day dan June memberikan pengorbanan yang lebih besar lagi untuk negara ini? Dan masih adakah secercah harapan bagi keduanya untuk menjalani hidup bahagia bersama?', '2023-07-11 19:23:38', '2023-07-11 19:23:38'),
(36, 5, 'Yang Muda Yang Kaya', 'img1689229430.jpg', '', 'Basuki Surodjo', 'Ada begitu banyak anak muda yang ingin jadi pengusaha. Sayangnya, masih ada di antara mereka yang mengalami berbagai kendala. Seperti mindset yang masih salah, yaitu menganggap pengusaha adalah profesi dan butuh modal besar untuk memulai usaha. Lewat buku ini, anggapan-anggapan di atas tadi bisa ditepis jauh. Kita akan sadar bahwa bisnis bukanlah profesi, tetapi tentang mindset. Pun, bisnis tidak perlu dimulai dari modal yang besar. Setelah itu, kita akan bisa memulai usaha sampai membuat branding usaha yang ciamik. Ketika semua itu bisa berjalan, kita dengan mudah merekrut tim yang sesuai kebutuhan dan membangun kerajaan bisnis yang sejalan.', '2023-07-11 19:23:50', '2023-07-11 19:23:50'),
(37, 2, 'SURAT KEPADA KANJENG NABI', 'img1689229659.jpg', '', 'Emha Ainun Nadjib', 'Di negeri kami ini, umatmu berjumlah terbanyak dari penduduknya. Di negeri ini, kami punya Muhammadiyah, punya NU, Persis, punya ulama-ulama dan MUI, ICMI, punya bank, punya HMI, PMII, IMM, Anshor, Pemuda Muhammadiyah, IPM, PII, pesantren-pesantren, sekolah-sekolah, kelompok-kelompok studi Islam intensif, yayasan-yayasan, mubalig-mubalig, budayawan, seniman, cendekiawan, dan apa saja.\r\n\r\nYang tak kami punya hanyalah kesediaan, keberanian, dan kerelaan yang sungguh-sungguh untuk mengikuti jejakmu.', '2023-07-11 19:27:39', '2023-07-11 19:27:39'),
(38, 2, 'Tidak. Jibril Tidak Pensiun!', 'img1689229934.jpg', '', 'Emha Ainun Nadjib', 'Cahaya Allah tidak berhenti memancar, ilmu Tuhan terus-menerus berseliweran. Muhammad tidak mati. Sungguh tidak mati. Hanya tubuh beliau yang dikuburkan—dan tubuh beliau adalah bagian yang paling remeh dari eksistensi kepribadiannya yang menyuluhi alam semesta. Wahyu itu sudah sempurna, tetapi belum selesai karena ia akan menemukan kelahiran dan kelahirannya kembali di dalam iman dan kesadaran umatnya.\r\n\r\nAnak-anak sering berkelakar, selepas kepergian nabi terakhir Rasulullah Saw., Jibril pun ikut pensiun. Tak ada lagi nabi yang perlu ia datangi untuk menyampaikan wahyu dari Allah Swt. Segala pengetahuan dasar yang perlu diketahui manusia telah ditanam benihnya di dalam Al-Quran.\r\n\r\nLalu, lama-kelamaan kita mengamini serta meyakininya dengan cara yang kebablasan: tak akan ada lagi wahyu yang datang. Manusia modern kemudian menutup rapat-rapat hatinya ketika merasakan sepercik hidayah. Mengunci jiwanya dari beberapa petunjuk rahasia keilahian. Orang-orang yang merasa tahu padahal sejatinya tak pernah mencari.', '2023-07-11 19:32:14', '2023-07-11 19:32:14'),
(39, 19, 'Pengabdian di pesisir pantai utara jawa', 'img1689230041.jpg', '', 'Sysilia Tanhati', 'Kekayaan indonesia diwarnai dengan beragam kearifn lokal dan semangat persatuan.\r\nTradisi yang tak pernah lekang oleh waktu menjadi saksi perjalanan dan transformasi bangsa ini', '2023-07-11 19:34:01', '2023-07-11 19:34:01'),
(40, 1, 'BALADA SI ROY: JOE', 'img1689230086.jpg', '', 'Gol A Gong', 'Roy mengayuh sepeda balapnya pelan-pelan. \"Ayo, Joe!\" seru Roy. Anjing herder itu menyalak kegirangan. Bulunya yang cokelat kehitaman berkilat. Gerak-geriknya melindungi majikannya dari bahaya. Roy memang selalu jadi pusat perhatian. Ke sekolah dengan sepeda balap dan anjing herder? Itu absurd. Sebuah objek sensasi. Lain waktu telinganya mendengar suara-suara centil, manja, genit, dan menggemaskan. Dia memang keren. Tubuhnya jangkung atletis. Tampan tapi tidak kolokan. Berbeda dari cowok kebanyakan. Senyumnya memang memabukkan, bandel, dan khas berandal. Roy mengalami segala problematika khas cowok; cinta, persahabatan, dan permusuhan. Tapi itu belum seberapa. Ketika rasa kehilangan yang pekat menghantam Roy, dia menghadapi tantangan terberat. Hanya terpuruk meratapi nasib, melarikan diri pada hal-hal terlarang, atau bangkit dan menjadi lelaki sejati?', '2023-07-11 19:34:46', '2023-07-11 19:34:46'),
(41, 20, 'PENUNTUN DIET', 'img1689230493.jpg', '', 'DR. Sunita Almatsier, M. Sc.', NULL, '2023-07-11 19:41:33', '2023-07-11 19:41:33'),
(42, 17, 'Kami Berkata', 'img1689231065.jpg', '', 'Gamatrium', 'Kisah tentang 31 Pemimpi\r\n\"Sebuah prolog tanpa epilog\".', '2023-07-11 19:51:05', '2023-07-11 19:51:05'),
(43, 1, 'FUNICULI FUNICULA', 'img1689231295.jpg', '', 'Tshikazu Kawaguchi', 'Di sebuah gang kecil di Tokyo, ada kafe tua yang bisa membawa pengunjungnya menjelajahi waktu.\r\nKeajaiban kafe itu menarik seorang wanita yang ingin memutar waktu untuk berbaikan dengan\r\nkekasihnya, seorang perawat yang ingin membaca surat yang tak sempat diberikan suaminya yang sakit,\r\nseorang kakak yang ingin menemui adiknya untuk terakhir kali, dan seorang ibu yang ingin bertemu\r\ndengan anak yang mungkin takkan pernah dikenalnya. Namun ada banyak peraturan yang harus diingat.\r\nSatu, mereka harus tetap duduk di kursi yang telah ditentukan. Dua, apa pun yang mereka lakukan di\r\nmasa yang didatangi takkan mengubah kenyataan di masa kini. Tiga, mereka harus menghabiskan kopi\r\nkhusus yang disajikan sebelum kopi itu dingin. Rentetan peraturan lainnya tak menghentikan orang-orang\r\nitu untuk menjelajahi waktu. Akan tetapi, jika kepergian mereka tak mengubah satu hal pun di masa kini,\r\nlayakkah semua itu dijalani?', '2023-07-11 19:54:55', '2023-07-11 19:54:55'),
(44, 6, 'Tentang Semua Yang Ada di Bumi', 'img1689231389.jpg', '', 'aesteuticc', 'Manusia sungguh makhluk yang lucu.\r\nBisa merasa takut kehilangan pada yang belum benar-benar miliknya.', '2023-07-11 19:56:29', '2023-07-11 19:56:29'),
(45, 1, 'HIJAB FOR SISTERS 4: \"JADI ANAK PESANTREN!\"', 'img1689231586.jpg', '', 'Triani Retno A', 'Lulus SMP, Tasya yang awalnya punya kehidupan bebas ala remaja ibu kota, resmi jadi anak pesantren! Pesantrennya sih tipe modern yang superluas dan superlengkap. Sayangnya, masuk ke sana tuh kayak memasuki luxurious jail. Kehidupan lamanya sebagai anak gaul kota sirna hanya dalam sekejap. Berganti dengan kehidupan asing yang menjadikannya serba teratur. Bahkan, kamarnya yang luas pun berubah jadi kamar sederhana yang harus dibagi dengan tiga santri lainnya. Astri, si anak barbar yang berisik dan suka manjat-manjat pohon. Dini, si anak kampung yang pintar tapi minderan. Dan Sarah, si bule Jerman yang kesasar. Bisa nggak sih Tasya bertahan di pesantren, menjalani kehidupan yang serba berbeda dari kebiasaannya? Terus, gimana dengan Astri, Dini, dan juga Sarah, saat menghadapi Tasya yang suka seenaknya sendiri?', '2023-07-11 19:59:46', '2023-07-11 19:59:46'),
(46, 6, 'Leadership Ilmu dan seni kepemimpinan', 'img1689231656.jpg', '', 'dr.H. Syamsul arifin, M.Pd', 'Buku ini dibuat untuk memenuhi kebutuhan mahasiswa dalam mempelajari mata kuliah Leadership yang merupakan salah satu mata kuliah elektif di beberapa fakultas Kedokteran, khususnya fakultas Kedokteran Universitas Lambung Mangkurat. Sampai saat ini referensi yang mendukung untuk mata kuliah ini masih terpisah dalam beberapa buku sehingga menyulitkan mahasiswa dalam belajar.\r\n\r\n\r\nBuku ini secara garis besar terdiri dari bab-bab yang memaparkan segi keilmuan dan bab-bab yang memaparkan seni dalam segi-segi praktis kepemimpinan. Di harapkan setelah mempelajari buku ini dapat dengan mudah menerapkan kepemimpinan dalam sebuah organisasi. Adapun yang dibahas di dalam buku ini antara lain:\r\n\r\n\r\n\r\nBab 1 Definisi pemimpin dan kepemimpinan \r\n\r\nBab 2 pemimpin formal, informal dan etika profesi Pemimpin \r\n\r\nBab 3 Pembentukan tim dan kaderisasi \r\n\r\nBab 4 Teori kepemimpinan \r\n\r\nBab 5 Pendekatan kepemimpinan \r\n\r\nBab 6 Tipe-tipe kepemimpinan \r\n\r\nBab 7 Koordinasi \r\n\r\nBab 8 Peranan pemimpin dan staf dalam manajemen \r\n\r\nBab 9 Wewenang dan pendelegasian wewenang \r\n\r\nBab 10 Komunikasi dalam kepemimpinan \r\n\r\nBab 11 Motivasi dalam kepemimpinan \r\n\r\nBab 12 Konflik dan pengelolaan konflik \r\n\r\nBab 13 Keputusan dan pengambilan keputusan', '2023-07-11 20:00:56', '2023-07-11 20:00:56'),
(47, 17, 'PATRICK KELLAN\'S MORAL CODE', 'img1689231737.jpg', '', 'Patrick Kellan', 'Biar ragamu saja yang mati, jiwamu tetap menjadi penasihat bumi lewat tulisan dari kehidupan yang kau amati.', '2023-07-11 20:02:17', '2023-07-11 20:02:17'),
(48, 6, 'Perbaiki diri, Perbarui Hati', 'img1689231869.jpg', '', 'A.R. Shohibul Ulum', 'Dalam menjalani kehidupan di dunia, manusia tidak akan pernah lepas dari salah dan dosa. Oleh sebab itulah, Allah Yang Maha Pengasih memberikan waktu bagi manusia untuk introspeksi dan mengoreksi diri sehingga menjadi pribadi yang baik. Diharapkan tidak akan timbul penyesalan kelak pada hari perhitungan.\r\n\r\nMuhasabah atau introspeksi, wajib dilakukan umat muslim. Buku ini mengajak kita untuk melakukan dan membiasakan diri melakukan muhasabah. Dengan melakukan muhasabah secara rutin, hati akan terjaga dari kelalaian, mulut terhindar dari mengucapkan keburukan, dan diri akan terpelihara dari segala maksiat dan kemungkaran, bahkan kita pun akan memperoleh banyak manfaat dari muhasabah.', '2023-07-11 20:04:29', '2023-07-11 20:04:29'),
(49, 1, 'PEREMPUAN YANG MENDAHULUI ZAMAN', 'img1689232233.jpg', '', 'Khairul Jasmi', 'Rangkayo Syekhah Rahmah El Yunusiyyah adalah ayam betina yang berkokok. Sejak belia, di zaman penjajahan, ia mendirikan sekolah muslimah pertama di Indonesia, Diniyyah Puteri. Tak terbeli. Ia adalah komandan TKR, pasukan yang menghadang Belanda. Punya pasukan intel. Rahmah selalu berkerudung. Ditangkap, didenda, dan ditahan Belanda. Melawan Jepang agar menutup semua rumah bordirdi Minangkabau. Menjemput perempuan-perempuan Minang yang diculik ke markas Jepang.\r\n\r\nRahmah, satu-satunya yang diberi gelar Syekhah oleh Universitas Al Azhar, Cairo, Mesir. Universitas ini, meniru Diniyyah Puteri. Rahmah mendahului Al Azhar. Rahmah mendahului zaman. Ia paling dulu mengibarkan Sang Merah Putih pada 1945 di Ranah Minang bahkan mungkin di Sumatera. Kini warisannya makin jaya, modern dan disukai banyak perguruan tinggi ternama di dunia.', '2023-07-11 20:10:33', '2023-07-11 20:10:33'),
(50, 2, 'Khutbah Jum\'at  Menuju Pribadi Taqwa', 'img1689232407.jpg', '', 'syaikh Hamid Ibnu Muhammad Al-abbadi', NULL, '2023-07-11 20:13:27', '2023-07-11 20:13:27'),
(51, 20, 'BREATH', 'img1689232448.jpg', '', 'James Nestor', 'Terlepas dari apa yang kita makan, seberapa banyak kita berolahraga, seberapa lenturnya gen kita, seberapa kurus atau belia atau kuatnya kitasemua itu hanya akan penting jika kita bernapas dengan benar. Beberapa cara bernapas akan memelihara otak, sementara beberapa lainnya akan mematikan sel saraf; beberapa akan membuat kita sehat, beberapa lainnya akan mempercepat kematian. Jurnalis James Nestor berkeliling dunia untuk mencari tahu apa yang salah dan berusaha memperbaikinya. Nestor melacak para pria dan wanita yang menjelajahi sains tersembunyi di balik praktik-praktik pernapasan kuno seperti Pranayama, Sudarshan Kriya, dan Tummo, dan bekerja sama dengan ahli paru-paru untuk menguji secara ilmiah keyakinan lama tentang cara kita bernapas. Penelitian modern menunjukkan kepada kita bahwa membuat sedikit penyesuaian pada cara kita menghirup dan mengembuskan napas dapat meningkatkan performa atletik; meremajakan organ dalam; menghentikan kebiasaan mendengkur, asma, dan penyakit autoimun; dan bahkan meluruskan tulang belakang yang menderita skoliosis. Tak satu pun dari ini sepertinya mungkin, namun memang begitu. Menggali ke ribuan tahun teks-teks medis dan studi-studi mutakhir terbaru dalam pulmonologi, psikologi, biokimia, dan fisiologi manusia, buku ini mengubah kearifan konvensional dari apa yang kita pikir kita ketahui tentang fungsi biologis paling dasar. Buku ini menjelajahi transformasi yang terjadi di dalam tubuh kita setiap 3,3 detikwaktu yang diperlukan oleh rata-rata manusia untuk menghirup dan mengembuskan napas. Buku ini menjelaskan bagaimana miliaran molekul yang Anda bawa masuk bersama setiap napas telah membangun tulang, selubung otot, darah, otak, dan organ-organ Anda, dan munculnya pengetahuan tentang bagaimana partikel-partikel mikroskopis ini akan memengaruhi kesehatan dan kebahagiaan Anda. Anda tidak akan pernah bernapas secara sama lagi.', '2023-07-11 20:14:08', '2023-07-11 20:14:08'),
(52, 15, 'DOKTER SOETOMO Jiwa Pergerakan yang Tak Pernah Padam', 'img1689232757.jpg', '', 'Anom Whani Wicaksana', 'Soetomo adalah tokoh yang hebat dalam pergerakan karena komitmennya untuk kemerdekaan bangsa Indonesia. Perjuangan, semangat, pemikiran, dan kepemimpinan Soetomo merupakan contoh dan inspirasi besar bagi kita. la sudah mengabdikan diri dalam bidang sosial dengan membangun rumah sakit, panti asuhan, rukun tani, lembaga kesehatan umum, bank desa, dan koperasi.\r\n\r\nNama Soetomo sudah muncul sejak menjadi ketua Boedi Oetomo, sebuah organisasi pergerakan yang didirikan pada tanggal 20 Mei 1908. Boedi Oetomo merupakan organisasi modern pertama di Indonesia yang menjadi pelopor kebangkitan nasional. Tujuannya untuk memajukan kehidupan bangsa Indonesia,\r\n\r\nSelamat membaca!', '2023-07-11 20:19:17', '2023-07-11 20:19:17'),
(53, 6, 'BERDAMAI DENGAN DIRI SENDIRI', 'img1689232873.jpg', '', 'Mutia Sayekti', 'Mengapa diri sendiri?\r\n\r\nSebab dia adalah musuh terhebat manusia. Dia terbilang sulit untuk dikalahkan. Seseorang yang belum selesai berurusan dengan dirinya sendiri, pastinya sulit untuk bisa peduli dan memberi manfaat untuk orang lain.\r\n\r\nTidak percaya?\r\n\r\nBanyak yang tidak menyadari bahwa konflik batin adalah permasalahan vital yang sering terabaikan. Sejauh mana diri kita bisa menerima diri sendiri, maka sejauh itulah kita bisa berdamai dengan kenyataan. Orang-orang yang sudah berdamai dengan diri sendirilah yang mampu menjalani kehidupan yang penuh tuntutan ini dengan lebih tenang.\r\n\r\nCoba telaah lagi dirimu sambil membaca buku ini, di sana ada banyak harta karun yang terkubur karena dirimu sendiri', '2023-07-11 20:21:13', '2023-07-11 20:21:13'),
(54, 22, 'Panduan pemasyarakatan UUD NRI Tahun 1945', 'img1689232998.jpg', '', 'SEKJEN MPR RI', NULL, '2023-07-11 20:23:18', '2023-07-11 20:23:18'),
(55, 1, 'A MONTH WITH APRIL-MAY', 'img1689233120.jpg', '', 'Edyth Bulbring', NULL, '2023-07-11 20:25:20', '2023-07-11 20:25:20');
INSERT INTO `books` (`id`, `category_id`, `title`, `thumbnail_url`, `pdf_url`, `author`, `synopsis`, `created_at`, `updated_at`) VALUES
(56, 20, 'Keajaiban Otak Kanan', 'img1689233238.jpg', '', 'Dr. Shigeo Haruyama', 'Tahukah Anda bahwa otak memegang peranan yang sangat penting bagi kesehatan kita? Meskipun ilmu kedokteran telah ada sejak dahulu kala, ternyata penjelasan tentang otak sangat terlambat. Karena itu pernyataan \"tidak akan berumur panjang apabila tidak menggunakan otak dengan baik\" pasti sangat memancing rasa ingin tahu kita. Kepandaian menggunakan otak ternyata sangat berkaitan erat dengan kesehatan dan usia yang panjang. Hal-hal penting yang perlu Anda ketahui dalam buku ini: 1. Otak kanan memiliki hubungan yang erat dengan bakat seseorang. 2. Anda bisa menggambarkan sesuatu di dalam kepala sebagai bentuk suatu latihan kegiatan apa pun. 3. Otak kanan bisa diaktifkan dengan 4 hal sederhana: berpikir positif, berolahraga, meditasi, dan makan makanan bergizi. 4. Emosi yang negatif menyebabkan sel kanker meningkat 5 kali lipat. 5. Olahraga yang terlalu ekstrem justru mempercepat kematian. 6. Terlalu banyak tidur malah berdampak buruk bagi tubuh. 7. Cara meditasi paling sederhana adalah memikirkan hal-hal yang menyenangkan. 8. Kebanyakan obat hanya meredakan gejala penyakit, bukan menyembuhkan penyakit. 9. Tiga manfaat utama berjalan kaki: membakar lemak, menguatkan otot, dan meditasi', '2023-07-11 20:27:18', '2023-07-11 20:27:18'),
(57, 2, '40 Virus Kebahagiaan Rumah Tangga', 'img1689233305.jpg', '', 'Asma\' Khalil dan Amir Syammakh', 'berisi persoalan-persoalan yang biasa muncul dalam kehidupan rumah tangga mulai dari persoalan yang terlihat sepele hingga masalah besar, yang dapat menjadi pemicu terjadinya konflik dalam rumah tangga. Selain itu juga dijelaskan solusi syar’I dari persoalan rumah tangga tersebut.', '2023-07-11 20:28:25', '2023-07-11 20:28:25'),
(58, 2, 'Menasihati tanpa Menggurui', 'img1689233392.png', '', 'MHD. ROIS ALMAUDUDY', 'Manusia sebagai makhluk sosial tidak akan bisa hidup sendirian. Maka tidaklah mungkin bagi kita untuk menghindari pergaulan. Betapa besar pengaruh pergaulan untuk membentuk kepribadian seseorang. Banyak orang menjadi baik karena pergaulan yang baik, begitupula sebaliknya.\r\n\r\nBuku Manasehati Tanpa Menggurui Seni Membangun Pergaulan Sehat Dan Asyik merangkum semua nasihat Rasullullah SAW. dalam menciptakan hubungan sejati maupun cara mengatasi setiap permasalahan didalamnya tanpa terlihat menggurui. Tiap bagian buku ini mencoba untuk menghimpun hikmah dan keteladanan sebagai bahan renungan, pengingat, inspirasi dan keteladanan praktis dalam membangun pergaulan yang sehat dan asyik.', '2023-07-11 20:29:52', '2023-07-11 20:29:52'),
(59, 2, 'Agar Bidadari Cemburu Padamu', 'img1689233543.jpg', '', 'Salim A. Fillah', 'Buku ini hadir untuk wanita yang ingin menghadirkan atmosfer surga dalam setiap hirup nafasnya. Yang muda maupun yang telah kaya pengalaman hidup. Yang sudah mendampingi dan didampingi, juga yang sedang menanti. Agar bidadari cemburu padamu.\r\n\r\nLalu para lelaki? Seharusnya mereka juga tahu bagaimana memeperlakukan wanita dengan keadilan syari’at Allah. Menjaga tanpa mengekang, menghormati kebebasan namun tetap melindungi, serta memberikan rasa aman. Ia menjadikan rusuk kiri. Dekat ke tangan untuk dilindungi, dekat ke hati untuk dicintai. Nah, buku ini insya Allah membantu kita, memahami ‘sang kawan perjalanan’.\r\n\r\nAda kata yang merangkum kesetaraan, prhatian, dan cinta!\r\n\r\nLaki-laki dan perempuan.\r\n\r\nSaling mengenal, saling memahami, saling Bantu, bergandeng tangan (ups!) saling menanggung, dan cekatan mendahulukan. Serasi….!\r\n\r\nLalu?\r\n\r\nHarusnya kau tahu.\r\n\r\nBidadari bisa cemburu.\r\n\r\nItu tantangan.\r\n\r\nUntuk mendekatkan sumbu potensi diri dengan nyala suci ruh keshalihan.\r\n\r\nAgar bidadari cemburu padamu?\r\n\r\nBukan dengan tebar pesona fisik tentu. Karena pasti muke’ lu jauh, he he he… Tak jua dengan memenjara diri antara dapur, kelambu, dan sumur; Karena Allah dan Rasul tak pernah bermaksud begitu', '2023-07-11 20:32:23', '2023-07-11 20:32:23'),
(60, 2, 'Muslim kok Nyebelin?', 'img1689233610.jpg', '', 'Satria Dharma', 'Di antara kita ada yang menjalankan syariat Islam sekadar “sami’na wa atha’na” tanpa tahu maksudnya. Mungkin tahu tetapi tidak paham. Fanatik buta tanpa makna. Hal itu ibarat iman tanpa ilmu, yang hanya akan menjadi bumerang; dapat melukai diri dan orang lain. Padahal banyak ayat dan hadis mengajak agar kita menggunakan akal sehat, agar dapat merenung dan mengamalkannya. Jadi, tidak sekadar ikut-ikutan.\r\n\r\nYuk buka hati dan pikiran, lalu tampilkan sosok Islam yang rahmat bagi semesta.', '2023-07-11 20:33:30', '2023-07-11 20:33:30'),
(61, 2, 'RECLAIM YOUR HEART', 'img1689233756.jpg', '', 'Yasmin Mogahed', 'Dunia itu seperti samudra, dan hati kita adalah kapal. Kalau kita biarkan air laut masuk, kapal kita akan karam. Demikianlah yang terjadi kalau kita bebaskan dunia merasuki hati kita.\r\n\r\nReclaim Your Heart membawa kita menempuh berbagai perjalanan—perjalanan hidup pribadi penulisnya, perjalanan Nabi Muhammad Saw., dan perjalanan Al-Qur’an—yang kesemuanya dapat kita refleksikan ke dalam perjalanan hidup kita sendiri. Ia menyoroti saat-saat naik-turunnya iman, saat-saat kita tertimpa nestapa dan mengalami kekecewaan, juga tentang keterikatan kita pada dunia.\r\n\r\nMelalui buku ini, Yasmin Mogahed mencoba menyentuh berbagai aspek kehidupan dengan terus mengingatkan akan tujuan dan makna-sejati hidup. Tak kalah penting, dia juga menyinggung tentang duka dan kepedihan hidup yang merupakan pelajaran dan tanda dari Allah untuk kita. Bukan itu saja, Yasmin Mogahed juga menunjukkan bahwaterdapat kasih sayang Allah di balik semua kepedihan itu, dan mengajak kita melihatnya melalui kacamata kesyukuran.\r\n\r\nDengan bab-bab yang singkat, Reclaim Your Heart memberi keleluasaan pembacanya melakukan refleksi, mendapatkan persepsi baru tentang hidup—duka, cinta, bahagia; persepsi baru yang akan menghindarkan kita dari tenggelam ke dalam jebakan pesona dunia.', '2023-07-11 20:35:56', '2023-07-11 20:35:56'),
(62, 22, 'The Power of Good corporate Governance', 'img1689233778.jpg', '', 'Muh. Arief Effendi', 'Good Corporate Governance (GCG) telah menjadi topik yang hangat dalam dunia bisnis awal abad ke 21 ini. Meski demikian, upaya membangun GCG tidak semudah membalikkan telapak tangan, tetapi memerlukan komitmen, konsistensi, dan kesungguhan dari berbagai pihak yang terkait, yaitu manajemen perusahaan, karyawan, komisaris, pemegang saham, pihak regulator (pemerintah) serta stakeholder lainnya.\r\n\r\nBuku yang berjudul “The Power of Good Corporate Governance: Teori & Implementasi” ini membahas mengenai konsep GCG dan upaya implementasi GCG dengan dilengkapi beberapa contoh di Badan Usaha Milik Negara (BUMN), perbankan dan perusahaan publik. Buku yang ditulis oleh seorang praktisi sekaligus akademisi ini disusun secara sistematis yang menyeimbangkan antara teori dan implementasi.\r\n\r\nDengan implementasi prinsip-prinsip GCG secara konsisten dan konsekuen maka diharapkan perusahaan akan memperoleh manfaat menjadi Sustainability Company dalam wujud triple bottom line atau 3P (Profit, People & Planet).', '2023-07-11 20:36:18', '2023-07-11 20:36:18'),
(63, 23, 'AKU DALAM BUDAYA', 'img1689233897.jpg', '', 'Dr. Toeti Heraty Noerhadi', NULL, '2023-07-11 20:38:17', '2023-07-11 20:38:17'),
(64, 5, 'MAKE IT HAPPEN!', 'img1689234033.jpg', '', 'Prita Hapsari Ghozie', 'Pernah bermimpi ingin...\r\n*Memiliki rumah yang indah tempat berkumpulnya keluarga?\r\n* Memiliki kendaraan sehingga tidak perlu repot berpindah tempat ke sana kemari?\r\n* Melihat anak-anak tumbuh bahagia dan mengantarkan mereka menjadi the best that they can be tanpa mengkhawatirkan dana pendidikannya?\r\n* Hidup nyaman dan meraih kebebasan finansial meski sudah tidak lagi bekerja?\r\n... tapi saat ini masih bisa memiliki kehidupan sosial yang menyenangkan.\r\n\r\nMake It Happen! Buku ini berisi tahapan-tahapan dalam perencanaan keuangan untuk mewujudkan berbagai mimpi Anda. Dirangkum dalam ilustrasi yang sangat menarik dan bahasa yang membumi, buku ini dapat menjadi panduan bagi siapa saja.\r\n\r\nTidak ketinggalan, Anda bisa temukan rajutan kisah inspiratif para sahabat Prita: Merry Riana, Moza Pramita, dan Ria Hanin \"Coffee Toffe\" di buku ini.\r\n\r\nBuku yang bukan hanya ditulis untuk menginspirasi Anda meraih mimpi, tapi juga menjadikan kehidupan Anda lebih baik dan sejahtera.', '2023-07-11 20:40:33', '2023-07-11 20:40:33'),
(65, 6, 'Menuju Pendidikan Berkualitas', 'img1689234054.png', '', 'Maisiswati', NULL, '2023-07-11 20:40:54', '2023-07-11 20:40:54'),
(66, 2, 'Pelajaran Tajwid', 'img1689234180.jpg', '', 'KH. Imam Zarkasyi', NULL, '2023-07-11 20:43:00', '2023-07-11 20:43:00'),
(67, 6, 'BECAME AN EXCELLENT PRINCIPAL', 'img1689234211.jpg', '', 'Dr. Fahruddin, M. Si.', 'Dalam buku ini terpapar pengalaman-pengalaman Penulis ketika dipercaya oleh Chairul Tanjung mengelola SMA Unggulan Chairul Tanjung (UCTF). Penulis tidak memiliki pengalaman sama sekali dalam mengelola sekolah yang terpaksa dipelajarinya secara autodidak dan dilakukan dari nol dengan kerja sama tim yang saling bersinergis. Setiap hari, Penulis berpikir keras untuk melakukan suatu terobosan “Apa lagi yang harus saya lakukan untuk sekolah ini?”\r\n\r\nCita-cita luhur dari CTF untuk jangka panjang adalah sebagai pilot project dan membangun citra “orang miskin pun bisa berprestasi”, dan menjadikan SMA UCTF sebagai sekolah unggulan yang diperhitungkan baik tingkat nasional maupun tingkat internasional.\r\n\r\nCT Foundation memberikan bantuan beasiswa penuh hingga masuk perguruan tinggi bagi anak yang berasal dari keluarga miskin tapi memiliki kecerdasan istimewa.', '2023-07-11 20:43:31', '2023-07-11 20:43:31'),
(68, 1, 'Bidadari Bidadari Surga', 'img1689234394.jpg', '', 'Tere Liye', NULL, '2023-07-11 20:46:34', '2023-07-11 20:46:34'),
(69, 1, 'Kakak Batik', 'img1689234526.jpg', '', 'Kak Seto', 'Mimpiku untuk jadi dokter harus kandas setelah dua kali tidak lulus ujian masuk fakultas kedokteran. Mimpi hidup enak di Jakarta, kenyataannya harus rela kerja serabutan dan hidup menumpang orang. Mimpi tentang gadis itu, harus puas dengan bertepuk sebelah tangan. Jalan impian di depanku sepertinya memang tidak lurus. Selalu ada saja tikungan. Dan, melenceng dari apa yang kita impikan mungkin tidak terlalu buruk? Di tengah kesulitanku, tikungan jalan itu mulai terlihat. Sosok itu menggiringku pada apa yang kuraih hari ini. Mengenalkanku pada dunia baru. Pertemuan itu, senyum anak-anak itu mengubah jalan hidupku.', '2023-07-11 20:48:46', '2023-07-11 20:48:46'),
(71, 17, 'SECANGKIR TEH HANGAT', 'img1689301109.jpg', '', 'Safwan Hadi', 'Air dalam secangkir teh hangat memang terasa sangat nikmat. Tapi perjalanan air itu mungkin tidak sederhana. Air itu mungkin telah melewati berbagai samudra dan sungai di seluruh dunia, menjadi saksi semua kehidupan di dunia ini. Teh juga merupakan wujud dari kerja keras buruh di kebun dan pabrik teh, lalu perjuangan keras para manusia yang memasarkannya dari pabrik, pasar, hingga akhirnya ada di meja kita. Seluruh semesta saling\r\n\r\nbekerja sama dengan penuh kasih menghidangkan secangkir teh hangat untuk kita.', '2023-07-12 22:18:29', '2023-07-12 22:18:29'),
(72, 15, 'AYAHKU', 'img1689301242.jpg', '', 'Hamka', 'Di balik sosok besar ada orang besar di belakangnya. Patutlah ungkapan ini kita sematkan pada dua sosok ternama negeri ini—anak dan ayah yaitu Hamka dan Haji Abdul Karim Amrullah. Hamka dikenal harum karena buku-buku karyanya yang melegenda hingga ke mancanegara terutama negeri jiran. Begitu pun kiprahnya dalam dakwah organisasi perpolitikan dan negara. Namun khusus dalam buku Ayahku ini kita bisa melihat bagaimana seorang Hamka mendedikasikan diri untuk meneropong riwayat sosok laki-laki yang begitu Hamka kagumi banggakan dan cintai. Beliau adalah sosok ayah tercinta Haji Abdul Karim Amrullah atau kerap juga disapa Haji Rasul.\r\n\r\n\r\nAyahku menyoroti tentang sosok Haji Abdul Karim Amrullah baik sebagai pribadi dengan watak dan kekhasan yang melekat maupun kiprah dan perjuangannya sebagai ulama pendidik dan salah satu pelopor penyebaran Islam cara baru (modern) di Minangkabau khususnya bahkan gaungnya menyebar hingga ke seluruh penjuru negeri. Beliau adalah sosok ulama karismatik cerdas pemberani jujur loyal sederhana dan kukuh dengan pendirian. Kecintaan dan kepeduliannya terhadap tegaknya agama dan kejayaan umat Islam membuat beliau rela mengorbankan segalanya demi sebuah prinsip yang beliau yakini yakni hidup berdasarkan Kitabullah dan Sunnah Rasulullah saw..', '2023-07-12 22:20:42', '2023-07-12 22:20:42'),
(73, 6, 'Hidup Apa Adanya', 'img1689301473.jpg', '', 'Kim Suhyun', 'HIDUP APA ADANYA membuka pikiran kita bahwa apa pun penilaian dan pendapat orang lain tidak akan memberikan pengaruh pada kehidupan kita, terutama tentang kebahagiaan. Menjadi diri sendiri dan menerima keadaan sesuai dengan porsi yang sesungguhnya akan membuat kita mensyukuri\r\nsegala hal yang ada di hidup ini, sekecil apa pun itu.\r\n\r\nTemukan serangkaian to-do-list menjalani hidup penuh percaya diri melalui buku yang telah dicetak ulang lebih dari 200 kali ini serta terjual lebih dari 800.000 eksemplar di Korea Selatan dan lebih dari 700.000 eksemplar di Jepang.', '2023-07-12 22:24:33', '2023-07-12 22:24:33'),
(74, 14, 'Next G: Lewat Tengah Malam', 'img1689301824.jpg', '', 'Donella Clairine Aurellia Hariadi, dkk.', 'Meski penakut, Lia tetap suka nonton film horor. Apalagi saat libur gini, Lia bisa nonton sepuasnya. Saking serunya, Lia enggak sadar kalau sudah lewat tengah malam. Dan anehnya, suasana rumah tiba-tiba berubah mencekam. Lia pun mulai mengalami kejadian menyeramkan.', '2023-07-12 22:30:24', '2023-07-12 22:30:24'),
(75, 20, 'Kesehatan Reproduksi remaja', 'img1689302266.jpg', '', 'Prof. dr. Hadi Pratomo, M.P.H., DKK', 'Remaja merupakan individu maupun kelompok berperan sangat penting dalam perkembangan dan pembangunan bangsa Indonesia mendatang. Saat ini kesehatan reproduksi remaja merupakan salah satu isu utama   kesehatan yang perlu memperoleh perhatian. Oleh karena itu, materi terkait kesehatan reproduksi menjadi bidang ilmu pengetahuan yang kompleks untuk dibahas dalam sebuah buku teks pembelajaran yang tepat dan sistematik.\r\n\r\nBuku teks Kesehatan Reproduksi Remaja: Teori dan Program Pelayanan di Indonesia ini membahas teori dan konsep kesehatan reproduksi remaja secara komprehensif dan runut. Konsep kesehatan reproduksi remaja dimulai dengan pengertian tentang remaja, ciri umum remaja, perkembangan fisik, psiko-sosial, tugas perkembangan, teori dan aspek legal terkait di Indonesia. Uraian diperluas dengan profil kesehatan kawula muda (10-24 tahun), masalah terkait remaja yaitu Kehamilan Tidak Diinginkan (KTD), aborsi, penyalahgunaan narkotika, psikotropika dan zat adiktif lainnya (NAPZA), merokok, HIV/AIDS, serta kekerasan pada remaja.\r\n\r\nAspek kesehatan reproduksi remaja disabilitas dan kronologi perkembangannya di Indonesia diulas khusus. Kenapa bidang ini terabaikan, bidang apa saja yang semestinya harus ramah pada disabilitas, kerangka kerja, panduan inklusi untuk membangun kebijakan dan program yang ramah disabilitas dikupas. Disertakan juga 10 pesan kunci untuk meningkatkan kesadaran tentang disabilitas. Buku ini juga menyoroti materi terkait pendidikan seksual reproduksi dalam sistem pendidikan di sekolah, pengertian, justifikasi, hambatan penerapan, kemungkinan platform digital serta materi yang telah disepakati Kepmendikbud, Kemenag dan Kepmenkes di Indonesia. Bagian akhir membahas prinsip perencanaan dan pengembangan Pelayanan Kesehatan Peduli Remaja (PKPR), kerangka kerja, panduan konsep, intervensi utama dan tatanannya, kerangka kerja, indikator, hambatan pelayanan, contoh penerapan konsep di Puskesmas maupun tingkat Dinas Kesehatan diuraikan.\r\n\r\nMengingat terbatasnya referensi serupa yang berbahasa Indonesia buku ini hadir untuk memenuhi kebutuhan buku teks terkait kesehatan reproduksi remaja di Indonesia. Buku ini sangat dianjurkan sebagai salah satu pedoman materi dan referensi terkini terkait kesehatan reproduksi remaja, bagi mahasiswa dan pengajar/ dosen di institusi pendidikan tinggi kesehatan, kesehatan masyarakat, kebidanan, dan keperawatan.', '2023-07-12 22:37:46', '2023-07-13 02:17:24'),
(76, 2, 'OTW HIJRAH', 'img1689302338.jpg', '', 'Jee Luvina', 'Saya belum siap, saya masih ragu, atau saya mau berubah sedikit demi sedikit saja.\r\nAda begitu banyak situasi yang membuat seseorang menampik niat hijrah yang terbersit di hatinya, menunda hijrah sampai waktu yang tepat baginya sendiri.\r\n\r\nPadahal, hidayah tidak datang pada sembarang orang, ia datang pada yang dikehendaki-Nya.\r\nOleh sebab itu, kau pasti terpilih, Allah memilihmu, mengajakmu untuk kembali pada-Nya.\r\n\r\nJemput hidayah itu dengan tangan terbuka, rengkuh ia atas nama Allah. Hijrahlah, meskipun kau telah lupa caranya berbuat baik. Hijrahlah, meskipun kau telah lupa cara beribadah. Dan hijrahlah, meskipun telah lama kau tak menyebut nama-Nya.Allah masih memberimu kesempatan untuk menebus segala kesalahamu dengan hijrah, bertobat.Bersegeralah, sekarang adalah waktumu.', '2023-07-12 22:38:58', '2023-07-12 22:38:58'),
(77, 2, 'OTW ISTIQOMAH', 'img1689302489.jpg', '', 'Jee Luvina', 'Istiqamah dalam menjalankan perintah Allah dan menjauhkan diri dari larangan-Nya sulit dilakukan oleh sebagian umat Muslim. Godaan yang terus-menerus menerpa, menjadikan setiap insan luput dari resolusi istiqamahnya. Padahal tidak banyak yang menyadari, Allah Swt. menjanjikan Surga bagi hambanya yang beristiqamah, meneguhkan pendiriannya di jalan Allah.\r\n\r\n\r\n\r\nSesungguhnya orang-orang yang mengatakan: “Tuhan kami ialah Allah” kemudian mereka meneguhkan pendirian mereka, maka malaikat akan turun kepada mereka dengan mengatakan: “Janganlah kamu takut dan janganlah merasa sedih; dan gembirakanlah mereka dengan jannah yang telah dijanjikan Allah kepadamu”. (QS Fushshilat [41] : 30)\r\n\r\n\r\n\r\nKabar gembira itu haruslah kita sambut bersama. Mari teguhkan diri pada resolusi Istiqamah kepada Allah. Dimulai dari hal kecil seperti istiqamah bersedekah secara rutin, walau sedikit asalkan istiqamah. Begitu juga dengan amalan-amalan lain. Mau tahu apa saja\r\n\r\nyang bisa sahabat lakukan untuk menjadi diri yang Istiqamah?\r\n\r\n\r\n\r\nBersama Jee Luvina mari kita bersama-sama menjadi insan yang Istiqamah.', '2023-07-12 22:41:29', '2023-07-12 22:41:29'),
(78, 2, 'OTW ISTIQOMAH', 'img1689302494.jpg', '', 'Jee Luvina', 'Istiqamah dalam menjalankan perintah Allah dan menjauhkan diri dari larangan-Nya sulit dilakukan oleh sebagian umat Muslim. Godaan yang terus-menerus menerpa, menjadikan setiap insan luput dari resolusi istiqamahnya. Padahal tidak banyak yang menyadari, Allah Swt. menjanjikan Surga bagi hambanya yang beristiqamah, meneguhkan pendiriannya di jalan Allah.\r\n\r\n\r\n\r\nSesungguhnya orang-orang yang mengatakan: “Tuhan kami ialah Allah” kemudian mereka meneguhkan pendirian mereka, maka malaikat akan turun kepada mereka dengan mengatakan: “Janganlah kamu takut dan janganlah merasa sedih; dan gembirakanlah mereka dengan jannah yang telah dijanjikan Allah kepadamu”. (QS Fushshilat [41] : 30)\r\n\r\n\r\n\r\nKabar gembira itu haruslah kita sambut bersama. Mari teguhkan diri pada resolusi Istiqamah kepada Allah. Dimulai dari hal kecil seperti istiqamah bersedekah secara rutin, walau sedikit asalkan istiqamah. Begitu juga dengan amalan-amalan lain. Mau tahu apa saja\r\n\r\nyang bisa sahabat lakukan untuk menjadi diri yang Istiqamah?\r\n\r\n\r\n\r\nBersama Jee Luvina mari kita bersama-sama menjadi insan yang Istiqamah.', '2023-07-12 22:41:34', '2023-07-12 22:41:34'),
(79, 2, 'OTW HALAL', 'img1689302573.jpg', '', 'Jee Luvina', 'Jomlo adalah bentuk ketaatan kepada Allah untuk tidak berpacaran sebelum menikah. Tidak sedikit orang-orang yang pernah terjerumus dengan berpacaran kemudian menyesali keputusannya tersebut. Mereka yang menyesal pun menemukan jalan hijrahnya dan menyadari tentang kebenaran Islam yang hakiki.\r\n\r\nBanyak kebaikan yang bisa kita lakukan dalam masa penantian. Namun, iblis tak pernah berhenti memberikan muslihat agar manusia terperangkap dalam lembah dosa pacaran. Jangan sampai kamu menjadi salah satu orang yang terperangkap itu.\r\n\r\nLantas, bagaimana caranya meneguhkan hati agar sabar dalam penantian jodoh yang telah Allah siapkan?\r\n\r\nBuku ini akan meyakinkanmu dalam penantian yang diridhai-Nya. Tak hanya itu, dalam buku ini juga terdapat kisah-kisah inspiratif dari mereka yang pernah terjerat dengan berpacaran lalu mendapat hidayah dan menemukan jalan hijrahnya. Semoga, hikmah dari kisah mereka akan menambah keyakinanmu untuk jadi Jomblo Sampai Halal. Selamat membaca!', '2023-07-12 22:42:53', '2023-07-12 22:42:53'),
(80, 1, 'RINDU YANG BAIK UNTUK KISAH YANG PELIK', 'img1689302786.jpg', '', 'Boy Candra', '“Apa hal terburuk dari jatuh cinta?”\r\n\r\n“Orang yang kamu cintai tidak pernah tahu perasaan itu.”\r\n\r\n***\r\n\r\nAku bahkan tidak pernah mengatakan kepadamu bahwa sejujurnya aku tidak ingin kamu pergi. Perasaan kehilangan ini tak pernah kuingini. Berat? Pasti. Tapi, aku tahu, hidup terus berjalan. Dunia masih akan terus berputar. Mungkin kau juga sedang mengingatku di sana. Serupa ingatanku untukmu yang terus ada. Mungkin kau tak lagi menjaga segalanya—meski di sini masih kupeluk harapan itu dengan sekuatnya.', '2023-07-12 22:46:26', '2023-07-12 22:46:26'),
(81, 15, 'MANTAPPU JIWA', 'img1689302934.jpg', '', 'Jerome Polin Sijabat', '“Jadi ini buku latihan soal matematika ya, Jer?”\r\n\r\nBukan!\r\n\r\nKata orang, selama masih hidup, manusia akan terus menghadapi masalah demi masalah. Dan itulah yang akan kuceritakan dalam buku ini, yaitu bagaimana aku menghadapi setiap persoalan di dalam hidupku. Dimulai dari aku yang lahir dekat dengan hari meletusnya kerusuhan di tahun 1998, bagaimana keluargaku berusaha menyekolahkanku dengan kondisi ekonomi yang terbatas, sampai pada akhirnya aku berhasil mendapatkan beasiswa penuh S1 di Jepang.\r\n\r\nManusia tidak akan pernah lepas dari masalah kehidupan, betul. Tapi buku ini tidak hanya berisi cerita sedih dan keluhan ini-itu. Ini adalah catatan perjuanganku sebagai Jerome Polin Sijabat, pelajar Indonesia di Jepang yang iseng memulai petualangan di You Tube lewat channel Nihongo Mantappu.\r\n\r\nYuk, naik roller coaster di kehidupanku yang penuh dengan kalkulasi seperti matematika.\r\n\r\nIt may not gonna be super fun, but I promise it would worth the ride.\r\n\r\nMinasan, let’s go, MANTAPPU JIWA!', '2023-07-12 22:48:54', '2023-07-12 22:48:54'),
(82, 2, 'Beyond The Inspiration', 'img1689303078.jpg', '', 'Felix Y. Siauw', 'Pernahkah Anda bertanya kepada diri Anda sendiri ataupun kepada orang lain, kenapa di satu sisi Islam diklaim sebagai agama yang sempurna dan rahmatan lil alamin namun penampakkan justru sebaliknya?\r\n\r\nSepertinya ummat muslim telah terbiasa mempelajari Islam hanya dari segi What & How saja. Apa & Bagaimana. Sehingga lahirlah dari kebiasaan semacam ini yang sangat mengetahui apa itu Islam, bagaimana Islam bekerja. Tetapi walaupun mereka mengetahui semua itu, tetap saja kewajiban-kewajiban yang mereka ketahui itu dilalaikan.\r\n\r\nPadahal selain What & How, ada sesuatu pertanyaan lain yang perlu ditanyakan oleh kaum muslim. Why?. Pertanyaan Why inilah yang akan memberikan inspirasi, motivasi dan alasan bagi seorang muslim untuk mengetahui sebab peradaban Islam yang tinggi yang pernah dibangun rasulullah saw dan para shahabat, yang dilanjutkan oleh para khalifah setelahnya dan panglima perang semacam Khalid bin Walid, Saad bin abi Waqqash, Thariq bin Ziyad dan Muhammad al-Fatih. Merekalah yang menjadikan Islam lebih dari sekedar inspirasi.\r\n\r\nWalhasil, Why Islam?', '2023-07-12 22:51:18', '2023-07-12 22:51:18'),
(83, 1, 'Merindu Baginda Nabi', 'img1689303247.jpg', '', 'Habiburrahman El Shirasy', 'Awan putih yang bergerombol itu seumpama kumpulan jutaan malaikat yang sedang berzikir dalam diam. Gadis berjilbab merah marun itu menyeka air matanya sambil memandang ke luar jendela pesawat yang dinaikinya. Ada kerinduan yang menggelegak dan membara dalam dadanya. Kerinduan kepada Baginda Nabi, menyatu dengan kerinduan kepada abah dan umminya, serta teman-temannya, anak-anak yatim di Darus Sakinah sana.Diam-diam ia merasa iri dengan abahnya. Bagaimana abahnya bisa memiliki rasa rindu sedemikian dalam kepada Baginda Nabi Saw.. Ia berharap suatu saat juga memiliki rasa rindu seperti itu. Rasa rindu nan dahsyat yang hanya dikaruniakan oleh Allah kepada hamba-hamba terpilih.', '2023-07-12 22:54:07', '2023-07-12 22:54:07'),
(84, 6, 'EVERYONE CAN LEAD', 'img1689303408.png', '', 'Hasnul Suhaimi', 'Sejak menjabat sebagai CEO di sebuah perusahaan telekomunikasi, Hasnul terus menunjukkan gebrakan mengejutkan. Ia memangkas tarif telepon seluler menjadi Rp100/menit, menjadikan perusahan tersebut sebagai bagian dari tren anak muda, dan melejitkan marjin keuntungan perusahaan.\r\n\r\nBanyak yang menyangka bahwa keberhasilannya itu berkat \"tangan besinya\" yang kokoh. Namun ternyata, orang-orang di sekeliling Hasnul membuktikan bahwa ia adalah sosok atasan yang hangat dan mau mendengarkan. Hasnul sukses menularkan semangat \"coopetation\".\r\n\r\nBuku ini, ditulis Hasnul untuk para kaum muda di seluruh Indonesia, sebagai calon pemimpin dunia di masa depan.', '2023-07-12 22:56:48', '2023-07-12 22:56:48'),
(85, 26, 'Lalat dan Sampah', 'img1689303567.jpg', '', 'Muhammmad Nadhif Khalyani', 'Perjalanan mencari kesembuhan dalam ruqyah sayar\'iyyah adalah amal yang bernilai pahala jika disikapi dengan baik dan benar.\r\nAda hal sangat mendasar yang sering terlupakan dalam proses terapi. yakni menemukan akar masalah yang ada dalam diri. \r\n\r\nSaat akar masalah tersebut diselesaikan maka denagan ijin allah kasus kasus dalam ruqyah bisa terselesaikan, baik gangguan jin, sihir atau pun ain. Meski tanoa mencari buhul, jika dalam kasus sihir', '2023-07-12 22:59:27', '2023-07-12 22:59:27'),
(86, 2, 'Sejuta Nikmat Zakat', 'img1689303680.jpg', '', 'Yuli Pujihardi', 'Delapan belas tahun sudah perjalanannya sebagai ami zakat Dompet Dhuafa. Kunjungannya ke berbagai pelosok negeri, keakrabannya dengan sosok-sosok tangguh kaum dhuafa, serta perjumpaannya dengan kepedulian para muzakki (donatur), mengantarnya mendapat banyak pengalaman dahsyat seputar zakat.Ia, penulis buku ini, dengan fasih dan serunya menceritakan kisah-kisah dashyat tentang mukjizat berbagi.', '2023-07-12 23:01:20', '2023-07-12 23:01:20'),
(87, 17, 'KISAH MURID PALING BAHAGIA', 'img1689303815.jpg', '', 'Achi TM', '“Dia itu mister smile, Rin. Selama dua tahun gue sekelas sama dia, gak pernah sekalipun gue ngeliat dia murung. Suer.” Kata Cintya kepada Karin.\r\n\r\n“Hmm.. yang paling bahagia? Kayaknya si Aa Galang,” kata cowok anak kelas sepuluh.\r\n\r\n“Pasti Galanglah… selama dua tahun di ekskul basket, ga pernah gue liat dia sedih. Bahkan pernah mukanya kena bola basket dan hidung berdarah tapi dia tetap senyum happy dan bilang Alhamdulillah. Aneh, kan?” kata Ujang tentunya.\r\n\r\nNyaris semuanya yang dia tanyakan selalu menjawab Galang. Karena ngga sabar lagi, Karin pun menghampiri Galang.\r\n\r\nPetikan kisah di atas adalah salah satu dari 12 cerita di dalam buku ini. Penasaran bagaimana kisah selanjutnya? Yuk beli dan baca b uku yang penuh inspiratif ini.', '2023-07-12 23:03:35', '2023-07-12 23:03:35'),
(88, 27, 'Tip & Trik MS Word untuk Bisnis', 'img1689303864.jpg', '', 'Tim EMS', 'Buku ini menyajikan tip dan trik untuk MS Word agar Anda dapat bekerja lebih cepat dan efisien serta menghasilkan format dokumen yang menarik.\r\n\r\nSelengkapnya, materi yang dijelaskan mencakup:\r\n- Pemformatan: kapitalisasi, drop cap, dll.\r\n- Pembuatan dokumen: buat/edit PDF, label surat, dll.\r\n- Kustomisasi: bekerja cepat & efisien\r\n- Manajemen file.\r\n- Macro VBA: otomasi pekerjaan sehari-hari\r\n- Grafik, pencetakan, dan web/online\r\n- Studi kasus Word untuk bisnis', '2023-07-12 23:04:24', '2023-07-12 23:04:24'),
(89, 2, 'Self Healing With Qur\'an', 'img1689304022.png', '', 'Ummu Kalsum Iqt', 'Betapa banyak dari kita yang mencari ketenangan selain pada Allah dan Al Quran.\r\nKita berlomba menumpahkan rasa galau pada manusia. Haus akan perhatian orang-orang, hingga caper di dunia nyata atau dunia maya. Menjadikan harta, tahta, dan cinta sebagai tolak ukur bahagia.\r\nBuku ini, siap mengajak Anda untuk self healing bersama Al-Quran. Menguatkan jiwa melalui kisah-kisah inspiratif, membasuh luka dengan firman-Nya, serta meng-charge\r\niman bersama kalimat motivasi. Selamat membaca!', '2023-07-12 23:07:02', '2023-07-12 23:07:02'),
(90, 2, 'THE PERFECT MUSLIMAH', 'img1689304147.jpg', '', 'Ahmad Rifa\'i Rif\'an', 'The Perfect Muslimah. Indah akhlaknya, teduh parasnya, brilian otaknya, mantap ilmu agamanya, luas pergaulannya, dahsyat prestasinya, dan hebat kontribusinya. Auratnya terjaga, pergaulannya terjaga, perilakunya terjaga. Matanya berkilau oleh air mata takwa, bibirnya basah dengan untaian petuah, rambutnya tertutup oleh juluran jilbabnya. Biacaranya dakwah, pendengarannya tilawah, geraknya jihad fii sabilillah. Hatinya penuh zikir, otaknya penuh pikir, dipercantik oleh terjaganya lahir. Kaulah gemintang yang menghias langit yang pekat. Kaulah rembulan yang cahayanya teduh tak memanaskan. Kaulah bidadari bumi yang kelak jadi bidadari tercantik di surga.', '2023-07-12 23:09:07', '2023-07-12 23:09:07'),
(91, 2, 'SENI MENJADI MUSLIM HEBAT', 'img1689304284.jpg', '', 'Ipnu Rinto Nugroho', 'Tanpa kita sadari kita lebih banyak menghabiskan waktu kita bersama gawai kita, daripada mengisi saf-saf shalat di masjid-masjid yang masih sepi. Di lain pihak, kita sering menuntut agar doa kita dikabulkan oleh Allah Swt., tapi ibadah kita masih berantakan. Lantas, inikah generasi islam akan bermuara?\r\n\r\nSemakin zaman berkembang, problematika umat islam muda pun semakin kompleks. Bila kita tak siap untuk bertobat, kita pada akhirnya akan menjadi generasi yang banyak sambat. Maka, mari kita perbaiki keislaman kita melalui buku inspiratif ini. Penulis mengupas secara tuntas dabn jelas berbagai persoalan yang dihadapi oleh generasi islam muda berdasarkan pada dalil Al-Qur’an dan Hadis.\r\n\r\nInilah saatnya menjadi islam yang hebat dengan lebih sadar dan mawas diri terhadap perkembangan zaman yang semakin pesat.', '2023-07-12 23:11:24', '2023-07-12 23:11:24'),
(92, 15, 'PANGGIL AKU KARTINI SAJA', 'img1689304409.jpg', '', 'Pramoedya Ananta Toer', 'Biografi ini mengajak mengingat Kartini, tapi bukan dari sudut pandang domestik rumah seperti dia adalah gadis pingitan lalu dinikahkan secaara paksa lalu melahirkan lalu mati. Coba singkirkan kenangan itu dann alihkan pikiran pada bagaimana cara Kartini melawan itu semua, melawan kesepian karena pingitan, melawan arus kekuasaan besar penjajahan dari dinding tebal kotak penjara Kabupaten yang menyingkapnya bertahun-tahun.', '2023-07-12 23:13:29', '2023-07-12 23:13:29'),
(93, 6, 'Marketing is Bullshit', 'img1689304417.jpg', '', 'Ippho Santosa', 'Tanpa Kreativitas dan Otak Kanan, semua upaya pemasaran tinggal kata-kata, cuma omong kosong, begitu kata penulis. Sebenarnya, itulah yang menjadi poin buku ini, menantang para pebisnis untuk bangun dari kemapanan dan kenyamanan berbisnis dengan cara biasa.\r\n\r\nJudulnya yang sangat memprovokasi membuat sulit bagi kita untuk tidak penasaran dengan apa yang ingin disampaikan Ippho Santosa dalam buku ini. Ippho menantang sekaligus menjawab omong kosong ini:\r\n\r\nBullshit #1 Hoki itu Kebetulan\r\nBullshit #2 Terobosan adalah Pemborosan\r\nBullshit#3 Terobosan Bukan Keharusan\r\nBullshit#4 Diferensiasi Sukar untuk Dikreasi\r\nBullshit#5 Kegigihan adalah Segala-galanya\r\nBullshit#6 Perlu Metode untuk Hasilkan Ide\r\nBullshit #7 Segala Sesuatu Serba Terbatas\r\nBullshit#8 Laba adalah Raja', '2023-07-12 23:13:37', '2023-07-12 23:13:37'),
(94, 6, '5 Negara ratusan Beasiswa Beribu cerita', 'img1689304578.jpg', '', 'Arum Faiza', 'Jika kamu seorang pejuang ilmu, buku ini sangat cocok untukmu sebagai penyemangat untuk mengayuh lagi langkahmu, berkali lipat lebih kencang! Kamu akan menemukan informasi tentang beasiswa, serba-serbi memilih jurusan, pengalaman yang luar biasa, dan jawaban penting kenapa kamu harus kuliah di berbagai penjuru negeri. Buku ini akan membuka wawasan bahwa bumi Allah Swt sangat luas untuk dijelajahi. Kamu akan dibawa jalan-jalan menyusuri berbagai negara, seperti Prancis, Jepang, Polandia, Rusia, dan Taiwan. Mendalami karakter setiap negaranya, mencari peluang, dan mendapatkan motivasi sebagai bahan bakar untuk meraih mimpi menapaki bumi di belahan negara lain. Jangan pernah takut! Allah Swt akan selalu bersamamu. Yakinlah, bahwa malaikat akan mengepakkan sayapnya untukmu, sebagai tanda rida atas perjuanganmu menuntut ilmu.\r\n“Pejuang ilmu sejati adalah mereka yang akan sekeras apa pun rintangannya, selalu menjadikan setiap proesnya sebagai sarana belajar.” –Arum Faiza.\r\nDaftar isi\r\nRaih Mimpimu Sampai Ke Kota Cahaya\r\nKuliah di Jepang Yuk, Terbang!\r\nKuliah dan Petualang di Kota Wisata, Krakow Polandia\r\nIndahnya Kazan Tanpa Bulan\r\nElite Berilmu Dengan Beasiswa Indonesia\r\n\r\nTentang Penulis\r\nArum Faiza yang dilahirkan 24 tahun silam ini adalah anak pertama dari dua bersaudara. Ia kini bekerja di Dinas Lingkungan Hidup Kabupaten Lumajang. Selain itu, ia pun memiliki beberapa kesibukan lainnya, seperti editor lepas, guru kepenulisan, dan juga aktivis kegiatan sosial.', '2023-07-12 23:16:18', '2023-07-12 23:16:18'),
(95, 26, 'Tradisi Ritual Keagamaan', 'img1689304908.jpg', '', 'Mahmudah Nur, et.al.', 'Buku ini berisi kumpulan tulisan para peneliti di Balai Litbang Agama Jakarta dan peneliti di Bantenologi UIN Sultan Maulana Hasanuddin Banten. Dalam buku ini terdapat 8 tulisan mengenai tradisi ritual keagamaan, yaitu: Upacara Seren Taun Masyarakat Adat Sunda Wiwitan Cigugur Kabupaten Kuningan; Ratib Tegak (Ratib Seman) di Desa Bungo Tanjung, Kecaatan Sitinjau Laut dan Desa Pulau Tengah, Kec. Kelilin Danau, Kab Kerinci, Jambi; Wuku Taun Masyarakat Kampung Cikondang, Desa Lamajang, Kec Pengalengan Kab Bandung; Tradisi Melemang di Desa Karang Raja dan Kepur, Kab Muara Enim-Sumsel; Tradisi Sakura pada Kepaksian Skala Brak di Lampung Barat; Seren Taun di Kasepuhan Cisungsang, Lebak Banten; serta Tradisi Baritan dan Tradisi Besaman di Desa Kelumu, Lingga-Kepulauan Riau.\r\n\r\nBerbagai tradisi ritual keagamaan yang ada tersebut menunjukkan bahwa nenek moyang Bangsa Indonesia merupakan orang-orang yang mengedepankan keselarasan dan keseimbangan hidup dengan lingkungan dimana mereka hidup. Tradisi ritual yang berkembang merupakan wujud rasa syukur atas berbagai karunia Tuhan yang disediakan di lingkungan mereka. Masuknya agama-agama baru kemudian tidak lantas menghapus tradisi-tradisi tersebut, justru malah memperkaya tradisi ritual dengan masuknya berbagai unsur-unsur agama ini. Tradisi-tradisi ritual yang berbaur dengan unsur-unsur agama ini seperti hendak menguatkan filosofi; siapa menyayangi yang di bumi, maka akan disayang Yang di langit.', '2023-07-12 23:21:48', '2023-07-12 23:21:48'),
(96, 11, 'The Great Arab Conquests', 'img1689305135.jpg', '', 'Hugh Kennedy', 'Belasan tahun setelah Nabi Muhammad wafat, kaum muslim berhasil menaklukkan pusat-pusat peradaban Timur Dekat Kuno: menggulingkan Kekaisaran Persia, sebuah kekuasaan regional yang besar; mempercundangi Byzantium menjadi negara \"pinggiran\"\'; dan mencabik-cabik wilayah Kekaisaran Roma yang amat luas. Dalam masa seratus tahun, pasukan Muslim bahkan sukses mengobrak-abrik kekuasaan Dinasti China Tang di kawasan timur, hingga menekuk Spanyol di wilayah barat.Tak hanya di sektor militer, ekspansi Islam juga menguasai mata rantai niaga, budaya, agama dan politik -- yang telah berusia ribuan tahun--di kisaran pantai utara dan pantai selatan Mediterania. Dan untuk pertama kalinya dalam sejarah, kaum Muslim berhasil membangun kedaulatan politik atas dasar keimanan tunggal, yang melenyapkan eksistensi agama pribumi semisal Zoroastrianisme di Persia, Buddhisme di Asia Tengah dan Hinduisme di banyak wilayah Hindustan.Buku ini menuturkan secara gamblang bagaimana bahasa Arab Muslim merengkuhh kekuasaan secara mudah dan cepat serta bagaimana Islam dengan segera menjadi agama yang dianut masyarakat dan bangsa taklukan.Ditulis berdasarkan riset yang diteliti dan sumber rujukan yang terpercaya, buku ini merupakan jejak sejarah yang tak mungkin diabaikan oleh siapa pun, khususnya umat Islam', '2023-07-12 23:25:35', '2023-07-12 23:25:35'),
(97, 1, 'Antologi Kopi Kehidupan', 'img1689305319.jpg', '', 'Mr. Sae', 'Kumpulan puisi yang ditelurkan karena tekad bulat untuk membangun dan menemukan inspirasi dalam menulis ragam sastra dari kehidupan yang diharapkan ataupun dialami diri penulis, bahkan suatu ungkapan idealisme dari si penulis itu sendiri sehingga penjiwaan, bait dan larik, titimangsa penulisan, rima dan irama, diksi dan idiom, majas ataupun amanat, baik tersirat maupun tersurat dapat terbaca dari Antologi Puis ini .\r\n\r\nSeperti terlihat dalam karyanya yang berjudul “Pejuang Rupiah”, mereka rela pertaruhkan nyawa demi menggapai rupiah. Seberapa jauh perjalanan, mereka tetap semangat ‘tuk raih tujuan. Perjuangan hari ini adalah untuk menyambung hidup mengais rezeki yang diberkahi.\r\n\r\nPuisi yang berjudul “Pejuang Rupiah” ini begitu kental dengan penjiwaan. Membangkitkan emosional si pembaca hingga larut dalam imajinasinya. Tidak hanya itu, Antologi Puisi ini juga sarat dengan amanat, baik tersirat maupun tersurat agar tetap smart dan semangat. Jadi, wajib dibaca tuntas pada suasana yang pas sehingga belum afdol kalau belum memiliki, terlebih kaum milenial dan generasi literasi.', '2023-07-12 23:28:39', '2023-07-12 23:28:39'),
(98, 6, 'Sayangi Dirimu, Berhentilah Menyenangkan Semua Orang', 'img1689305684.jpg', '', 'Sabrina Ara', 'Sudah berusaha begitu keras, tetapi tak pernah dianggap. Segala-galanya sudah diberikan, tetapi tetap tak bernilai banyak bagi mereka. Perjuangan ini sungguh melelahkan. Apa yang salah? Apa lagi yang bisa dilakukan?\r\n\r\nBila kamu masih terjebak dalam usaha untuk menyenangkan semua orang, kebahagiaanmu akan berkurang. Waktumu pun tidak akan cukup untuk melakukan semua usaha itu. Satu-satunya saran paling bijak yang pernah ada adalah berhenti. Berhentilah menuruti keinginan orang lain dan mulailah mendengarkan apa yang diinginkan oleh dirimu sendiri. Sayangilah dirimu sendiri.\r\n\r\nDengan adanya buku berjudul Sayangi Dirimu, Berhentilah Menyenangkan Semua Orang ini, Anda tidak sendirian. Buku terbitan Syalmahat Publishing tahun 2021 yang ditulis oleh Sabrina Ara ini memuat cerita-cerita sederhana yang sering dialami banyak orang, yang akan menemani langkahmu mencintai diri sendiri. Di dalamnya terdapat kisah yang tidak menyenangkan dalam hidup, bagaimana kita memandang masalah, tentang dunia yang tidak ramah, sampai cara menghadapinya agar hidup tetap bahagia.\r\n\r\nBuku ini akan menyadarkan Anda bahwa tidak selamanya Anda harus membahagiakan semua orang yang ada di sekitar Anda. Memperjuangkan hidup yang bahagia dari orang-orang yang berusaha mengusiknya adalah dengan menutup telinga terhadap komentar orang lain. Buku pengembangan diri ini cocok dibaca oleh siapa saja yang ingin meraih kebahagiaan dalam hidupnya tanpa campur tangan orang lain.', '2023-07-12 23:34:44', '2023-07-12 23:34:44'),
(99, 28, 'Sepaktakraw Untuk Pelajar', 'img1689305885.jpg', '', 'Dr. Achmad Sofyan Hanif M.Pd.', 'Sepaktakraw adalah olahraga yang digemari para pelajar dan olahraga tradisional yang terus menerus perlu dikembangkan, karena olahraga sepaktakraw merupakan olahraga warisan budaya yang saat ini telah dipertandingkan di tingkat nasional seperti PON, juga internasional seperti SEA Games dan Asian Games. Di lingkup pelajar olahraga sepaktakraw juga sudah dipertandingkan di O2SN (Olimpiade Olahraga dan Seni Nasional).\r\n\r\nBuku “Sepaktakraw untuk Pelajar” ini mencoba menulis berbagai kajian berkaitan dengan model-model latihan teknik dasar untuk membantu agar para pemula sepaktakraw seperti pelajar dapat memulai latihan sepaktakraw. Buku ini juga membahas mengenai Konsep Dasar Sejarah Perkembangan Sepaktakraw, Tahapan Penguasaan Keterampilan Gerak Sepaktakraw, Standar Teknis dan Pembinaan Olahraga Pelajar, Teknik Dasar Sepaktakraw, Variasi Model Latihan Sepaktakraw untuk Pelajar, Berbagai Model Latihan Keterampilan Sepaktakraw, Peregangan Pada Anak Usia Dini.\r\n\r\nBuku ini digunakan untuk kalangan pelajar agar dapat menggairahkan olahraga sepaktakraw di kalangan pelajar baik untuk pegangan para guru maupun para pelajar sendiri. Buku ini juga dapat dipergunakan di lingkup perguruan tinggi sebagai bahan bacaan para dosen yang mengajar sepaktakraw ataupun untuk para mahasiswa sebagai bahan referensi mata kuliah Sepaktakraw: Teori dan Praktik dan juga referensi dalam penulisan skripsi maupun tesis.', '2023-07-12 23:38:05', '2023-07-12 23:38:05'),
(100, 6, '13 Wasiat Terlarang', 'img1689306108.jpg', '', 'Ippho Santosa', NULL, '2023-07-12 23:41:48', '2023-07-12 23:41:48'),
(101, 17, 'Kumpulan Cerita & Fabel Jalaludin Rumi', 'img1689315111.jpg', '', 'Jalaludin Rumi', 'Buku ini adalah edisi prosa Matsnawi, berisikan 105 kisah yang mencerahkan, menghibur, dan mengilhami. Kisah-kisah tersebut di antaranya adalah dongeng-dongeng terkenal seperti ‘Malaikat Pencabut Nyawa’, ‘Musa dan Gembala’, ‘Harta di Mesir’, ‘Gajah dalam Gelap’, ‘Sekarung Kerikil’, dan ‘Pelahap Lumpur’. Dalam setiap kisah, Rumi tidak hanya menghibur tetapi juga membimbing pembaca dalam memahami kompleksitas kehidupan, dalam mematuhi otoritas cinta, serta dalam menyelesaikan konflik.', '2023-07-13 02:11:51', '2023-07-13 02:11:51'),
(102, 2, 'Kumpulan Nasihat-Nasihat Rasulullah Untuk Wanita', 'img1689316455.jpg', '', 'Asrifin An Nakhrawie S. Ag.', NULL, '2023-07-13 02:34:15', '2023-07-13 02:34:15'),
(103, 2, 'Ya Allah, Saya Yakin Rencanamu-Mu Lebih Indah', 'img1689316648.jpg', '', 'MHD. ROIS ALMAUDUDY', 'Sahabatku, kita semua pasti menginginkan hidup yang jauh dari berbagai bentuk kesulitan, kesedihan, dan kesempitan. Hidup yang mudah, membahagiakan, dan lapang. Akan tetapi, tidak selamanya kita bisa mendapatkan apa yang kita inginkan. Seringkali harus berbenturan dengan masalah yang membadai dalam kehidupan, menerjang kesulitan-kesulitan yang merintang, dan melawan derasnya ombak kepedihan.\r\n\r\nBanyak orang yang tidak kuat dan kurang sabar menghadapi tantangan, rintangan, dan kepedihan, akhirnya tak berdaya menjaga hati. Buku ini hadir untuk menguatkan tekad dan menjaga hati kita agar tidak mudah putus asa, sebagai teman dalam meniti perjuangan. Buku ini akan mengajak kita menjadi pribadi kuat, sehingga bisa menghadirkan optimisme, kebahagiaan, dan semangat yang tidak luntur.', '2023-07-13 02:37:28', '2023-07-13 02:37:28'),
(104, 2, 'Ya Allah, Aku Pulang', 'img1689316851.jpg', '', 'Alfialghazi', NULL, '2023-07-13 02:40:51', '2023-07-13 02:40:51'),
(105, 2, 'Maaf Tuhan, Aku Hampir Menyerah', 'img1689317021.jpg', '', 'Alfialghazi', 'Tidak semua hal akan berjalan sesuai keinginanmu. Pada satu waktu, impianmu akan dipukul mundur, harapanmu terpatahkan, dan langkahmu dihentikan paksa.\r\n\r\nDunia yang luas terasa begitu menyesakkan. Ramai, tetapi sepi.\r\n\r\nIngin terus melangkah, takut terjatuh. Ingin putar balik, sudah tak mungkin tertempuh. Ingin menyerah, tetap saja tidak akan pernah menyelesaikan masalah. Setiap pilihan nyaris tak mampu kamu tanggung konsekuensinya.\r\n\r\n“Maaf Tuhan aku hampir menyerah” akan menemanimu, untuk terus melangkah maju, menerabas segala keterbatasan, menikmati segala kekecewaan, melewati dunia yang penuh dengan kefanaan, menuju satu tempat bernama keabadian.\r\n\r\nBuku ini ditulis untukmu, jiwa-jiwa kecil yang sedang mendamba bahagia, kebahagiaan yang sesungguhnya. Selamat menikmati!', '2023-07-13 02:43:41', '2023-07-13 02:43:41'),
(106, 14, 'Next G: Banjir THR', 'img1689317286.jpg', '', 'Salsabila Evrita Diyana, dkk', 'Luna akan menghabiskan libur Lebarannya di rumah Tante Vina. Selama di sana, Luna diajak berkeliling mengunjungi sanak saudara yang lain. Dan tidak disangka-sangka, Luna malah mendapat banyak THR. Wah, akan digunakan untuk apa ya, uangnya?', '2023-07-13 02:48:06', '2023-07-13 02:48:06'),
(107, 14, 'Next G: Hadiah istimewa untuk Ayah', 'img1689317592.jpg', '', 'Naura Najwaa Ziva, dkk', 'Ziva bingung banget mau kasih hadiah apa untuk ayah. Uang tabungan pun ia enggak punya. Minta saran pada teman-teman juga enggak ada hasilnya. Untung saja, Ziva bertemu wali kelasnya. Ia jadi tahu hadiah apa yang akan ia berikan untuk ayah. Hmm, kira-kira, hadiahnya apa, ya?', '2023-07-13 02:53:12', '2023-07-13 02:53:12'),
(108, 14, 'PRINCESS ACADEMY: SEMANGAT UJIAN', 'img1689317835.jpg', '', 'Citra Mustikawati', 'Menjelang ujian Sejarah. Ellen terlihat sangat cemas. Ellen takut tidak bisa menjawab pertanyaan saat ujian nanti. Oleh karena itu, setiap hari, Ellen belajar hingga larut malam. Teman-teman sampai khawatir dengan kesehatan Ellen. Hm, bisa tidak ya, Ellen mengerjakan ujiannya?', '2023-07-13 02:57:15', '2023-07-13 02:57:15'),
(109, 1, 'Jika Nanti Kamu Jatuh Cinta Lagi', 'img1689318103.jpg', '', 'Alfialghazi', NULL, '2023-07-13 03:01:43', '2023-07-13 03:01:43'),
(110, 14, 'KHALID BIN WALID: SANG PEDANG ALLAH', 'img1689318314.jpg', '', 'Handri Satria', NULL, '2023-07-13 03:05:14', '2023-07-13 03:05:14'),
(111, 1, 'Love Van Java', 'img1689318462.jpg', '', 'Patrick Kellan', NULL, '2023-07-13 03:07:42', '2023-07-13 03:07:42'),
(115, 2, 'Literasi Digital Santri Milenial', 'img1689491727.jpg', '', 'Dr. Abdulloh Hamid, M. Pd.', 'Perkembangan teknologi saat ini ibarat sebilah pedang. Ia bisa bermanfaat bila digunakan untuk memenuhi hajat hidup manusia, dan bisa berbahaya bahkan mematikan bila digunakan untuk kepentingan yang dilarang secara agama dan moral. Begitu pula dunia digital, dunia yang tumbuh sebagai akibat dari pesatnya perkembangan teknologi.\r\n\r\nDunia digital yang muncul sebagai idola baru itu bak sebilah pedang di atas; bisa membawa manfaat, bisa pula memunculkan mudarat. Kini, dunia digital benar-benar masuk ke segala lini kehidupan manusia, semua terkena pengaruhnya tak terkecuali dunia pesantren.\r\n\r\nBuku Literasi Digital Santri Milenial bisa dijadikan sebagai pegangan para santri, khususnya santri milenial untuk belajar bersama dalam menerima, mengolah, hingga menyebarkan informasi dari dunia digital yang derasnya makin tak terbendung. Sudah saatnya santri turut serta dan ambil peran demi terwujudnya Islam yang damai melalui dunia digital.', '2023-07-15 10:15:27', '2023-07-15 10:15:27'),
(116, 29, 'CHEMISTRY  10th EDITION', 'img1689516024.png', 'book1689516024.pdf', 'Raymond Chang', NULL, '2023-07-16 00:00:24', '2023-07-16 00:00:32'),
(117, 29, 'General Chemistry Principles and Modern Applications TENTH EDITION', 'img1689518735.png', 'book1689518735.pdf', 'Ralph H. Petrucci California State University, San Bernardino F. Geoffrey Herring University of British Columbia Jeffry D. Madura Duquesne University Carey Bissonnette University of Waterloo', NULL, '2023-07-16 00:45:35', '2023-07-16 00:45:35'),
(118, 29, 'Big Book Kimia', 'img1689518921.png', 'book1689518921.pdf', 'Ir. OMANG KOMARUDIN', NULL, '2023-07-16 00:48:41', '2023-07-16 00:48:41'),
(119, 29, 'Buku Guru Kimia kelas XI', 'img1689518990.png', 'book1689518990.pdf', 'A. Haris Watoni', NULL, '2023-07-16 00:49:50', '2023-07-16 00:49:50'),
(120, 29, 'Buku Pintar Kimia', 'img1689519042.png', 'book1689519042.pdf', 'Devina Putri, M.Si', NULL, '2023-07-16 00:50:42', '2023-07-16 00:50:42'),
(121, 29, 'EBook Kimia Sakti', 'img1689519110.png', 'book1689519110.pdf', '.', NULL, '2023-07-16 00:51:50', '2023-07-16 00:51:50'),
(122, 29, 'OSN Kimia 100 Langkah Lebih Dekat', 'img1689519183.png', 'book1689519183.pdf', 'Bayu Ardiansyah, S.Si', NULL, '2023-07-16 00:53:03', '2023-07-16 00:53:03'),
(123, 29, 'Reaksi Senyawa Organik', 'img1689519375.png', 'book1689519375.pdf', 'Dr. Ratnaningsih Eko Sardjono, M.Si.', NULL, '2023-07-16 00:56:15', '2023-07-16 00:56:15'),
(124, 29, 'Organic Chemistry Second Edition', 'img1689519456.png', 'book1689519456.pdf', 'Ralph J. Fessenden & JoanS. Fessenden', NULL, '2023-07-16 00:57:36', '2023-07-16 00:57:36'),
(125, 29, 'Organic Chemistry', 'img1689519533.png', 'book1689519533.pdf', 'T. W. Graham Solomons, Craig B. Fryhle', NULL, '2023-07-16 00:58:53', '2023-07-16 00:58:53'),
(126, 29, 'Kimia Organik', 'img1689519582.png', 'book1689519582.pdf', 'Wardiyah', NULL, '2023-07-16 00:59:42', '2023-07-16 00:59:42'),
(127, 29, 'Kimia Organik', 'img1689519652.png', 'book1689519652.pdf', 'Prof. Dr. Ruslin Hadanu, S.Pd., M.Si', NULL, '2023-07-16 01:00:52', '2023-07-16 01:00:52'),
(128, 29, 'KIMIA ANORGANIK ONLINE', 'img1689519864.png', 'book1689519864.pdf', 'Taro Saito,', NULL, '2023-07-16 01:04:24', '2023-07-16 01:04:24'),
(129, 29, 'Kimia Koordinasi', 'img1689519923.png', 'book1689519923.pdf', 'Abdul Majid', NULL, '2023-07-16 01:05:23', '2023-07-16 01:05:23'),
(130, 29, 'Kimia Konstektual', 'img1689519977.png', 'book1689519977.pdf', 'Tim Pengampu Kimia Kontekstual Jurusan Kimia UGM', NULL, '2023-07-16 01:06:17', '2023-07-16 01:06:17'),
(131, 29, 'TEKNOLOGI POLIMER Industri Pertanian', 'img1689520062.png', 'book1689520062.pdf', 'Prof. Dr. Ir Bambang Admadi Harsojuwono I Wayan Arnata, STP., MSi', NULL, '2023-07-16 01:07:42', '2023-07-16 01:07:42'),
(132, 29, 'Kimia Bahan Alam Laut', 'img1689520118.png', 'book1689520118.pdf', 'Dr. Musri Musman, M.Sc', NULL, '2023-07-16 01:08:38', '2023-07-16 01:08:38'),
(133, 29, 'Kimia Organik Bahan Alam', 'img1689520179.png', 'book1689520179.pdf', 'Leny Heliawati', NULL, '2023-07-16 01:09:39', '2023-07-16 01:09:39'),
(134, 29, 'Kimia Lingkungan', 'img1689520226.png', 'book1689520226.pdf', 'Romdhoni', NULL, '2023-07-16 01:10:26', '2023-07-16 01:10:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `borrows`
--

CREATE TABLE `borrows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `borrow_histories`
--

CREATE TABLE `borrow_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Novel', 'novel', '2023-07-12 01:09:47', '2023-07-12 21:09:10'),
(2, 'Islam Populer', 'islam-populer', '2023-07-12 01:09:55', '2023-07-12 21:09:38'),
(3, 'Buku Pelajaran', 'buku-pelajaran', '2023-07-12 01:10:00', '2023-07-12 21:11:09'),
(5, 'Keuangan', 'keuangan', '2023-07-12 01:10:12', '2023-07-12 21:12:24'),
(6, 'Pengembangan Diri', 'self-improvement', '2023-07-12 01:10:19', '2023-07-15 05:28:40'),
(11, 'Sejarah', 'sejarah', '2023-07-12 01:10:51', '2023-07-12 22:08:26'),
(12, 'Komunikasi', 'komunikasi', '2023-07-12 01:10:57', '2023-07-12 22:08:50'),
(13, 'Psikologi', 'psikologi', '2023-07-12 01:11:04', '2023-07-12 22:09:33'),
(14, 'Komik', 'komik', '2023-07-12 01:11:24', '2023-07-12 22:09:59'),
(15, 'Biografi', 'biografi', '2023-07-12 01:11:31', '2023-07-12 22:10:50'),
(17, 'Cerita Pendek', 'cerita-pendek', '2023-07-12 01:13:32', '2023-07-12 22:11:30'),
(18, 'Umum', 'umum', '2023-07-12 01:13:38', '2023-07-12 22:11:58'),
(19, 'Dokumenter', 'dokumenter', '2023-07-12 01:13:45', '2023-07-15 11:16:27'),
(20, 'Kesehatan', 'kesehatan', '2023-07-12 01:13:52', '2023-07-12 22:12:32'),
(22, 'Hukum', 'hukum', '2023-07-12 01:14:11', '2023-07-12 22:13:10'),
(23, 'Filsafat', 'filsafat', '2023-07-12 01:14:18', '2023-07-12 22:13:35'),
(26, 'Agama Islam', 'agama islam', '2023-07-12 22:58:30', '2023-07-12 22:58:30'),
(27, 'Komputer', 'komputer', '2023-07-12 23:00:46', '2023-07-12 23:00:46'),
(28, 'Olahraga', 'olahraga', '2023-07-12 23:36:28', '2023-07-12 23:36:28'),
(29, 'Kimia', 'kimia', '2023-07-16 00:00:18', '2023-07-16 00:00:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_27_080254_create_books_table', 1),
(6, '2023_06_27_080320_create_categories_table', 1),
(7, '2023_07_12_143805_create_borrows_table', 1),
(8, '2023_07_14_075727_create_queues_table', 1),
(9, '2023_07_18_101102_create_borrow_histories_table', 1),
(10, '2023_08_24_044710_create_sukas_table', 1),
(11, '2023_08_24_044720_create_ulasans_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `queues`
--

CREATE TABLE `queues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sukas`
--

CREATE TABLE `sukas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ulasan_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ulasans`
--

CREATE TABLE `ulasans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `ulasan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `class` int(11) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `username` varchar(255) NOT NULL DEFAULT 'user',
  `email` varchar(255) DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `class`, `role`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 101, 1, 'admin', '0', NULL, '$2y$10$2Qvot3g51Q3mnf.pBquxKeT64yXZP37WlmV1OjASxMqcFHFswgtha', NULL, '2023-07-13 13:08:15', '2023-07-13 13:08:15'),
(2, 'guest', 104, 0, 'guest', 'guest@gmail.com', '2023-07-11 15:17:33', '$2y$10$OJ1IqzI1gejKRrav6CWDp.98VVz75wqWMYxJPz01VjdUzUHBsTX12', '5JiodPzC6qecgS9IWK3WD9cCRNrL3AcNfG6G945tV1j4qKrpLhjM345nVX6c', '2023-07-11 15:17:33', '2023-07-12 22:48:31'),
(3, 'Dzakir Rahman', 114, 1, 'Admin#3', 'dzakirrahman18@gmail.com', NULL, '$2y$10$I6Mg4qemDnNJz1Gxzu48ZOZHEnE3j4oPo37Netb6Ad4EuEWGn0Nii', NULL, '2023-07-11 15:17:36', '2023-07-11 15:17:36'),
(7, 'Adnan Berlian Pamungkas', 121, 0, 'Adnan', '', NULL, '$2y$10$QDZmfE1xLHAw0v887PTA8eZD3vNYFYcnsYz.3tMVIMRDGDP3rt.Ba', NULL, '2023-07-11 16:27:25', '2023-07-11 16:27:25'),
(8, 'Alya Khairina Hartono', 121, 0, 'Alya', '', NULL, '$2y$10$ghQ/K5U9a605OAToGip3A.W9VkJbkFUzaxqe.6IPlPTfJGwk.5.XS', NULL, '2023-07-11 16:29:20', '2023-07-11 16:29:20'),
(9, 'Fanny Aulia Ramadhani', 121, 0, 'Fanny', '', NULL, '$2y$10$mf6LyOEMIRxel6EW2wn93.ud1wuObAQNk9JKN.S1RGhZz.65Q5G2a', NULL, '2023-07-11 16:29:49', '2023-07-11 16:29:49'),
(10, 'Meyra Azzahra Aulani', 121, 0, 'Meyra', '', NULL, '$2y$10$cH8OSoyArSnE7GiGCdhiiOCw0Xd2SXpWCm4AX9QpnOhaZl6nQDtlC', NULL, '2023-07-11 16:30:28', '2023-07-11 16:30:28'),
(11, 'Muhammad Angkasa Putra Garnadi', 121, 0, 'Angkasa', '', NULL, '$2y$10$lHpWrEtXFxz.wZjSFyv0TOt5gHYVibyu166kcEW8KiIdcF6EhsqjK', NULL, '2023-07-11 16:31:06', '2023-07-11 16:31:06'),
(12, 'Muhammad Zidan Al Faruq', 121, 0, 'Zidan', '', NULL, '$2y$10$WD/hcHVW5j0mTOL3Vq3SQuMKAYrXK62fnDKMmnpypIdO4RolplC8.', NULL, '2023-07-11 16:31:48', '2023-07-11 16:31:48'),
(13, 'Nabila Lavialga Saputri', 121, 0, 'Lavialga', '', NULL, '$2y$10$InDj8Jxx7avOYAlhk7z2DOLUyGjelnhYbM44Sl4PGn9YTudKgpSJ6', NULL, '2023-07-11 16:32:08', '2023-07-11 16:32:08'),
(14, 'Nabila Ramadhani Affuan', 121, 0, 'Affuan', '', NULL, '$2y$10$WiK0l6Vd0Xak8J7YgZ2PfeIPDhnoAl567lADHzjt29sJGRxHbsaLi', NULL, '2023-07-11 16:32:33', '2023-07-11 16:32:33'),
(15, 'Nabillah Putri Zata Lini', 121, 0, 'Zata', '', NULL, '$2y$10$QyDQ6IjVc73hgFYhB6Y5geevUV/J3byYzvoSw3wKihZdV6gxolXUG', NULL, '2023-07-11 16:33:10', '2023-07-11 16:33:10'),
(17, 'Nuredy Rahma Gunawan', 121, 0, 'Rama', '', NULL, '$2y$10$chifOmCcM0mhARfXUX8oPOrb8.F9dJIkbVDR9uP2sNBTgOl9x0kzG', NULL, '2023-07-11 16:34:47', '2023-07-11 16:34:47'),
(18, 'Nurrahmadya Aliyyatun Nisa', 121, 0, 'Rahma', '', NULL, '$2y$10$TlH.ptlYG5mB9/CMeScmgOvR8eQRkkRKIYW2oRSwjO3M734yHRnpG', NULL, '2023-07-11 16:35:26', '2023-07-11 16:35:26'),
(20, 'Roudhotul Jamaliah Al-Chaidier', 121, 0, 'Jamal', '', NULL, '$2y$10$Ghf9WxdahCInPxqULTrpJ.PBLAPr2BFyjh1aqoZX.iYtCmUTE4KGW', NULL, '2023-07-11 16:35:57', '2023-07-11 16:35:57'),
(21, 'Sela Febrianti', 101, 0, 'Sela', '', NULL, '$2y$10$z304aWioqEm6kbDdtWSio.IGXq6RC5u9KpTuQspomN/U3ZbsAurTi', NULL, '2023-07-11 16:37:04', '2023-07-11 16:37:04'),
(22, 'Adinda Dealova Putri Omara', 101, 0, 'Dealova', '', NULL, '$2y$10$6Knm/2LElfi/nN8MEokn/.X42TvwojYTpOWgFmEivsWjwoGjNzBBi', NULL, '2023-07-11 16:37:29', '2023-07-11 16:37:29'),
(23, 'Ahmad Rizky Akbarudin', 101, 0, 'Rizky', '', NULL, '$2y$10$FnfjBlY2bPYM2a2V3oawRePXQnmg4rKcydDRamsK9Db97wAaIeCBW', NULL, '2023-07-11 16:37:45', '2023-07-11 16:37:45'),
(24, 'Amar Faiz Abdurahman', 111, 0, 'Faiz', '', NULL, '$2y$10$2.rHVtVolti42fJdhsM1vuzynDAe.Oiz9mPrCwWgh9IW9TVTmhrw6', NULL, '2023-07-11 16:38:07', '2023-07-11 16:38:07'),
(25, 'Annasya Sri Nareswari', 101, 0, 'Nasya', '', NULL, '$2y$10$A.K6T/jYRRDskYUmZ7IKMeqiqgZjoFJx8iDg70jCo8BBpTIod/Kb.', NULL, '2023-07-11 16:38:33', '2023-07-11 16:38:33'),
(26, 'Annisa Eka Jasmin', 101, 0, 'Jasmin', '', NULL, '$2y$10$tQzOQ.t9t83NhVH1Dh45becZf8Mv5O1ipmsZ4YApkWwlnD8cC7yDy', NULL, '2023-07-11 16:39:05', '2023-07-11 16:39:05'),
(27, 'Dinara Afifah', 101, 0, 'Dinara', '', NULL, '$2y$10$0NFB.2jkuIXJAB7l6JcSzup/1tDqT9538rtanOh6gP5WNW83ULySC', NULL, '2023-07-11 16:39:23', '2023-07-11 16:39:23'),
(28, 'Dzakiyya Mumtaz Syaafia', 101, 0, 'Dzakiyya', '', NULL, '$2y$10$0QJGnas.hsn1RV2fPzt3KeGrCyJ4kmed7Uh.Jor6lGFHYuO.VJSSK', NULL, '2023-07-11 16:39:48', '2023-07-11 16:39:48'),
(29, 'Galang Prasetya Yudha', 101, 0, 'Galang', '', NULL, '$2y$10$kDF6s72dz9VoMZyJ7Le5n.V8Uu7RtNEHluSPeLJoowIhrqXwMK.ay', NULL, '2023-07-11 16:40:04', '2023-07-11 16:40:04'),
(30, 'Ismatulloh', 101, 0, 'Ismat', '', NULL, '$2y$10$51OulmmoJP6sBcecphXaluwFLQfOHLzVNPKTPF0wgdfLwJ3EwXaHa', NULL, '2023-07-11 16:40:14', '2023-07-11 16:40:14'),
(31, 'Muhammad Daffa Arrafi', 101, 0, 'Dafi', '', NULL, '$2y$10$JDlckJpjGoLDxK3KNAt7S.GVoTCgXAGJB2YDJDHk6I4DFWrosGVPi', NULL, '2023-07-11 16:40:35', '2023-07-11 16:40:35'),
(32, 'Muhammad Hafidzh Nawwaf Makarim', 101, 0, 'Hafidzh', '', NULL, '$2y$10$jIDCfWDkYqoyfLdoJD4HP.7jyVkhKBmCU4QLLxTjVjU3kFfGWy0bO', NULL, '2023-07-11 16:41:01', '2023-07-11 16:41:01'),
(33, 'Muhammad Naufal', 101, 0, 'Naufal', '', NULL, '$2y$10$yRUXc0XKpZeAfoikQ9vaQuBWLNPmT3QHS8YNM0a/eKVJCkpb6Yboa', NULL, '2023-07-11 16:41:14', '2023-07-11 16:41:14'),
(34, 'Muhammad Rahman Bagas Maulidhani', 101, 0, 'Rahman Bagas', '', NULL, '$2y$10$mgAvJqHZ/eHGGKmuaTgHmeHJ7x.Swvy1SHaF/6.vOdKvH/9L3Arci', NULL, '2023-07-11 16:41:58', '2023-07-11 16:41:58'),
(35, 'Muthia Sabrina Kholili', 101, 0, 'Muthia', '', NULL, '$2y$10$75eDyOCKcd24DOYKOQ6R2.XP2kCzDWAiWRV5Xpa/yQnnUOUil7TH2', NULL, '2023-07-11 16:42:21', '2023-07-11 16:42:21'),
(36, 'Qonitah Aulia Romadhoni', 101, 0, 'Qonitah', '', NULL, '$2y$10$bCZQFLGdy3sO5ayMzRoq7.2SMzhq9LbKnMvhof3sVxuH6gtMDPWbu', NULL, '2023-07-11 16:42:53', '2023-07-11 16:42:53'),
(37, 'Salma Fatimah Az-Zahra', 101, 0, 'Salma', '', NULL, '$2y$10$yaOtS3h/l395jaUHK6/tlOjUZIABWgz34GAwFthrGbNSceCVsktYq', NULL, '2023-07-11 16:43:11', '2023-07-11 16:43:11'),
(40, 'Afra Elysia Azzikra', 123, 0, 'Afra', '', NULL, '$2y$10$5rH1WGesAiNqlO2kjR2mK.sWD6DfxkDnffbzwVGjdEvjCS0PkczJW', NULL, '2023-07-11 16:45:46', '2023-07-11 16:45:46'),
(41, 'Ahmad Taufiq Ilham', 123, 0, 'Taufiq', '', NULL, '$2y$10$lWbfSKJ//C2Uv0uamKn6we578w5V2F/p2G7NaTFCRb7RwvF/DRaYC', NULL, '2023-07-11 16:46:01', '2023-07-11 16:46:01'),
(42, 'Allif Syahida Alfitra', 123, 0, 'Allif', '', NULL, '$2y$10$TCIStSgkoXwKpdLk7qyKQulAJTQSt8GbZswwNLfpmghHE9Wjhr20W', NULL, '2023-07-11 16:46:22', '2023-07-11 16:46:22'),
(44, 'Ananda Rizky Nur Azizah', 123, 0, 'Nanda', '', NULL, '$2y$10$DvRWHbLBGAfjEzPhk7aMheuf8KZQyPLcoVLWFlsBlBhaDqKRCbzGe', NULL, '2023-07-11 16:47:58', '2023-07-11 16:47:58'),
(45, 'Daffa Alghifari Heyza', 123, 0, 'Dapung', '', NULL, '$2y$10$dWXcpsxV/8p5W8chz5TJLu3B2rp2Qv1bd/ZAjHwvr24UmZ0yJdah2', NULL, '2023-07-11 16:48:37', '2023-07-11 16:48:37'),
(46, 'Gagah Puji Ramadhani', 123, 0, 'Gagah', '', NULL, '$2y$10$X8ZA0qIDEEhHcumRTT3cgu3OI92luTEVA2o4hHLkbSBhGTzUETdNC', NULL, '2023-07-11 16:49:00', '2023-07-11 16:49:00'),
(47, 'Haniya Alimah', 123, 0, 'Haniya', '', NULL, '$2y$10$Mme9bIrmOjkszCX57zorNezZICVjFTWp0X20.EhHykS5s5Xm0SO1G', NULL, '2023-07-11 16:49:15', '2023-07-11 16:49:15'),
(48, 'Irvan Neldi Al-Fakhri', 123, 0, 'Irvan', '', NULL, '$2y$10$.jSkgOjgjTPIQYhrTor1xOginq2anCgROdbg3WHSwlTBCqnxR2hXK', NULL, '2023-07-11 16:49:36', '2023-07-11 16:49:36'),
(49, 'Keisha Puti Aleyda', 123, 0, 'Keisha', '', NULL, '$2y$10$N4CWZqBFzzuI/4hzPiN6QOfgZXsRoN.4g7mVE6mUDZzBVMWtuz3fi', NULL, '2023-07-11 16:49:53', '2023-07-11 16:49:53'),
(50, 'M Zulkarnain M Nur', 123, 0, 'Ijul', '', NULL, '$2y$10$k5y1JZqI4q.WiQhcmGWwN.h9iPXcf5nl1MGQPelxl4EagPbMhYal.', NULL, '2023-07-11 16:50:36', '2023-07-11 16:50:36'),
(51, 'M. Nehza Rausan Shadra', 123, 0, 'Nehza', '', NULL, '$2y$10$Xq7qmvUcV5IXrQTY8iXQReafMrCBqL.FwIL4qcMg7eH71zJV1cM2m', NULL, '2023-07-11 16:51:13', '2023-07-11 16:51:13'),
(52, 'Muhammad Bagas Almasya', 123, 0, 'Bagas Almasya', '', NULL, '$2y$10$wsZr//Acrsgew0MVBJYQ6.T9h5a4ssn0NgJFQqH2yruz0RukLhhGe', NULL, '2023-07-11 16:51:33', '2023-07-11 16:51:33'),
(53, 'Najwa Aqilah', 123, 0, 'Naqil', '', NULL, '$2y$10$FHE7lJ9wNN3V8skZ5z6TYe2lZf4m.VQ0GmmXtehBLijk7rL/JdR9.', NULL, '2023-07-11 16:51:46', '2023-07-11 16:51:46'),
(54, 'Savira Ahsani Praba', 123, 0, 'Savira', '', NULL, '$2y$10$tFP1TcEjxZkUbD56cwxSUO8IjnUt1U5qNzH86aKgl/1H5G.eOezMK', NULL, '2023-07-11 16:52:01', '2023-07-11 16:52:01'),
(55, 'Zahratul Jannah', 123, 0, 'Atul', '', NULL, '$2y$10$jlZSQWsISuu4FIw0eDkCc.JB75MfQ.cUCRGmeznl0DI7BzzwB/Moa', NULL, '2023-07-11 16:52:20', '2023-07-11 16:52:20'),
(56, 'Adelia Ramadhani', 101, 0, 'Adel', '', NULL, '$2y$10$phiZR1dSKahBAMfa9RGJg.ytDUducC1L4Io9a2oCy9jORtNYIemBK', NULL, '2023-07-11 16:52:40', '2023-07-11 16:52:40'),
(57, 'Ahmad Fatihul Ihsan', 101, 0, 'Fatihul', '', NULL, '$2y$10$THNSrOUaS84dOjesQCdFz.5s8bnAJoz4x6Nvi2V7Etybmr4izKQR6', NULL, '2023-07-11 16:53:16', '2023-07-11 16:53:16'),
(58, 'Aliyya Pratiwi', 101, 0, 'Aliyya', '', NULL, '$2y$10$Sjyy9gp5ra1PFydKFTPKlueckUlQtT9awB.Xd5OfsHQTnNuunITA2', NULL, '2023-07-11 16:53:35', '2023-07-11 16:53:35'),
(59, 'Annisa Nur\'aini Agustin', 101, 0, 'Anis', '', NULL, '$2y$10$RXco1L03cWKPsFQL76ofwu64XZObAahGZozJ3kS2vDkSUSgResQkC', NULL, '2023-07-11 16:54:00', '2023-07-11 16:54:00'),
(60, 'Bakas Riffat Anedza', 101, 0, 'Bakas', '', NULL, '$2y$10$WUPTH4DMDVAHd1GGai497.GkMeNnE1dC18gG76fAqLm66PdWgp3ju', NULL, '2023-07-11 16:54:16', '2023-07-11 16:54:16'),
(61, 'Bunga Tiara Sani', 101, 0, 'Bunga', '', NULL, '$2y$10$4rgD.8n6RWLEtAuUdAZ.zuPO53EHR0idXDTCmPQFn4TaIJlIvZCXe', NULL, '2023-07-11 16:54:29', '2023-07-11 16:54:29'),
(62, 'Cindy Zahra Amelia', 101, 0, 'Cindy', '', NULL, '$2y$10$NOhosGfESif3VnelNfd/7O1jbYbk6tPSEr1ZdVbZrc54xVercHD82', NULL, '2023-07-11 16:54:42', '2023-07-11 16:54:42'),
(63, 'Dafa Suryadi Putra', 101, 0, 'Dapsur', '', NULL, '$2y$10$QayIcLNGg52fCDZAfioMBukKZD/Jzq6.fMts.uZjlkBkKPsHSyhJu', NULL, '2023-07-11 16:54:55', '2023-07-11 16:54:55'),
(64, 'Danisha Alika Maharani', 101, 0, 'Alika', '', NULL, '$2y$10$HM4C2PZSSCoPMVpbjjqzauIC7wYDP2ibWnTJnJ7aPGK8sz/L/Arzy', NULL, '2023-07-11 16:55:17', '2023-07-11 16:55:17'),
(65, 'Gitannisa Aulia Azzahra', 102, 0, 'Gitannisa', '', NULL, '$2y$10$pz/qPfNVJIGHPXz.ZA4QAuQJJ1irsKl2zAUtkaYw9CpKqfyxcu5Lu', NULL, '2023-07-11 16:55:49', '2023-07-11 16:55:49'),
(66, 'Jasmine Aulia Azzahra', 101, 0, 'Jasmine', '', NULL, '$2y$10$ZfFIbBBCxVVzwgQAwQRGCOYtHxufwegrJ580yYIHEGCjGpKSIBGG6', NULL, '2023-07-11 16:57:25', '2023-07-11 16:57:25'),
(67, 'M. Gibran Nusantara', 101, 0, 'Gibran', '', NULL, '$2y$10$xyOxYpR0M0Lcoywv4oZLve7ox8kPLX13NlpiX..JGbbA1H8mBVkge', NULL, '2023-07-11 16:58:39', '2023-07-11 16:58:39'),
(68, 'Mochammad Rullyansyah', 101, 0, 'Rully', '', NULL, '$2y$10$jfae/GCdNK.3WDmkLdBoreMULrV6IIGOA7FqkFFh2HoE.Hf6I3iEO', NULL, '2023-07-11 16:59:50', '2023-07-11 16:59:50'),
(69, 'Moh. Daffa\' Annur', 101, 0, 'Annur', '', NULL, '$2y$10$J2xWs3diCUg8SVUZvRXy5O1inu.gRAeve.OqavuB9.7cv0dhFhDmS', NULL, '2023-07-11 17:02:51', '2023-07-11 17:02:51'),
(70, 'Ahmad Zain Furqon', 101, 0, 'Zain', '', NULL, '$2y$10$Bq9jT5vE3r4QNcUQIbkDF.PoMEqI8uUMvfMfcNCK1ksUZ.qcHC/6K', NULL, '2023-07-11 17:02:53', '2023-07-11 17:02:53'),
(71, 'Muhammad Nova Al Farizi', 101, 0, 'Al Farizi', '', NULL, '$2y$10$kI5slMrNZ0HVR.LQIH4Qa.wvjcBtD7hhrNNo8Ev4wsSP0mz0JA7A6', NULL, '2023-07-11 17:03:26', '2023-07-11 17:03:26'),
(72, 'Ananda Luthfi Ramadhani', 101, 0, 'Ananda', '', NULL, '$2y$10$GW/fAvU./MFtv.t.n/ErJuOTWwFuxw9UubvT27X8O8E.fr4fsPVw.', NULL, '2023-07-11 17:03:41', '2023-07-11 17:03:41'),
(73, 'Najwa Fitri Qurnaini', 101, 0, 'Najwa', '', NULL, '$2y$10$M8fPEum5dHp/ZAlYXGdFRufSG6vwn9DBTeqnqjP2QJ8zuLI3y4tJ.', NULL, '2023-07-11 17:03:42', '2023-07-11 17:03:42'),
(74, 'Sharhan Abi Fadillah', 101, 0, 'Abi', '', NULL, '$2y$10$CzL81pwXQaF0Qpi3NlWrwuegtmoG2axkNnRfsFpMabA7ujrmZbDxW', NULL, '2023-07-11 17:03:56', '2023-07-11 17:03:56'),
(75, 'Ananta Insan Taqwa', 101, 0, 'Ananta', '', NULL, '$2y$10$FcLMe8hLgK7nfvfcnEbB7OXsp0rG/rEVcqbU..8Z6zD1D/fpMbxZi', NULL, '2023-07-11 17:04:13', '2023-07-11 17:04:13'),
(76, 'Zalfa Ayu Kirana', 101, 0, 'Zalfa', '', NULL, '$2y$10$4hNYf4s76KLQsoWJUW8cCeFb5v1vr19jSWxfgvaN.v0qMvkubHVR.', NULL, '2023-07-11 17:04:15', '2023-07-11 17:04:15'),
(77, 'Abdul Lathif Astsaqif', 101, 0, 'Lathif', '', NULL, '$2y$10$gQ2xhXsKM7ZQAoG8U4xHVO0L7ejp/GhR0NVUV3/nnXGQ7VNFUWIdy', NULL, '2023-07-11 17:04:37', '2023-07-11 17:04:37'),
(78, 'Adetya Cahya Fajar', 101, 0, 'Fajar', '', NULL, '$2y$10$czU7wY6BC3YvxUNnUg1N8.3MxyTtUHF2zCG6jdlRn2UB6ssztbR12', NULL, '2023-07-11 17:05:02', '2023-07-11 17:05:02'),
(79, 'Attala Alem Kautsar', 101, 0, 'Alem', '', NULL, '$2y$10$gpOqM518Rq7AzLCkKbNYke5kjJpOjC6gHbQbYK.WcOEmx9no7I/zO', NULL, '2023-07-11 17:05:21', '2023-07-11 17:05:21'),
(80, 'Aurelia Rizky Aziza', 101, 0, 'Aurel', '', NULL, '$2y$10$EaF0jeAzeFb9jGoDMPZZZubFdXq31c4zONeBvyd3AFxaFkI4tqmJq', NULL, '2023-07-11 17:05:42', '2023-07-11 17:05:42'),
(81, 'Boffin Elga Aditya', 101, 0, 'Boffin', '', NULL, '$2y$10$xAzdt4X7BANU8AWmPm0J/OKc1GIS3AAIcPZnTNdnl3LuzY5Z5zG36', NULL, '2023-07-11 17:05:52', '2023-07-11 17:05:52'),
(82, 'Cesa Ayupratiwi Aslamasya', 101, 0, 'Cesa', '', NULL, '$2y$10$TRcpHO9YSow6x7pUZzAL8uibdK7QP.2JW0T9QSGP1Oj9hPfOkmMo2', NULL, '2023-07-11 17:06:14', '2023-07-11 17:06:14'),
(83, 'Dedek Huda syifa fu\'ady', 101, 0, 'Dedek', '', NULL, '$2y$10$8NPnB0x8dHGC/CdUl.7zS.ZYWhm0fXt94h5Zz.qjnmrmcnNveuP3.', NULL, '2023-07-11 17:06:22', '2023-07-11 17:06:22'),
(84, 'Diah Ayu Putri Maharani', 101, 0, 'Diah', '', NULL, '$2y$10$P3cybx4ySTLaSWi1LLaAj.Cqx91GICEy7HO7K61YBrmGlxxhqkqJe', NULL, '2023-07-11 17:06:32', '2023-07-11 17:06:32'),
(85, 'Dinda Ayu Candra Pratiwi', 101, 0, 'Dinda', '', NULL, '$2y$10$c0Z9QAqQr0dDCD72WhqMtuzkVnzDIB.WXngId3EFmIu94R74CK8l.', NULL, '2023-07-11 17:06:50', '2023-07-11 17:06:50'),
(86, 'Gabriel Zahratul Shita Permana', 101, 0, 'Geby', '', NULL, '$2y$10$jJrqnzEkUpZ8vMBq2PyU8.yhJbH1aRc/FcYQ48Ft8pbHyK4CV1a0K', NULL, '2023-07-11 17:07:24', '2023-07-11 17:07:24'),
(87, 'Fahmi Naufal Zaki', 101, 0, 'Mbappe', '', NULL, '$2y$10$tkSyv6S2C2Y1s2nNSLo2/u.CRjlFd1PwkZNY0tzhr5eEgd/uGXxQO', NULL, '2023-07-11 17:07:26', '2023-07-11 17:07:26'),
(88, 'Fakhri Aqil Yusuf', 101, 0, 'Fakhri', '', NULL, '$2y$10$9ghYPR//WpW57GP4HFqa0ecFPpn0PZTqOsxMcJLSQJo5cRvBiTcme', NULL, '2023-07-11 17:07:39', '2023-07-11 17:07:39'),
(89, 'Gita Zahra Ananata', 101, 0, 'Gita', '', NULL, '$2y$10$bmlSQcuUhf9JR3kcAnuYTeoUnfTRhEyca4NcdI.PLOxZYV8gNGg6G', NULL, '2023-07-11 17:07:59', '2023-07-11 17:07:59'),
(90, 'Haliza Khumaira', 101, 0, 'Icha', '', NULL, '$2y$10$hZqZwwJ3eSOgLJ2evT.38uGdo2DFQBOsBC6W1ZePwvy7JBBs2.i.u', NULL, '2023-07-11 17:08:03', '2023-07-15 10:57:35'),
(91, 'Hafsa Adzkia', 101, 0, 'Hafsa', '', NULL, '$2y$10$3LBVSjJejGlEc2ysM1oRA.qL/9jkD9Z3hvgQIYI9NdGFSb/q3DJL2', NULL, '2023-07-11 17:08:12', '2023-07-11 17:08:12'),
(92, 'Kayla Salmina Annisa', 101, 0, 'Kayla', '', NULL, '$2y$10$/i12aEwCDsTMktab76WmI.MIUTfR5DXqosr1.1MZn9F3CXdxZBaZi', NULL, '2023-07-11 17:08:48', '2023-07-11 17:08:48'),
(93, 'Ilham Haidar Rafif Arifin', 101, 0, 'Ilham', '', NULL, '$2y$10$qJIcW/Kob33y.CFXIx5NWugQaKw8atuskqUsrSGL/3zmlGq7CBlHG', NULL, '2023-07-11 17:08:49', '2023-07-11 17:08:49'),
(94, 'Keysha Avriel Abelia', 101, 0, 'Keysha', '', NULL, '$2y$10$BqaL4o/DuZAEQtUV1H1ISeJEaJDNgEmqd1Is6GMg/sOCSBEF4dnXC', NULL, '2023-07-11 17:09:02', '2023-07-11 17:09:02'),
(95, 'Intan Tahta Apikan', 101, 0, 'Intan', '', NULL, '$2y$10$oE.vkqqtc5eLzbYeoXorm.05DQxBKxhowOy5NiqTS.nSl/v50z0Pu', NULL, '2023-07-11 17:09:13', '2023-07-11 17:09:13'),
(96, 'Muhammad Rasya Al Hafidz', 101, 0, 'Rasya', '', NULL, '$2y$10$pKy833eCE62bmUNkFmgpL.HDR9kOGmD4nZHiLzzBy9FSS3iCmi8.a', NULL, '2023-07-11 17:09:24', '2023-07-11 17:09:24'),
(97, 'Muhammad Rizky', 101, 0, 'Eki', '', NULL, '$2y$10$YMAMzvJv0sXVvS/1gycBTe7xjuU5HfWY5wRNZ4n5ejWVf/4Vz.F6y', NULL, '2023-07-11 17:09:37', '2023-07-11 17:09:37'),
(98, 'Jundi Khalifaturrohman', 101, 0, 'Jundi', '', NULL, '$2y$10$0PuluRPYnHKH/mtVPR05Dua1ZLThr1GuG2rS1n7Kk0UUDoi1H7C4y', NULL, '2023-07-11 17:09:39', '2023-07-11 17:09:39'),
(99, 'Nasriyatul Ilmi', 101, 0, 'Ilmi', '', NULL, '$2y$10$AygROoqjeNJOfsSLW25CK.ocf3KzgJk4dXc7D3ZFoFls/GWspNaY2', NULL, '2023-07-11 17:10:06', '2023-07-11 17:10:06'),
(100, 'Lucya Putri Ramadhani', 101, 0, 'Lucy', '', NULL, '$2y$10$43fp9RKPTbmfU0r5io9vFu6t32cix1SMqWitcHRbCptiVxAbq0jvy', NULL, '2023-07-11 17:10:08', '2023-07-11 17:10:08'),
(101, 'Nibras Luthfiyah Masputra', 101, 0, 'Niby', '', NULL, '$2y$10$5zloDpYRKj51gGhD57VFwOg.lLksVKDjHXB/FOg5myqhbgXgNP732', NULL, '2023-07-11 17:10:25', '2023-07-11 17:10:25'),
(102, 'Tisara Muliya Mutca', 101, 0, 'Tisara', '', NULL, '$2y$10$ucqv0Go0b93riYbwWOFoCeaICLmLuQ4Ys7J0rCQVJwdx3h8Ef2qki', NULL, '2023-07-11 17:11:08', '2023-07-11 17:11:08'),
(103, 'Zayyan Muhammad Ihsan', 101, 0, 'Zayyan', '', NULL, '$2y$10$Z9gKrRZRWjajq9DVn9gRdegueVovkoW4VymSXVxtkg/RcPZC6ft4O', NULL, '2023-07-11 17:11:24', '2023-07-11 17:11:24'),
(104, 'Miasya Jantika Fisminisya', 101, 0, 'Miasya', '', NULL, '$2y$10$OJTzCuZoStBtmLg/l44MG.cA80aVg5SQhVoyiMw74xRPUmb8NSGnG', NULL, '2023-07-11 17:12:36', '2023-07-11 17:12:36'),
(105, 'M. Ulinuha As Shiddiqy', 114, 0, 'Ulin', '', NULL, '$2y$10$1GuUjkEQmDuySPUCSfhSp.TGEUBggebeTgDjd/nB0BiDqRfJ/hlmW', NULL, '2023-07-11 17:12:40', '2023-07-12 21:04:55'),
(106, 'Muhammad Khadafi', 114, 0, 'Khadafi', '', NULL, '$2y$10$2hOSmozs8mINQv8KVma16OshlvSU50fB2EVLC78S.vfEGUvu0vGIi', NULL, '2023-07-11 17:12:54', '2023-07-12 21:05:51'),
(107, 'Mzalifunnas', 101, 0, 'Zalif', '', NULL, '$2y$10$XuesSOYtmL5W1XPcIw1X6eFd99hZQIcgAotoBf7TSsOUPm/iinKKq', NULL, '2023-07-11 17:13:10', '2023-07-11 17:13:10'),
(108, 'Nayla Azzahra Choirunnisa', 101, 0, 'Nayla', '', NULL, '$2y$10$U61D1veyLKX5RWws6Ir0ZupFxfI4bFD1YwOW7EYRjd1snp4DlrvKK', NULL, '2023-07-11 17:14:00', '2023-07-11 17:14:00'),
(109, 'Valizha Aulia Putri', 101, 0, 'Valizha', '', NULL, '$2y$10$IFIXElUgwIFIgqDwcuisY.tRXIVF8Wg5QtEipHjvETO834KVHNEiq', NULL, '2023-07-11 17:14:29', '2023-07-11 17:14:29'),
(110, 'Yeva Rahayu', 101, 0, 'Yeva', '', NULL, '$2y$10$LtMO/.nJwXbBmJOPeorsAeNphDtE7eOttf8udseU4sHy4YCnhDvAm', NULL, '2023-07-11 17:14:32', '2023-07-11 17:14:32'),
(111, 'Akmal Zahid Muafa', 101, 0, 'Akmal', '', NULL, '$2y$10$2BIuTX5jqbT3ocwxNwmkMuEgm5xMWGQ9muqhJPXo2BK95jrl6Nslq', NULL, '2023-07-11 17:14:49', '2023-07-11 17:14:49'),
(112, 'Callysta Cantika Queenaya Wibowo', 101, 0, 'Ceka', '', NULL, '$2y$10$LdAGcopDe7fLB/Zyz672muBFaPBl7EdKry8bOq3tZb9.BPkrhuydS', NULL, '2023-07-11 17:15:12', '2023-07-11 17:15:12'),
(113, 'Tanisha Sharliz Rizqin', 101, 0, 'Tanisha', '', NULL, '$2y$10$CpEBoA1mTfr.mW8Itw3SO.es3vw5q7bA9ek6Eef2B659vWEf5hPPS', NULL, '2023-07-11 17:15:15', '2023-07-11 17:15:15'),
(114, 'Dima Persada Effendi Ginting', 101, 0, 'Dima', '', NULL, '$2y$10$s0Cq8HTihCuKoDNROgTN7.4iMiEiFOov3JVS9shqa9vyc2me5QwWO', NULL, '2023-07-11 17:15:25', '2023-07-11 17:15:25'),
(115, 'Elmalia Putri', 101, 0, 'Elma', '', NULL, '$2y$10$lHNumkFq6hmKVQfaPJQY0epgXHjCBEgGhUDwk6AZd/ahqTZ6v9w3O', NULL, '2023-07-11 17:15:48', '2023-07-11 17:15:48'),
(116, 'Rahma nabila', 102, 0, 'Rahma nabila', '', NULL, '$2y$10$wkwYUsbAicvYO0jXUorhTevhWA4drGk0bPcBqHcRokYRIVVPxQx6W', NULL, '2023-07-11 17:15:50', '2023-07-11 17:15:50'),
(117, 'Firza Hanan Hansela', 101, 0, 'Firza', '', NULL, '$2y$10$dT72sTI28pzHGkQCzi8Jn.7c5esAvaejua0EBNh0Bz6MN/1GsQHC6', NULL, '2023-07-11 17:16:00', '2023-07-11 17:16:00'),
(118, 'Gina Centrina', 101, 0, 'Gina', '', NULL, '$2y$10$X/zlrsK0b7KF6rTgbvgyvOMegZflBLQ9oSuU/kTy0uDlMLmCYXFve', NULL, '2023-07-11 17:16:12', '2023-07-11 17:16:12'),
(119, 'Lingga Aulia', 101, 0, 'Lingga', '', NULL, '$2y$10$FW0lqml2Icpvgcl4GEYJMuJfHGmRc5SyNp8BE4qGbdnNUw/SJyJIa', NULL, '2023-07-11 17:16:22', '2023-07-11 17:16:22'),
(120, 'Nydia Murtopo', 101, 0, 'Nydia', '', NULL, '$2y$10$BFMGob4cKMdBwlm78h36g.iw/76/W93LAFgikzs9t9ygkueSpiacq', NULL, '2023-07-11 17:16:24', '2023-07-11 17:16:24'),
(121, 'Mighza Sofi Al Fikri', 101, 0, 'Mighza', '', NULL, '$2y$10$9/6oAuY3yQLfajF//q7yxepKzhEmAHzKlFJW8ZCbzFeuQQx3XfilG', NULL, '2023-07-11 17:16:35', '2023-07-11 17:16:35'),
(122, 'Mohamad Reisyal Luthfi Taufik', 101, 0, 'Reisyal', '', NULL, '$2y$10$YCeMKLlSY8bxa7Ik24497OcVZU2lNz10HjzTAMD81txoPQxJ8Z7Ge', NULL, '2023-07-11 17:16:54', '2023-07-11 17:16:54'),
(123, 'Kelvin Satria Pratama', 101, 0, 'Kelvin', '', NULL, '$2y$10$GAmKovf2jPbzIleAWLDXA.G1oa.otAmuM1fBPNUEYKft7Klf7Tggm', NULL, '2023-07-11 17:16:57', '2023-07-11 17:16:57'),
(125, 'Muhammad Harits Adz Dzaky', 101, 0, 'Adz Dzaky', '', NULL, '$2y$10$LHNpdkk2JjHiVjWiom75KeUbFlQDHCtJhxXT2og11HTsycTflLy8C', NULL, '2023-07-11 17:17:28', '2023-07-11 17:17:28'),
(126, 'Muthia Wafa Syahida', 101, 0, 'Wafa', '', NULL, '$2y$10$RxfqfLuRAAuflnighyaft.Q.waWYIuKLUf7p.9L8Wk0DU56lq33yG', NULL, '2023-07-11 17:17:42', '2023-07-11 17:17:42'),
(127, 'Nabhan Al Farrel Ardian', 101, 0, 'Nabhan', '', NULL, '$2y$10$XHYuUg3CygPSk0cEtxd0c.07Biln2ui7aQ1r7zaCPecROXYgvj2NO', NULL, '2023-07-11 17:18:03', '2023-07-11 17:18:03'),
(128, 'Naufal Hadi Rizqullah', 101, 0, 'Hadi', '', NULL, '$2y$10$1P2.chEHzQIGnooF1ytl.eCMVie5xLp.tbLRAf4C8mM0HI5oFZrnC', NULL, '2023-07-11 17:18:44', '2023-07-11 17:18:44'),
(129, 'Naufal Daffa Abiyu', 101, 0, 'Abiyu', '', NULL, '$2y$10$b6MtCKWc66nCe5ZbHqckIuc5Kny/hwmlVy9snfpQf.9pIhL6Xnb3C', NULL, '2023-07-11 17:18:56', '2023-07-11 17:18:56'),
(133, 'Addo Rajendra Lukito', 101, 0, 'Addo', '0', NULL, '$2y$10$M44miMeTEyuV2eSZ6fx4TedIG9xF60PJ0dhr3vX1jRIX196quYRK6', NULL, '2023-07-15 08:02:08', '2023-07-15 08:02:08'),
(134, 'Adrian Zulhilmi', 101, 0, 'Adrian', '0', NULL, '$2y$10$HfQDGhdJDbjcuVra2IDm7OnqCZrKGLWYZJ98T8RPBviruVzw.b9iy', NULL, '2023-07-15 08:04:34', '2023-07-15 08:04:34'),
(135, 'Akmal Reza Fauzi', 101, 0, 'Reza', '0', NULL, '$2y$10$HRufyETtZBGgMSqImPU/zuLn6u9s7i1V8zhOX9hghfbR1JXqnhL1K', NULL, '2023-07-15 08:05:31', '2023-07-15 08:05:31'),
(136, 'Alfreda Nabil Aryaputra', 101, 0, 'Nabil', '0', NULL, '$2y$10$n1QG3lM.WrIlLakqSP1xleLlh5JQlXgY7x.VivHx6W9/XsGTLFJsC', NULL, '2023-07-15 08:06:15', '2023-07-15 08:06:15'),
(137, 'Alif Muhammad Fathurroman', 101, 0, 'Alif', '0', NULL, '$2y$10$4v1kzLLvTKk4E6R60RiOBO6.AFVCkP.ojr4lfePJ5gyetXw2lsX9C', NULL, '2023-07-15 08:06:54', '2023-07-15 08:06:54'),
(138, 'Aliza Zhafira Alya', 101, 0, 'Aliza', '0', NULL, '$2y$10$YO3diFXYpkHywS24MG3UrOtLPlabzCQkj6XxoCFw7vC9Vt5HtEIFS', NULL, '2023-07-15 09:24:21', '2023-07-15 09:24:21'),
(139, 'Ananda Boby Rahmadhani', 101, 0, 'Boby', '0', NULL, '$2y$10$f3jIHHpo1mSg45yn.aRwNeVAXXtQT2qe9biIR09Jzt6gBoYfakY5y', NULL, '2023-07-15 09:24:54', '2023-07-15 09:24:54'),
(140, 'Andini Nabila Nur Islami', 101, 0, 'Andini', '0', NULL, '$2y$10$OdejlLNU9A5aA/WmfA7RmOJrFuSDyhHuboVVXDrFdCYrjvfqGM0Yq', NULL, '2023-07-15 09:42:11', '2023-07-15 09:42:11'),
(141, 'Anggita Riski', 101, 0, 'Anggita', '0', NULL, '$2y$10$f.5qkJxzV.ZHwro4ltsy6uPSRohA13MfdvbOFXuOjY3a7ip3pHVeC', NULL, '2023-07-15 09:42:57', '2023-07-15 09:42:57'),
(142, 'Anindya Asti', 101, 0, 'Asti', '0', NULL, '$2y$10$MunnLAsanQQ0Cy.UAl30dekTSm6BGEEjBNYF3uTAHzxPz4ID.flPO', NULL, '2023-07-15 09:43:23', '2023-07-15 09:43:23'),
(143, 'Anna Azzahra Althafunnisa Wahyudi', 101, 0, 'Anna', '0', NULL, '$2y$10$68tv.pXeGGS93ipbCO6XLO/sOQZlHdv6V3CL79EajcYs4xwZCb8n2', NULL, '2023-07-15 09:44:08', '2023-07-15 09:44:08'),
(144, 'Aqilah Zaka Nasyali Biranova', 101, 0, 'Aqilah', '0', NULL, '$2y$10$in8E4zryVkJ6gpsAoZKYiu39zjtx3uO1ap8IAmS4qqmJJPhOacNiG', NULL, '2023-07-15 09:44:54', '2023-07-15 09:44:54'),
(145, 'Aretha Kurnia Zizi Sandrica', 101, 0, 'Aretha', '0', NULL, '$2y$10$/WUgsBUVwA.GwAyv0TVR.OzL1DBHuge9LyEZdagfVCOsyAZk4VAyu', NULL, '2023-07-15 09:45:45', '2023-07-15 09:45:45'),
(146, 'Arnay Silla Widayanti Putri', 101, 0, 'Silla', '0', NULL, '$2y$10$Mr8IvDB2fnx02w2q/.YS5OjEzY8kkNsRaKwjIaWwXg9d0K1iswZDe', NULL, '2023-07-15 09:46:47', '2023-07-15 09:46:47'),
(147, 'Arya Fikri Wazifa Sofyan', 101, 0, 'Arya', '0', NULL, '$2y$10$coq1z3oQTjBWB5ZtgthdrOODX5kUy8.KrstpE3hn7NvjD4ynMw0di', NULL, '2023-07-15 09:48:40', '2023-07-15 09:48:40'),
(148, 'Athaya Ghina Aprilia', 101, 0, 'Athaya', '0', NULL, '$2y$10$AOnVPShpVyECuUV6U.AQO.XfXjTqEKCAIxDdosYd/t18UY1mroxEq', NULL, '2023-07-15 09:49:20', '2023-07-15 10:57:10'),
(149, 'Auditya Langit Digdaya', 101, 0, 'Auditya', '0', NULL, '$2y$10$Ak5WiBAOrBmG.bToI2Oygu0S7A1psU2YmZJHDnZzkLQio2WFoflPm', NULL, '2023-07-15 09:50:00', '2023-07-15 09:50:00'),
(150, 'Aulya Dwi Kartika', 101, 0, 'Aulya', '0', NULL, '$2y$10$kTWZQBqYGSLwTwTFW15cLey5k1U/phOWSNg63auYWvC1i9mKqIVP2', NULL, '2023-07-15 09:50:23', '2023-07-15 09:50:23'),
(151, 'Aviciena Zacky Dzulkaisi', 101, 0, 'Zacky', '0', NULL, '$2y$10$5RSWrmxFiWSfnkCoM6DCL.dnym3uvIo93b1cvmB3/ZZMSvufMFkgq', NULL, '2023-07-15 09:51:04', '2023-07-15 09:51:04'),
(152, 'Azelea Celesta Hadi', 101, 0, 'Azel', '0', NULL, '$2y$10$E0gtavDhvicuFjWRncq33.2FXZ1ZOGJ1xIuMlVd545v4bEcse4Bbu', NULL, '2023-07-15 09:51:55', '2023-07-15 09:51:55'),
(153, 'Azzahra', 101, 0, 'Zahra', '0', NULL, '$2y$10$oL92/LfA8P0uqjU2cY1hbetqK4kXhS.pe5/Xus4U1npe3.QoC3Jcu', NULL, '2023-07-15 09:52:16', '2023-07-15 09:52:16'),
(154, 'Bhadrika Humaidi Zaidan', 101, 0, 'Bhadrika', '0', NULL, '$2y$10$BR9x75ormnsIFUx8qtH/2OILa6iXRaCnp0wzbNS0Nk2SgPBXumorm', NULL, '2023-07-15 09:53:05', '2023-07-15 09:53:05'),
(155, 'Burhanudin Robani', 101, 0, 'Burhan', '0', NULL, '$2y$10$zcoq/PdkTiMPwptkS/2LPO61FwlsxyYOx6OdlCb8WCr/xzC/GrHRy', NULL, '2023-07-15 09:53:34', '2023-07-15 09:53:34'),
(156, 'Chiara Dwi Kalya Nugroho', 101, 0, 'Chiara', '0', NULL, '$2y$10$dqcNvX/Qqom67wXtgAWjz.UFwwQ5wr0IvJ6js8f/6YvZiOOG2m/8m', NULL, '2023-07-15 09:54:03', '2023-07-15 09:54:03'),
(157, 'Daffa Abdurahman Firas Deriko', 101, 0, 'Firas', '0', NULL, '$2y$10$MRe4Et6ApzBSBhrX4oi75OTiZafkj/tV7yS4zHFEzBpbH84JrVWnO', NULL, '2023-07-15 09:54:40', '2023-07-15 09:54:40'),
(158, 'Dafina Putri', 101, 0, 'Dafina', '0', NULL, '$2y$10$3NU.4nRjHDLnoY9rkWuq3ex/D3Mn0udh2pUxn5F8IsImjbAULcTDO', NULL, '2023-07-15 09:55:03', '2023-07-15 09:55:03'),
(159, 'Dhiandra Habibi Bagaskara', 101, 0, 'Bagas', '0', NULL, '$2y$10$lCi8nNPUWLZueVOUzIpj4uDMa.bT83jTUI0r/l6MuU3AejW/HgVWe', NULL, '2023-07-15 09:57:12', '2023-07-15 11:01:50'),
(161, 'Diva Dwi Pratiwi', 101, 0, 'Diva', '0', NULL, '$2y$10$QdfZJTfiwjKNCU/CJMdh9.nuXQhbN7y5hzM5fmJeKq9it0mQPhHLS', NULL, '2023-07-15 09:58:14', '2023-07-15 09:58:14'),
(162, 'Dwinki Syiva Nabila', 101, 0, 'Syiva', '0', NULL, '$2y$10$aissV3YlUVV8xt8fnXNgqOS9IjYaLvt4WVW4Hh0N4uAUjfPOGTKIK', NULL, '2023-07-15 09:58:45', '2023-07-15 09:58:45'),
(163, 'Dzaki Diayulhaq Hendriawan', 101, 0, 'Dzaki', '0', NULL, '$2y$10$ve/6PHwVnvL1P/hNPF7bXeyoG5d0ZdUbgTlDzGiOG5YGgNUdHQz8q', NULL, '2023-07-15 09:59:32', '2023-07-15 09:59:32'),
(164, 'Embun Bumi Pramo', 101, 0, 'Embun', '0', NULL, '$2y$10$tME/4uKrCv8SY94kQ3hs9ehvRpmAHmZg5Z7elziZOyFmQfDcdAtYW', NULL, '2023-07-15 10:00:02', '2023-07-15 10:00:02'),
(165, 'Fakadis Nikmatul Agniya', 101, 0, 'Fakadis', '0', NULL, '$2y$10$YpHBohSgEEZsWXZsQbvTZuW892kQQrP..8SntEKhLJibyRjZEB/RW', NULL, '2023-07-15 10:01:13', '2023-07-15 10:58:46'),
(166, 'Fakhri Azam Abdillah', 101, 0, 'Azam', '0', NULL, '$2y$10$AoepbIS3rohnR7QqwoU41Ox6KC9/n7pueMN0.mja1X5pI086nXV26', NULL, '2023-07-15 10:02:10', '2023-07-15 10:02:10'),
(167, 'Fayazza Arashel Antaca', 101, 0, 'Fayazza', '0', NULL, '$2y$10$X7oAx1eHJQ1D0zsb7.T2MOd7WUwNeo1sV729z5AgczByGiYMH9Pcm', NULL, '2023-07-15 10:03:08', '2023-07-15 10:03:08'),
(168, 'Fidya Qanita Darmawan', 101, 0, 'Fidya', '0', NULL, '$2y$10$72N9sZdBxjOQbwX4fGPqduScFC.hP7au6wOOis7JpARo.8EOPr6by', NULL, '2023-07-15 10:03:56', '2023-07-15 10:03:56'),
(169, 'Fitri Izzati', 101, 0, 'Fitri', '0', NULL, '$2y$10$jYuIKGdDkgbmEG1rmTFCcO6Q9VQj7HfYcP.lo631ONHLlYMQVe1Zy', NULL, '2023-07-15 10:04:36', '2023-07-15 10:04:36'),
(170, 'Galang Pandu Sagara', 101, 0, 'Sagara', '0', NULL, '$2y$10$SmBXSRGxPshw8SAwFUmf1O1B6H0Ikrs3w0EAM3N9iu2V2ZfcT0wLa', NULL, '2023-07-15 10:04:57', '2023-07-15 10:59:03'),
(171, 'Ghina Salma Adhami', 101, 0, 'Ghina', '0', NULL, '$2y$10$G6tdN4T8dZBRhOYSOQVUaelXa8VIsoPHjOR7poHP5oGYOXK4AhEhe', NULL, '2023-07-15 10:05:37', '2023-07-15 10:05:37'),
(172, 'Hasna Zahidah', 101, 0, 'Hasna', '0', NULL, '$2y$10$KHDwvNJF9FhxfTEQFZrTyeiYiaJ5g7N1mJp1pZlJOjkG2ZSKhi3z6', NULL, '2023-07-15 10:06:02', '2023-07-15 10:06:02'),
(173, 'Javier Fatih Anka Zanneti', 101, 0, 'Javier', '0', NULL, '$2y$10$SKUcNe.f6MGHxSOE2WNlQuNFs4BOSaKzKw3xES/LO4E355n.jgFj6', NULL, '2023-07-15 10:06:33', '2023-07-15 10:06:33'),
(174, 'Kaila Yaffa Anggraini', 101, 0, 'Yaffa', '0', NULL, '$2y$10$f.vjLgjHFuF/qS9K1HmO2uRs36eAg1FKr3eLvFSM5Dz8qovSINk1i', NULL, '2023-07-15 10:07:10', '2023-07-15 10:07:10'),
(175, 'Kayyisah Sausan', 101, 0, 'Kayyisah', '0', NULL, '$2y$10$EhfH8wB0APLRKRZk8Yhcgu9Yd1rQo1JWc6/UOZHiMwalwyRraKMM2', NULL, '2023-07-15 10:07:38', '2023-07-15 10:07:38'),
(176, 'Keisya Indriani Astuti', 101, 0, 'Astuti', '0', NULL, '$2y$10$raomun7GAi8X1rD/q3mYfuLqus4KAaPT6muYYpDEHEYJ84Iuzmoau', NULL, '2023-07-15 10:08:22', '2023-07-15 10:08:22'),
(177, 'Khadafi Zafif Ramadhan ahmad', 101, 0, 'Zafif', '0', NULL, '$2y$10$4qjSSLI1iqk9jDQEqDMx1OTP8Fgqseljrdl3NaGg0ZPiKwc190Pnq', NULL, '2023-07-15 10:09:06', '2023-07-15 10:09:06'),
(178, 'Khaila Syifa Salsabila', 101, 0, 'Khaila', '0', NULL, '$2y$10$bEbDdS5MH2llQKw/NFQy0.6TEgHRaiKAHMcIXPS2Ft9EtbngI0vJ.', NULL, '2023-07-15 10:09:34', '2023-07-15 10:55:53'),
(179, 'Khalisha Aufa Zaura Weismann', 101, 0, 'Khalisha', '0', NULL, '$2y$10$0lR/ZWkYJAGJXa6X3ZHJbeDALyDJxdCvF0FmzuzJMygU.DjHWHRaG', NULL, '2023-07-15 10:20:01', '2023-07-15 10:20:01'),
(180, 'Kheilla Syafira Azzahra', 101, 0, 'Kheilla', '0', NULL, '$2y$10$qq9NT8OJtsHfHnjp1V9e/.8KlGPNb3sJvhSNSCdFBJgGLm35qAdR2', NULL, '2023-07-15 10:23:36', '2023-07-15 10:23:36'),
(181, 'Locita Ayu Parahita', 101, 0, 'Locita', '0', NULL, '$2y$10$GF7/9JR/J/QILnktAUJHJu7QMY9/8OryOG35EbPMvANDOlRlDELaG', NULL, '2023-07-15 10:24:02', '2023-07-15 10:24:02'),
(182, 'Lubna Hasna Hunafa', 101, 0, 'Lubna', '0', NULL, '$2y$10$9jZ4hr.D2qhMOSvxJ5FPdOB4yF2R7.n.sEJFCxcIsa0s2W7qwgedS', NULL, '2023-07-15 10:24:37', '2023-07-15 10:24:37'),
(183, 'Lukluk Nasywa', 101, 0, 'Nasywa', '0', NULL, '$2y$10$0Oi145f.iu.4bDOA8WfMWeZA7xYLSM47Iq1tbz3KvkPiaNr2O5Tje', NULL, '2023-07-15 10:25:05', '2023-07-15 10:59:57'),
(184, 'M Daffa Rasyid Musyafa', 101, 0, 'Rasyid', '0', NULL, '$2y$10$0CUcsa1VS5XgHsCe4bxD1uPxI2TC4F3oDBNx1FPO9HOqBS1LR.Usm', NULL, '2023-07-15 10:25:39', '2023-07-15 10:25:39'),
(185, 'M Riffat Prasetya', 101, 0, 'Riffat', '0', NULL, '$2y$10$lSm55DGlqt5uiJAqw4xihuS6i9R6PLFpnwZsLgwG44CaF/aWFVO7K', NULL, '2023-07-15 10:26:31', '2023-07-15 10:26:31'),
(186, 'Mahda Firdaus Hasan', 101, 0, 'Mahda', '0', NULL, '$2y$10$PVAW.byU6lXzcR9a.GjQUeNWxooeYHu70NPq6N3ibq08yt95o7hsW', NULL, '2023-07-15 10:27:01', '2023-07-15 10:27:01'),
(187, 'Maheswati Citra kirani', 101, 0, 'Citra', '0', NULL, '$2y$10$tqKTvU8PSYQWU639sOwh.ugFYxSLaWOJWIT.FfAbRYgjanmwisMO6', NULL, '2023-07-15 10:27:48', '2023-07-15 10:27:48'),
(188, 'Mahmud Hanafi', 101, 0, 'Hanafi', '0', NULL, '$2y$10$l3OJuijB8d8EkqJOdzuXEeQAGFPNWSpkAO4Jf1jgKutSf9/zl137C', NULL, '2023-07-15 10:28:18', '2023-07-15 10:28:18'),
(189, 'Mohammed Kanaz Arasya', 101, 0, 'Kanaz', '0', NULL, '$2y$10$nRkXPGTk3rYc3e5Kkxs0UuDNAc06Wu6u48vtGxLyZAc9lAUCWhZLm', NULL, '2023-07-15 10:29:01', '2023-07-15 10:29:01'),
(190, 'Muhammad Adzki Abdul Hakim', 101, 0, 'Adzki', '0', NULL, '$2y$10$.qIqCp46EWqrMuEdKiLo1e.IXORd1U4V9sJvdbbU3AjNezMnobNAm', NULL, '2023-07-15 10:29:47', '2023-07-15 10:29:47'),
(191, 'Muhammad Arfin Putra Wiliyanto', 101, 0, 'Arfin', '0', NULL, '$2y$10$lRRqqlDDKaw3A4d8h3xPFuxGsUmN/bSLreiB53Oi9m4FAPMP4PeaC', NULL, '2023-07-15 10:30:24', '2023-07-15 10:30:24'),
(192, 'Muhammad Arif Lukman', 101, 0, 'Lukman', '0', NULL, '$2y$10$jNEQ1pV4CqkJToV8EdW7..CEiRrkq337EnPu.x.mHYWX34F1A9azu', NULL, '2023-07-15 10:31:05', '2023-07-15 10:31:05'),
(193, 'Muhammad Arkananta Fatih', 101, 0, 'Fatih', '0', NULL, '$2y$10$FJRXtuDwAB1VyUKKcp.eMOO6N.zXwWyzbZkGssO6ntaTWJrM6oUzS', NULL, '2023-07-15 10:32:53', '2023-07-15 10:32:53'),
(194, 'Muhammad Fariz Sanjaya', 101, 0, 'Fariz', '0', NULL, '$2y$10$IN81B3dFJgFiyP3jBDkRE.luUlFhqXdoN2.1AfjvmEtDyLry8a01.', NULL, '2023-07-15 10:33:24', '2023-07-15 10:33:24'),
(195, 'Muhammad Fauzan Azhima', 101, 0, 'Fauzan', '0', NULL, '$2y$10$wSGeEg6UM.Y/7.Ok16cRe.VZGY8.uRWZEEZf1jyylKwelUrzG56RS', NULL, '2023-07-15 10:33:55', '2023-07-15 10:33:55'),
(196, 'Muhammad Gabriel Fawwaz Kurniawan', 101, 0, 'Gebi', '0', NULL, '$2y$10$LpfliGdsnn02w8uHGOeD0OyhB6gEkaFOnA2PlGUtgexqNyBBwW6ky', NULL, '2023-07-15 10:34:30', '2023-07-15 10:34:30'),
(197, 'Muhammad Raffa Kanza', 101, 0, 'Kanza', '0', NULL, '$2y$10$xQdlsEyMzI31MY.WoEoPe.Z0P/WPXl/nnaMDUEUYlTUfWWSW.id5W', NULL, '2023-07-15 10:34:55', '2023-07-15 10:34:55'),
(198, 'Muhammad Rayhan Al Fazdri', 101, 0, 'Rayhan', '0', NULL, '$2y$10$IZBW4aSNgy8bFSRhs/ysgOG1ZVJLvQtOKx1GefLQO1MOu5JxYOWMG', NULL, '2023-07-15 10:35:29', '2023-07-15 10:35:29'),
(199, 'Myisha Anindya Luzhniki', 101, 0, 'Niki', '0', NULL, '$2y$10$Wc1j/IMLxmywgypv/IzxxucjMsIKs6iAH0ITf42keCqJTu9XEik2.', NULL, '2023-07-15 10:36:12', '2023-07-15 10:36:12'),
(200, 'Nadhir Zainnur Ramadhan', 101, 0, 'Nadhir', '0', NULL, '$2y$10$TQgU9vmpv1D4B1gowatX2uolSYcWdG18/H3gWTVOPJ2N6WTu002sS', NULL, '2023-07-15 10:36:54', '2023-07-15 10:36:54'),
(201, 'Nadin Ayla Roviqo', 101, 0, 'Nadin', '0', NULL, '$2y$10$OWZUnD5U2mS8mXJa/ap0DuZl6tTu1KT8BESn7oocuDdXbGlVKqQeC', NULL, '2023-07-15 10:37:21', '2023-07-15 10:37:21'),
(202, 'Nadya Rifania Azra', 101, 0, 'Nadya', '0', NULL, '$2y$10$k5RzO7HkpECzJ6ljjcWo5uYLWKgzNDLb3eQrveg/Q0eJnvWfNVZVG', NULL, '2023-07-15 10:37:54', '2023-07-15 10:37:54'),
(203, 'Naila Mahira Khansa', 101, 0, 'Naila', '0', NULL, '$2y$10$yCTMsV2qpPVqJqhgIA1ae./eS.4kBHZBHrgMUKu0R76K58kOZRX/C', NULL, '2023-07-15 10:38:13', '2023-07-15 10:38:13'),
(204, 'Naila Salma Sabilla', 101, 0, 'Sabilla', '0', NULL, '$2y$10$WwK.wA2ZbGu/aw3xyqScQOCanA1sWuwMK3G2kJoVA7ryqW1tPAu/W', NULL, '2023-07-15 10:38:48', '2023-07-15 10:38:48'),
(205, 'Naufal Fakhri Rama', 101, 0, 'Naufal Fakhri', '0', NULL, '$2y$10$pj008KB3wPXI262chiCrfOQuPiuyIOicQ1oJ1df9P0z4yT2ZEt6Oi', NULL, '2023-07-15 10:39:17', '2023-07-15 10:39:17'),
(206, 'Navigate Julio Kiriweno', 101, 0, 'Julio', '0', NULL, '$2y$10$JBuNGIwH3U.l68/alc32NelEuL4/iht/6y7lntGiRB39oPiwXGXmu', NULL, '2023-07-15 10:39:40', '2023-07-15 10:39:40'),
(207, 'Noorsyi Brilian Mahardika', 101, 0, 'Noorsyi', '0', NULL, '$2y$10$dsqQ6jh3UtFbqi7fnN7JnOeNQJZQD65kBpKoLQ8n/7wfBoEBN5Cau', NULL, '2023-07-15 10:40:06', '2023-07-15 10:40:06'),
(208, 'Pinandhita Fatiha Jatikasih', 101, 0, 'Fatiha', '0', NULL, '$2y$10$0jDilDVswKVRfjrFdetpeeRcE6O1TMSGLKC4JHLCotVP7pOzberFG', NULL, '2023-07-15 10:40:39', '2023-07-15 10:40:39'),
(209, 'Raditya Pranawa Faigan', 101, 0, 'Raditya', '0', NULL, '$2y$10$EbUs8axqx9IsTE3iq/zV6.TSXkxQ61dtwW67P5uS3QEn04YHDgJ42', NULL, '2023-07-15 10:41:06', '2023-07-15 10:41:06'),
(210, 'Rahma Aprilia', 101, 0, 'Aprilia', '0', NULL, '$2y$10$pgwp5npYGhCAL485VFvCZ.DXylv5/mD1V53i.idlc4nPk8D6nw43O', NULL, '2023-07-15 10:42:00', '2023-07-15 10:42:00'),
(211, 'Raisya Salwa Azzahra', 101, 0, 'Raisya', '0', NULL, '$2y$10$4rwjXeQ7dEHPZZ5YHp1.3OPvxusixdbLrBw.2F5qAZ3cH3osjT2/S', NULL, '2023-07-15 10:42:33', '2023-07-15 10:42:33'),
(212, 'Reny Fitri Anggraeni', 101, 0, 'Reny', '0', NULL, '$2y$10$eqi9fqpLtuADJFfFnm7c3uVUF3C9e/1ZOoFoFHAbPq8rrhPEwgzFm', NULL, '2023-07-15 10:43:36', '2023-07-15 10:43:36'),
(213, 'Rifat Keandre Al Faruq', 101, 0, 'Rifat', '0', NULL, '$2y$10$IGBGCHdybLKXJ1205Vvv2ugDbI6DCsqcto6RhED67n0uA/yW4LzpS', NULL, '2023-07-15 10:44:02', '2023-07-15 10:44:02'),
(214, 'Rissa Syifa Unnadzifah Sulis', 101, 0, 'Rissa', '0', NULL, '$2y$10$PqKndt3a3/u9d5.1TX5rBuOgDdzMHtLRLz5wnUFUkbqd32twMLeYW', NULL, '2023-07-15 10:44:36', '2023-07-15 10:44:36'),
(215, 'Salman Luthfi El Farisy', 101, 0, 'Salman', '0', NULL, '$2y$10$Zdfnpqx/71OuLpA1i.TIlO64zkgmnGKhbYoISOtUlGWOMTquA55we', NULL, '2023-07-15 10:45:22', '2023-07-15 10:45:22'),
(216, 'Shafi Abdul Hayyi', 101, 0, 'Shafi', '0', NULL, '$2y$10$fMB.5TQIAZMk8.BDVRNJ.O40P6wH30ifmpeEFJDT/E9MYo1tK0iF6', NULL, '2023-07-15 10:45:44', '2023-07-15 10:45:44'),
(217, 'Shiddiq Fadillah Dirgantara', 101, 0, 'Shiddiq', '0', NULL, '$2y$10$nJSy3wEO0DQ15b4sTH4KYu1q3WSkqsM3im4.EErC4SB3RFvy7u/K2', NULL, '2023-07-15 10:47:19', '2023-07-15 10:47:19'),
(218, 'Sifa Azqia Putri', 101, 0, 'Sifa', '0', NULL, '$2y$10$qHX2MROKtVzZfKPaxM69RONEdWKZ3FYnFoFLbSEw2rdWnwku3rcke', NULL, '2023-07-15 10:47:48', '2023-07-15 10:47:48'),
(219, 'Sulthon Lutfi Firdaus', 101, 0, 'Sulthon', '0', NULL, '$2y$10$98c7izpKt3iom39WsaXxIe5pXfqYJCFCRHeBXzBcWJCdnOVs36I.G', NULL, '2023-07-15 10:48:20', '2023-07-15 10:48:20'),
(220, 'Syifa Aulia Makdum', 101, 0, 'Aulia', '0', NULL, '$2y$10$d4HUFH7KJyslCv4yjQLuV.Da36cvOhzKdE/UErDMzZH4nc51y.RM6', NULL, '2023-07-15 10:49:32', '2023-07-15 10:49:32'),
(221, 'Thariq Wafa Gustian', 101, 0, 'Thariq', '0', NULL, '$2y$10$CR7lTccJZ4eNQWQAIcv04Obq5D2sQbh0dgIb8oMskr5sq4OJOQrH6', NULL, '2023-07-15 10:50:42', '2023-07-15 10:50:42'),
(222, 'Tomy Muzaki Abdullah', 101, 0, 'Tomy', '0', NULL, '$2y$10$.ZlQ6qJ69SGG37ZBBi7fGuv4b/nLW.6DXAJ3/KAFI/t.W459bzZx6', NULL, '2023-07-15 10:51:03', '2023-07-15 10:51:03'),
(223, 'Ubaydullah Abdul Wahid', 101, 0, 'Ubayd', '0', NULL, '$2y$10$xw0rCb1R2P54iD0pIi/btujxxUvW6SU53BRK3lWj76ut2B83aFZQi', NULL, '2023-07-15 10:51:43', '2023-07-15 10:51:43'),
(224, 'Visi Diry Avicenna', 101, 0, 'Visi Diry Avicenna', '0', NULL, '$2y$10$zwvIWU0Q3yMfvOLwXPqSQOdWhGyZovCrc7BCefn3zImN/aBLwkxfG', NULL, '2023-07-15 10:53:19', '2023-07-15 10:53:19'),
(225, 'Waldan Farras Qodama', 101, 0, 'Waldan', '0', NULL, '$2y$10$jNIIXaJ5VjjgjQtPfm.l0.mYmWn/r.rIC1G/BikuhyeMm15QGvo2O', NULL, '2023-07-15 10:54:00', '2023-07-15 10:54:00'),
(226, 'Wildan Naufal Dzaki', 101, 0, 'Wildan', '0', NULL, '$2y$10$r4P8muUi9zOAvchhAheyC.RishBBcv1qPLJNeLr15AY6jc21esuqS', NULL, '2023-07-15 10:54:28', '2023-07-15 10:54:28'),
(227, 'Yusuf Fadhil Qinthara', 101, 0, 'Fadhil', '0', NULL, '$2y$10$cHNni5FD7tr1JdcyLlt14.8yhi8g2O8V5MMB7m4NgnVdYTliYjVMO', NULL, '2023-07-15 10:54:47', '2023-07-15 11:07:29'),
(228, 'Zafy Rafif Akbar', 101, 0, 'Zafy', '0', NULL, '$2y$10$hvOBP3hmF6WQikNqG9GQmOrXytlJ1U5POKUsLPRUs2xHJ8jduR0D6', NULL, '2023-07-15 11:07:47', '2023-07-15 11:07:47'),
(229, 'Perpusatakaan', 101, 0, 'perpus', 'perpu@gmail.com', NULL, '$2y$10$BoZaxtApB0DH5u77wQBPyOFxugpCcGfFiHgDP56K.OPgA.bfgC5lK', NULL, '2023-07-16 00:19:43', '2023-07-16 00:19:43');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `borrows`
--
ALTER TABLE `borrows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `borrows_book_id_unique` (`book_id`);

--
-- Indeks untuk tabel `borrow_histories`
--
ALTER TABLE `borrow_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `queues`
--
ALTER TABLE `queues`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sukas`
--
ALTER TABLE `sukas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ulasans`
--
ALTER TABLE `ulasans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT untuk tabel `borrows`
--
ALTER TABLE `borrows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `borrow_histories`
--
ALTER TABLE `borrow_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `queues`
--
ALTER TABLE `queues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sukas`
--
ALTER TABLE `sukas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ulasans`
--
ALTER TABLE `ulasans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
