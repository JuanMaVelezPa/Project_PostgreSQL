-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         27/10/2021  Juan Manuel Velez   Creacion de Tabla Empleados y Roles
-- ============ =========== ==================  ===================================================================
--
--
--
DROP TABLE SST_TEMRO;
--
CREATE TABLE SST_TEMRO(
                      EMRO_EMRO     SERIAL
                    , EMRO_EMPL     BIGINT          NOT NULL
                    , EMRO_ROLE     BIGINT          NOT NULL
                    , EMRO_FINI     TIMESTAMP       DEFAULT CURRENT_TIMESTAMP
                    , EMRO_FFIN     TIMESTAMP       
                    , EMRO_ACTI     BOOLEAN         NOT NULL  DEFAULT TRUE 
                    , EMRO_USER     VARCHAR         NOT NULL  DEFAULT USER
                    , EMRO_FECCRE   TIMESTAMP       NOT NULL  DEFAULT CURRENT_TIMESTAMP
                    , PRIMARY KEY(EMRO_EMRO)
                    , FOREIGN KEY(EMRO_EMPL) REFERENCES SST_TEMPL(EMPL_EMPL)
                    , FOREIGN KEY(EMRO_ROLE) REFERENCES SST_TROLE(ROLE_ROLE)
                );

COMMENT ON TABLE  SST_TEMRO                 IS 'lmacena los las relaciones de empleados con roles que se le asignan';
COMMENT ON COLUMN SST_TEMRO.EMRO_EMRO       IS 'Serial de Empleados y Roles';
COMMENT ON COLUMN SST_TEMRO.EMRO_EMPL       IS 'Id. Empleado';
COMMENT ON COLUMN SST_TEMRO.EMRO_ROLE       IS 'Id. Rol';
COMMENT ON COLUMN SST_TEMRO.EMRO_FINI       IS 'Fecha de Inicio';
COMMENT ON COLUMN SST_TEMRO.EMRO_FFIN       IS 'Fecha Fin';
COMMENT ON COLUMN SST_TEMRO.EMRO_ACTI       IS 'Activa o Inactiva';
COMMENT ON COLUMN SST_TEMRO.EMRO_USER       IS 'Usuario de creación';
COMMENT ON COLUMN SST_TEMRO.EMRO_FECCRE     IS 'Fecha de Creación';