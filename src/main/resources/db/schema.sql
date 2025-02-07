CREATE TABLE dapil (
	id uuid NOT NULL,
	nama_dapil varchar NULL,
	provinsi varchar NULL,
	jumlah_kursi int NULL,
	CONSTRAINT dapil_pk PRIMARY KEY (id)
);

CREATE TABLE dapil_wilayah (
	id uuid NOT NULL,
	wilayah varchar NULL,
	dapil_id uuid NULL,
	CONSTRAINT dapil_wilayah_pk PRIMARY KEY (id),
	CONSTRAINT dapil_wilayah_dapil_fk FOREIGN KEY (dapil_id) REFERENCES dapil(id)
);


CREATE TABLE partai (
	id uuid NOT NULL,
	nama_partai varchar NULL,
	no_urut int NULL,
	CONSTRAINT partai_pk PRIMARY KEY (id)
);

CREATE TABLE caleg (
	id uuid NOT NULL,
	dapil_id uuid NULL,
	partai_id uuid NULL,
	no_urut int NULL,
	nama varchar NULL,
	jenis_kelamin varchar NULL,
	CONSTRAINT caleg_pk PRIMARY KEY (id),
	CONSTRAINT caleg_dapil_fk FOREIGN KEY (dapil_id) REFERENCES dapil(id),
	CONSTRAINT caleg_partai_fk FOREIGN KEY (partai_id) REFERENCES partai(id)
);



