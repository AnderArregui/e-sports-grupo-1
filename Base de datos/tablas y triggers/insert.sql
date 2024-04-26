
-- Inserts para la tabla JUEGO
INSERT INTO JUEGO (NOMBRE, EMPRESA, FECHA_LANZAMIENTO) VALUES ('Juego1', 'Empresa1', TO_DATE('2022-01-01', 'YYYY-MM-DD'));
INSERT INTO JUEGO (NOMBRE, EMPRESA, FECHA_LANZAMIENTO) VALUES ('Juego2', 'Empresa2', TO_DATE('2022-02-01', 'YYYY-MM-DD'));
INSERT INTO JUEGO (NOMBRE, EMPRESA, FECHA_LANZAMIENTO) VALUES ('Juego3', 'Empresa3', TO_DATE('2022-03-01', 'YYYY-MM-DD'));

-- Inserts para la tabla COMPETICION
INSERT INTO COMPETICION (NOMBRE, FECHA_INICIO, FECHA_FIN, ESTADO, ID_JUEGO) VALUES ('Competicion1', TO_DATE('2022-01-01', 'YYYY-MM-DD'), TO_DATE('2022-01-10', 'YYYY-MM-DD'), 'abierto', 1);
INSERT INTO COMPETICION (NOMBRE, FECHA_INICIO, FECHA_FIN, ESTADO, ID_JUEGO) VALUES ('Competicion2', TO_DATE('2022-02-01', 'YYYY-MM-DD'), TO_DATE('2022-02-10', 'YYYY-MM-DD'), 'abierto', 2);
INSERT INTO COMPETICION (NOMBRE, FECHA_INICIO, FECHA_FIN, ESTADO, ID_JUEGO) VALUES ('Competicion3', TO_DATE('2022-03-01', 'YYYY-MM-DD'), TO_DATE('2022-03-10', 'YYYY-MM-DD'), 'abierto', 3);

-- Inserts para la tabla JORNADA
INSERT INTO JORNADA (ID_JORNADA, ID_COMPETICION, FECHA_ENFENTAMIENTO) VALUES (1, 1, TO_DATE('2022-01-01', 'YYYY-MM-DD'));
INSERT INTO JORNADA (ID_JORNADA, ID_COMPETICION, FECHA_ENFENTAMIENTO) VALUES (1,1, TO_DATE('2022-01-01', 'YYYY-MM-DD'));
INSERT INTO JORNADA (ID_JORNADA,ID_COMPETICION, FECHA_ENFENTAMIENTO) VALUES (2,2, TO_DATE('2022-02-01', 'YYYY-MM-DD'));
INSERT INTO JORNADA (ID_JORNADA,ID_COMPETICION, FECHA_ENFENTAMIENTO) VALUES (3,3, TO_DATE('2022-03-01', 'YYYY-MM-DD'));

-- Inserts para la tabla EQUIPO
INSERT INTO EQUIPO (NOMBRE, FECHA_FUNDACION) VALUES ('Equipo1', TO_DATE('2000-01-01', 'YYYY-MM-DD'));
INSERT INTO EQUIPO (NOMBRE, FECHA_FUNDACION) VALUES ('Equipo2', TO_DATE('2000-02-01', 'YYYY-MM-DD'));
INSERT INTO EQUIPO (NOMBRE, FECHA_FUNDACION) VALUES ('Equipo3', TO_DATE('2000-03-01', 'YYYY-MM-DD'));


-- Inserts para la tabla ENFRENTAMIENTO
INSERT INTO ENFRENTAMIENTO (ID_JOR_COMP, ID_ENFRENTAMIENTO, HORA, RESULTADO_LOCAL, RESULTADO_VISITANTE, ID_LOCAL, ID_VISITANTE) VALUES (1, 1, '12:00', 0, 0, 1, 2);
INSERT INTO ENFRENTAMIENTO (ID_JOR_COMP, ID_ENFRENTAMIENTO, HORA, RESULTADO_LOCAL, RESULTADO_VISITANTE, ID_LOCAL, ID_VISITANTE) VALUES (1, 2, '15:00', 0, 0, 3, 1);
INSERT INTO ENFRENTAMIENTO (ID_JOR_COMP, ID_ENFRENTAMIENTO, HORA, RESULTADO_LOCAL, RESULTADO_VISITANTE, ID_LOCAL, ID_VISITANTE) VALUES (2, 3, '12:00', NULL, NULL, 2, 3);

