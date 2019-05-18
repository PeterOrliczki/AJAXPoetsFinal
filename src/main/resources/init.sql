DROP TABLE IF EXISTS poems CASCADE;
DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE users (
    id smallint PRIMARY KEY,
    name varchar(20) NOT NULL,
    password TEXT NOT NULL
);

CREATE TABLE poems (
    id smallint PRIMARY KEY,
    user_id smallint NOT NULL,
    title TEXT NOT NULL,
    content TEXT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO users VALUES(1, 'Jenő Rejtő', 'jrejto1905');
INSERT INTO users VALUES(2, 'DBeaver', 'postgres');
INSERT INTO users VALUES(3, 'Endre Ady', 'endready123');

INSERT INTO poems VALUES(4, 1, 'Most megy... megy...', 'És most megy mindég... mindég távolabb <br> Egyhangu uton... busan... csendesen... <br> Amig lassan... lassan... magamra hagy <br> Észrevéttelen. <br> <br> Mi egymástól nagyon messze voltunk <br> Én jajgattam és ő csak kacagott <br> Együtt mi ketten sohasem daloltunk <br> És most megy... megy... ott. <br> <br> Járt a fényben melj engem körülvett <br> Járt a mosoljgott vigan, boldogan <br> Mig én magamban sirtam könnyeket <br> Némán hangtalan. <br> <br> És most megy... mindég... mindég távolabb <br> Egyhangu uton busan csendesen. <br> Amig lassan... lassan... magamra hagy <br> Az életem.');
INSERT INTO poems VALUES(5, 1, 'Mese...', 'Egy bolond mese lesz a kettönk sorsa <br> Két elhaló, üres bus mese <br> És leszünk mégis egy mese bolondja <br> A mese: minden mese végzete <br> <br> Fölöttünk lesznek uj bolond mesék <br> Az uj mesék bolondjai leszünk <br> Mondunk magunknak hazug rongy mesét <br> S nem vesszük észre majd, hogy szenvedünk <br> <br> Egymásnak nem mesélünk sohasem <br> Külön mesélünk majd a csendes éjnek <br> Ez furcsa lesz, nem tudja senki sem <br> Hogy két halottja lesz egy bus mesének');
INSERT INTO poems VALUES(6, 2, 'Connect to PostgreSQL - postgres', 'FATAL: password authentication failed for user admin');
INSERT INTO poems VALUES(7, 2, 'Connection error', 'Unable to complete network request to host localhost <br> Connection refused: connect');
INSERT INTO poems VALUES(8, 3, 'A magyar ugaron', 'Elvadult tájon gázolok: <br> Ős, buja földön dudva, muhar. <br> Ezt a vad mezőt ismerem, <br> Ez a magyar Ugar. <br> <br> Lehajlok a szent humuszig: <br> E szűzi földön valami rág. <br> Hej, égig-nyúló giz-gazok, <br> Hát nincsen itt virág? <br> <br> Vad indák gyűrűznek körül, <br> Míg a föld alvó lelkét lesem, <br> Régmult virágok illata <br> Bódít szerelmesen. <br> <br> Csönd van. A dudva, a muhar, <br> A gaz lehúz, altat, befed <br> S egy kacagó szél suhan el <br> A nagy Ugar felett.');
INSERT INTO poems VALUES(9, 3, 'Egy párisi hajnalon', 'Sugaras a fejem s az arcom, <br> Amerre járok, száll a csönd, riad, <br> Fölkopogom az alvó Párist, <br> Fényével elönt a hajnali Nap. <br> <br> Ki vagyok? A győzelmes éber, <br> Aki bevárta, íme, a Napot <br> S aki napfényes glóriában <br> Büszkén és egyedül maga ragyog. <br> <br> Ki vagyok? A Napisten papja, <br> Ki áldozik az éjszaka torán. <br> Egy vén harang megkondul. Zúghatsz, <br> Én pap vagyok, de pogány pap, pogány. <br> <br> Harangzúgás közt, hajnalfényben <br> Gyujtom a lángot a máglya alatt, <br> Táncolnak lelkemben s a máglyán <br> A sugarak, a napsugarak. <br> <br> Evoé, szent ősláng, Napisten. <br> Még alszik itt e cifra rengeteg, <br> Én vártam, lestem a te jöttöd, <br> Papod vagyok, bolondod, beteged. <br> <br> Sápadt vagyok? Piros sugárt rám. <br> Boldog Ad-üköm pirosabb legény <br> Volt, ugyebár, mikor papod volt? <br> Hej, sápadok már ezer éve én. <br> <br> Szent Napkeletnek mártirja vagyok, <br> Aki enyhülést Nyugaton keres, <br> Táltosok átkos sarja talán. <br> Sápadt vagyok? Óh, fess pirosra, fess. <br>  <br> Gyűlölöm dancs, keleti fajtám, <br> Mely, hogy kifáradt, engemet adott, <br> Ki sápadtan fut Napnyugatra, <br> Hogy ott imádja Urát, a Napot. <br> <br> Hogy volt? Mindegy. Fáradt a vérem, <br> Imádom a fényt, lángot, meleget, <br> Keresek egy csodát, egy titkot, <br> Egy álmot. S nem tudom, mit keresek. <br>  <br> Keleti vérem, ez a lomha, <br> Szomjúhozóan issza Nyugatot: <br> A Napisten legbúsabb papja, <br> Rég kiszórt, fáradt sugara vagyok. <br> <br> Egy nóta csal. Rég dalolhatta <br> Szent Ázsiában szép, vad, barna lány, <br> Egy illat űz, csodavirágból <br> Lehelte tán be egyik ősanyám. <br> <br> Valami ősi, régi rontás <br> Száll előttem s én lehajtom fejem, <br> Várok valamit. S amit várok, <br> Nem dicsőség, nem pénz, nem szerelem. <br>  <br> Mit várok? Semmit. Egy asszony <br> Utamba állt és néha csókot ad: <br> Sohse látott ez a csókos Páris <br> Betegebb és szomorúbb csókokat. <br>  <br> Várok. Lesz egy végső borzongás, <br> Napszálltakor jön, el fog jönni, el <br> S akkor majd hiába ébresztnek <br> Könnyes csókkal és csókos könnyüvel. <br> <br> Elmúlik a Napisten papja, <br> A legfurcsább és a legbetegebb, <br> Aki fáradt volt, mielőtt élt <br> S aki még Párisban sem szeretett. <br> <br> Evoé, szent ősláng, Napisten, <br> Kihuny a láng, Páris riadva zúg, <br> Új csatára indul az Élet, <br> A nagyszerű, a pompás, a hazug. <br> <br> Én is megyek, kóbor, pogány hős, <br> Új, balga Don, modern, bolond lovag, <br> Ki, mi van is, irtja, kiszórja <br> Önlelkéből az áldott álmokat. <br> <br> Sugaras a fejem s az arcom, <br> Zúg a harang, megyek lassan tovább: <br> Megáldozott a dús Párisnak <br> Kövein a legkoldusabb nomád.');
