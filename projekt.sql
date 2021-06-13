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
(52, '13.06.2021.', 'Sto dolara za cijepljenje', 'STANOVNICI grada Columbusa u središnjoj američkoj državi Ohio uskoro će dobiti sto novih razloga za cijepljenje, najavile su vlasti.', 'Gradsko vijeće Columbusa trebalo bi u ponedjeljak glasati o zakonu kojim bi se omogućilo da cijepljene osobe dobiju po sto dolara kako bi se potaknula masovna imunizacija, javio je The Columbus Dispatch.\r\n\r\nZakon se ne bi trebao odnositi na one koji su već cijepljeni.\r\n\r\nIako neće postojati restrikcije u smislu prihoda, samo će 2750 ljudi moći dobiti po sto dolara - 50 za svaku dozu Pfizera ili Moderne, budući da je na raspolaganju 275.000 dolara.\r\n\r\nOni koji će sudjelovati, a cijepljeni su Johnson & Johnsonovim cjepivom koje se daje u jednoj dozi, jednokratno će dobiti 100 dolara, rekla je za list privremena predsjednica Gradskog vijeća Elizabeth Brown.\r\n\r\nStanovnici će se moći registrirati na web stranici za program kada zakon dobije zeleno svjetlo.\r\n\r\nDosad je cijepljeno 43 posto građana Columbusa, ali neke od najsiromašnijih četvrti grada bilježe samo 25 posto.', 'g7.jpg', 'US', 0),
(53, '13.06.2021.', 'Merkel: Razgovori s SAD-om', '\"Na dobrom smo putu\", kazala je Merkel.', 'NJEMAČKA kancelarka Angela Merkel rekla je u subotu nakon sastanka s američkim predsjednikom Joeom Bidenom na samitu G7 u Engleskoj da dobro napreduju razgovori sa Sjedinjenim Državama o plinovodu Sjeverni tok 2.\r\n\r\n\"Na dobrom smo putu\", kazala je Merkel.\r\n\r\nMerkel se suglasila s Bidenom da je \"nužno i egzistencijalno važno\" zadržati Ukrajinu u tranzitu plina iz Rusije u Europu.\r\n\r\nSAD je u svibnju dijelom odustao od dugogodišnjeg protivljenja tom plinovodu te je ukinuo sankcije protiv tvrtke koja ga gradi kako ne bi narušio odnose s Njemačkom.\r\n\r\nSAD strahuje da će Sjeverni tok 2 učiniti Europu ovisnom o ruskom plinu. Zagovornici plinovoda tvrde da SAD samo traži prilike za prodaju vlastitog ukapljenog plina Europi.\r\n\r\nNjemačko izaslanstvo nedavno je posjetilo Washington radi daljnjih razgovora o Sjevernom toku 2.\r\n\r\nTaj plinovod, dug oko 1200 kilometara, prelazi preko Baltičkog mora i moći će prenositi 55 milijardi prostornih metara plina na godinu, zaobilazeći Ukrajinu.\r\n\r\nUkrajina je dugo bila glavno čvorište za ruski plin na putu prema zapadnoj Europi i dobro je na tome zarađivala.', 'merkel.jpg', 'US', 0),
(54, '13.06.2021.', 'Amerika se vratila s Bidenom', 'Macron: Amerika se vratila s Bidenom', 'SJEDINJENE Države vratile su se kao kooperativni lider slobodnog svijeta, rekao je u subotu francuski predsjednik Emmanuel Macron, ilustrirajući olakšanje koje osjećaju mnogi američki saveznici nakon razdoblja bivšeg predsjednika Donalda Trumpa.\r\n\r\nNa sastanku s Macronom Biden, upitan je li se Amerika vratila, okrenuo se francuskom predsjedniku i rekao da bi on trebao odgovoriti na to pitanje.\r\n\r\n\"Da, definitivno\", rekao je Macron. \"Sjajno je imati američkog predsjednika koji je dio kluba i vrlo voljan surađivati\", kazao je Macron. \"Ono što vi pokazujete jest da je vodstvo partnerstvo.\"\r\n\r\nMacronove riječi slične su onima koje je u petak izrekao britanski premijer Boris Johnson, naglasivši da je Biden \"veliki dašak svježeg zraka\".\r\n\r\nNi Macron ni Johnson nisu povukli izravnu poveznicu između Bidena i Trumpa, ali su obojica pohvalila Bidenov kooperativni ton, a dužnosnici su rekli da je došlo do olakšanja nakon Trumpa, koji je znao šokirati mnoge europske saveznike.\r\n\r\nBiden se složio i rekao da su se \"Sjedinjene Države, kao što sam već rekao, vratile, mi smo se vratili\".', 'g7.jpg', 'US', 0),
(55, '13.06.2021.', 'G7 pomaže siromašnima', 'G7 će siromašnijim državama isporučiti milijardu doza cjepiva protiv covida', 'ČELNICI zemalja grupe G7 obećali su da će isporučiti milijardu doza cjepiva protiv covida-19 siromašnijim zemljama, rekao je u nedjelju na završetku trodnevnog summita britanski premijer Boris Johnson.\r\n\r\nSvota će se prikupiti kombiniranjem novca zemalja koje daju izravne donacije, kao i uplatama u program razmjene cjepiva COVAX, koji podupire Svjetska zdravstvena organizacija, rekao je Johnson, no još nisu poznate pojedinosti.\r\n\r\nJohnson je ranije najavio da će Britanija donirati 100 milijuna doza iz vlastitog viška.\r\n\r\nSvjetska zdravstvena organizacija procijenila je da bi za suzbijanje pandemije trebalo oko 11 milijarda doza cjepiva.\r\n\r\nTo je daleko više od iznosa koji je G7 odredio za donaciju, na što su odmah reagirale humanitarne udruge i ostale organizacije koje prikupljaju raznu pomoć za siromašne.', 'pomoc.jpg', 'world', 0),
(56, '13.06.2021.', 'Moskva: Auto ako se cijepiš', 'Gradonačelnik Moskve lutrijom vabi građane na cijepljenje: Nagrada je automobil', 'MOSKOVSKI gradonačelnik Sergej Sobjanjin objavio je danas da će uvesti lutriju na kojoj će zgoditak biti osobni automobil kako bi ohrabrio skeptike da se cijepe protiv koronavirusa u Rusiji, suočenoj s rastućim novim valom zaraze.\r\n\r\nZbog naglog porasta zaraženih koronavirusom Sobjanjin je u subotu objavio da će dani od 15. do 19. lipnja biti neradni te da će se do 20. lipnja svi barovi, restorani i ostala mjesta zatvarati najkasnije u 23 sata.\r\n\r\nSvakog tjedna na raspolaganju će biti pet automobila u vrijednosti milijun rubalja svaki (11.500 eura), navedeno je. \r\n\r\n\"Međutim, naravno da je glavni zgoditak osobi koja odluči cijepiti se neusporediv s bilo kakvim automobilom\", ustvrdio je Sobjanjin pa poručio: \"Glavni zgoditak je njihovo vlastito zdravlje i duhovna ravnoteža.\" \r\n\r\nNepovjerenje stanovništva u cjepivo\r\nU subotu je Sobjanjin naredio zatvaranje igrališta za djecu u blizini trgovačkih centara i parkova sve do 20. lipnja i pozvao je zaposlenike da rade od kuće kad god je to moguće, a zabranio je i posluživanje u restoranima od 23 sata navečer do 6 ujutro.\r\n\r\nRusija je u nedjelju potvrdila 14.723 nova slučaja koronavirusa. od čega 7704 u Moskvi, glavnome gradu koji je najveće žarište pandemije u toj zemlji.\r\n\r\nUkupno je Rusija do danas potvrdila 5.208.687 zaraženih koronavirusom, od čega 126.430 smrti.', 'covid.jpg', 'world', 0),
(57, '13.06.2021.', 'KINA Eksplozija plinske cijevi', 'U eksploziji plinske cijevi u Kini poginulo 12 ljudi', 'U EKSPLOZIJI plinske cijevi u stambenoj četvrti u središnjem kineskom gradu poginulo je 12 ljudi, a ozlijeđeno je 138, izvijestio je u nedjelju CCTV.\r\n\r\nUkupno je 150 ljudi evakuirano nakon nesreće u gradu Shiyanu u pokrajini Hubeiju do 3 sata ujutro po srednjoeuropskom vremenu, navodi se.\r\n\r\nMeđu ozlijeđenima njih 37 je u kritičnom stanju.\r\n\r\nU eksploziji se srušila zgrada u kojoj se nalazi prehrambena trgovina, izvijestili su lokalni mediji.\r\n\r\nSnimke CCTV-a prikazuju ruševine i krhotine stakla koje prekrivaju prvi kat srušene zgrade u kojoj su ljudi doručkovali i kupovali namirnice kada je došlo do eksplozije.\r\n\r\nBolnice u Shiyanu mole stanovnike da daju krv, dodaje CCTV.', 'plinska.jpg', 'world', 0),
(58, '13.06.2021.', 'Kazna za nenošenje maske', 'Predsjednik Brazila mora platiti 108 dolara jer nije nosio masku', 'BRAZILSKI predsjednik Jair Bolsonaro osuđen je u subotu na kaznu od 108 dolara jer je sudjelovao u motociklističkoj manifestaciji u državi Sao Paulo bez nošenja zaštitne maske, ali je poručio da će policajci njega uvijek podržati.\r\n\r\nTisuće motociklista sudjelovale su u događaju pod nazivom Gas za Krista u Sao Paulu.\r\n\r\nPredsjednik krajnje desnice bio je na čelu motociklističke povorke bez maske, kršeći time propise države Sao Paulo.\r\n\r\nVlasti su propisale kaznu predsjedniku, njegovu sinu Eduardu, članu Kongresa, a kažnjen je i ministar infrastrukture Tarcisio Gomes jer ne nosi masku i ne održava fizički razmak.\r\n\r\nBolsonaro, koji je pozvao na okupljanja u cijelom Brazilu za izbore iduće godine, nije se obazirao na upozorenja guvernera Sao Paula, inače svog političkog rivala Joaoa Dorije, koji je najavio da će predsjednik biti kažnjen ne bude li poštovao propise na snazi.\r\n\r\nU Brazilu od korone umrlo gotovo 485.000 ljudi\r\nBolsonaro se u više navrata protivio Doriji i drugim guvernerima u pogledu propisa i mjera zaštite od pandemije covida-19 koja je u Brazilu usmrtila gotovo 485.000 ljudi.\r\n\r\nPredsjednik redovito kritizira mjere zatvaranja u pandemiji, kao i nošenje maske, a zagovarao je i sporne lijekove kao što je klorokin iako su znanstvene studije pokazale da su takve mjere nedjelotvorne.\r\n\r\nU obraćanju svojim pristašama Bolsonaro je ocijenio da cijepljene osobe ne bi trebale nositi maske jer je \"nemoguće da cijepljena osoba prenese virus\", rekao je.\r\n\r\nNema znanstvenog suglasja o tome jesu li cijepljene osobe zarazne.\r\n\r\nBolsonaro je osim toga rekao da uvijek može računati na policajce \"bez obzira na to što se dogodilo\" te je državnu vojnu policiju nazvao \"svojom vojskom\".\r\n\r\n\"Vi ste pomoćnici oružanih snaga. Siguran sam, u skladu sa zakonom i redom, mi ćemo biti zajedno štogod se dogodilo\", rekao je.\r\n\r\nNa predsjedničkim izborima 2022. godine Bolsonaru će protukandidat vjerojatno biti bivši predsjednik ljevice Luiz Inacio Lula da Silva iako još nijedan od njih dvojice nije istaknuo svoju kandidaturu. ', 'preds.jpg', 'world', 0),
(59, '13.06.2021.', 'Milwaukeeja Žena zapalila muža', 'Žena iz Milwaukeeja priznala je da je zapalila svog usnulog supruga ', 'Tuhonsty Marie Smith (29) priznala je vlastima da je čekala da joj muž zaspe kako bi mu zapalila glavu u njihovoj kući u četvrti Enderis Park u američkom Wisconsinu.', 'zena.jpg', 'US', 0),
(60, '13.06.2021.', 'Bidena napao gigantski cvrčak', 'američki predsjednik osjetio je da mu nešto hoda po vratu i krenuo to maknuti rukom. ', 'Joe Biden susreo se s povećim insektima čekajući na ukrcavanje u predsjednički Air Force One kojim će letjeti iz Amerike u Veliku Britaniju kako bi se sastao s čelnim ljudima svijeta. ', 'biden.png', 'US', 0);

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
