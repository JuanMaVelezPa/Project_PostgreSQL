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
-- \i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/INSTALLER.sql;

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
--
DROP TABLE SST_TCIAS;
DROP TABLE SST_TPROV;
DROP TABLE SST_TPROD;
DROP TABLE SST_TPDPV;
DROP TABLE SST_TNVST;
DROP TABLE SST_TRSSG;
DROP TABLE SST_TTDOC;
DROP TABLE SST_TAREA;
DROP TABLE SST_TCARG;
DROP TABLE SST_TEMPL;
DROP TABLE SST_TEMRO;
DROP TABLE SST_TDEMP;
DROP TABLE SST_TEMRO;
DROP TABLE SST_TDCIA;

-- CREATE TABLES
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TENCA.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TMODU.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TROLE.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TUSUA.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TPERM.sql;
--
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TCIAS.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TPROV.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TPROD.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TPDPV.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TNVST.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TRSSG.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TTDOC.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TAREA.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TCARG.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TEMPL.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TEMRO.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TDEMP.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TEMRO.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DDL/SST_TDCIA.sql;
--





-- DATOS
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Estructura/DML/Datos.sql;

COMMIT;
