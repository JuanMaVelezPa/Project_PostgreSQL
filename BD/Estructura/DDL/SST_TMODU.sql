-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         26/10/2021  Juan Manuel Velez   Creacion de Tabla Modulos
-- ============ =========== ==================  ===================================================================
--
--
--
DROP TABLE IF EXISTS SST_TMODU;
--
CREATE TABLE SST_TMODU(
                      MODU_MODU           INTEGER         NOT NULL  CHECK(MODU_MODU > 0)
                    , MODU_NOMB           VARCHAR         NOT NULL
                    , MODU_USER           VARCHAR         NOT NULL  DEFAULT USER
                    , MODU_FECCRE         DATE            NOT NULL  DEFAULT CURRENT_DATE
                    , PRIMARY KEY(MODU_MODU)
                );

COMMENT ON TABLE  SST_TMODU              IS 'Modulos';
COMMENT ON COLUMN SST_TMODU.MODU_MODU    IS 'Id. Modulo';
COMMENT ON COLUMN SST_TMODU.MODU_NOMB    IS 'Nombre de Modulo';
COMMENT ON COLUMN SST_TMODU.MODU_USER    IS 'Usuario.';
COMMENT ON COLUMN SST_TMODU.MODU_FECCRE  IS 'Fecha de creacion.';