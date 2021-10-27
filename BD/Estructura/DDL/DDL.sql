-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         26/10/2021  Juan Manuel Velez   Creacion de DB
-- ============ =========== ==================  ===================================================================
--
--
--
DROP DATABASE db_sst;
CREATE DATABASE db_sst
    WITH OWNER = postgres
    ENCODING = 'UTF8'
    --LC_COLLATE = 'Spanish_Colombia.1252'
    --LC_CTYPE = 'Spanish_Colombia.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;