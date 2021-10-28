-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         27/10/2021  Juan Manuel Velez   Creacion de Tabla Documentos de los Empleados
-- ============ =========== ==================  ===================================================================
--
--
--
DROP TABLE SST_TDEMP;
--
CREATE TABLE SST_TDEMP(
                      DEMP_DEMP     SERIAL
                    , DEMP_EMPL     BIGINT          NOT NULL
                    , DEMP_TDOC     BIGINT          NOT NULL
                    , DEMP_ARCH     VARCHAR
                    , DEMP_FVEN     DATE
                    , DEMP_OBSE     TEXT
                    , DEMP_ACTI     BOOLEAN         NOT NULL  DEFAULT TRUE 
                    , DEMP_USER     VARCHAR         NOT NULL  DEFAULT USER
                    , DEMP_FECCRE   TIMESTAMP       NOT NULL  DEFAULT CURRENT_TIMESTAMP
                    , PRIMARY KEY(DEMP_DEMP)
                    , FOREIGN KEY(DEMP_EMPL) REFERENCES SST_TEMPL(EMPL_EMPL)
                    , FOREIGN KEY(DEMP_TDOC) REFERENCES SST_TTDOC(TDOC_TDOC)
                );

COMMENT ON TABLE  SST_TDEMP                 IS 'Almacena los documentos de cada empleado';
COMMENT ON COLUMN SST_TDEMP.DEMP_DEMP       IS 'Serial de Documentos de los Empleados';
COMMENT ON COLUMN SST_TDEMP.DEMP_EMPL       IS 'Id. Empleado';
COMMENT ON COLUMN SST_TDEMP.DEMP_TDOC       IS 'Id. Tipo de Documento';
COMMENT ON COLUMN SST_TDEMP.DEMP_ARCH       IS 'Nombre y ruta completa del archivo';
COMMENT ON COLUMN SST_TDEMP.DEMP_OBSE       IS 'Observacion';
COMMENT ON COLUMN SST_TDEMP.DEMP_ACTI       IS 'Activa o Inactiva';
COMMENT ON COLUMN SST_TDEMP.DEMP_USER       IS 'Usuario de creación';
COMMENT ON COLUMN SST_TDEMP.DEMP_FECCRE     IS 'Fecha de Creación';