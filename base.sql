
#CREATED BY HECTOR SANTAELLA MARIN
-- Database: BasePiArquitectos

-- DROP DATABASE "BasePiArquitectos";

CREATE DATABASE "BasePiArquitectos"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;


CREATE TABLE Persona(
  id SERIAL  PRIMARY KEY,
  rfc CHAR(13) UNIQUE ,
  nombre VARCHAR(60),
  apellido_paterno VARCHAR(100),
  apellido_materno VARCHAR(100),
  fk_id_herramienta INTEGER,
  fk_id_proyecto INTEGER
);
CREATE TABLE Proyecto(
  id SERIAL  PRIMARY KEY,
  nombre VARCHAR(250),
  ubicacion VARCHAR(300),
  fk_id_persona INTEGER
);
CREATE TABLE Mobilario(
  id SERIAL  PRIMARY KEY,
  nombre VARCHAR(250),
  ubicacion VARCHAR(300)
);

CREATE TABLE Material(
  id_material SERIAL  PRIMARY KEY,
  nombre VARCHAR(100),
  descripcion VARCHAR(100)
);

CREATE TABLE Herramientas(
  id SERIAL ,
  precio INTEGER,
  no_serie VARCHAR(50),
  modelo VARCHAR(100),
  marca VARCHAR(100),
  fecha_alta DATE,
  fecha_baja DATE,
  fecha_reparacion DATE,
  motivo_baja VARCHAR(500),
  tipo VARCHAR(120),
  subtipo VARCHAR(200),
  codigo_barra SERIAL  PRIMARY KEY,
  foto1 BYTEA,
  foto2 BYTEA,
  foto3 BYTEA
);

CREATE TABLE Enviado(
  id SERIAL  PRIMARY KEY,
  fk_codigo_barra  INTEGER,
  fk_id_persona INTEGER
);
CREATE TABLE Recibido(
  id SERIAL  PRIMARY KEY,
  fk_codigo_barra   INTEGER,
  fk_id_persona INTEGER
);

CREATE TABLE Contiene(
  fk_id_mobilario INTEGER,
  fk_id_proyecto INTEGER
);

CREATE TABLE Utiliza(
  fk_id_proyecto INTEGER,
  fk_id_material INTEGER
);

ALTER TABLE Persona ADD FOREIGN KEY(fk_codigo_barra ) REFERENCES Herramientas (codigo_barra) ON DELETE CASCADE;
ALTER TABLE Persona ADD FOREIGN KEY(fk_id_proyecto) REFERENCES Proyecto (id) ON DELETE CASCADE;
ALTER TABLE Proyecto ADD FOREIGN KEY(fk_id_persona) REFERENCES Persona (id) ON DELETE CASCADE;
ALTER TABLE Enviado ADD FOREIGN KEY(fk_codigo_barra) REFERENCES Herramientas (codigo_barra) ON DELETE CASCADE;
ALTER TABLE Enviado ADD FOREIGN KEY(fk_id_persona) REFERENCES Persona (id) ON DELETE CASCADE;
ALTER TABLE Recibido ADD FOREIGN KEY(fk_codigo_barra) REFERENCES Herramientas (codigo_barra) ON DELETE CASCADE;
ALTER TABLE Recibido ADD FOREIGN KEY(fk_id_persona) REFERENCES Persona (id) ON DELETE CASCADE;
ALTER TABLE Contiene ADD FOREIGN KEY(fk_id_mobilario) REFERENCES Mobilario (id) ON DELETE CASCADE;
ALTER TABLE Contiene ADD FOREIGN KEY(fk_id_proyecto) REFERENCES Proyecto (id) ON DELETE CASCADE;
ALTER TABLE Utiliza ADD FOREIGN KEY(fk_id_proyecto) REFERENCES Proyecto (id) ON DELETE CASCADE;
ALTER TABLE Utiliza ADD FOREIGN KEY(fk_id_material) REFERENCES Material (id_material) ON DELETE CASCADE;


CREATE SEQUENCE codigo_barra_seq 
  INCREMENT 1
  START 1000001;