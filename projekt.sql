-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2021 at 10:44 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekt`
--
CREATE DATABASE IF NOT EXISTS `projekt` DEFAULT CHARACTER SET latin2 COLLATE latin2_croatian_ci;
USE `projekt`;

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `prezime` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `korisnickoIme` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `lozinka` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `razina` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COLLATE=latin2_croatian_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `korisnickoIme`, `lozinka`, `razina`) VALUES
(1, 'sdfsdf', 'sdffsd', 'sdfsdf', '$2y$10$ulP0gPeZEWfVWDlbwqfSVeT7ZKnisrUlEarHZiOqgL0AXtsPsiA0.', 0),
(2, 'dino', 'levacic', 'dlevacic', '$2y$10$BazvKv7kgk.K8zQJa8edy.dHGOB8I2HI37d/36HwLRR8MRzhTxaSe', 1),
(3, 'Dino', 'leva', 'dino', '$2y$10$vtevg5BB36S3Y8X2B0DgM.zd/96cysL1ozJ9k6K42C6dtWhIeYbpS', 0),
(4, 'proba', 'novi', 'novi', '$2y$10$tpPtncU/qmhU2Mi7Q2WMXeIVrBMwylN4OAgAIBTrbA//FxYcypqNe', 0),
(5, 'novi', 'korisnik', 'novo', '$2y$10$cmvOfy4Djv4C7LpnNMMcPe1Z8.KDKB1N0Gs/0pEX607p6nQMUpSTe', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vijesti`
--

