-- Database: piarquitectos

-- DROP DATABASE piarquitectos;

CREATE DATABASE piarquitectos
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'Spanish_Mexico.1252'
       LC_CTYPE = 'Spanish_Mexico.1252'
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
  id SERIAL  PRIMARY KEY,
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
  codigo_barra INTEGER
);

CREATE TABLE Enviado(
  id SERIAL  PRIMARY KEY,
  fk_id_herramienta  INTEGER,
  fk_id_persona INTEGER
);
CREATE TABLE Recibido(
  id SERIAL  PRIMARY KEY,
  fk_id_herramienta  INTEGER,
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

ALTER TABLE Persona ADD FOREIGN KEY(fk_id_herramienta) REFERENCES Herramientas (id) ON DELETE CASCADE;
ALTER TABLE Persona ADD FOREIGN KEY(fk_id_proyecto) REFERENCES Proyecto (id) ON DELETE CASCADE;
ALTER TABLE Proyecto ADD FOREIGN KEY(fk_id_persona) REFERENCES Persona (id) ON DELETE CASCADE;
ALTER TABLE Enviado ADD FOREIGN KEY(fk_id_herramienta) REFERENCES Herramientas (id) ON DELETE CASCADE;
ALTER TABLE Enviado ADD FOREIGN KEY(fk_id_persona) REFERENCES Persona (id) ON DELETE CASCADE;
ALTER TABLE Recibido ADD FOREIGN KEY(fk_id_herramienta) REFERENCES Herramientas (id) ON DELETE CASCADE;
ALTER TABLE Recibido ADD FOREIGN KEY(fk_id_persona) REFERENCES Persona (id) ON DELETE CASCADE;
ALTER TABLE Contiene ADD FOREIGN KEY(fk_id_mobilario) REFERENCES Mobilario (id) ON DELETE CASCADE;
ALTER TABLE Contiene ADD FOREIGN KEY(fk_id_proyecto) REFERENCES Proyecto (id) ON DELETE CASCADE;
ALTER TABLE Utiliza ADD FOREIGN KEY(fk_id_proyecto) REFERENCES Proyecto (id) ON DELETE CASCADE;
ALTER TABLE Utiliza ADD FOREIGN KEY(fk_id_material) REFERENCES Material (id_material) ON DELETE CASCADE;