-- Inserts para la tabla PATROCINADOR
INSERT INTO PATROCINADOR (NOMBRE, ID_EQUIPO) VALUES ('Patrocinador1', 1);
INSERT INTO PATROCINADOR (NOMBRE, ID_EQUIPO) VALUES ('Patrocinador2', 2);
INSERT INTO PATROCINADOR (NOMBRE, ID_EQUIPO) VALUES ('Patrocinador3', 3);

-- Inserts para la tabla USUARIO
INSERT INTO USUARIO (NOMBRE, CONTRASENA, TIPO) VALUES ('ander', 'contrasena1', 'administrador');
INSERT INTO USUARIO (NOMBRE, CONTRASENA, TIPO) VALUES ('oier', 'contrasena2', 'usuario');
INSERT INTO USUARIO (NOMBRE, CONTRASENA, TIPO) VALUES ('iñigo', 'contrasena3', 'usuario');

-- Inserts para la tabla JUGADOR
INSERT INTO JUGADOR (NOMBRE, APELLIDO1, APELLIDO2, SUELDO, NACIONALIDAD, FECHA_NACIMIENTO, NICKNAME, ROL, ID_EQUIPO) VALUES ('Jugador1', 'Apellido1', 'Apellido2', 1000, 'Nacionalidad1', TO_DATE('1990-11-01', 'YYYY-MM-DD'), 'Nick1', 'Rol1', 1);
INSERT INTO JUGADOR (NOMBRE, APELLIDO1, APELLIDO2, SUELDO, NACIONALIDAD, FECHA_NACIMIENTO, NICKNAME, ROL, ID_EQUIPO) VALUES ('Jugador2', 'Apellido1', 'Apellido2', 1200, 'Nacionalidad2', TO_DATE('1991-02-01', 'YYYY-MM-DD'), 'Nick2', 'Rol2', 1);
INSERT INTO JUGADOR (NOMBRE, APELLIDO1, APELLIDO2, SUELDO, NACIONALIDAD, FECHA_NACIMIENTO, NICKNAME, ROL, ID_EQUIPO) VALUES ('Jugador3', 'Apellido1', 'Apellido2', 1500, 'Nacionalidad3', TO_DATE('1992-06-01', 'YYYY-MM-DD'), 'Nick3', 'Rol3', 2);

-- Inserts para la tabla ENTRENADOR
INSERT INTO ENTRENADOR (NOMBRE, APELLIDO1, APELLIDO2, SUELDO, ID_EQUIPO) VALUES ('bryan', 'Apellido1', 'Apellido2', 2000, 1);
INSERT INTO ENTRENADOR (NOMBRE, APELLIDO1, APELLIDO2, SUELDO, ID_EQUIPO) VALUES ('ander', 'Apellido1', 'Apellido2', 2200, 2);
INSERT INTO ENTRENADOR (NOMBRE, APELLIDO1, APELLIDO2, SUELDO, ID_EQUIPO) VALUES ('oier', 'Apellido1', 'Apellido2', 2500, 3);


-- Inserts para la tabla ASISTENTE
INSERT INTO ASISTENTE (NOMBRE, APELLIDO1, APELLIDO2, SUELDO, ID_EQUIPO) VALUES ('inigo', 'Apellido1', 'Apellido2', 1000, 1);
INSERT INTO ASISTENTE (NOMBRE, APELLIDO1, APELLIDO2, SUELDO, ID_EQUIPO) VALUES ('oier', 'Apellido1', 'Apellido2', 1200, 2);
INSERT INTO ASISTENTE (NOMBRE, APELLIDO1, APELLIDO2, SUELDO, ID_EQUIPO) VALUES ('bryan', 'Apellido1', 'Apellido2', 1500, 3);

