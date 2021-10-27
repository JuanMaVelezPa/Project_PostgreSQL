-- ***********************************************************
-- * CORPORACIÓN UNIVERSITARIA UNISABANETA                   *
-- * PROGRAMA: MODELACIÓN DE BASES DE DATOS                  *
--    WITH OWNER = postgres
--    ENCODING = 'UTF8'
--    LC_COLLATE = 'Spanish_Colombia.1252'
--    LC_CTYPE = 'Spanish_Colombia.1252'
--    TABLESPACE = pg_default
--    CONNECTION LIMIT = -1;
-- ******************
-- * FIN DE SECCIÓN *
-- ******************

-- ***************************************************
-- * SECCIÓN DE BORRADO DE TABLAS PARA REINSTALACIÓN *
-- ***************************************************
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS permissions;
DROP TABLE IF EXISTS rol;

-- *******************************************
-- * SECCIÓN DE CREACIÓN DE LAS TABLAS (DDL) *
-- *******************************************
-- Tabla de roles, para acceder al Software de SST.
CREATE TABLE rol
(
    id_rol              SMALLINT        NOT NULL    CHECK(id_rol > 0),
    rol_name             VARCHAR         NOT NULL,
    PRIMARY KEY(id_rol)
);
INSERT INTO rol VALUES(1,'sg-sst');
INSERT INTO rol VALUES(2,'cocola');
INSERT INTO rol VALUES(3,'copasst');
INSERT INTO rol VALUES(4,'be');

-- Tabla de módulos ermitidos para un rol específico. De acuerdo con cada rol, se establece acceso a los módulos que se necesiten.
CREATE TABLE permissions
(
    id_permission              SMALLINT        NOT NULL,
    name         VARCHAR         NOT NULL,
    PRIMARY KEY(id_permission)
);

-- m a m
CREATE TABLE permissions_rol
(
    id_permission              SMALLINT        NOT NULL,
    id_rol              SMALLINT        NOT NULL    CHECK(id_rol > 0),
    PRIMARY KEY(id_permission, id_rol),
    FOREIGN KEY(id_rol) REFERENCES rol(id_rol),
    FOREIGN KEY(id_permission) REFERENCES permissions(id_permission)
);

CREATE TABLE users
(
    user_name          VARCHAR         NOT NULL, -- Nombre del usuario para autenticación al sistema SST
    password        VARCHAR         NOT NULL, -- Password del usuario
    name         VARCHAR         NOT NULL    CHECK(CHAR_LENGTH(name) > 2), -- Nombre del usuario debe ser > 5 caracteres
    first_surname         VARCHAR         NOT NULL    CHECK(CHAR_LENGTH(first_surname) > 3), -- Nombre del usuario debe ser > 5 caracteres
    second_surname         VARCHAR         NOT NULL    CHECK(CHAR_LENGTH(second_surname) > 3), -- Nombre del usuario debe ser > 5 caracteres
    identity_number          BIGINT          NOT NULL, -- Documento del usuario
    phone         VARCHAR          NOT NULL, -- Teléfono del usuario
    cellphone         VARCHAR          NOT NULL, -- Teléfono celular del usuario
    address         VARCHAR         NOT NULL, -- Dirección del usuario
    email          VARCHAR         NOT NULL, -- Correo electrónico para recuperación de la clave
    admin_status           BOOLEAN         NOT NULL, -- Indicador de si es o no, administtrador el usuario. TRUE=Admin / FALSE=Mo lo es
    activity_status           BOOLEAN         NOT NULL, -- Indicador de si esta activo TRUE o no FALSE
    id_rol              SMALLINT        NOT NULL, -- Rol del usuario en el sistema, asignado al momento de crear un usuario
    PRIMARY KEY(identity_number),
    FOREIGN KEY(id_rol) REFERENCES rol(id_rol)
);

-- ************* OPCIONAL *************
-- ****************************************************************************
-- * CREACION DE LA EXTENSIÓN pgcrypto para encriptar el password del usuario *
-- ****************************************************************************
-- extensión de Postgres para encripción de campos
DROP EXTENSION IF EXISTS pgcrypto;
CREATE EXTENSION pgcrypto;