-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         27/10/2021  Juan Manuel Velez   Creacion de Tabla Empleados
-- ============ =========== ==================  ===================================================================
--
--
--
DROP TABLE SST_TEMPL;
--
CREATE TABLE SST_TEMPL(
                      EMPL_EMPL     SERIAL          
                    , EMPL_NOMB     VARCHAR         NOT NULL
                    , EMPL_APEL     VARCHAR         NOT NULL
                    , EMPL_CARG     BIGINT          NOT NULL
                    , EMPL_NVST     BIGINT          NOT NULL
                    , EMPL_ACTI     BOOLEAN         NOT NULL  DEFAULT TRUE 
                    , EMPL_USER     VARCHAR         NOT NULL  DEFAULT USER
                    , EMPL_FECCRE   TIMESTAMP       NOT NULL  DEFAULT CURRENT_TIMESTAMP
                    , PRIMARY KEY(EMPL_EMPL)
                    , FOREIGN KEY(EMPL_CARG) REFERENCES SST_TCARG(CARG_CARG)
                    , FOREIGN KEY(EMPL_NVST) REFERENCES SST_TNVST(NVST_NVST)
                );

COMMENT ON TABLE  SST_TEMPL                 IS 'Contiene la informacion de todos los Empleados de la empresa';
COMMENT ON COLUMN SST_TEMPL.EMPL_EMPL       IS 'Serial de Empleados';
COMMENT ON COLUMN SST_TEMPL.EMPL_NOMB       IS 'Nombre de Empleados';
COMMENT ON COLUMN SST_TEMPL.EMPL_APEL       IS 'Apellido de Empleados';
COMMENT ON COLUMN SST_TEMPL.EMPL_CARG       IS 'Cargo del Empleado';
COMMENT ON COLUMN SST_TEMPL.EMPL_NVST       IS 'Nivel de Estudio de Empleado';
COMMENT ON COLUMN SST_TEMPL.EMPL_ACTI       IS 'Activa o Inactiva';
COMMENT ON COLUMN SST_TEMPL.EMPL_USER       IS 'Usuario de creación';
COMMENT ON COLUMN SST_TEMPL.EMPL_FECCRE     IS 'Fecha de Creación';