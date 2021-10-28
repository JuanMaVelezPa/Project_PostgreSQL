-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         26/10/2021  Juan Manuel Velez   Insertar Datos Role y Usua
-- ============ =========== ==================  ===================================================================
--
--
--
-- SST_TROLE
INSERT INTO SST_TROLE VALUES(1,'admin');
INSERT INTO SST_TROLE VALUES(2,'sg-sst');
INSERT INTO SST_TROLE VALUES(3,'cocola');
INSERT INTO SST_TROLE VALUES(4,'copasst');
INSERT INTO SST_TROLE VALUES(5,'be');

-- SST_TMODU
INSERT INTO SST_TMODU VALUES(1,'usuarios');
INSERT INTO SST_TMODU VALUES(2,'documentacion');
INSERT INTO SST_TMODU VALUES(3,'comites');
INSERT INTO SST_TMODU VALUES(4,'matrices');
INSERT INTO SST_TMODU VALUES(5,'reportes');

-- SST_TPERM
INSERT INTO SST_TPERM VALUES(1, 1 ,'admin-usuarios');               -- PERM_ROLE PERM_MODU PERM_NOMB        
INSERT INTO SST_TPERM VALUES(1, 2 ,'admin-documentacion');          -- PERM_ROLE PERM_MODU PERM_NOMB
INSERT INTO SST_TPERM VALUES(1, 3 ,'admin-comites');                -- PERM_ROLE PERM_MODU PERM_NOMB
INSERT INTO SST_TPERM VALUES(1, 4 ,'admin-matrices');               -- PERM_ROLE PERM_MODU PERM_NOMB
INSERT INTO SST_TPERM VALUES(1, 5 ,'admin-reportes');               -- PERM_ROLE PERM_MODU PERM_NOMB

-- SST_TUSUA
INSERT INTO SST_TUSUA VALUES(
                          'admin'                                   -- VARCHAR USUA_USUA                  
                        , MD5('admin')                              -- VARCHAR USUA_PASS
                        , 'Juan Manuel Velez Parra'                 -- VARCHAR USUA_NOMB        
                        , 1040748350                                -- INTEGER USUA_CEDU
                        , 3117208515                                -- INTEGER USUA_TELE    
                        , 'Unisabaneta - Medellin'                  -- VARCHAR USUA_DIRE          
                        , 'juanmavelezpa@gmail.com'                 -- VARCHAR USUA_CORR
                        , True                                      -- BOOLEAN USUA_INAD TRUE=Admin / FALSE=Mo
                        , 1                                         -- INTEGER USUA_ROLE
                        );


-- SST_TNVST
INSERT INTO SST_TNVST (NVST_NOMB) VALUES('Primaria');
INSERT INTO SST_TNVST (NVST_NOMB) VALUES('Bachiller');
INSERT INTO SST_TNVST (NVST_NOMB) VALUES('Tecnico');
INSERT INTO SST_TNVST (NVST_NOMB) VALUES('Tecnólogo');
INSERT INTO SST_TNVST (NVST_NOMB) VALUES('Profesional');
INSERT INTO SST_TNVST (NVST_NOMB) VALUES('Especialización');
INSERT INTO SST_TNVST (NVST_NOMB) VALUES('Maestria');
INSERT INTO SST_TNVST (NVST_NOMB) VALUES('Doctorado');
INSERT INTO SST_TNVST (NVST_NOMB) VALUES('PostDoctorado');


-- SST_TRSSG
INSERT INTO SST_TRSSG (RSSG_NOMB) VALUES('Empleador');
INSERT INTO SST_TRSSG (RSSG_NOMB) VALUES('Responsable SST');
INSERT INTO SST_TRSSG (RSSG_NOMB) VALUES('Lideres o Coordinadores con personal a cargo');
INSERT INTO SST_TRSSG (RSSG_NOMB) VALUES('Empleados');
INSERT INTO SST_TRSSG (RSSG_NOMB) VALUES('Copasst');
INSERT INTO SST_TRSSG (RSSG_NOMB) VALUES('Presidente Copasst');
INSERT INTO SST_TRSSG (RSSG_NOMB) VALUES('Comite de Convivencia Laboral');
INSERT INTO SST_TRSSG (RSSG_NOMB) VALUES('Brigada de Emergencia');

