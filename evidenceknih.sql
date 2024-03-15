-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pát 15. bře 2024, 12:45
-- Verze serveru: 10.4.32-MariaDB
-- Verze PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `evidenceknih`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `ISBN` varchar(13) NOT NULL,
  `authorFirstName` varchar(20) NOT NULL,
  `authorSurname` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `books`
--

INSERT INTO `books` (`id`, `ISBN`, `authorFirstName`, `authorSurname`, `title`, `description`) VALUES
(1, '9788088362166', 'Karin', 'Lednická', 'Šikmý kostel 3 - Románová kronika ztraceného města, léta 1945–1961', 'Jak dlouho trvá válka po tom, co skončí? * Navždy, pokud jí člověk prošel. Ptejme se spíše, jak může zaplnit prázdnotu po zavražděných blízkých nebo po uneseném dítěti. Čím bude zahánět vzpomínky na děsivý teror Němců nebo nechtěnou tělesnou lásku Rusů. Někdo všechno zamkne na dno duše a ráno co ráno si namlouvá, že co bylo, bylo, teď je prostě třeba jít dál. Jiný se nechá zahltit žalem; další přetaví prožité v nenávist. A ještě jiný ve víru, že to bude právě on, kdo pomůže vytvořit nový, lepší svět. ***** Jak dlouho trvá, než člověk přijde o iluze? * Tím déle, oč horoucněji se k nim upínal. Možná začne váhat při prvních soudružských podlostech, možná prozře až poté, co kvůli zběsilému plnění plánu začnou umírat lidé a následný monstrproces přenese vinu na ty, kteří se nesmyslné honbě za tunami uhlí snažili zabránit. Pak už bude záležet jen na něm, jestli zahořkne, uchýlí se k prospěchářství, anebo se pokusí znovu nalézt společnou řeč s těmi, kteří věděli (nebo přinejmenším tušili) od samého začátku. ***** Jak dlouho trvá, než člověk uteče do rezignace? * Dokud nezjistí, že už mu zbyla vůle a síla jen na to, aby se uzavřel do čtyř zdí vlastního života. Tam si může zpočátku nalhávat, že na něj vnější svět nedosáhne, pokud zásadně neporušuje jeho pravidla. Aby nakonec zjistil, že právě v této úvaze se dopustil největšího omylu. ***** A jak dlouho trvá, než se ztratí dvacetitisícové město?'),
(2, '9788024264981', 'Sibel', 'Hodge', 'Faleš', 'Existují tři verze jednoho příběhu: Vaše. Moje. A pravda…\r\nMax a Alissa mají pohádkový život – jsou čerstvě oddaní, bláznivě zamilovaní a nechutně bohatí. Pak je Max v jejich vlastním domě ubodán, zatímco Alissa přežila, přestože byla v době vraždy doma. Jak to že unikla smrti? Rozběhne se vyšetřování. Krásná Alissa má kolem sebe spoustu přátel, kteří se jí snaží v období smutku pomoct. Ale ne každý je tím, za koho se vydává… Pod povrchem se může skrývat hluboce zakořeněná žárlivost, tajemství nebo lži, a ne každá pohádka má šťastný konec.'),
(3, '9788024953878', 'Milena', 'Štráfeldová', 'Friedrich řečený Bedřich', 'Je to jeden z největších Čechů, tvůrce naší národní hudby, bez jeho díla si českou kulturu ani neumíme představit. Přesto své chlapecké deníky i milostné dopisy psal německy a správně mluvit a psát česky se učil až dlouho po třicítce. A to není zdaleka jediná okolnost, která nás u autora Prodané nevěsty nebo Mé vlasti může překvapit. O Bedřichu Smetanovi vyšla spousta knih a zdálo by se, že jeho život už byl popsán do nejmenších detailů. Čím víc se ale o něm dozvídáme, tím víc také zjišťujeme, že je tu pořád co objevovat. Rozhodně neexistuje jen jeden všeplatný pohled na našeho „nejnárodnějšího“ skladatele. Dokuromán Friedrich řečený Bedřich líčí jeho dramatický osud, ale i jeho dobu a příběhy lidí, kteří jej obklopovali, milovali a podporovali, nebo mu jeho cestu naopak ztěžovali. Je také zamyšlením nad tím, proč byl Smetana tolikrát propagandisticky zneužit, jako snad žádný jiný náš umělec. A konečně klade i pár otázek o nás samých, na které stále ještě nemáme odpověď.'),
(4, '9788024295947', 'Kristýna', 'Trpková', 'Někdo z nás', 'Lukáš, Theodora, Richard, Viola a Nela Herelovi jsou obyčejní lidé, sourozenci, kteří vždy a za všech okolností drží při sobě a nedají na sebe dopustit. Domácí idylku jim však jednoho dne naruší záhadný objev na zahradě náležící k jejich starému domu. Ten strhne lavinu nenadálých událostí. Spolu s děsuplným objevem se k životu probouzí jejich minulost, vzpomínky na nejnáročnější období jejich života, včetně mučivého tajemství, které nikdy nemělo spatřit světlo světa. Strhující román o tom, jak snadné je ztratit důvěru v někoho, koho známe celý život, a začít tak pod tlakem mimořádných situací pochybovat o tom, co jsou naši nejbližší vlastně zač.'),
(5, '9788000061917', 'Joanne Kathleen', 'Rowling', 'Harry Potter a Kámen mudrců', 'Až do svých jedenáctých narozenin si o sobě Harry myslel, že je jen obyčejný chlapec. Pak ale dostal soví poštou dopis, kterým byl zván ke studiu na prestižní soukromé Škole čar a kouzel v Bradavicích, a jeho život se rázem proměnil. Leccos se dozvídá o minulosti svých zemřelých rodičů, získá pár dobrých kamarádů, naučí se mistrovsky hrát famfrpál a kvůli Kameni mudrců podstoupí smrtelný souboj se zloduchem Voldemortem...'),
(6, '9788000067612', ' Joanne Kathleen', 'Rowling', 'Harry Potter a Tajemná komnata', 'Harry si za uplynulé léto prožil ty nejhorší narozeniny v životě, dostal několik zlověstných varování od domácího skřítka Dobbyho a od Dursleyových ho nakonec musel zachránit Ron Weasley v kouzelném létajícím autě. Na chodbách bradavické školy pak Harry slyší podivný šepot – a útoky na sebe nenechají dlouho čekat. Několik studentů zdánlivě zkamení a Dobbyho předpovědi se začínají vyplňovat…'),
(7, '9788024296265', 'Sam', 'Holland', 'Číslo 20', 'Další nervydrásající thriller od autorky bestsellerového Kopíráka. Nález mrtvého muže na černé skládce, jehož tělo už stihly napůl ohlodat krysy, je sice drsný, ale detektiv Adam Bishop už si zvykl na ledacos. Když však kousek od oběti objeví nastříkané číslo XII a nedaleko číslo XIV, dojde mu krutá skutečnost: mezi odpadky se tu nejspíš nachází mrtvol víc. Hon na sériového vraha se rozbíhá – a velice brzy se Adama začne dotýkat i osobně. Zná totiž toho, kdo stanovil první číslo – dvacet – a zahájil odpočítávání. Sice ho chytili a uvěznili, ale zdá se, že ani mříže nezabrání tomu, aby bylo jeho hrůzné dílo dokončeno…');

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
