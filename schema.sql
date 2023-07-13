/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
	id INT GENERATED BY DEFAULT AS IDENTITY,
	name VARCHAR(250),
	date_of_birth DATE,
	escape_attempts INT,
	neutered BOOLEAN,
	weight_kg DECIMAL
);

ALTER TABLE animals ADD species VARCHAR(250);

-- Day-3

CREATE TABLE owners (
	id INTEGER GENERATED ALWAYS AS IDENTITY,
	full_name VARCHAR(255),
	age INTEGER,
	PRIMARY KEY(id)
);

CREATE TABLE species (
	id INTEGER GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(255),
	PRIMARY KEY(id)
);

ALTER TABLE animals DROP COLUMN species;

ALTER TABLE animals ADD species_id INTEGER;

ALTER TABLE animals ADD CONSTRAINT fk_species FOREIGN KEY(species_id) REFERENCES species(id);

ALTER TABLE animals ADD owner_id INTEGER;

ALTER TABLE animals ADD CONSTRAINT fk_owners FOREIGN KEY(owner_id) REFERENCES owners(id);
