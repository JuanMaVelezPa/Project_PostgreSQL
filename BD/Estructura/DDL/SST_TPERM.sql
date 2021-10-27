-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         26/10/2021  Juan Manuel Velez   Creacion de Tabla Permisos
-- ============ =========== ==================  ===================================================================
--
--
--
DROP TABLE IF EXISTS SST_TPERM;
--
CREATE TABLE SST_TPERM(
                      PERM_ROLE             INTEGER         NOT NULL
                    , PERM_MODU             INTEGER         NOT NULL
                    , PERM_NOMB             VARCHAR         NOT NULL
                    , PRIMARY KEY(PERM_ROLE, PERM_MODU)
                    , FOREIGN KEY(PERM_ROLE) REFERENCES SST_TROLE(ROLE_ROLE)
                    , FOREIGN KEY(PERM_MODU) REFERENCES SST_TMODU(MODU_MODU)
                );

COMMENT ON TABLE  SST_TPERM              IS 'Permisos';
COMMENT ON COLUMN SST_TPERM.PERM_ROLE    IS 'Id. Rol';
COMMENT ON COLUMN SST_TPERM.PERM_MODU    IS 'Id. Modulo';
COMMENT ON COLUMN SST_TPERM.PERM_NOMB    IS 'Nombre de Permiso';