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

INSERT INTO poems VALUES(3, 1, 'Most megy... megy...', 'És most megy mindég... mindég távolabb <br> Egyhangu uton... busan... csendesen... <br> Amig lassan... lassan... magamra hagy <br> Észrevéttelen. <br> <br> Mi egymástól nagyon messze voltunk <br> Én jajgattam és ő csak kacagott <br> Együtt mi ketten sohasem daloltunk <br> És most megy... megy... ott. <br> <br> Járt a fényben melj engem körülvett <br> Járt a mosoljgott vigan, boldogan <br> Mig én magamban sirtam könnyeket <br> Némán hangtalan. <br> <br> És most megy... mindég... mindég távolabb <br> Egyhangu uton busan csendesen. <br> Amig lassan... lassan... magamra hagy <br> Az életem.');
INSERT INTO poems VALUES(4, 1, 'Mese...', 'Egy bolond mese lesz a kettönk sorsa <br> Két elhaló, üres bus mese <br> És leszünk mégis egy mese bolondja <br> A mese: minden mese végzete <br> <br> Fölöttünk lesznek uj bolond mesék <br> Az uj mesék bolondjai leszünk <br> Mondunk magunknak hazug rongy mesét <br> S nem vesszük észre majd, hogy szenvedünk <br> <br> Egymásnak nem mesélünk sohasem <br> Külön mesélünk majd a csendes éjnek <br> Ez furcsa lesz, nem tudja senki sem <br> Hogy két halottja lesz egy bus mesének');
INSERT INTO poems VALUES(5, 2, 'Connect to PostgreSQL - postgres', 'FATAL: password authentication failed for user admin');
INSERT INTO poems VALUES(6, 2, 'Connection error', 'Unable to complete network request to host localhost <br> Connection refused: connect');