CREATE TABLE `vijesti` (
  `id` int(11) NOT NULL,
  `datum` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `naslov` varchar(64) COLLATE latin2_croatian_ci NOT NULL,
  `sazetak` text COLLATE latin2_croatian_ci NOT NULL,
  `tekst` text COLLATE latin2_croatian_ci NOT NULL,
  `slika` varchar(64) COLLATE latin2_croatian_ci NOT NULL,
  `kategorija` varchar(64) COLLATE latin2_croatian_ci NOT NULL,
  `arhiva` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COLLATE=latin2_croatian_ci;

--
-- Dumping data for table `vijesti`
--

INSERT INTO `vijesti` (`id`, `datum`, `naslov`, `sazetak`, `tekst`, `slika`, `kategorija`, `arhiva`) VALUES
(52, '13.06.2021.', 'Sto dolara za cijepljenje', 'STANOVNICI grada Columbusa u sredi??njoj ameri??koj dr??avi Ohio uskoro ??e dobiti sto novih razloga za cijepljenje, najavile su vlasti.', 'Gradsko vije??e Columbusa trebalo bi u ponedjeljak glasati o zakonu kojim bi se omogu??ilo da cijepljene osobe dobiju po sto dolara kako bi se potaknula masovna imunizacija, javio je The Columbus Dispatch.\r\n\r\nZakon se ne bi trebao odnositi na one koji su ve?? cijepljeni.\r\n\r\nIako ne??e postojati restrikcije u smislu prihoda, samo ??e 2750 ljudi mo??i dobiti po sto dolara - 50 za svaku dozu Pfizera ili Moderne, budu??i da je na raspolaganju 275.000 dolara.\r\n\r\nOni koji ??e sudjelovati, a cijepljeni su Johnson & Johnsonovim cjepivom koje se daje u jednoj dozi, jednokratno ??e dobiti 100 dolara, rekla je za list privremena predsjednica Gradskog vije??a Elizabeth Brown.\r\n\r\nStanovnici ??e se mo??i registrirati na web stranici za program kada zakon dobije zeleno svjetlo.\r\n\r\nDosad je cijepljeno 43 posto gra??ana Columbusa, ali neke od najsiroma??nijih ??etvrti grada bilje??e samo 25 posto.', 'g7.jpg', 'US', 0),
(53, '13.06.2021.', 'Merkel: Razgovori s SAD-om', '\"Na dobrom smo putu\", kazala je Merkel.', 'NJEMA??KA kancelarka Angela Merkel rekla je u subotu nakon sastanka s ameri??kim predsjednikom Joeom Bidenom na samitu G7 u Engleskoj da dobro napreduju razgovori sa Sjedinjenim Dr??avama o plinovodu Sjeverni tok 2.\r\n\r\n\"Na dobrom smo putu\", kazala je Merkel.\r\n\r\nMerkel se suglasila s Bidenom da je \"nu??no i egzistencijalno va??no\" zadr??ati Ukrajinu u tranzitu plina iz Rusije u Europu.\r\n\r\nSAD je u svibnju dijelom odustao od dugogodi??njeg protivljenja tom plinovodu te je ukinuo sankcije protiv tvrtke koja ga gradi kako ne bi naru??io odnose s Njema??kom.\r\n\r\nSAD strahuje da ??e Sjeverni tok 2 u??initi Europu ovisnom o ruskom plinu. Zagovornici plinovoda tvrde da SAD samo tra??i prilike za prodaju vlastitog ukapljenog plina Europi.\r\n\r\nNjema??ko izaslanstvo nedavno je posjetilo Washington radi daljnjih razgovora o Sjevernom toku 2.\r\n\r\nTaj plinovod, dug oko 1200 kilometara, prelazi preko Balti??kog mora i mo??i ??e prenositi 55 milijardi prostornih metara plina na godinu, zaobilaze??i Ukrajinu.\r\n\r\nUkrajina je dugo bila glavno ??vori??te za ruski plin na putu prema zapadnoj Europi i dobro je na tome zara??ivala.', 'merkel.jpg', 'US', 0),
(54, '13.06.2021.', 'Amerika se vratila s Bidenom', 'Macron: Amerika se vratila s Bidenom', 'SJEDINJENE Dr??ave vratile su se kao kooperativni lider slobodnog svijeta, rekao je u subotu francuski predsjednik Emmanuel Macron, ilustriraju??i olak??anje koje osje??aju mnogi ameri??ki saveznici nakon razdoblja biv??eg predsjednika Donalda Trumpa.\r\n\r\nNa sastanku s Macronom Biden, upitan je li se Amerika vratila, okrenuo se francuskom predsjedniku i rekao da bi on trebao odgovoriti na to pitanje.\r\n\r\n\"Da, definitivno\", rekao je Macron. \"Sjajno je imati ameri??kog predsjednika koji je dio kluba i vrlo voljan sura??ivati\", kazao je Macron. \"Ono ??to vi pokazujete jest da je vodstvo partnerstvo.\"\r\n\r\nMacronove rije??i sli??ne su onima koje je u petak izrekao britanski premijer Boris Johnson, naglasiv??i da je Biden \"veliki da??ak svje??eg zraka\".\r\n\r\nNi Macron ni Johnson nisu povukli izravnu poveznicu izme??u Bidena i Trumpa, ali su obojica pohvalila Bidenov kooperativni ton, a du??nosnici su rekli da je do??lo do olak??anja nakon Trumpa, koji je znao ??okirati mnoge europske saveznike.\r\n\r\nBiden se slo??io i rekao da su se \"Sjedinjene Dr??ave, kao ??to sam ve?? rekao, vratile, mi smo se vratili\".', 'g7.jpg', 'US', 0),
(55, '13.06.2021.', 'G7 poma??e siroma??nima', 'G7 ??e siroma??nijim dr??avama isporu??iti milijardu doza cjepiva protiv covida', '??ELNICI zemalja grupe G7 obe??ali su da ??e isporu??iti milijardu doza cjepiva protiv covida-19 siroma??nijim zemljama, rekao je u nedjelju na zavr??etku trodnevnog summita britanski premijer Boris Johnson.\r\n\r\nSvota ??e se prikupiti kombiniranjem novca zemalja koje daju izravne donacije, kao i uplatama u program razmjene cjepiva COVAX, koji podupire Svjetska zdravstvena organizacija, rekao je Johnson, no jo?? nisu poznate pojedinosti.\r\n\r\nJohnson je ranije najavio da ??e Britanija donirati 100 milijuna doza iz vlastitog vi??ka.\r\n\r\nSvjetska zdravstvena organizacija procijenila je da bi za suzbijanje pandemije trebalo oko 11 milijarda doza cjepiva.\r\n\r\nTo je daleko vi??e od iznosa koji je G7 odredio za donaciju, na ??to su odmah reagirale humanitarne udruge i ostale organizacije koje prikupljaju raznu pomo?? za siroma??ne.', 'pomoc.jpg', 'world', 0),
(56, '13.06.2021.', 'Moskva: Auto ako se cijepi??', 'Gradona??elnik Moskve lutrijom vabi gra??ane na cijepljenje: Nagrada je automobil', 'MOSKOVSKI gradona??elnik Sergej Sobjanjin objavio je danas da ??e uvesti lutriju na kojoj ??e zgoditak biti osobni automobil kako bi ohrabrio skeptike da se cijepe protiv koronavirusa u Rusiji, suo??enoj s rastu??im novim valom zaraze.\r\n\r\nZbog naglog porasta zara??enih koronavirusom Sobjanjin je u subotu objavio da ??e dani od 15. do 19. lipnja biti neradni te da ??e se do 20. lipnja svi barovi, restorani i ostala mjesta zatvarati najkasnije u 23 sata.\r\n\r\nSvakog tjedna na raspolaganju ??e biti pet automobila u vrijednosti milijun rubalja svaki (11.500 eura), navedeno je. \r\n\r\n\"Me??utim, naravno da je glavni zgoditak osobi koja odlu??i cijepiti se neusporediv s bilo kakvim automobilom\", ustvrdio je Sobjanjin pa poru??io: \"Glavni zgoditak je njihovo vlastito zdravlje i duhovna ravnote??a.\" \r\n\r\nNepovjerenje stanovni??tva u cjepivo\r\nU subotu je Sobjanjin naredio zatvaranje igrali??ta za djecu u blizini trgova??kih centara i parkova sve do 20. lipnja i pozvao je zaposlenike da rade od ku??e kad god je to mogu??e, a zabranio je i poslu??ivanje u restoranima od 23 sata nave??er do 6 ujutro.\r\n\r\nRusija je u nedjelju potvrdila 14.723 nova slu??aja koronavirusa. od ??ega 7704 u Moskvi, glavnome gradu koji je najve??e ??ari??te pandemije u toj zemlji.\r\n\r\nUkupno je Rusija do danas potvrdila 5.208.687 zara??enih koronavirusom, od ??ega 126.430 smrti.', 'covid.jpg', 'world', 0),
(57, '13.06.2021.', 'KINA Eksplozija plinske cijevi', 'U eksploziji plinske cijevi u Kini poginulo 12 ljudi', 'U EKSPLOZIJI plinske cijevi u stambenoj ??etvrti u sredi??njem kineskom gradu poginulo je 12 ljudi, a ozlije??eno je 138, izvijestio je u nedjelju CCTV.\r\n\r\nUkupno je 150 ljudi evakuirano nakon nesre??e u gradu Shiyanu u pokrajini Hubeiju do 3 sata ujutro po srednjoeuropskom vremenu, navodi se.\r\n\r\nMe??u ozlije??enima njih 37 je u kriti??nom stanju.\r\n\r\nU eksploziji se sru??ila zgrada u kojoj se nalazi prehrambena trgovina, izvijestili su lokalni mediji.\r\n\r\nSnimke CCTV-a prikazuju ru??evine i krhotine stakla koje prekrivaju prvi kat sru??ene zgrade u kojoj su ljudi doru??kovali i kupovali namirnice kada je do??lo do eksplozije.\r\n\r\nBolnice u Shiyanu mole stanovnike da daju krv, dodaje CCTV.', 'plinska.jpg', 'world', 0),
(58, '13.06.2021.', 'Kazna za neno??enje maske', 'Predsjednik Brazila mora platiti 108 dolara jer nije nosio masku', 'BRAZILSKI predsjednik Jair Bolsonaro osu??en je u subotu na kaznu od 108 dolara jer je sudjelovao u motociklisti??koj manifestaciji u dr??avi Sao Paulo bez no??enja za??titne maske, ali je poru??io da ??e policajci njega uvijek podr??ati.\r\n\r\nTisu??e motociklista sudjelovale su u doga??aju pod nazivom Gas za Krista u Sao Paulu.\r\n\r\nPredsjednik krajnje desnice bio je na ??elu motociklisti??ke povorke bez maske, kr??e??i time propise dr??ave Sao Paulo.\r\n\r\nVlasti su propisale kaznu predsjedniku, njegovu sinu Eduardu, ??lanu Kongresa, a ka??njen je i ministar infrastrukture Tarcisio Gomes jer ne nosi masku i ne odr??ava fizi??ki razmak.\r\n\r\nBolsonaro, koji je pozvao na okupljanja u cijelom Brazilu za izbore idu??e godine, nije se obazirao na upozorenja guvernera Sao Paula, ina??e svog politi??kog rivala Joaoa Dorije, koji je najavio da ??e predsjednik biti ka??njen ne bude li po??tovao propise na snazi.\r\n\r\nU Brazilu od korone umrlo gotovo 485.000 ljudi\r\nBolsonaro se u vi??e navrata protivio Doriji i drugim guvernerima u pogledu propisa i mjera za??tite od pandemije covida-19 koja je u Brazilu usmrtila gotovo 485.000 ljudi.\r\n\r\nPredsjednik redovito kritizira mjere zatvaranja u pandemiji, kao i no??enje maske, a zagovarao je i sporne lijekove kao ??to je klorokin iako su znanstvene studije pokazale da su takve mjere nedjelotvorne.\r\n\r\nU obra??anju svojim prista??ama Bolsonaro je ocijenio da cijepljene osobe ne bi trebale nositi maske jer je \"nemogu??e da cijepljena osoba prenese virus\", rekao je.\r\n\r\nNema znanstvenog suglasja o tome jesu li cijepljene osobe zarazne.\r\n\r\nBolsonaro je osim toga rekao da uvijek mo??e ra??unati na policajce \"bez obzira na to ??to se dogodilo\" te je dr??avnu vojnu policiju nazvao \"svojom vojskom\".\r\n\r\n\"Vi ste pomo??nici oru??anih snaga. Siguran sam, u skladu sa zakonom i redom, mi ??emo biti zajedno ??togod se dogodilo\", rekao je.\r\n\r\nNa predsjedni??kim izborima 2022. godine Bolsonaru ??e protukandidat vjerojatno biti biv??i predsjednik ljevice Luiz Inacio Lula da Silva iako jo?? nijedan od njih dvojice nije istaknuo svoju kandidaturu. ', 'preds.jpg', 'world', 0),
(59, '13.06.2021.', 'Milwaukeeja ??ena zapalila mu??a', '??ena iz Milwaukeeja priznala je da je zapalila svog usnulog supruga ', 'Tuhonsty Marie Smith (29) priznala je vlastima da je ??ekala da joj mu?? zaspe kako bi mu zapalila glavu u njihovoj ku??i u ??etvrti Enderis Park u ameri??kom Wisconsinu.', 'zena.jpg', 'US', 0),
(60, '13.06.2021.', 'Bidena napao gigantski cvr??ak', 'ameri??ki predsjednik osjetio je da mu ne??to hoda po vratu i krenuo to maknuti rukom. ', 'Joe Biden susreo se s pove??im insektima ??ekaju??i na ukrcavanje u predsjedni??ki Air Force One kojim ??e letjeti iz Amerike u Veliku Britaniju kako bi se sastao s ??elnim ljudima svijeta. ', 'biden.png', 'US', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `korisnickoIme` (`korisnickoIme`);

--
-- Indexes for table `vijesti`
--
ALTER TABLE `vijesti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vijesti`
--
ALTER TABLE `vijesti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
