CREATE TABLE public.lei
(
    "id"                                        SERIAL PRIMARY KEY,
    "lei"                                       CHARACTER VARYING (200) NOT NULL, 
    "Entity_LegalName"                          CHARACTER VARYING (200) NOT NULL, 
    "Entity_LegalAddress_City"                  CHARACTER VARYING (200), 
    "Entity_LegalAddress_Region"                CHARACTER VARYING (200)
);

COPY lei (
    "lei",
    "Entity_LegalName",
    "Entity_LegalAddress_City",
    "Entity_LegalAddress_Region"
) FROM '/var/lib/postgresql/csvs/lei_7_1_2020.csv' DELIMITER ',' CSV HEADER;

