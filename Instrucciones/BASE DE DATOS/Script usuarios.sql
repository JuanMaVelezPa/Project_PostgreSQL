-- ***************************************************
-- * SECCIÓN DE BORRADO DE TABLAS PARA REINSTALACIÓN *
-- ***************************************************

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
    id SERIAL,
    nombre          VARCHAR         NOT NULL,
    activo          BOOLEAN   DEFAULT TRUE NOT NULL,
    fecha_creacion      TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(id)
);

INSERT INTO tab_roles (nombre) VALUES
('admin'),
('sg-sst'),
('cocola'),
('copasst'),
('be');

-- Tabla de módulos del sistema, a los cuales tendrá acceso un rol específico
CREATE TABLE tab_modulos
(
    id SERIAL,
    nombre          VARCHAR         NOT NULL,
    activo          BOOLEAN   DEFAULT TRUE NOT NULL,
    fecha_creacion      TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(id)
);

INSERT INTO tab_modulos (nombre) VALUES
('usuarios'),
('documentacion'),
('comites'),
('matrices'),
('reportes');

-- Tabla de módulos permitidos para un rol específico. De acuerdo con cada rol, se establece acceso a los módulos que se necesiten.
CREATE TABLE tab_permisos
(
    id_rol              BIGINT        NOT NULL,
    id_modulo           BIGINT        NOT NULL,
    fecha_creacion      TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY(id_rol, id_modulo),
    FOREIGN KEY(id_rol)     REFERENCES tab_roles(id),
    FOREIGN KEY(id_modulo)  REFERENCES tab_modulos(id)
);
INSERT INTO tab_permisos (id_rol, id_modulo) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5);

CREATE TABLE tab_usuarios
(
    id SERIAL   
    nombre              VARCHAR         NOT NULL, -- Nombre del usuario debe ser
    usuario             VARCHAR         NOT NULL, -- Password del usuario
    password            VARCHAR         NOT NULL, -- Password del usuario
    cedula              BIGINT          NOT NULL, -- Documento del usuario
    telefono            BIGINT          NOT NULL, -- Teléfono del usuario
    direccion           VARCHAR         NOT NULL, -- Dirección del usuario
    correo              VARCHAR         NOT NULL, -- Correo electrónico para recuperación de la clave
    id_rol              BIGINT          NOT NULL, -- Rol del usuario en el sistema, asignado al momento de crear un usuario
    fecha_creacion      TIMESTAMP DEFAULT NOW(),
    activo              BOOLEAN         NOT NULL DEFAULT TRUE,  -- Rol del usuario en el sistema, asignado al momento de crear un usuario
    PRIMARY KEY(id),
    FOREIGN KEY(id_rol) REFERENCES tab_roles(id)
);

-- Creación del usuario administrador
INSERT INTO tab_usuarios
(nombre, usuario, password, cedula, telefono, direccion, correo, id_rol) 
VALUES('Jose Herrera', 'jnadinh', MD5('12345'),'999999','3503421739',
'Unisabaneta - Medellín','carlos.perez@unisabaneta.edu.co',1);

