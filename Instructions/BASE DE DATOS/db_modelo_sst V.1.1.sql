-- ***********************************************************
-- * CORPORACIÓN UNIVERSITARIA UNISABANETA                   *
-- * PROGRAMA: MODELACIÓN DE BASES DE DATOS                  *
-- * SISTEMA DE GESTIÓN DE SEGURIDAD Y SALUD EN EL TRABAJO   *
-- * SCRIPT SQL-DDL DEL MODELO RELACIONAL BÁSICO             *
-- * AUTOR: EQUIPO DE TRABAJO DOCENTE UNISABANETA            *
-- * OBJETIVO: Servir como base para la elaboración completa *
-- * de una modelo más óptimo, que se constituya en columna  *
-- * vertebral para el sistema de información. El estudiante *
-- * continuará con la actualización de este SCRIPT.         *
-- ***********************************************************

-- *******************************************
-- * SECCIÓN DE CREACIÓN DE LA BASE DE DATOS *
-- *******************************************
-- DROP DATABASE db_2282319;
CREATE DATABASE db_sst
    WITH OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Spanish_Colombia.1252'
    LC_CTYPE = 'Spanish_Colombia.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
-- ******************
-- * FIN DE SECCIÓN *
-- ******************

-- ***************************************************
-- * SECCIÓN DE BORRADO DE TABLAS PARA REINSTALACIÓN *
-- ***************************************************
DROP TABLE IF EXISTS tab_encargados;
DROP TABLE IF EXISTS tab_usuarios;
DROP TABLE IF EXISTS tab_permisos;
DROP TABLE IF EXISTS tab_modulos;
DROP TABLE IF EXISTS tab_roles;

-- *******************************************
-- * SECCIÓN DE CREACIÓN DE LAS TABLAS (DDL) *
-- *******************************************
-- Tabla de roles, para acceder al Software de SST.
CREATE TABLE tab_roles
(
    id_rol              SMALLINT        NOT NULL    CHECK(id_rol > 0),
    nom_rol             VARCHAR         NOT NULL,
    PRIMARY KEY(id_rol)
);
INSERT INTO tab_roles VALUES(1,'admin');
INSERT INTO tab_roles VALUES(2,'sg-sst');
INSERT INTO tab_roles VALUES(3,'cocola');
INSERT INTO tab_roles VALUES(4,'copasst');
INSERT INTO tab_roles VALUES(5,'be');

-- Tabla de módulos del sistema, a los cuales tendrá acceso un rol específico
CREATE TABLE tab_modulos
(
    id_modulo           SMALLINT        NOT NULL    CHECK(id_modulo > 0),
    nom_modulo          VARCHAR         NOT NULL,
    PRIMARY KEY(id_modulo)
);

-- Tabla de módulos ermitidos para un rol específico. De acuerdo con cada rol, se establece acceso a los módulos que se necesiten.
CREATE TABLE tab_permisos
(
    id_rol              SMALLINT        NOT NULL,
    id_modulo           SMALLINT        NOT NULL,
    nom_permiso         VARCHAR         NOT NULL,
    PRIMARY KEY(id_rol,id_modulo),
    FOREIGN KEY(id_rol)     REFERENCES tab_roles(id_rol),
    FOREIGN KEY(id_modulo)  REFERENCES tab_modulos(id_modulo)
);

CREATE TABLE tab_usuarios
(
    id_usuario          VARCHAR         NOT NULL, -- Nombre del usuario para autenticación al sistema SST
    val_password        VARCHAR         NOT NULL, -- Password del usuario
    nom_usuario         VARCHAR         NOT NULL    CHECK(CHAR_LENGTH(nom_encargado > 5)), -- Nombre del usuario debe ser > 5 caracteres
    val_cedula          BIGINT          NOT NULL, -- Documento del usuario
    tel_usuario         BIGINT          NOT NULL, -- Teléfono del usuario
    dir_usuario         VARCHAR         NOT NULL, -- Dirección del usuario
    val_correo          VARCHAR         NOT NULL, -- Correo electrónico para recuperación de la clave
    ind_admin           BOOLEAN         NOT NULL, -- Indicador de si es o no, administtrador el usuario. TRUE=Admin / FALSE=Mo lo es
    id_rol              SMALLINT        NOT NULL, -- Rol del usuario en el sistema, asignado al momento de crear un usuario
    PRIMARY KEY(id_usuario),
    FOREIGN KEY(id_rol) REFERENCES tab_roles(id_rol)
);

-- ************* OPCIONAL *************
-- ****************************************************************************
-- * CREACION DE LA EXTENSIÓN pgcrypto para encriptar el password del usuario *
-- ****************************************************************************
-- extensión de Postgres para encripción de campos
DROP EXTENSION IF EXISTS pgcrypto;
CREATE EXTENSION pgcrypto;


-- Creación del usuario administrador
INSERT INTO tab_usuarios VALUES('admin',PGP_SYM_ENCRYPT('val_password','AES_KEY'),'Carlos Eduardo Perez Rueda','999999',3503421739,
                                'Unisabaneta - Medellín','carlos.perez@unisabaneta.edu.co',TRUE,1);

