
-- Inserts para la tabla JUEGO
   INSERT INTO JUEGO (NOMBRE, EMPRESA, FECHA_LANZAMIENTO) VALUES ('The Witcher', 'CD Projekt', TO_DATE('2015-05-19', 'YYYY-MM-DD'));
INSERT INTO JUEGO (NOMBRE, EMPRESA, FECHA_LANZAMIENTO) VALUES ('GTAV', 'Rockstar Games', TO_DATE('2013-09-17', 'YYYY-MM-DD'));
INSERT INTO JUEGO (NOMBRE, EMPRESA, FECHA_LANZAMIENTO) VALUES ('Zelda', 'Nintendo', TO_DATE('2017-03-03', 'YYYY-MM-DD'));
INSERT INTO JUEGO (NOMBRE, EMPRESA, FECHA_LANZAMIENTO) VALUES ('Minecraft', 'Mojang Studios', TO_DATE('2011-11-18', 'YYYY-MM-DD'));


-- Inserts para la tabla COMPETICION
INSERT INTO COMPETICION (NOMBRE, FECHA_INICIO, FECHA_FIN, ESTADO, ID_JUEGO) VALUES ('Liga de Campeones', TO_DATE('2023-05-15', 'YYYY-MM-DD'), TO_DATE('2023-06-30', 'YYYY-MM-DD'), 'abierto', 1);
INSERT INTO COMPETICION (NOMBRE, FECHA_INICIO, FECHA_FIN, ESTADO, ID_JUEGO) VALUES ('Torneo del Rey', TO_DATE('2023-07-01', 'YYYY-MM-DD'), TO_DATE('2023-07-31', 'YYYY-MM-DD'), 'abierto', 2);
INSERT INTO COMPETICION (NOMBRE, FECHA_INICIO, FECHA_FIN, ESTADO, ID_JUEGO) VALUES ('Desafío del Desierto', TO_DATE('2023-08-01', 'YYYY-MM-DD'), TO_DATE('2023-08-15', 'YYYY-MM-DD'), 'cerrado', 3);
INSERT INTO COMPETICION (NOMBRE, FECHA_INICIO, FECHA_FIN, ESTADO, ID_JUEGO) VALUES ('Copa de las Estrellas', TO_DATE('2023-09-01', 'YYYY-MM-DD'), TO_DATE('2023-09-30', 'YYYY-MM-DD'), 'abierto', 4);

-- Inserts para la tabla JORNADA

-- Inserts para la tabla PATROCINADOR
INSERT INTO PATROCINADOR (NOMBRE) VALUES ('Alianza de Energía');
INSERT INTO PATROCINADOR (NOMBRE) VALUES ('Grupo Financiero Zeta');
INSERT INTO PATROCINADOR (NOMBRE) VALUES ('Compañía de Seguros Épsilon');


-- Inserts para la tabla EQUIPO
INSERT INTO EQUIPO (NOMBRE, FECHA_FUNDACION, ID_PATROCINADOR) VALUES ('Los Dragones', TO_DATE('2000-01-01', 'YYYY-MM-DD'), 1);
INSERT INTO EQUIPO (NOMBRE, FECHA_FUNDACION, ID_PATROCINADOR) VALUES ('Los Leones', TO_DATE('2000-02-01', 'YYYY-MM-DD'), 1);
INSERT INTO EQUIPO (NOMBRE, FECHA_FUNDACION, ID_PATROCINADOR) VALUES ('Los Tigres', TO_DATE('2000-03-01', 'YYYY-MM-DD'), 1);
INSERT INTO EQUIPO (NOMBRE, FECHA_FUNDACION, ID_PATROCINADOR) VALUES ('Los Lobos', TO_DATE('2000-04-01', 'YYYY-MM-DD'), 1);
INSERT INTO EQUIPO (NOMBRE, FECHA_FUNDACION, ID_PATROCINADOR) VALUES ('Los Águilas', TO_DATE('2000-05-01', 'YYYY-MM-DD'), 2);
INSERT INTO EQUIPO (NOMBRE, FECHA_FUNDACION, ID_PATROCINADOR) VALUES ('Los Pantxos', TO_DATE('2000-06-01', 'YYYY-MM-DD'), 2);
INSERT INTO EQUIPO (NOMBRE, FECHA_FUNDACION, ID_PATROCINADOR) VALUES ('Los Osos', TO_DATE('2000-07-01', 'YYYY-MM-DD'), 2);
INSERT INTO EQUIPO (NOMBRE, FECHA_FUNDACION, ID_PATROCINADOR) VALUES ('Los Linces', TO_DATE('2000-08-01', 'YYYY-MM-DD'), 2);
INSERT INTO EQUIPO (NOMBRE, FECHA_FUNDACION, ID_PATROCINADOR) VALUES ('Los Delfines', TO_DATE('2000-09-01', 'YYYY-MM-DD'), 3);
INSERT INTO EQUIPO (NOMBRE, FECHA_FUNDACION, ID_PATROCINADOR) VALUES ('Los Tiburones', TO_DATE('2000-10-01', 'YYYY-MM-DD'), 3);
INSERT INTO EQUIPO (NOMBRE, FECHA_FUNDACION, ID_PATROCINADOR) VALUES ('Los Cocodrilos', TO_DATE('2000-11-01', 'YYYY-MM-DD'), 3);
INSERT INTO EQUIPO (NOMBRE, FECHA_FUNDACION, ID_PATROCINADOR) VALUES ('Los Piratas', TO_DATE('2000-12-01', 'YYYY-MM-DD'), 3);



