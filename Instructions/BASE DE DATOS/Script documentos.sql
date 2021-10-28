-- ***************************************************
-- * SECCIÓN DE BORRADO DE TABLAS PARA REINSTALACIÓN *
-- ***************************************************
-- Modulo documentacion

DROP TABLE IF EXISTS tab_documentos_empresa;	-- e.f.g.
DROP TABLE IF EXISTS tab_documentos_empleado;	-- a.c. 
DROP TABLE IF EXISTS tab_empleados_roles;   	-- a.
DROP TABLE IF EXISTS tab_empleados;             -- a.
DROP TABLE IF EXISTS tab_roles_sgsst;           -- a.
DROP TABLE IF EXISTS tab_niveles_estudio;       -- a.
DROP TABLE IF EXISTS tab_cargos;                -- a.
DROP TABLE IF EXISTS tab_areas;                 -- a.
DROP TABLE IF EXISTS tab_productos_proveedor; 	-- d. 
DROP TABLE IF EXISTS tab_productos; 	        -- d. 
DROP TABLE IF EXISTS tab_proveedores; 	        -- d. 
DROP TABLE IF EXISTS tab_tipos_documento; 	    --  
DROP TABLE IF EXISTS tab_datos_empresa;         -- b. 

-- *******************************************
-- * SECCIÓN DE CREACIÓN DE LAS TABLAS (DDL) *
-- *******************************************

-- Tabla datos Empresa
CREATE TABLE tab_datos_empresa
(
    id SERIAL,
    nombre VARCHAR,
    NIT VARCHAR,
    georreferenciacion VARCHAR,
    actividad_economica VARCHAR,
    nivel_riesgo VARCHAR,
    cantidad_trabajadores   VARCHAR, --es un campo calculado
    naturaleza_juridica VARCHAR,
    telefono1 VARCHAR,
    telefono2 VARCHAR,
    telefono3 VARCHAR,
    email VARCHAR,
    tipo_empresa VARCHAR,
    activo          BOOLEAN   DEFAULT TRUE NOT NULL,
    fecha_creacion  TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(id)
);
COMMENT ON TABLE tab_datos_empresa IS 'Contiene la informacion de la Empresa ';
COMMENT ON COLUMN tab_datos_empresa.cantidad_trabajadores IS 'Es un campo calculado';

-- Tabla Proveedores
CREATE TABLE tab_proveedores
(
    id SERIAL,
    nombre VARCHAR,
    NIT VARCHAR,
    certificado_arl VARCHAR,
    es_autorizado BOOLEAN NOT NULL,
    seguridad_social VARCHAR,
    telefono1 VARCHAR,
    telefono2 VARCHAR,
    email VARCHAR,
    tipo_empresa VARCHAR,
    activo          BOOLEAN   DEFAULT TRUE NOT NULL,
    fecha_creacion  TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(id)
);
COMMENT ON TABLE tab_proveedores IS 'Contiene la informacion de los proveedores ';
COMMENT ON COLUMN tab_proveedores.es_autorizado IS 'Indica si esta autorizado por las autoridades de salud para la compra de los insumos necesarios para ejecución del sistema';

-- Tabla Productos
CREATE TABLE tab_productos
(
    id SERIAL,
    nombre VARCHAR,
    activo          BOOLEAN   DEFAULT TRUE NOT NULL,
    fecha_creacion  TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(id)
);

-- Tabla Productos proveedor
CREATE TABLE tab_productos_proveedor
(
    id SERIAL,
    id_proveedor    BIGINT          NOT NULL,
    id_producto    	BIGINT          NOT NULL,
    ficha_seguridad VARCHAR,
    vida_util 		INTEGER, 	-- meses
    activo          BOOLEAN   DEFAULT TRUE NOT NULL,
    fecha_creacion  TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(id_proveedor) REFERENCES tab_proveedores(id),
    FOREIGN KEY(id_producto) REFERENCES tab_productos(id),
    PRIMARY KEY(id)
);
COMMENT ON TABLE tab_productos_proveedor IS 'Contiene la informacion de los productos que suministra cada proveedor ';
COMMENT ON COLUMN tab_productos_proveedor.ficha_seguridad IS 'Ruta completa y nombre del archivo de la ficha';
COMMENT ON COLUMN tab_productos_proveedor.vida_util IS 'En meses';

