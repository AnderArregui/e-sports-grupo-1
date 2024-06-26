CREATE OR REPLACE TRIGGER BORRAR_EQ_CLASI_COMP_CERRADA
FOR DELETE ON CLASIFICACION
COMPOUND TRIGGER
    v_estado_competencia COMPETICION.ESTADO%TYPE;
    OLD_ID_EQUIPO EQUIPO.ID_EQUIPO%TYPE;
BEFORE EACH ROW IS
BEGIN
    OLD_ID_EQUIPO:= :OLD.ID_EQUIPO;
END BEFORE EACH ROW;
AFTER STATEMENT IS
BEGIN
    SELECT c.ESTADO INTO v_estado_competencia
    FROM COMPETICION c
    INNER JOIN CLASIFICACION cl ON c.ID_COMPETICION = cl.ID_COMPETICION
    WHERE cl.ID_EQUIPO = OLD_ID_EQUIPO
    AND c.ESTADO = 'cerrado';

    IF v_estado_competencia = 'cerrado' THEN
        RAISE_APPLICATION_ERROR(-20001, 'No se puede borrar el equipo porque está asociado a una competición cerrada.');
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        NULL;
END AFTER STATEMENT;
END BORRAR_EQ_CLASI_COMP_CERRADA;