-- Inserts para la tabla USUARIO
INSERT INTO USUARIO (NOMBRE, CONTRASENA, TIPO) VALUES ('ander', 'contrasena1', 'administrador');
INSERT INTO USUARIO (NOMBRE, CONTRASENA, TIPO) VALUES ('oier', 'contrasena2', 'usuario');
INSERT INTO USUARIO (NOMBRE, CONTRASENA, TIPO) VALUES ('inigo', 'contrasena3', 'usuario');

-- Inserts para la tabla JUGADOR
INSERT INTO JUGADOR (NOMBRE, APELLIDO1, APELLIDO2, SUELDO, NACIONALIDAD, FECHA_NACIMIENTO, NICKNAME, ROL, ID_EQUIPO) VALUES ('Luis', 'García', 'Martínez', 2000, 'España', TO_DATE('1990-05-15', 'YYYY-MM-DD'), 'Lucho', 'Delantero', 1);
INSERT INTO JUGADOR (NOMBRE, APELLIDO1, APELLIDO2, SUELDO, NACIONALIDAD, FECHA_NACIMIENTO, NICKNAME, ROL, ID_EQUIPO) VALUES ('Anna', 'Smith', 'Johnson', 1800, 'Estados Unidos', TO_DATE('1992-08-20', 'YYYY-MM-DD'), 'Annie', 'Portero', 1);
INSERT INTO JUGADOR (NOMBRE, APELLIDO1, APELLIDO2, SUELDO, NACIONALIDAD, FECHA_NACIMIENTO, NICKNAME, ROL, ID_EQUIPO) VALUES ('Diego', 'López', 'Gutiérrez', 2200, 'Argentina', TO_DATE('1993-02-10', 'YYYY-MM-DD'), 'Dieguito', 'Defensa', 2);
INSERT INTO JUGADOR (NOMBRE, APELLIDO1, APELLIDO2, SUELDO, NACIONALIDAD, FECHA_NACIMIENTO, NICKNAME, ROL, ID_EQUIPO) VALUES ('María', 'González', 'Rodríguez', 1900, 'México', TO_DATE('1994-04-25', 'YYYY-MM-DD'), 'Mary', 'Centrocampista', 2);
INSERT INTO JUGADOR (NOMBRE, APELLIDO1, APELLIDO2, SUELDO, NACIONALIDAD, FECHA_NACIMIENTO, NICKNAME, ROL, ID_EQUIPO) VALUES ('John', 'Doe', 'Johnson', 2100, 'Inglaterra', TO_DATE('1991-12-03', 'YYYY-MM-DD'), 'JD', 'Delantero', 3);
INSERT INTO JUGADOR (NOMBRE, APELLIDO1, APELLIDO2, SUELDO, NACIONALIDAD, FECHA_NACIMIENTO, NICKNAME, ROL, ID_EQUIPO) VALUES ('Emma', 'Williams', 'Brown', 1700, 'Francia', TO_DATE('1995-07-12', 'YYYY-MM-DD'), 'Emmy', 'Defensa', 3);

-- Inserts para la tabla ENTRENADOR
INSERT INTO ENTRENADOR (NOMBRE, APELLIDO1, APELLIDO2, SUELDO, ID_EQUIPO) VALUES ('Carlos', 'González', 'Martínez', 2300, 1);
INSERT INTO ENTRENADOR (NOMBRE, APELLIDO1, APELLIDO2, SUELDO, ID_EQUIPO) VALUES ('Laura', 'Sánchez', 'Hernández', 2100, 2);
INSERT INTO ENTRENADOR (NOMBRE, APELLIDO1, APELLIDO2, SUELDO, ID_EQUIPO) VALUES ('Daniel', 'López', 'Rodríguez', 2400, 3);


-- Inserts para la tabla ASISTENTE
INSERT INTO ASISTENTE (NOMBRE, APELLIDO1, APELLIDO2, SUELDO, ID_EQUIPO) VALUES ('David', 'García', 'Martínez', 1100, 1);
INSERT INTO ASISTENTE (NOMBRE, APELLIDO1, APELLIDO2, SUELDO, ID_EQUIPO) VALUES ('Elena', 'López', 'Hernández', 1300, 2);
INSERT INTO ASISTENTE (NOMBRE, APELLIDO1, APELLIDO2, SUELDO, ID_EQUIPO) VALUES ('Sergio', 'Fernández', 'Rodríguez', 1400, 3);