-- Tabla niveles de estudio
CREATE TABLE tab_niveles_estudio
(
    id SERIAL,
    nombre          VARCHAR         NOT NULL,
    activo          BOOLEAN   DEFAULT TRUE NOT NULL,
    fecha_creacion      TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(id)
);

-- Tabla de niveles de estudio
INSERT INTO tab_niveles_estudio (nombre) VALUES
('Primaria'),
('Bachiller'),
('Tecnico'),
('Tecnólogo'),
('Profesional'),
('Especialización'),
('Maestria'),
('Doctorado'),
('PostDoctorado');

-- Tabla de roles del sistema de gestion de sst
CREATE TABLE tab_roles_sgsst
(
    id SERIAL,
    nombre              VARCHAR         NOT NULL,
    responsabilidades   TEXT,
    activo              BOOLEAN   DEFAULT TRUE NOT NULL,
    fecha_creacion      TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(id)
);
COMMENT ON TABLE tab_roles_sgsst IS 'Contiene la informacion de los roles del sistema de gestion SST de la empresa ';
COMMENT ON COLUMN tab_roles_sgsst.responsabilidades IS 'Contiene las responsabilidades del rol, necesario para generar documento responsabilidades por empleado';


INSERT INTO tab_roles_sgsst (nombre) VALUES
('Empleador'),
('Responsable SST'),
('Lideres o Coordinadores con personal a cargo'),
('Empleados'),
('Copasst'),
('Presidente Copasst'),
('Comite de Convivencia Laboral'),
('Brigada de Emergencia');

-- Tabla de tipos de documento
CREATE TABLE tab_tipos_documento
(
    id SERIAL,
    nombre              VARCHAR    NOT NULL,
    activo              BOOLEAN   DEFAULT TRUE NOT NULL,
    fecha_creacion      TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(id)
);
COMMENT ON TABLE tab_tipos_documento IS 'Almacena los tipos de documento como diploma, curso 50 horas, politica de la empresa';

INSERT INTO tab_tipos_documento (id, nombre) VALUES
(1, 'Política del SG-SST'),
(2, 'Riesgos psicosociales'),
(3, 'Plan de emergencia'),
(4, 'Hoja de vida'),
(5, 'Diploma'),
(6, 'Curso de 50 horas'),
(7, 'Certificado de salud'),
(8, 'Compromisos y Responsabilidades'),
(50, 'Otros');

-- Tabla de areas
CREATE TABLE tab_areas
(
    id SERIAL,
    nombre              VARCHAR         NOT NULL,
    activo          BOOLEAN   DEFAULT TRUE NOT NULL,
    fecha_creacion      TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(id)
);
COMMENT ON TABLE tab_areas IS 'Contiene la informacion de todas las areas de la empresa ';

INSERT INTO public.tab_areas(nombre)
	VALUES 
	('Alistamiento'),
	('Serviteca'),
	('Transporte'),
	('Administrativa'),
	('Mantenimiento'),
	('Seguridad '),
	('Instructor CEA');


-- Tabla de cargos
CREATE TABLE tab_cargos
(
    id SERIAL,
    nombre          VARCHAR         NOT NULL,
    id_area        BIGINT          NOT NULL,
    activo          BOOLEAN   DEFAULT TRUE NOT NULL,
    fecha_creacion  TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(id),
    FOREIGN KEY(id_area) REFERENCES tab_areas(id)
);
COMMENT ON TABLE tab_cargos IS 'Contiene la informacion de todos los cargos de la empresa ';

INSERT INTO tab_cargos(nombre, id_area)
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

-- Tabla de empleados
CREATE TABLE tab_empleados
(
    id SERIAL,
    nombre              VARCHAR         NOT NULL,
    apellidos           VARCHAR         NOT NULL,
    id_cargo            BIGINT          NOT NULL,
    id_nivel_estudio    BIGINT          NOT NULL,
    activo              BOOLEAN   DEFAULT TRUE NOT NULL,
    fecha_creacion      TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(id),
    FOREIGN KEY(id_cargo) REFERENCES tab_cargos(id),
    FOREIGN KEY(id_nivel_estudio) REFERENCES tab_niveles_estudio(id)
);
COMMENT ON TABLE tab_empleados IS 'Contiene la informacion de todos los empleados de la empresa ';
COMMENT ON COLUMN tab_empleados.id_nivel_estudio IS 'De acuerdo a la tabla tab_niveles_estudio';

