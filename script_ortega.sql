CREATE DATABASE jdbc;

CREATE SCHEMA fichadas;

CREATE TABLE fichadas.rol( 
    id serial,
	nombre text not null,
	primary key(id)
);

INSERT INTO fichadas.rol(nombre) values
('Sistema'), ('Administracion');

CREATE TABLE fichadas.usuarios(
	Id serial,
    Nombre text NOT NULL,
	Apellido text NOT NULL,
	Alias text NOT NULL,
	Contrasenia text NOT NULL,
	Nro_celular int NOT NULL,
	Email_principal text NOT NULL,
	Email_Secundario text NOT NULL,
	Fecha_alta date NOT NULL,
    Fecha_baja date,
    Rol_id int NOT NULL,
    PRIMARY KEY(Id),
    UNIQUE(Alias, Email_principal),
    FOREIGN KEY(Rol_id) REFERENCES fichadas.rol(id)
);


INSERT INTO fichadas.usuarios(Nombre, Apellido, Alias, Contrasenia, Nro_celular, Email_principal, Email_secundario, Fecha_alta, Fecha_baja, Rol_id)
VALUES
	('JUAN', 'PEREZ', 'JuPe', 'AnRez', 12312312, 'JPerez@empresa.com', 'JPerez@gmail.com', '2020-01-10', NULL, 1),
	('ALVARO', 'GONZALEZ', 'AlvGonz', 'AroAlez', 23423423, 'AGonzalez@empresa.com', 'AGonzalez@gmail.com', '2020-01-10', NULL, 2),
	('PAOLA', 'RAMIREZ', 'PaoRam', 'LaIrez', 34534534, 'PRamirez@empresa.com', 'PRamirez@gmail.com', '2020-05-06', NULL, 1)
;

