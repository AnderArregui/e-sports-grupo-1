<<<<<<< HEAD
=======

>>>>>>> 8666488f4db1b409a6e812acf77e2688dec2a392
/---CREACION DE TRIGGER QUE MIRA SI SE PUEDEN MoDIFICAR, A�ADIR O ELIMINAR LOS INTEGRANTES CUANDO LA COMPETICION SE HA INICIADO----/

CREATE OR REPLACE TRIGGER TR_NO_INGR_JUGADORES
BEFORE INSERT OR UPDATE OR DELETE ON JUGADOR
FOR EACH ROW
DECLARE
  v_estado VARCHAR2(20);
  E_NO_INGR_JUG EXCEPTION;
BEGIN
  SELECT c.estado INTO v_estado
/*---CREACION DE TRIGGER QUE MIRA SI SE PUEDEN MoDIFICAR LOS JUGADORES CUANDO LA COMPETICION SE HA INICIADO----*/
CREATE OR REPLACE TRIGGER lock_jugador_table
BEFORE INSERT OR UPDATE or delete  ON jugador
FOR EACH ROW
DECLARE
  v_estado VARCHAR2(20);
BEGIN
  SELECT c.estado
  INTO v_estado

  FROM competicion c
  JOIN clasificacion cl ON c.id_competicion = cl.id_competicion
  WHERE cl.id_equipo = :NEW.id_equipo;

  IF v_estado = 'cerrado' THEN
    RAISE_APPLICATION_ERROR(-20002, 'No se puede agregar o actualizar un jugador a un equipo que participa en una competici�n cerrada');
  END IF;

EXCEPTION
  WHEN NO_DATA_FOUND THEN 
    RAISE_APPLICATION_ERROR(-20022, 'VALOR NO ENCONTRADO');
  WHEN E_NO_INGR_JUG THEN
    RAISE_APPLICATION_ERROR(-20023, 'NO PUEDES METER JUGADORES');
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20024, 'ERROR INESPERADO: ' || SQLCODE || ' - ' || SQLERRM);
END TR_NO_INGR_JUGADORES;

INSERT INTO JUGADOR (NOMBRE, APELLIDO1, APELLIDO2, SUELDO, NACIONALIDAD, FECHA_NACIMIENTO, NICKNAME, ROL, ID_EQUIPO)
VALUES ('OL', 'Johnson', 'Brown', 2100, 'Inglaterra', TO_DATE('1991-12-03', 'YYYY-MM-DD'), 'OL', 'Defensa', 5);

INSERT INTO JUGADOR (NOMBRE, APELLIDO1, APELLIDO2, SUELDO, NACIONALIDAD, FECHA_NACIMIENTO, NICKNAME, ROL, ID_EQUIPO)
VALUES ('Harper', 'Martinez', 'Rodriguez', 1800, 'Francia', TO_DATE('1992-08-20', 'YYYY-MM-DD'), 'Harper', 'Portero', 5);

DELETE FROM JUGADOR
WHERE ID_INTEGRANTE = 22;

UPDATE JUGADOR
SET NOMBRE = 'PABLITO',
    APELLIDO1 = 'PEREZ'
WHERE ID_INTEGRANTE = 22;
=======
>>>>>>> e3a417174a9f547c32969ad83cbfda80080da7cc:Base de datos/Fase 2/triggers/trigger con explicacion/modificacion_jugadores.sql
