-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         26/10/2021  Juan Manuel Velez   Creacion de Tabla Roles
-- ============ =========== ==================  ===================================================================
--
--
--
DROP TABLE IF EXISTS SST_TROLE;
--
CREATE TABLE SST_TROLE(
                     ROLE_ROLE             INTEGER        NOT NULL    CHECK(ROLE_ROLE > 0)
                  ,  ROLE_NOMB             VARCHAR        NOT NULL
                  ,  PRIMARY KEY(ROLE_ROLE)
                );

COMMENT ON TABLE  SST_TROLE              IS 'ROLES';
COMMENT ON COLUMN SST_TROLE.ROLE_ROLE    IS 'Id. Roles';
COMMENT ON COLUMN SST_TROLE.ROLE_NOMB    IS 'Nombre de los Roles';