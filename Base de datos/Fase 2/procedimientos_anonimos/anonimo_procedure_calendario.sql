-- Procedimiento an�nimo para probar el procedimiento generar_calendario
DECLARE
BEGIN
    -- Este procedimiento an�nimo se utiliza para probar el procedimiento almacenado generar_calendario.
    -- Se simulan las llamadas al procedimiento almacenado desde una aplicaci�n Java.

    -- Se muestran las competiciones antes de ejecutar generar_calendario
    DBMS_OUTPUT.PUT_LINE('Competiciones antes de ejecutar generar_calendario:');
    SELECT * FROM competicion;

    -- Se muestran las clasificaciones antes de ejecutar generar_calendario
    DBMS_OUTPUT.PUT_LINE('Clasificaciones antes de ejecutar generar_calendario:');
    SELECT * FROM clasificacion;

    -- Se muestran las jornadas antes de ejecutar generar_calendario
    DBMS_OUTPUT.PUT_LINE('Jornadas antes de ejecutar generar_calendario:');
    SELECT * FROM jornada;

    -- Se muestran los enfrentamientos antes de ejecutar generar_calendario
    DBMS_OUTPUT.PUT_LINE('Enfrentamientos antes de ejecutar generar_calendario:');
    SELECT * FROM enfrentamiento;

    -- Se ejecuta el procedimiento generar_calendario
    generar_calendario;

    -- Se muestran las competiciones despu�s de ejecutar generar_calendario
    DBMS_OUTPUT.PUT_LINE('Competiciones despu�s de ejecutar generar_calendario:');
    SELECT * FROM competicion;

    -- Se muestran las clasificaciones despu�s de ejecutar generar_calendario
    DBMS_OUTPUT.PUT_LINE('Clasificaciones despu�s de ejecutar generar_calendario:');
    SELECT * FROM clasificacion;

    -- Se muestran las jornadas despu�s de ejecutar generar_calendario
    DBMS_OUTPUT.PUT_LINE('Jornadas despu�s de ejecutar generar_calendario:');
    SELECT * FROM jornada;

    -- Se muestran los enfrentamientos despu�s de ejecutar generar_calendario
    DBMS_OUTPUT.PUT_LINE('Enfrentamientos despu�s de ejecutar generar_calendario:');
    SELECT * FROM enfrentamiento;
END;
/
