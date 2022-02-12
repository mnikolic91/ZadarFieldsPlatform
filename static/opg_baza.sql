--
-- File generated with SQLiteStudio v3.3.3 on pet vlj 11 23:51:42 2022
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: opg
CREATE TABLE opg (id INTEGER PRIMARY KEY, vlasnik_id INTEGER NOT NULL, vrsta TEXT, ime TEXT, ulica TEXT, broj INTEGER, grad TEXT, zupanija TEXT, godinaosnivanja INTEGER, kontakt INTEGER, email CHARACTER, fax INTEGER);
INSERT INTO opg (id, vlasnik_id, vrsta, ime, ulica, broj, grad, zupanija, godinaosnivanja, kontakt, email, fax) VALUES (1, 1, 'd.o.o', 'Vidas d.o.o', 'Murvica', 1, 'Zadar', 'Zadarska županija', 1998, 23456767, 'kontakt@vidasopg.hr', 23444545);
INSERT INTO opg (id, vlasnik_id, vrsta, ime, ulica, broj, grad, zupanija, godinaosnivanja, kontakt, email, fax) VALUES (2, 2, 'opg', 'Brunoslav', 'Ulica Miroslava Tudmana', 23, 'Zadar', 'Zadarska županija', 2001, 23456767, 'marko-bruno@gmail.com', 23456767);
INSERT INTO opg (id, vlasnik_id, vrsta, ime, ulica, broj, grad, zupanija, godinaosnivanja, kontakt, email, fax) VALUES (3, 3, 'opg', 'eco-mi', 'Ulica Augusta Sinovcica', 13, 'Zadar', 'Zadarska županija', 1930, 23888767, 'kontakt@eco-mi', NULL);
INSERT INTO opg (id, vlasnik_id, vrsta, ime, ulica, broj, grad, zupanija, godinaosnivanja, kontakt, email, fax) VALUES (4, 3, 'opg', 'orient express', 'Ulica Tko tu Koga', 4, 'Zadar', 'Zadarska županija', 2013, 23345345, 'kontakt@orientexpress.com', NULL);
INSERT INTO opg (id, vlasnik_id, vrsta, ime, ulica, broj, grad, zupanija, godinaosnivanja, kontakt, email, fax) VALUES (5, 4, 'opg', 'Viduke', 'Pridraga', 4, 'Zadar', 'Zadarska županija', 2000, 23555555, 'kontakt@viduka.hr', NULL);
INSERT INTO opg (id, vlasnik_id, vrsta, ime, ulica, broj, grad, zupanija, godinaosnivanja, kontakt, email, fax) VALUES (6, 5, 'opg', 'Eko jaja', 'Ulica Ekoloških jaja', 9, 'Zadar', 'Zadarska županija', 1900, 23678678, 'kontakt@ekojaja.hr', NULL);
INSERT INTO opg (id, vlasnik_id, vrsta, ime, ulica, broj, grad, zupanija, godinaosnivanja, kontakt, email, fax) VALUES (7, 6, 'opg', 'Damjanovic sir', 'Ulica Dragutina Pametnjakovica', 45, 'Zadar', 'Zadarska županija', 2020, 23767656, 'kontakt@dajmanovic', NULL);
INSERT INTO opg (id, vlasnik_id, vrsta, ime, ulica, broj, grad, zupanija, godinaosnivanja, kontakt, email, fax) VALUES (8, 7, 'opg', 'Smilje kozmetika', 'Ulica Smilja', 1, 'Zadar', 'Zadarska županija', 1980, 23776776, 'kontakt@smiljekozmetika.com', NULL);
INSERT INTO opg (id, vlasnik_id, vrsta, ime, ulica, broj, grad, zupanija, godinaosnivanja, kontakt, email, fax) VALUES (9, 8, 'd.o.o', 'Vina Babic', 'Ulica Darie vinarije', 8, 'Zadar', 'Zadarska županija', 1945, 233332323, 'kontakt@vina-babic.hr', NULL);
INSERT INTO opg (id, vlasnik_id, vrsta, ime, ulica, broj, grad, zupanija, godinaosnivanja, kontakt, email, fax) VALUES (10, 9, 'opg', 'Kupusari', 'Ulica Vigora', 10, 'Zadar', 'Zadarska županija', 1950, 23888888, 'kontakt@kupus.hr', NULL);
INSERT INTO opg (id, vlasnik_id, vrsta, ime, ulica, broj, grad, zupanija, godinaosnivanja, kontakt, email, fax) VALUES (11, 10, 'opg', 'Licki krumpir', 'Zadar', 4, 'Zadar', 'Zadarska županija', 2000, 23898878, 'kontakt@lickikrumpir', NULL);
INSERT INTO opg (id, vlasnik_id, vrsta, ime, ulica, broj, grad, zupanija, godinaosnivanja, kontakt, email, fax) VALUES (12, 11, 'opg', 'Mrkve u mliku', 'Pašman', 90, 'Zadar', 'Zadarska županija', 1960, 23123456, 'kontakt@mrkvaimliko.hr', NULL);
INSERT INTO opg (id, vlasnik_id, vrsta, ime, ulica, broj, grad, zupanija, godinaosnivanja, kontakt, email, fax) VALUES (13, 12, 'opg', 'Volim pcele', 'Ulica Zgodnih pcelara', 7, 'Zadar', 'Zadarska županija', 2008, 23345345, 'kontakt@pcelari.hr', NULL);

