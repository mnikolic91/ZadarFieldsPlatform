SELECT opg.ime, vlasnik.ime, vlasnik.prezime, group_concat(proizvod.ime, ',') AS proizvodi FROM opg
JOIN vlasnik ON opg.vlasnik_id = vlasnik.id
JOIN opg_ima_proizvod ON opg.id = opg_ima_proizvod.opg_id
JOIN proizvod ON opg_ima_proizvod.proizvod_id = proizvod.id
GROUP BY (opg.id);


DROP VIEW IF EXISTS opg_i_prodaja;
CREATE VIEW opg_i_prodaja AS 
SELECT opg.ime, prodajna_mjesta.naziv, prodajna_mjesta.radnovrijemestart FROM opg
JOIN opg_prodaje ON opg_prodaje.opg_id = opg.id
JOIN prodajna_mjesta ON prodajna_mjesta.id = opg_prodaje.prodajna_mjesta_id;

SELECT * FROM opg_i_prodaja;

SELECT opg.ime, opg_ima_proizvod.kolicinatone, group_concat(proizvod.ime, ';') AS proizvodi, group_concat(proizvod.dobagodine, ';') AS plodna_doba FROM opg
JOIN opg_ima_proizvod ON opg_ima_proizvod.opg_id = opg.id
JOIN proizvod ON proizvod.id = opg_ima_proizvod.proizvod_id
GROUP BY (opg.id)
ORDER BY opg_ima_proizvod.kolicinatone ASC;

SELECT proizvod.ime FROM proizvod
LEFT JOIN opg_ima_proizvod ON opg_ima_proizvod.proizvod_id = proizvod.id
LEFT JOIN opg ON opg.id = opg_ima_proizvod.opg_id
WHERE opg_ima_proizvod.opg_id IS NULL;

SELECT opg.ime, SUM(opg_ima_proizvod.kolicinatone) FROM opg
JOIN opg_ima_proizvod ON opg_ima_proizvod.opg_id = opg.id
GROUP BY opg.id;

