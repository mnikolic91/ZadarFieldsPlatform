CREATE TABLE opg (
    id              INTEGER   PRIMARY KEY,
    vlasnik_id      INTEGER   NOT NULL,
    vrsta           TEXT,
    ime             TEXT,
    ulica           TEXT,
    broj            INTEGER,
    grad            TEXT,
    zupanija        TEXT,
    godinaosnivanja INTEGER,
    kontakt         INTEGER,
    email           CHARACTER,
    fax             INTEGER
);


CREATE TABLE opg_ima_proizvod (
    opg_id       INTEGER REFERENCES opg (id) MATCH SIMPLE,
    proizvod_id  INTEGER REFERENCES proizvod (id) MATCH SIMPLE,
    kolicinatone INTEGER,
    PRIMARY KEY (
        opg_id,
        proizvod_id
    )
);


CREATE TABLE opg_prodaje (
    opg_id             INTEGER REFERENCES opg (id) MATCH [FULL],
    prodajna_mjesta_id INTEGER REFERENCES prodajna_mjesta (id) MATCH SIMPLE,
    PRIMARY KEY (
        opg_id,
        prodajna_mjesta_id
    )
);


CREATE TABLE prodajna_mjesta (
    id                INTEGER NOT NULL
                              PRIMARY KEY AUTOINCREMENT,
    naziv             TEXT,
    ulica             TEXT,
    broj              INTEGER,
    mjesto            TEXT,
    radnovrijemestart INTEGER,
    radnovrijemekraj  INTEGER
);


CREATE TABLE proizvod (
    id         INTEGER PRIMARY KEY AUTOINCREMENT,
    ime        TEXT    NOT NULL,
    dobagodine TEXT,
    vrsta      TEXT
);


CREATE TABLE vlasnik (
    id            INTEGER PRIMARY KEY,
    ime           TEXT    NOT NULL,
    prezime       TEXT    NOT NULL,
    spol          TEXT,
    oib           INTEGER,
    datumrodenja  TEXT,
    mjestorodenja TEXT,
    drzavarodenja TEXT,
    prebivaliste  TEXT,
    kontakt       INTEGER,
    email         TEXT,
    strucnasprema TEXT
);