-- Table: opg_ima_proizvod
CREATE TABLE opg_ima_proizvod (opg_id INTEGER REFERENCES opg (id) MATCH SIMPLE, proizvod_id INTEGER REFERENCES proizvod (id) MATCH SIMPLE, kolicinatone INTEGER, PRIMARY KEY (opg_id, proizvod_id));
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (1, 1, 3);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (1, 5, 1);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (1, 7, 1);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (2, 8, 1);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (2, 10, 1);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (3, 5, 1);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (3, 8, 1);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (3, 10, 1);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (4, 1, 5);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (5, 13, 1);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (5, 14, 1);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (5, 15, 1);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (6, 7, 1);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (6, 8, 2);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (6, 3, 1);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (7, 8, 9);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (7, 10, 1);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (8, 3, 4);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (8, 4, 4);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (9, 3, 1);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (10, 4, 1);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (10, 8, 30);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (11, 4, 10);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (11, 5, 10);
INSERT INTO opg_ima_proizvod (opg_id, proizvod_id, kolicinatone) VALUES (12, 2, 40);

-- Table: opg_prodaje
CREATE TABLE opg_prodaje (opg_id INTEGER REFERENCES opg (id) MATCH "FULL", prodajna_mjesta_id INTEGER REFERENCES prodajna_mjesta (id) MATCH SIMPLE, PRIMARY KEY (opg_id, prodajna_mjesta_id));
INSERT INTO opg_prodaje (opg_id, prodajna_mjesta_id) VALUES (1, 1);
INSERT INTO opg_prodaje (opg_id, prodajna_mjesta_id) VALUES (1, 3);
INSERT INTO opg_prodaje (opg_id, prodajna_mjesta_id) VALUES (2, 2);
INSERT INTO opg_prodaje (opg_id, prodajna_mjesta_id) VALUES (2, 3);
INSERT INTO opg_prodaje (opg_id, prodajna_mjesta_id) VALUES (3, 1);
INSERT INTO opg_prodaje (opg_id, prodajna_mjesta_id) VALUES (3, 4);
INSERT INTO opg_prodaje (opg_id, prodajna_mjesta_id) VALUES (4, 1);
INSERT INTO opg_prodaje (opg_id, prodajna_mjesta_id) VALUES (4, 2);
INSERT INTO opg_prodaje (opg_id, prodajna_mjesta_id) VALUES (4, 4);
INSERT INTO opg_prodaje (opg_id, prodajna_mjesta_id) VALUES (5, 2);
INSERT INTO opg_prodaje (opg_id, prodajna_mjesta_id) VALUES (6, 3);
INSERT INTO opg_prodaje (opg_id, prodajna_mjesta_id) VALUES (6, 4);
INSERT INTO opg_prodaje (opg_id, prodajna_mjesta_id) VALUES (7, 1);
INSERT INTO opg_prodaje (opg_id, prodajna_mjesta_id) VALUES (8, 2);
INSERT INTO opg_prodaje (opg_id, prodajna_mjesta_id) VALUES (8, 3);
INSERT INTO opg_prodaje (opg_id, prodajna_mjesta_id) VALUES (8, 4);
INSERT INTO opg_prodaje (opg_id, prodajna_mjesta_id) VALUES (9, 4);
INSERT INTO opg_prodaje (opg_id, prodajna_mjesta_id) VALUES (10, 2);
INSERT INTO opg_prodaje (opg_id, prodajna_mjesta_id) VALUES (11, 3);
INSERT INTO opg_prodaje (opg_id, prodajna_mjesta_id) VALUES (12, 2);
INSERT INTO opg_prodaje (opg_id, prodajna_mjesta_id) VALUES (12, 4);
INSERT INTO opg_prodaje (opg_id, prodajna_mjesta_id) VALUES (13, 1);