-- Tabla de empleados roles sgsst
CREATE TABLE tab_empleados_roles
(
    id SERIAL,
    id_empleado     BIGINT         NOT NULL,
    id_rol          BIGINT          NOT NULL,
    fecha_inicio    TIMESTAMP DEFAULT NOW(),
    fecha_fin       TIMESTAMP,
    activo          BOOLEAN   DEFAULT TRUE NOT NULL,
    fecha_creacion  TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(id),
    FOREIGN KEY(id_empleado) REFERENCES tab_empleados(id),
    FOREIGN KEY(id_rol) REFERENCES tab_roles_sgsst(id)
);
COMMENT ON TABLE tab_empleados_roles IS 'Almacena los las relaciones de empleados con roles que se le asignan';

-- Tabla de documentos empleado
CREATE TABLE tab_documentos_empleado
(
    id SERIAL,
    id_empleado         BIGINT         NOT NULL,
    id_tipo_documento   BIGINT         NOT NULL,
    nombre_archivo      VARCHAR,
    fecha_vence         DATE,
    obs                 TIMESTAMP,
    activo              BOOLEAN   DEFAULT TRUE NOT NULL,
    fecha_creacion      TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(id),
    FOREIGN KEY(id_empleado) REFERENCES tab_empleados(id),
    FOREIGN KEY(id_tipo_documento) REFERENCES tab_tipos_documento(id)
);
COMMENT ON TABLE tab_documentos_empleado IS 'Almacena los documentos de cada empleado';
COMMENT ON COLUMN tab_documentos_empleado.nombre_archivo IS 'Nombre y ruta completa del archivo';

-- Tabla de documentos Empresa
CREATE TABLE tab_documentos_empresa
(
    id SERIAL,
    id_tipo_documento   BIGINT         NOT NULL,
    titulo              VARCHAR,
    descripcion         TEXT,
    firma               VARCHAR,
    nombre_archivo      VARCHAR,
    fecha_vence         DATE,
    obs                 TEXT,
    activo              BOOLEAN   DEFAULT TRUE NOT NULL,
    fecha_creacion      TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(id),
    FOREIGN KEY(id_tipo_documento) REFERENCES tab_tipos_documento(id)
);
COMMENT ON TABLE tab_documentos_empresa IS 'Almacena los documentos de la Empresa';
COMMENT ON COLUMN tab_documentos_empresa.nombre_archivo IS 'Nombre y ruta completa del archivo';
COMMENT ON COLUMN tab_documentos_empresa.titulo IS 'Para mostrar en la vista Ej: Politica de SG SST';
COMMENT ON COLUMN tab_documentos_empresa.descripcion IS 'Texto para publicar o generar documento en pdf';
COMMENT ON COLUMN tab_documentos_empresa.firma IS 'Nombre de quien firma el documento';

UPDATE tab_roles_sgsst
SET responsabilidades='1. Definir, firmar y divulgar la política de Seguridad y Salud en el Trabajo a través de documento escrito, el empleador debe suscribir la política de seguridad y salud en el trabajo de la empresa, la cual deberá proporcionar un marco de referencia para establecer y revisar los objetivos de seguridad y salud en el trabajo.

2. Asignación y Comunicación de Responsabilidades: Debe asignar, documentar y comunicar las responsabilidades específicas en Seguridad y Salud en el Trabajo (SST) a todos los niveles de la organización, incluida la alta dirección.

3. Rendición de cuentas al interior de la empresa: A quienes se les hayan delegado responsabilidades en el Sistema de Gestión de la Seguridad y Salud en el Trabajo (SG-SST), tienen la obligación de rendir cuentas internamente en relación con su desempeño. Esta rendición de cuentas se podrá hacer a través de medios escritos, electrónicos, verbales o los que sean considerados por los responsables. La rendición se hará como mínimo anualmente y deberá quedar documentada.

