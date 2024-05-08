CREATE OR REPLACE TRIGGER TR_DELETE_EQUIPOS
BEFORE DELETE ON EQUIPO
FOR EACH ROW
DECLARE
    v_estado_competicion COMPETICION.ESTADO%TYPE;
BEGIN
    -- Verificar si alguna competici�n en la que el equipo est� participando est� cerrada
    SELECT c.ESTADO INTO v_estado_competicion
    FROM CLASIFICACION cl
    JOIN COMPETICION c ON cl.ID_COMPETICION = c.ID_COMPETICION
    WHERE cl.ID_EQUIPO IN :OLD.ID_EQUIPO AND c.ESTADO = 'cerrado';

    IF v_estado_competicion = 'cerrado' THEN
        RAISE_APPLICATION_ERROR(-20001, 'No se puede realizar la operaci�n. El equipo est� en una competici�n cerrada.');
    END IF;
EXCEPTION
    -- Capturar excepci�n cuando no hay ninguna competici�n cerrada para este equipo
    WHEN NO_DATA_FOUND THEN
        NULL; -- No hacer nada si no hay competiciones�cerradas
END;