-- Table: prodajna_mjesta
CREATE TABLE prodajna_mjesta (id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, naziv TEXT, ulica TEXT, broj INTEGER, mjesto TEXT, radnovrijemestart INTEGER, radnovrijemekraj INTEGER);
INSERT INTO prodajna_mjesta (id, naziv, ulica, broj, mjesto, radnovrijemestart, radnovrijemekraj) VALUES (1, 'City galerija', 'Relja', 1, 'Zadar', 7, 14);
INSERT INTO prodajna_mjesta (id, naziv, ulica, broj, mjesto, radnovrijemestart, radnovrijemekraj) VALUES (2, 'Pijaca na Poluotoku', 'Zadar', 1, 'Zadar', 6, 14);
INSERT INTO prodajna_mjesta (id, naziv, ulica, broj, mjesto, radnovrijemestart, radnovrijemekraj) VALUES (3, 'Benkovacki sajam', 'Benkovac', 1, 'Benkovac', 8, 15);
INSERT INTO prodajna_mjesta (id, naziv, ulica, broj, mjesto, radnovrijemestart, radnovrijemekraj) VALUES (4, 'Studenac', 'Ulica Bulevar', 7, 'Zadar', 7, 20);

-- Table: proizvod
CREATE TABLE proizvod (id INTEGER PRIMARY KEY AUTOINCREMENT, ime TEXT NOT NULL, dobagodine TEXT, vrsta TEXT);
INSERT INTO proizvod (id, ime, dobagodine, vrsta) VALUES (1, 'blitva', 'zima', 'blitvarica');
INSERT INTO proizvod (id, ime, dobagodine, vrsta) VALUES (2, 'med', 'cijela godina', 'proizvod od pcele');
INSERT INTO proizvod (id, ime, dobagodine, vrsta) VALUES (3, 'merlot', 'ljeto', 'vino');
INSERT INTO proizvod (id, ime, dobagodine, vrsta) VALUES (4, 'chardonnay', 'zima', 'vino');
INSERT INTO proizvod (id, ime, dobagodine, vrsta) VALUES (5, 'mrkva', 'cijela godina', 'mrkvarica');
INSERT INTO proizvod (id, ime, dobagodine, vrsta) VALUES (6, 'jaja', 'cijela godina', 'proizovd od kokoši');
INSERT INTO proizvod (id, ime, dobagodine, vrsta) VALUES (7, 'sir', 'cijela godina', 'prozivod od krave');
INSERT INTO proizvod (id, ime, dobagodine, vrsta) VALUES (8, 'kupus', 'zima', 'kupusarka');
INSERT INTO proizvod (id, ime, dobagodine, vrsta) VALUES (9, 'krumpir', 'cijela godina', 'krumpiruša');
INSERT INTO proizvod (id, ime, dobagodine, vrsta) VALUES (10, 'mlijeko', 'cijela godina', 'proizovd od krave');
INSERT INTO proizvod (id, ime, dobagodine, vrsta) VALUES (11, 'limun', 'jesen/zima', 'limunjaca');
INSERT INTO proizvod (id, ime, dobagodine, vrsta) VALUES (12, 'smilje', 'proljece', 'smilje');
INSERT INTO proizvod (id, ime, dobagodine, vrsta) VALUES (13, 'rotkvica', 'ljeto', 'rotkva');
INSERT INTO proizvod (id, ime, dobagodine, vrsta) VALUES (14, 'smokva', 'ljeto', 'smokva');
INSERT INTO proizvod (id, ime, dobagodine, vrsta) VALUES (15, 'lubenica', 'ljeto', 'lubenica');
INSERT INTO proizvod (id, ime, dobagodine, vrsta) VALUES (16, 'dinja', 'ljeto', 'dinja');
INSERT INTO proizvod (id, ime, dobagodine, vrsta) VALUES (17, 'višnja', 'ljeto', 'višnja');
INSERT INTO proizvod (id, ime, dobagodine, vrsta) VALUES (18, 'travarica', 'cijela godina', 'rakija');
INSERT INTO proizvod (id, ime, dobagodine, vrsta) VALUES (19, 'orah', 'zima', 'orahovac');