-- **************************************
-- * TABLAS DEL MÓDULO DE DOCUMENTACIÓN *
-- **************************************
CREATE TABLE tab_encargados
(
    id_encargado        SMALLINT        NOT NULL, -- Cédula de ciudadanía del encargdo
    nom_encargado       VARCHAR         NOT NULL    CHECK(CHAR_LENGTH(nom_encargado > 5)),
    ape_encargardo      VARCHAR         NOT NULL    CHECK(CHAR_LENGTH(ape_encargado > 2)),
    ind_nivelestud      DECIMAL(6,0)    NOT NULL    CHECK(ind_nivelestud IN(1,5)),  -- Pueden ser:
                                                                                -- 1=Nivel Tecnológico
                                                                                -- 2=Nivel Profesional
                                                                                -- 3=Nivel Especialización
                                                                                -- 4=Nivel Magister
                                                                                -- 5=Nivel Posgrado
	ruta_hv             VARCHAR         NOT NULL, -- Almacena la ruta del disco en donde está la HV del encargado, para ser leída
    ruta_diplom         VARCHAR         NOT NULL, -- Almacena la ruta del disco en donde está el diploma del encargado, para ser leída
    ruta_cert50h        VARCHAR         NOT NULL, -- Almacena la ruta del disco en donde está la cert. de 50 hras del encargado, para ser leída
    ruta_cert20h        VARCHAR         NOT NULL, -- Almacena la ruta del disco en donde está la cert. de 20 hras del encargado, para ser leída
    ruta_certsal        VARCHAR         NOT NULL, -- Almacena la ruta del disco en donde está la cert. de salud del encargado, para ser leída
    PRIMARY KEY(id_encargado)
);

CREATE TABLE tab_actiecon
(
    id_activecon        SMALLINT        NOT NULL,
    nom_activecon       VARCHAR         NOT NULL,
    PRIMARY KEY(id_activercon)
);

CREATE TABLE tab_empresa
(
    id_empresa          BIGINT          NOT NULL, -- Nit de la empresa que tiene el SST
    nom_empresa         VARCHAR         NOT NULL    CHECK(CHAR_LENGTH(nom_empresa > 5)),
    val_latitud         DECIMAL(18,16)  NOT NULL,
    val_longitud        DECIMAL(18,16)  NOT NULL,
    id_activecon        SMALLINT        NOT NULL, -- Relacionamiento con la actividad económica de la empresa
    ind_nivelriesgo     DECIMAL(1,0)    NOT NULL    CHECK(ind_nivelriesgo > 0 AND ind_nivelriesgo < 5).
    val_numtrab         DECIMAL(3,0)    NOT NULL    CHECK(val_numtrab > 0),
    ind_natjurid        BOOLEAN         NOT NULL    DEFAULT TRUE, -- TRUE=Jurídica / FALSE=Natural
    tel_contacto1       BIGINT          NOT NULL,
    tel_contacto2       BIGINT          NOT NULL,
    nom_contacto1       VARCHAR         NOT NULL,
    PRIMARY KEY(id_empresa),
    FOREIGN KEY(id_activecon) REFERENCES tab_activecon(id_activecon)
);

-- *****************************************************************************************************
-- * TABLAS DE ACCIONES (PREVENTIVA / CORRECTIVA / MEJORA)                                             *
-- * Las acciones tienen la misma estructura, siendo ind_tipo lo que determina si es Prev/Corr(Mejora) *
-- *****************************************************************************************************
-CREATE TABLE tab_responsables
(
    id_responsable      SMALLINT        NOT NULL,
    nom_responsable     VARCHAR         NOT NULL,
    ind_tipo_resp       BOOLEAN         NOT NULL DEFAULT TRUE, -- True=Persona / False=Area de la Empresa
    ind_estado          BOOLEAN         NOT NULL DEFAULT TRUE, -- Estado: True=Activo / False=Inactivo
    PRIMARY KEY(id_responsable)
);

CREATE TABLE tab_acciones
(
    id_accion           INTEGER         NOT NULL,
    ind_tipo_accion     DECIMAL(1,0)    NOT NULL, -- La acción puede ser: 1=Preventiva / 2=Correctiva / 3=De mejora
    fec_accion          DATE            NOT NULL,
    id_responsable      BOOLEAN         NOT NULL, -- Enlace con tabla de responsables
    val_causa1          VARCHAR         NOT NULL,
    val_causa2          VARCHAR,
    val_causa3          VARCHAR,
    val_accion1         VARCHAR         NOT NULL,
    val_accion2         VARCHAR,
    val_accion3         VARCHAR,
    fec_implementacion  DATE            NOT NULL,
    fec_verificacion    DATE            NOT NULL,
    val_observaciones   TEXT,
    ind_estado          DECIMAL(1,0)    NOT NULL, -- 0=Abierta / 1=Cerrada / 3=Eficaz
    ind_eficacia        BOOLEAN         NOT NULL, -- True=Si / False=No
    PRIMARY KEY(id_accion),
    FOREIGN KEY(id_responsable) REFERENCES tab_responsables(id_responsable)
);

CREATE TABLE tab_situaciones
(
    id_accion           INTEGER         NOT NULL,
    id_situacion        SMALLINT        NOT NULL,
    nom_situacion       TEXT            NOT NULL,
    PRIMARY KEY(id_accion,id_situacion),
    FOREIGN KEY(id_accion) REFERENCES tab_acciones(id_accion)
);