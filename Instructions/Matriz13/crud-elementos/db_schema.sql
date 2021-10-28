
DROP TABLE IF EXISTS tab_cargos_elementos;
DROP TABLE IF EXISTS tab_cargos;
DROP TABLE IF EXISTS tab_elementos_proteccion;
DROP TABLE IF EXISTS tab_areas;

CREATE TABLE tab_areas (
	id serial,
	nombre VARCHAR(100) NOT NULL,
	activo BOOLEAN NOT NULL default TRUE,
	PRIMARY KEY(id)
);

CREATE TABLE tab_elementos_proteccion (
	id serial,
	nombre VARCHAR(100) NOT NULL,
	activo BOOLEAN NOT NULL default TRUE,
	PRIMARY KEY(id)
);

CREATE TABLE tab_cargos (
	id serial,
	nombre VARCHAR(100) NOT NULL,
	id_area integer NOT NULL,
	activo BOOLEAN NOT NULL default TRUE,
	PRIMARY KEY(id),
	FOREIGN KEY (id_area) REFERENCES tab_areas(id)
);

CREATE TABLE tab_cargos_elementos (
	id serial,
	id_cargo integer NOT NULL,
	id_elemento integer NOT NULL,
	activo BOOLEAN NOT NULL default TRUE,
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

-- Insert tabla cargos elementos 
	
-- Alistador
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
	(1,1),
	(1,2),
	(1,3),
	(1,5),
	(1,14),
	(1,16),
	(1,27);

-- Supervisor de alistamiento
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(2,1),
(2,2),
(2,3),
(2,26),
(2,27);

-- Alistador con curso en alturas 
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(3,1),
(3,2),
(3,11),
(3,13),
(3,19),
(3,27);

-- Alistador encargado de limpiar vehiculo por debajo
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(4,5),
(4,6),
(4,9),
(4,10),
(4,19),
(4,27);

-- Alistador parte Interna del vehiculo
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(5,1),
(5,2),
(5,3),
(5,5),
(5,16),
(5,27);

-- Alistadora - Ofisios Varios
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(6,2),
(6,3),
(6,5),
(6,10),
(6,12),
(6,27);

-- Alistadores para Desinfeccion  de Vehiculos
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(7,1),
(7,3),
(7,4),
(7,5),
(7,15),
(7,27);

-- Maniobrista
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(8,1),
(8,2),
(8,3),
(8,26),
(8,27);

-- Mecanico
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(9,1),
(9,8),
(9,12),
(9,16),
(9,19),
(9,20),
(9,21),
(9,23),
(9,27);

-- Soldador 
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(10,1),
(10,7),
(10,8),
(10,19),
(10,23),
(10,27);

-- Lubricador
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(11,1),
(11,11),
(11,12),
(11,15),
(11,16),
(11,19),
(11,20),
(11,22),
(11,27);

-- Conductor
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(12,12),
(12,25),
(12,27);

-- Cajero
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(13,24),
(13,27);

-- Conductor Servicios Especiales
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(14,25),
(14,26),
(14,27);

-- Auxiliar de satelital operativo
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(15,1),
(15,12),
(15,19),
(15,27);

-- Auxiliar Intermunicipal
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(16,1),
(16,24),
(16,27);

-- Auxiliar de satelital administrativo
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(17,24),
(17,27);

-- Despachador 
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(18,1),
(18,24),
(18,26),
(18,27);

-- Radiooperador 
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(19,24),
(19,27);

-- Vendedor de servicio
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(20,1),
(20,24),
(20,27);

-- Secretaria
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(21,24),
(21,27);

-- Auxiliar administrativo
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(22,24),
(22,27);

-- Auxiliar ambiental
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(23,1),
(23,3),
(23,19),
(23,20),
(23,27);

--  Auxiliar SST
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(24,1),
(24,2),
(24,3),
(24,24),
(24,27);

-- Oficios varios
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(25,1),
(25,24),
(25,27);

-- Auxiliar de ruta 
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(26,1),
(26,2),
(26,12),
(26,17),
(26,18),
(26,24),
(26,27);

-- Mensajero
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(27,1),
(27,2),
(27,12),
(27,17),
(27,18),
(27,24),
(27,27);

-- Coordinador serviteca
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(28,1),
(28,27);

-- Auxiliar mecanico 
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(29,1),
(29,2),
(29,3),
(29,11),
(29,24),
(29,26),
(29,27);

-- Auxiliar preoperacional
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(30,1),
(30,2),
(30,3),
(30,11),
(30,12),
(30,24),
(30,26),
(30,27);

-- Supervisor mecanico
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(31,1),
(31,2),
(31,3),
(31,24),
(31,26),
(31,27);

-- Supervisor de seguridad 
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(32,27);

-- Jefe de seguridad 
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(33,24),
(33,27);

-- Vigilante
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(34,1),
(34,2),
(34,3),
(34,24),
(34,26),
(34,27);

-- Medios tecnologicos 
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(35,1),
(35,24),
(35,27);

-- Moto
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(36,16),
(36,17),
(36,18),
(36,24),
(36,27);

-- carro
INSERT INTO public.tab_cargos_elementos(id_cargo, id_elemento)
	VALUES 
(37,3),
(37,24),
(37,27);



CREATE VIEW vis_matriz_elementos AS
SELECT a.id id_area, a.nombre nombre_area, c.id id_cargo, c.nombre nombre_cargo, 
e.id id_elemento, e.nombre nombre_elemento
FROM tab_areas a
LEFT JOIN tab_cargos c ON a.id=c.id_area AND c.activo=true
LEFT JOIN tab_cargos_elementos ce ON c.id=ce.id_cargo  AND ce.activo=true
LEFT JOIN tab_elementos_proteccion e ON e.id=ce.id_elemento  AND e.activo=true