-- Table: vlasnik
CREATE TABLE vlasnik (id INTEGER PRIMARY KEY, ime TEXT NOT NULL, prezime TEXT NOT NULL, spol TEXT, oib INTEGER, datumrodenja TEXT, mjestorodenja TEXT, drzavarodenja TEXT, prebivaliste TEXT, kontakt INTEGER, email TEXT, strucnasprema TEXT);
INSERT INTO vlasnik (id, ime, prezime, spol, oib, datumrodenja, mjestorodenja, drzavarodenja, prebivaliste, kontakt, email, strucnasprema) VALUES (1, 'Adam', 'Vidas', 'M', 12345254769, '13-05-1954', 'Zadar', 'Hrvatska', 'Murvica', 955657675, 'adam@vidasopg.hr', 'SSS');
INSERT INTO vlasnik (id, ime, prezime, spol, oib, datumrodenja, mjestorodenja, drzavarodenja, prebivaliste, kontakt, email, strucnasprema) VALUES (2, 'Marko', 'Bruno', 'M', 2348720581, '15-09-1934', 'Split', 'Hrvatska', 'Raštane donje', 997674985, 'marko-bruno@gmail.com', 'VSS');
INSERT INTO vlasnik (id, ime, prezime, spol, oib, datumrodenja, mjestorodenja, drzavarodenja, prebivaliste, kontakt, email, strucnasprema) VALUES (3, 'Mateja', 'Markovic', 'Ž', 23989865842, '23-06-1980', 'Zagreb', 'Hrvatska', 'Pakoštane', 999876757, 'mateja@eco-mi.com', 'VSS');
INSERT INTO vlasnik (id, ime, prezime, spol, oib, datumrodenja, mjestorodenja, drzavarodenja, prebivaliste, kontakt, email, strucnasprema) VALUES (4, 'Silvija', 'Viduka', 'Ž', 23476767984, '24-12-1940', 'Zadar', 'Hrvatska', 'Pridraga', 976564365, 'viduka@viduka.hr', 'SSS');
INSERT INTO vlasnik (id, ime, prezime, spol, oib, datumrodenja, mjestorodenja, drzavarodenja, prebivaliste, kontakt, email, strucnasprema) VALUES (5, 'Marija', 'Pavlovic', 'Ž', 23498965851, '13-08-1992', 'Zadar', 'Hrvatska', 'Murvica', 954348765, 'mare@ekojaja.hr', 'VSS');
INSERT INTO vlasnik (id, ime, prezime, spol, oib, datumrodenja, mjestorodenja, drzavarodenja, prebivaliste, kontakt, email, strucnasprema) VALUES (6, 'Dino', 'Damjanovic', 'M', 23497054720, '14-04-1963', 'Zadar', 'Hrvatska', 'Zadar', 986754387, 'dino@damjanovic.hr', 'SSS');
INSERT INTO vlasnik (id, ime, prezime, spol, oib, datumrodenja, mjestorodenja, drzavarodenja, prebivaliste, kontakt, email, strucnasprema) VALUES (7, 'Laura', 'Martinovic', 'Ž', 46582937561, '28-09-1978', 'Split', 'Hrvatska', 'Bibinje', 9543428754, 'laura@smiljekozmetika.hr', 'VSS');
INSERT INTO vlasnik (id, ime, prezime, spol, oib, datumrodenja, mjestorodenja, drzavarodenja, prebivaliste, kontakt, email, strucnasprema) VALUES (8, 'Daria', 'Babic', 'Ž', 87587658543, '01-01-1932', 'Šibenik', 'Hrvatska', 'Biljane donje', 955656564, 'daria@vina-babic.hr', 'SSS');
INSERT INTO vlasnik (id, ime, prezime, spol, oib, datumrodenja, mjestorodenja, drzavarodenja, prebivaliste, kontakt, email, strucnasprema) VALUES (9, 'Ivor', 'Grego', 'M', 87865438765, '09-05-1967', 'Rijeka', 'Hrvatska', 'Paljuv', 995674326, 'ivor@kupus.hr', 'VSS');
INSERT INTO vlasnik (id, ime, prezime, spol, oib, datumrodenja, mjestorodenja, drzavarodenja, prebivaliste, kontakt, email, strucnasprema) VALUES (10, 'Martin', 'Potnar', 'M', 76754980765, '13-05-1980', 'Munchen', 'Njemacka', 'Zadar', 95656765, 'martin@lickikrumpir.hr', 'VSS');
INSERT INTO vlasnik (id, ime, prezime, spol, oib, datumrodenja, mjestorodenja, drzavarodenja, prebivaliste, kontakt, email, strucnasprema) VALUES (11, 'Katarina', 'Grdovic', 'Ž', 76856476549, '28-08-1994', 'Zagreb', 'Hrvatska', 'Pašman', 976564546, 'katarina@mrkvaimliko.hr', 'SSS');
INSERT INTO vlasnik (id, ime, prezime, spol, oib, datumrodenja, mjestorodenja, drzavarodenja, prebivaliste, kontakt, email, strucnasprema) VALUES (12, 'Helena', 'Pavlovic', 'Ž', 37485620760, '23-08-1929', 'Karlovac', 'Hrvatska', 'Galovac', 9956567432, 'helena@pcelari.hr', 'VSS');

-- View: opg_i_prodaja
CREATE VIEW opg_i_prodaja AS 
SELECT opg.ime, prodajna_mjesta.naziv, prodajna_mjesta.radnovrijemestart FROM opg
JOIN opg_prodaje ON opg_prodaje.opg_id = opg.id
JOIN prodajna_mjesta ON prodajna_mjesta.id = opg_prodaje.prodajna_mjesta_id;

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
