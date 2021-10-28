-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         27/10/2021  Juan Manuel Velez   Creacion de Tabla de Areas
-- ============ =========== ==================  ===================================================================
--
--
--
DROP TABLE SST_TAREA;
--
CREATE TABLE SST_TAREA(
                      AREA_AREA     SERIAL          
                    , AREA_NOMB     VARCHAR         NOT NULL
                    , AREA_ACTI     BOOLEAN         NOT NULL  DEFAULT TRUE 
                    , AREA_USER     VARCHAR         NOT NULL  DEFAULT USER
                    , AREA_FECCRE   TIMESTAMP       NOT NULL  DEFAULT CURRENT_TIMESTAMP
                    , PRIMARY KEY(AREA_AREA)
                );

COMMENT ON TABLE  SST_TAREA                 IS 'Contiene la informacion de todas las areas de la empresa';
COMMENT ON COLUMN SST_TAREA.AREA_AREA       IS 'Serial de de Areas';
COMMENT ON COLUMN SST_TAREA.AREA_NOMB       IS 'Nombre de de Areas';
COMMENT ON COLUMN SST_TAREA.AREA_ACTI       IS 'Activa o Inactiva';
COMMENT ON COLUMN SST_TAREA.AREA_USER       IS 'Usuario de creación';
COMMENT ON COLUMN SST_TAREA.AREA_FECCRE     IS 'Fecha de Creación';