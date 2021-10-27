-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         26/10/2021  Juan Manuel Velez   Creacion de Tabla Usuarios
-- ============ =========== ==================  ===================================================================
--
--
--
DROP TABLE SST_TUSUA;
--
CREATE TABLE SST_TUSUA(
                      USUA_USUA           VARCHAR         NOT NULL
                    , USUA_PASS           VARCHAR         NOT NULL
                    , USUA_NOMB           VARCHAR         NOT NULL
                    , USUA_CEDU           BIGINT          NOT NULL
                    , USUA_TELE           BIGINT          NOT NULL
                    , USUA_DIRE           VARCHAR         NOT NULL
                    , USUA_CORR           VARCHAR         NOT NULL
                    , USUA_INAD           BOOLEAN         NOT NULL
                    , USUA_ROLE           INTEGER         NOT NULL
                    , PRIMARY KEY(USUA_USUA)
                    , FOREIGN KEY(USUA_ROLE) REFERENCES SST_TROLE(ROLE_ROLE)
                );

COMMENT ON TABLE  SST_TUSUA              IS 'Usuarios';
COMMENT ON COLUMN SST_TUSUA.USUA_USUA    IS 'Id. Usuario';
COMMENT ON COLUMN SST_TUSUA.USUA_PASS    IS 'Password del usuario';
COMMENT ON COLUMN SST_TUSUA.USUA_NOMB    IS 'Nombre del usuario debe ser > 5 caracteres';
COMMENT ON COLUMN SST_TUSUA.USUA_CEDU    IS 'Documento del usuario';
COMMENT ON COLUMN SST_TUSUA.USUA_TELE    IS 'Teléfono del usuario';
COMMENT ON COLUMN SST_TUSUA.USUA_DIRE    IS 'Dirección del usuario';
COMMENT ON COLUMN SST_TUSUA.USUA_CORR    IS 'Correo electrónico para recuperación de la clave';
COMMENT ON COLUMN SST_TUSUA.USUA_INAD    IS 'Indicador de si es o no, administtrador el usuario. TRUE=Admin / FALSE=Mo lo es';
COMMENT ON COLUMN SST_TUSUA.USUA_ROLE    IS 'Rol del usuario en el sistema, asignado al momento de crear un usuario';