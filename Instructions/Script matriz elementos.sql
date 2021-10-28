
CREATE TABLE tab_areas (
	id serial,
	nombre VARCHAR(100) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE tab_elementos_proteccion (
	id serial,
	nombre VARCHAR(100) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE tab_cargos (
	id serial,
	nombre VARCHAR(100) NOT NULL,
	id_area integer NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY (id_area) REFERENCES tab_areas(id)
);

CREATE TABLE tab_cargos_elementos (
	id serial,
	id_cargo integer NOT NULL,
	id_elemento integer NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY (id_cargo) REFERENCES tab_cargos(id),
	FOREIGN KEY (id_elemento) REFERENCES tab_elementos_proteccion(id)
);

-- INSERT
INSERT INTO public.tab_areas(nombre)
	VALUES 
	('Alistamiento'),
	('Serviteca'),
	('Transporte'),
	('Administrativa'),
	('Mantenimiento'),
	('Seguridad '),
	('Instructor CEA');
	
INSERT INTO public.tab_cargos(nombre, id_area)
	VALUES 
('Alistador', 1),
('Supervisor de alistamiento', 1),
('Alistador con curso en alturas ', 1),
('Alistador encargado de limpiar vehiculo por debajo', 1),
('Alistador parte Interna del vehiculo', 1),
('Alistadora - Ofisios Varios', 1),
('Alistadores para Desinfeccion  de Vehiculos', 1),
('Maniobrista', 1),
('Mecanico', 2),
('Soldador ', 2),
('Lubricador', 2),
('Conductor', 3),
('Cajero', 3),
('Conductor Servicios Especiales', 3),
('Auxiliar de satelital operativo', 3),
('Auxiliar Intermunicipal', 3),
('Auxiliar de satelital administrativo', 3),
('Despachador ', 3),
('Radiooperador ', 3),
('Vendedor de servicio', 4),
('Secretaria', 4),
('Auxiliar administrativo', 4),
('Auxiliar ambiental', 4),
(' Auxiliar SST', 4),
('Oficios varios', 4),
('Auxiliar de ruta ', 4),
('Mensajero', 4),
('Coordinador serviteca', 4),
('Auxiliar mecanico ', 5),
('Auxiliar preoperacional', 5),
('Supervisor mecanico', 5),
('Supervisor de seguridad ', 6),
('Jefe de seguridad ', 6),
('Vigilante', 6),
('Medios tecnologicos ', 6),
('Moto', 7),
('carro', 7);

INSERT INTO public.tab_elementos_proteccion(nombre)
	VALUES 
('Botas de seguridad'),
('Mangas'),
('Pava/Gorra'),
('Traje antifluidos'),
('Impermeable con reflectivo (pantalon-camisa)'),
('Gauntes caucho N 9 Calibre 35'),
('Careta'),
('Guantes Carnaza'),
('Conjunto Impermeable Color Amarillo Calibre (16)'),
('Botas Pantaneras'),
('Casco'),
('Guantes recubierto con poliuretano.'),
('Guante recubierto con latex.'),
('Guantes de Nitrilo Calibre.'),
('Guantes de Nitrilo Calibre 6'),
('Rodilleras'),
('Casco para moto.'),
('Rodillera y chaqueta motorizado'),
('Overol con cinta reflectiva.'),
('Gafas de seguridad '),
('Proteccion auditiva copa '),
('Mascara Respiratoria'),
('Proteccion auditiva insercion'),
('Uniforme (dotación)'),
('Uniforme conductor'),
('Chaleco reflectivo'),
('Tapabocas ');

INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
	(1,1),
	(1,2),
	(1,3),
	(1,5),
	(1,14),
	(1,16),
	(1,27);
	
CREATE VIEW vis_matriz_elementos AS
SELECT a.id id_area, a.nombre nombre_area, c.id id_cargo, c.nombre nombre_cargo, 
e.id id_elemento, e.nombre nombre_elemento
FROM tab_areas a
LEFT JOIN tab_cargos c ON a.id=c.id_area
LEFT JOIN tab_cargos_elementos ce ON c.id=ce.id_cargo 
LEFT JOIN tab_elementos_proteccion e ON e.id=ce.id_elemento