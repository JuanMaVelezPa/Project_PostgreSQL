-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         26/10/2021  Juan Manuel Velez   Instalador
-- ============ =========== ==================  ===================================================================
--
--
--
-- DB
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/DDL.sql;

-- Select db_sst
\c db_sst;

-- DROP TABLES
DROP TABLE SST_TPERM;
DROP TABLE SST_TUSUA;
DROP TABLE SST_TROLE;
DROP TABLE SST_TMODU;
DROP TABLE SST_TENCA;

-- CREATE TABLES
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TENCA.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TMODU.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TROLE.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TUSUA.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TPERM.sql;

-- DATOS
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DML/Datos.sql;

COMMIT;