4. Definición de Recursos: Debe definir y asignar los recursos financieros, técnicos y el personal necesario para el diseño, implementación, revisión evaluación y mejora de las medidas de prevención y control, para la gestión eficaz de los peligros y riesgos en el lugar de trabajo y también, para que los responsables de la seguridad y salud en el trabajo en la empresa, el Comité Paritario o Vigía de Seguridad y Salud en el Trabajo según corresponda, puedan cumplir de manera satisfactoria con sus funciones.

5. Cumplimiento de los Requisitos Normativos Aplicables: Debe garantizar que opera bajo el cumplimiento de la normatividad nacional vigente aplicable en materia de seguridad y salud en eltrabajo, en armonía con los estándares mínimos del Sistema Obligatorio de Garantía de Calidad del Sistema General de Riesgos Laborales de que trata el artículo 14 de la Ley 1562 de 2012.

6. Gestión de los Peligros y Riesgos: Debe adoptar disposiciones efectivas para desarrollar las medidas de identificación de peligros, evaluación y valoración de los riesgos y establecimiento de controles que prevengan daños en la salud de los trabajadores y/o contratistas, en los equipos e instalaciones.

7. Plan de Trabajo Anual en SST: Debe diseñar y desarrollar un plan de trabajo anual para alcanzar cada uno de los objetivos propuestos en el Sistema de Gestión de la Seguridad y Salud en el Trabajo (SG-SST), el cual debe identificar claramente metas, responsabilidades, recursos y cronograma de actividades, en concordancia con los estándares mínimos del Sistema Obligatorio de Garantía de Calidad del Sistema General de Riesgos Laborales.

8. Prevención y Promoción de Riesgos Laborales: El empleador debe implementar y desarrollar actividades de prevención de accidentes de trabajo y enfermedades laborales, así como de promoción de la salud en el Sistema de Gestión de la Seguridad y Salud en el Trabajo (SG-SST), de conformidad con la normatividad vigente.

9. Participación de los Trabajadores: Debe asegurar la adopción de medidas eficaces que garanticen la participación de todos los trabajadores y sus representantes ante el Comité Paritario o Vigía de Seguridad y Salud en el Trabajo, en la ejecución de la política y también que estos últimos funcionen y cuenten con el tiempo y demás recursos necesarios, acorde con la normatividad vigente que les es aplicable. Así mismo, el empleador debe informar a los trabajadores y/o contratistas, a sus representantes ante el Comité Paritario o el Vigía de Seguridad y Salud en el Trabajo, según corresponda de conformidad con la normatividad vigente, sobre el desarrollo de todas las etapas del Sistema de Gestión de Seguridad de la Salud en el Trabajo SG-SST e igualmente, debe evaluar las recomendaciones emanadas de estos para el mejoramiento del SG-SST. El empleador debe garantizar la capacitación de los trabajadores en los aspectos de seguridad y salud en el trabajo de acuerdo con las características de la empresa, la identificación de peligros, la evaluación y valoración de riesgos relacionados con su trabajo, incluidas las disposiciones relativas a las situaciones de emergencia, dentro de la jornada laboral de los trabajadores directos o en el desarrollo de la prestación del servicio de los contratistas;

10. Dirección de la Seguridad y Salud en el Trabajo–SST en las Empresas: Debe garantizar la disponibilidad de personal responsable de la seguridad y la salud en el trabajo, cuyo perfil deberá ser acorde con lo establecido con la normatividad vigente y los estándares mínimos que para tal efecto determine el Ministerio del Trabajo quienes deberán, entre otras: a) Planear, organizar, dirigir, desarrollar y aplicar el Sistema de Gestión de la Seguridad y Salud en el Trabajo SG-SST, y como mínimo una (1) vez al año, realizar su evaluación; b) Informar a la alta dirección sobre el funcionamiento y los resultados del Sistema de Gestión de la Seguridad y Salud en el Trabajo SG-SST, y; c) Promover la participación de todos los miembros de la empresa en la implementación del Sistema de Gestión de la Seguridad y Salud en el Trabajo SG-SST; y

11. Integración: El empleador debe involucrar los aspectos de Seguridad y Salud en el Trabajo, al conjunto de sistemas de gestión, procesos, procedimientos y decisiones en la empresa'
WHERE id=1;

