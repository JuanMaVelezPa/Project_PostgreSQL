-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         27/10/2021  Juan Manuel Velez   Creacion de Tabla Roles de SST
-- ============ =========== ==================  ===================================================================
--
--
--
DROP TABLE SST_TRSSG;
--
CREATE TABLE SST_TRSSG(
                      RSSG_RSSG     SERIAL          
                    , RSSG_NOMB     VARCHAR         NOT NULL
                    , RSSG_RESP     TEXT
                    , RSSG_ACTI     BOOLEAN         NOT NULL  DEFAULT TRUE 
                    , RSSG_USER     VARCHAR         NOT NULL  DEFAULT USER
                    , RSSG_FECCRE   TIMESTAMP       NOT NULL  DEFAULT CURRENT_TIMESTAMP
                    , PRIMARY KEY(RSSG_RSSG)
                );

COMMENT ON TABLE  SST_TRSSG                 IS 'Contiene la informacion de los roles del sistema de gestion SST de la empresa ';
COMMENT ON COLUMN SST_TRSSG.RSSG_RSSG       IS 'Serial de Roles de SST';
COMMENT ON COLUMN SST_TRSSG.RSSG_NOMB       IS 'Nombre de Roles de SST';
COMMENT ON COLUMN SST_TRSSG.RSSG_RESP       IS 'Contiene las responsabilidades del rol, necesario para generar documento responsabilidades por empleado';
COMMENT ON COLUMN SST_TRSSG.RSSG_ACTI       IS 'Activa o Inactiva';
COMMENT ON COLUMN SST_TRSSG.RSSG_USER       IS 'Usuario de creación';
COMMENT ON COLUMN SST_TRSSG.RSSG_FECCRE     IS 'Fecha de Creación';