UPDATE SST_TRSSG
SET RSSG_RESP='1. Definir, firmar y divulgar la política de Seguridad y Salud en el Trabajo a través de documento escrito, el empleador debe suscribir la política de seguridad y salud en el trabajo de la empresa, la cual deberá proporcionar un marco de referencia para establecer y revisar los objetivos de seguridad y salud en el trabajo.
2. Asignación y Comunicación de Responsabilidades: Debe asignar, documentar y comunicar las responsabilidades específicas en Seguridad y Salud en el Trabajo (SST) a todos los niveles de la organización, incluida la alta dirección.
3. Rendición de cuentas al interior de la empresa: A quienes se les hayan delegado responsabilidades en el Sistema de Gestión de la Seguridad y Salud en el Trabajo (SG-SST), tienen la obligación de rendir cuentas internamente en relación con su desempeño. Esta rendición de cuentas se podrá hacer a través de medios escritos, electrónicos, verbales o los que sean considerados por los responsables. La rendición se hará como mínimo anualmente y deberá quedar documentada.
4. Definición de Recursos: Debe definir y asignar los recursos financieros, técnicos y el personal necesario para el diseño, implementación, revisión evaluación y mejora de las medidas de prevención y control, para la gestión eficaz de los peligros y riesgos en el lugar de trabajo y también, para que los responsables de la seguridad y salud en el trabajo en la empresa, el Comité Paritario o Vigía de Seguridad y Salud en el Trabajo según corresponda, puedan cumplir de manera satisfactoria con sus funciones.
5. Cumplimiento de los Requisitos Normativos Aplicables: Debe garantizar que opera bajo el cumplimiento de la normatividad nacional vigente aplicable en materia de seguridad y salud en eltrabajo, en armonía con los estándares mínimos del Sistema Obligatorio de Garantía de Calidad del Sistema General de Riesgos Laborales de que trata el artículo 14 de la Ley 1562 de 2012.
6. Gestión de los Peligros y Riesgos: Debe adoptar disposiciones efectivas para desarrollar las medidas de identificación de peligros, evaluación y valoración de los riesgos y establecimiento de controles que prevengan daños en la salud de los trabajadores y/o contratistas, en los equipos e instalaciones.
7. Plan de Trabajo Anual en SST: Debe diseñar y desarrollar un plan de trabajo anual para alcanzar cada uno de los objetivos propuestos en el Sistema de Gestión de la Seguridad y Salud en el Trabajo (SG-SST), el cual debe identificar claramente metas, responsabilidades, recursos y cronograma de actividades, en concordancia con los estándares mínimos del Sistema Obligatorio de Garantía de Calidad del Sistema General de Riesgos Laborales.
8. Prevención y Promoción de Riesgos Laborales: El empleador debe implementar y desarrollar actividades de prevención de accidentes de trabajo y enfermedades laborales, así como de promoción de la salud en el Sistema de Gestión de la Seguridad y Salud en el Trabajo (SG-SST), de conformidad con la normatividad vigente.
9. Participación de los Trabajadores: Debe asegurar la adopción de medidas eficaces que garanticen la participación de todos los trabajadores y sus representantes ante el Comité Paritario o Vigía de Seguridad y Salud en el Trabajo, en la ejecución de la política y también que estos últimos funcionen y cuenten con el tiempo y demás recursos necesarios, acorde con la normatividad vigente que les es aplicable. Así mismo, el empleador debe informar a los trabajadores y/o contratistas, a sus representantes ante el Comité Paritario o el Vigía de Seguridad y Salud en el Trabajo, según corresponda de conformidad con la normatividad vigente, sobre el desarrollo de todas las etapas del Sistema de Gestión de Seguridad de la Salud en el Trabajo SG-SST e igualmente, debe evaluar las recomendaciones emanadas de estos para el mejoramiento del SG-SST. El empleador debe garantizar la capacitación de los trabajadores en los aspectos de seguridad y salud en el trabajo de acuerdo con las características de la empresa, la identificación de peligros, la evaluación y valoración de riesgos relacionados con su trabajo, incluidas las disposiciones relativas a las situaciones de emergencia, dentro de la jornada laboral de los trabajadores directos o en el desarrollo de la prestación del servicio de los contratistas;
10. Dirección de la Seguridad y Salud en el Trabajo–SST en las Empresas: Debe garantizar la disponibilidad de personal responsable de la seguridad y la salud en el trabajo, cuyo perfil deberá ser acorde con lo establecido con la normatividad vigente y los estándares mínimos que para tal efecto determine el Ministerio del Trabajo quienes deberán, entre otras: a) Planear, organizar, dirigir, desarrollar y aplicar el Sistema de Gestión de la Seguridad y Salud en el Trabajo SG-SST, y como mínimo una (1) vez al año, realizar su evaluación; b) Informar a la alta dirección sobre el funcionamiento y los resultados del Sistema de Gestión de la Seguridad y Salud en el Trabajo SG-SST, y; c) Promover la participación de todos los miembros de la empresa en la implementación del Sistema de Gestión de la Seguridad y Salud en el Trabajo SG-SST; y
11. Integración: El empleador debe involucrar los aspectos de Seguridad y Salud en el Trabajo, al conjunto de sistemas de gestión, procesos, procedimientos y decisiones en la empresa'
WHERE RSSG_RSSG=1;

