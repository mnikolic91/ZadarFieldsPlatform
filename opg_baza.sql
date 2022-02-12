{
    "type": "database",
    "name": "opg_baza",
    "objects": [
        {
            "type": "table",
            "database": null,
            "name": "opg",
            "withoutRowId": true,
            "ddl": "CREATE TABLE opg (id INTEGER PRIMARY KEY, vlasnik_id INTEGER NOT NULL, vrsta TEXT, ime TEXT, ulica TEXT, broj INTEGER, grad TEXT, zupanija TEXT, godinaosnivanja INTEGER, kontakt INTEGER, email CHARACTER, fax INTEGER)",
            "columns": [
                {
                    "name": "id",
                    "type": "INTEGER",
                    "constraints": [
                        {
                            "type": "PRIMARY KEY",
                            "definition": "PRIMARY KEY"
                        }
                    ]
                },
                {
                    "name": "vlasnik_id",
                    "type": "INTEGER",
                    "constraints": [
                        {
                            "type": "NOT NULL",
                            "definition": "NOT NULL"
                        }
                    ]
                },
                {
                    "name": "vrsta",
                    "type": "TEXT"
                },
                {
                    "name": "ime",
                    "type": "TEXT"
                },
                {
                    "name": "ulica",
                    "type": "TEXT"
                },
                {
                    "name": "broj",
                    "type": "INTEGER"
                },
                {
                    "name": "grad",
                    "type": "TEXT"
                },
                {
                    "name": "zupanija",
                    "type": "TEXT"
                },
                {
                    "name": "godinaosnivanja",
                    "type": "INTEGER"
                },
                {
                    "name": "kontakt",
                    "type": "INTEGER"
                },
                {
                    "name": "email",
                    "type": "CHARACTER"
                },
                {
                    "name": "fax",
                    "type": "INTEGER"
                }
            ],
            "rows": [
                [
                    1,
                    1,
                    "d.o.o",
                    "Vidas d.o.o",
                    "Murvica",
                    1,
                    "Zadar",
                    "Zadarska županija",
                    1998,
                    23456767,
                    "kontakt@vidasopg.hr",
                    23444545
                ],
                [
                    2,
                    2,
                    "opg",
                    "Brunoslav",
                    "Ulica Miroslava Tudmana",
                    23,
                    "Zadar",
                    "Zadarska županija",
                    2001,
                    23456767,
                    "marko-bruno@gmail.com",
                    23456767
                ],
                [
                    3,
                    3,
                    "opg",
                    "eco-mi",
                    "Ulica Augusta Sinovcica",
                    13,
                    "Zadar",
                    "Zadarska županija",
                    1930,
                    23888767,
                    "kontakt@eco-mi",
                    null
                ],
                [
                    4,
                    3,
                    "opg",
                    "orient express",
                    "Ulica Tko tu Koga",
                    4,
                    "Zadar",
                    "Zadarska županija",
                    2013,
                    23345345,
                    "kontakt@orientexpress.com",
                    null
                ],
                [
                    5,
                    4,
                    "opg",
                    "Viduke",
                    "Pridraga",
                    4,
                    "Zadar",
                    "Zadarska županija",
                    2000,
                    23555555,
                    "kontakt@viduka.hr",
                    null
                ],
                [
                    6,
                    5,
                    "opg",
                    "Eko jaja",
                    "Ulica Ekoloških jaja",
                    9,
                    "Zadar",
                    "Zadarska županija",
                    1900,
                    23678678,
                    "kontakt@ekojaja.hr",
                    null
                ],
                [
                    7,
                    6,
                    "opg",
                    "Damjanovic sir",
                    "Ulica Dragutina Pametnjakovica",
                    45,
                    "Zadar",
                    "Zadarska županija",
                    2020,
                    23767656,
                    "kontakt@dajmanovic",
                    null
                ],
                [
                    8,
                    7,
                    "opg",
                    "Smilje kozmetika",
                    "Ulica Smilja",
                    1,
                    "Zadar",
                    "Zadarska županija",
                    1980,
                    23776776,
                    "kontakt@smiljekozmetika.com",
                    null
                ],
                [
                    9,
                    8,
                    "d.o.o",
                    "Vina Babic",
                    "Ulica Darie vinarije",
                    8,
                    "Zadar",
                    "Zadarska županija",
                    1945,
                    233332323,
                    "kontakt@vina-babic.hr",
                    null
                ],
                [
                    10,
                    9,
                    "opg",
                    "Kupusari",
                    "Ulica Vigora",
                    10,
                    "Zadar",
                    "Zadarska županija",
                    1950,
                    23888888,
                    "kontakt@kupus.hr",
                    null
                ],
                [
                    11,
                    10,
                    "opg",
                    "Licki krumpir",
                    "Zadar",
                    4,
                    "Zadar",
                    "Zadarska županija",
                    2000,
                    23898878,
                    "kontakt@lickikrumpir",
                    null
                ],
                [
                    12,
                    11,
                    "opg",
                    "Mrkve u mliku",
                    "Pašman",
                    90,
                    "Zadar",
                    "Zadarska županija",
                    1960,
                    23123456,
                    "kontakt@mrkvaimliko.hr",
                    null
                ],
                [
                    13,
                    12,
                    "opg",
                    "Volim pcele",
                    "Ulica Zgodnih pcelara",
                    7,
                    "Zadar",
                    "Zadarska županija",
                    2008,
                    23345345,
                    "kontakt@pcelari.hr",
                    null
                ]
            ]
        },
        {
            "type": "table",
            "database": null,
            "name": "opg_ima_proizvod",
            "withoutRowId": true,
            "ddl": "CREATE TABLE opg_ima_proizvod (opg_id INTEGER REFERENCES opg (id) MATCH SIMPLE, proizvod_id INTEGER REFERENCES proizvod (id) MATCH SIMPLE, kolicinatone INTEGER, PRIMARY KEY (opg_id, proizvod_id))",
            "columns": [
                {
                    "name": "opg_id",
                    "type": "INTEGER",
                    "constraints": [
                        {
                            "type": "FOREIGN KEY",
                            "definition": "REFERENCES opg (id) MATCH SIMPLE"
                        }
                    ]
                },
                {
                    "name": "proizvod_id",
                    "type": "INTEGER",
                    "constraints": [
                        {
                            "type": "FOREIGN KEY",
                            "definition": "REFERENCES proizvod (id) MATCH SIMPLE"
                        }
                    ]
                },
                {
                    "name": "kolicinatone",
                    "type": "INTEGER"
                }
            ],
            "constraints": [
                {
                    "type": "PRIMARY KEY",
                    "definition": "PRIMARY KEY (opg_id, proizvod_id)"
                }
            ],
            "rows": [
                [
                    1,
                    1,
                    3
                ],
                [
                    1,
                    5,
                    1
                ],
                [
                    1,
                    7,
                    1
                ],
                [
                    2,
                    8,
                    1
                ],
                [
                    2,
                    10,
                    1
                ],
                [
                    3,
                    5,
                    1
                ],
                [
                    3,
                    8,
                    1
                ],
                [
                    3,
                    10,
                    1
                ],
                [
                    4,
                    1,
                    5
                ],
                [
                    5,
                    13,
                    1
                ],
                [
                    5,
                    14,
                    1
                ],
                [
                    5,
                    15,
                    1
                ],
                [
                    6,
                    7,
                    1
                ],
                [
                    6,
                    8,
                    2
                ],
                [
                    6,
                    3,
                    1
                ],
                [
                    7,
                    8,
                    9
                ],
                [
                    7,
                    10,
                    1
                ],
                [
                    8,
                    3,
                    4
                ],
                [
                    8,
                    4,
                    4
                ],
                [
                    9,
                    3,
                    1
                ],
                [
                    10,
                    4,
                    1
                ],
                [
                    10,
                    8,
                    30
                ],
                [
                    11,
                    4,
                    10
                ],
                [
                    11,
                    5,
                    10
                ],
                [
                    12,
                    2,
                    40
                ]
            ]
        },
        {
            "type": "table",
            "database": null,
            "name": "opg_prodaje",
            "withoutRowId": true,
            "ddl": "CREATE TABLE opg_prodaje (opg_id INTEGER REFERENCES opg (id) MATCH \"FULL\", prodajna_mjesta_id INTEGER REFERENCES prodajna_mjesta (id) MATCH SIMPLE, PRIMARY KEY (opg_id, prodajna_mjesta_id))",
            "columns": [
                {
                    "name": "opg_id",
                    "type": "INTEGER",
                    "constraints": [
                        {
                            "type": "FOREIGN KEY",
                            "definition": "REFERENCES opg (id) MATCH \"FULL\""
                        }
                    ]
                },
                {
                    "name": "prodajna_mjesta_id",
                    "type": "INTEGER",
                    "constraints": [
                        {
                            "type": "FOREIGN KEY",
                            "definition": "REFERENCES prodajna_mjesta (id) MATCH SIMPLE"
                        }
                    ]
                }
            ],
            "constraints": [
                {
                    "type": "PRIMARY KEY",
                    "definition": "PRIMARY KEY (opg_id, prodajna_mjesta_id)"
                }
            ],
            "rows": [
                [
                    1,
                    1
                ],
                [
                    1,
                    3
                ],
                [
                    2,
                    2
                ],
                [
                    2,
                    3
                ],
                [
                    3,
                    1
                ],
                [
                    3,
                    4
                ],
                [
                    4,
                    1
                ],
                [
                    4,
                    2
                ],
                [
                    4,
                    4
                ],
                [
                    5,
                    2
                ],
                [
                    6,
                    3
                ],
                [
                    6,
                    4
                ],
                [
                    7,
                    1
                ],
                [
                    8,
                    2
                ],
                [
                    8,
                    3
                ],
                [
                    8,
                    4
                ],
                [
                    9,
                    4
                ],
                [
                    10,
                    2
                ],
                [
                    11,
                    3
                ],
                [
                    12,
                    2
                ],
                [
                    12,
                    4
                ],
                [
                    13,
                    1
                ]
            ]
        },
        {
            "type": "table",
            "database": null,
            "name": "prodajna_mjesta",
            "withoutRowId": true,
            "ddl": "CREATE TABLE prodajna_mjesta (id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, naziv TEXT, ulica TEXT, broj INTEGER, mjesto TEXT, radnovrijemestart INTEGER, radnovrijemekraj INTEGER)",
            "columns": [
                {
                    "name": "id",
                    "type": "INTEGER",
                    "constraints": [
                        {
                            "type": "NOT NULL",
                            "definition": "NOT NULL "
                        },
                        {
                            "type": "PRIMARY KEY",
                            "definition": "PRIMARY KEY AUTOINCREMENT"
                        }
                    ]
                },
                {
                    "name": "naziv",
                    "type": "TEXT"
                },
                {
                    "name": "ulica",
                    "type": "TEXT"
                },
                {
                    "name": "broj",
                    "type": "INTEGER"
                },
                {
                    "name": "mjesto",
                    "type": "TEXT"
                },
                {
                    "name": "radnovrijemestart",
                    "type": "INTEGER"
                },
                {
                    "name": "radnovrijemekraj",
                    "type": "INTEGER"
                }
            ],
            "rows": [
                [
                    1,
                    "City galerija",
                    "Relja",
                    1,
                    "Zadar",
                    7,
                    14
                ],
                [
                    2,
                    "Pijaca na Poluotoku",
                    "Zadar",
                    1,
                    "Zadar",
                    6,
                    14
                ],
                [
                    3,
                    "Benkovacki sajam",
                    "Benkovac",
                    1,
                    "Benkovac",
                    8,
                    15
                ],
                [
                    4,
                    "Studenac",
                    "Ulica Bulevar",
                    7,
                    "Zadar",
                    7,
                    20
                ]
            ]
        },
        {
            "type": "table",
            "database": null,
            "name": "proizvod",
            "withoutRowId": true,
            "ddl": "CREATE TABLE proizvod (id INTEGER PRIMARY KEY AUTOINCREMENT, ime TEXT NOT NULL, dobagodine TEXT, vrsta TEXT)",
            "columns": [
                {
                    "name": "id",
                    "type": "INTEGER",
                    "constraints": [
                        {
                            "type": "PRIMARY KEY",
                            "definition": "PRIMARY KEY AUTOINCREMENT"
                        }
                    ]
                },
                {
                    "name": "ime",
                    "type": "TEXT",
                    "constraints": [
                        {
                            "type": "NOT NULL",
                            "definition": "NOT NULL"
                        }
                    ]
                },
                {
                    "name": "dobagodine",
                    "type": "TEXT"
                },
                {
                    "name": "vrsta",
                    "type": "TEXT"
                }
            ],
            "rows": [
                [
                    1,
                    "blitva",
                    "zima",
                    "blitvarica"
                ],
                [
                    2,
                    "med",
                    "cijela godina",
                    "proizvod od pcele"
                ],
                [
                    3,
                    "merlot",
                    "ljeto",
                    "vino"
                ],
                [
                    4,
                    "chardonnay",
                    "zima",
                    "vino"
                ],
                [
                    5,
                    "mrkva",
                    "cijela godina",
                    "mrkvarica"
                ],
                [
                    6,
                    "jaja",
                    "cijela godina",
                    "proizovd od kokoši"
                ],
                [
                    7,
                    "sir",
                    "cijela godina",
                    "prozivod od krave"
                ],
                [
                    8,
                    "kupus",
                    "zima",
                    "kupusarka"
                ],
                [
                    9,
                    "krumpir",
                    "cijela godina",
                    "krumpiruša"
                ],
                [
                    10,
                    "mlijeko",
                    "cijela godina",
                    "proizovd od krave"
                ],
                [
                    11,
                    "limun",
                    "jesen\/zima",
                    "limunjaca"
                ],
                [
                    12,
                    "smilje",
                    "proljece",
                    "smilje"
                ],
                [
                    13,
                    "rotkvica",
                    "ljeto",
                    "rotkva"
                ],
                [
                    14,
                    "smokva",
                    "ljeto",
                    "smokva"
                ],
                [
                    15,
                    "lubenica",
                    "ljeto",
                    "lubenica"
                ],
                [
                    16,
                    "dinja",
                    "ljeto",
                    "dinja"
                ],
                [
                    17,
                    "višnja",
                    "ljeto",
                    "višnja"
                ],
                [
                    18,
                    "travarica",
                    "cijela godina",
                    "rakija"
                ],
                [
                    19,
                    "orah",
                    "zima",
                    "orahovac"
                ]
            ]
        },
        {
            "type": "table",
            "database": null,
            "name": "vlasnik",
            "withoutRowId": true,
            "ddl": "CREATE TABLE vlasnik (id INTEGER PRIMARY KEY, ime TEXT NOT NULL, prezime TEXT NOT NULL, spol TEXT, oib INTEGER, datumrodenja TEXT, mjestorodenja TEXT, drzavarodenja TEXT, prebivaliste TEXT, kontakt INTEGER, email TEXT, strucnasprema TEXT)",
            "columns": [
                {
                    "name": "id",
                    "type": "INTEGER",
                    "constraints": [
                        {
                            "type": "PRIMARY KEY",
                            "definition": "PRIMARY KEY"
                        }
                    ]
                },
                {
                    "name": "ime",
                    "type": "TEXT",
                    "constraints": [
                        {
                            "type": "NOT NULL",
                            "definition": "NOT NULL"
                        }
                    ]
                },
                {
                    "name": "prezime",
                    "type": "TEXT",
                    "constraints": [
                        {
                            "type": "NOT NULL",
                            "definition": "NOT NULL"
                        }
                    ]
                },
                {
                    "name": "spol",
                    "type": "TEXT"
                },
                {
                    "name": "oib",
                    "type": "INTEGER"
                },
                {
                    "name": "datumrodenja",
                    "type": "TEXT"
                },
                {
                    "name": "mjestorodenja",
                    "type": "TEXT"
                },
                {
                    "name": "drzavarodenja",
                    "type": "TEXT"
                },
                {
                    "name": "prebivaliste",
                    "type": "TEXT"
                },
                {
                    "name": "kontakt",
                    "type": "INTEGER"
                },
                {
                    "name": "email",
                    "type": "TEXT"
                },
                {
                    "name": "strucnasprema",
                    "type": "TEXT"
                }
            ],
            "rows": [
                [
                    1,
                    "Adam",
                    "Vidas",
                    "M",
                    12345254769,
                    "13-05-1954",
                    "Zadar",
                    "Hrvatska",
                    "Murvica",
                    955657675,
                    "adam@vidasopg.hr",
                    "SSS"
                ],
                [
                    2,
                    "Marko",
                    "Bruno",
                    "M",
                    2348720581,
                    "15-09-1934",
                    "Split",
                    "Hrvatska",
                    "Raštane donje",
                    997674985,
                    "marko-bruno@gmail.com",
                    "VSS"
                ],
                [
                    3,
                    "Mateja",
                    "Markovic",
                    "Ž",
                    23989865842,
                    "23-06-1980",
                    "Zagreb",
                    "Hrvatska",
                    "Pakoštane",
                    999876757,
                    "mateja@eco-mi.com",
                    "VSS"
                ],
                [
                    4,
                    "Silvija",
                    "Viduka",
                    "Ž",
                    23476767984,
                    "24-12-1940",
                    "Zadar",
                    "Hrvatska",
                    "Pridraga",
                    976564365,
                    "viduka@viduka.hr",
                    "SSS"
                ],
                [
                    5,
                    "Marija",
                    "Pavlovic",
                    "Ž",
                    23498965851,
                    "13-08-1992",
                    "Zadar",
                    "Hrvatska",
                    "Murvica",
                    954348765,
                    "mare@ekojaja.hr",
                    "VSS"
                ],
                [
                    6,
                    "Dino",
                    "Damjanovic",
                    "M",
                    23497054720,
                    "14-04-1963",
                    "Zadar",
                    "Hrvatska",
                    "Zadar",
                    986754387,
                    "dino@damjanovic.hr",
                    "SSS"
                ],
                [
                    7,
                    "Laura",
                    "Martinovic",
                    "Ž",
                    46582937561,
                    "28-09-1978",
                    "Split",
                    "Hrvatska",
                    "Bibinje",
                    9543428754,
                    "laura@smiljekozmetika.hr",
                    "VSS"
                ],
                [
                    8,
                    "Daria",
                    "Babic",
                    "Ž",
                    87587658543,
                    "01-01-1932",
                    "Šibenik",
                    "Hrvatska",
                    "Biljane donje",
                    955656564,
                    "daria@vina-babic.hr",
                    "SSS"
                ],
                [
                    9,
                    "Ivor",
                    "Grego",
                    "M",
                    87865438765,
                    "09-05-1967",
                    "Rijeka",
                    "Hrvatska",
                    "Paljuv",
                    995674326,
                    "ivor@kupus.hr",
                    "VSS"
                ],
                [
                    10,
                    "Martin",
                    "Potnar",
                    "M",
                    76754980765,
                    "13-05-1980",
                    "Munchen",
                    "Njemacka",
                    "Zadar",
                    95656765,
                    "martin@lickikrumpir.hr",
                    "VSS"
                ],
                [
                    11,
                    "Katarina",
                    "Grdovic",
                    "Ž",
                    76856476549,
                    "28-08-1994",
                    "Zagreb",
                    "Hrvatska",
                    "Pašman",
                    976564546,
                    "katarina@mrkvaimliko.hr",
                    "SSS"
                ],
                [
                    12,
                    "Helena",
                    "Pavlovic",
                    "Ž",
                    37485620760,
                    "23-08-1929",
                    "Karlovac",
                    "Hrvatska",
                    "Galovac",
                    9956567432,
                    "helena@pcelari.hr",
                    "VSS"
                ]
            ]
        }
    ]
}