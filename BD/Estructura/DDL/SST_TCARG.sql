-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         27/10/2021  Juan Manuel Velez   Creacion de Tabla Cargos
-- ============ =========== ==================  ===================================================================
--
--
--
DROP TABLE SST_TCARG;
--
CREATE TABLE SST_TCARG(
                      CARG_CARG     SERIAL          
                    , CARG_NOMB     VARCHAR         NOT NULL
                    , CARG_AREA     BIGINT          NOT NULL
                    , CARG_ACTI     BOOLEAN         NOT NULL  DEFAULT TRUE 
                    , CARG_USER     VARCHAR         NOT NULL  DEFAULT USER
                    , CARG_FECCRE   TIMESTAMP       NOT NULL  DEFAULT CURRENT_TIMESTAMP
                    , PRIMARY KEY(CARG_CARG)
                    , FOREIGN KEY(CARG_AREA) REFERENCES SST_TAREA(AREA_AREA)
                );

COMMENT ON TABLE  SST_TCARG                 IS 'Contiene la informacion de todos los cargos de la empresa';
COMMENT ON COLUMN SST_TCARG.CARG_CARG       IS 'Serial de Cargos';
COMMENT ON COLUMN SST_TCARG.CARG_NOMB       IS 'Nombre de Cargos';
COMMENT ON COLUMN SST_TCARG.CARG_AREA       IS 'Area de la Empresa';
COMMENT ON COLUMN SST_TCARG.CARG_ACTI       IS 'Activa o Inactiva';
COMMENT ON COLUMN SST_TCARG.CARG_USER       IS 'Usuario de creación';
COMMENT ON COLUMN SST_TCARG.CARG_FECCRE     IS 'Fecha de Creación';