-- SST_TTDOC
INSERT INTO SST_TTDOC (TDOC_TDOC, TDOC_NOMB) VALUES(1, 'Política del SG-SST');
INSERT INTO SST_TTDOC (TDOC_TDOC, TDOC_NOMB) VALUES(2, 'Riesgos psicosociales');
INSERT INTO SST_TTDOC (TDOC_TDOC, TDOC_NOMB) VALUES(3, 'Plan de emergencia');
INSERT INTO SST_TTDOC (TDOC_TDOC, TDOC_NOMB) VALUES(4, 'Hoja de vida');
INSERT INTO SST_TTDOC (TDOC_TDOC, TDOC_NOMB) VALUES(5, 'Diploma');
INSERT INTO SST_TTDOC (TDOC_TDOC, TDOC_NOMB) VALUES(6, 'Curso de 50 horas');
INSERT INTO SST_TTDOC (TDOC_TDOC, TDOC_NOMB) VALUES(7, 'Certificado de salud');
INSERT INTO SST_TTDOC (TDOC_TDOC, TDOC_NOMB) VALUES(8, 'Compromisos y Responsabilidades');
INSERT INTO SST_TTDOC (TDOC_TDOC, TDOC_NOMB) VALUES(50, 'Otros');

-- SST_TAREA
INSERT INTO SST_TAREA (AREA_NOMB) VALUES('Alistamiento');
INSERT INTO SST_TAREA (AREA_NOMB) VALUES('Serviteca');
INSERT INTO SST_TAREA (AREA_NOMB) VALUES('Transporte');
INSERT INTO SST_TAREA (AREA_NOMB) VALUES('Administrativa');
INSERT INTO SST_TAREA (AREA_NOMB) VALUES('Mantenimiento');
INSERT INTO SST_TAREA (AREA_NOMB) VALUES('Seguridad ');
INSERT INTO SST_TAREA (AREA_NOMB) VALUES('Instructor CEA');

-- SST_TCARG
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Alistador', 1);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Supervisor de alistamiento', 1);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Alistador con curso en alturas ', 1);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Alistador encargado de limpiar vehiculo por debajo', 1);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Alistador parte Interna del vehiculo', 1);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Alistadora - Ofisios Varios', 1);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Alistadores para Desinfeccion  de Vehiculos', 1);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Maniobrista', 1);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Mecanico', 2);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Soldador ', 2);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Lubricador', 2);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Conductor', 3);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Cajero', 3);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Conductor Servicios Especiales', 3);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Auxiliar de satelital operativo', 3);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Auxiliar Intermunicipal', 3);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Auxiliar de satelital administrativo', 3);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Despachador ', 3);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Radiooperador ', 3);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Vendedor de servicio', 4);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Secretaria', 4);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Auxiliar administrativo', 4);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Auxiliar ambiental', 4);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES (' Auxiliar SST', 4);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Oficios varios', 4);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Auxiliar de ruta ', 4);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Mensajero', 4);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Coordinador serviteca', 4);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Auxiliar mecanico ', 5);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Auxiliar preoperacional', 5);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Supervisor mecanico', 5);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Supervisor de seguridad ', 6);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Jefe de seguridad ', 6);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Vigilante', 6);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Medios tecnologicos ', 6);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('Moto', 7);
INSERT INTO SST_TCARG(CARG_NOMB, CARG_AREA) VALUES ('carro', 7);