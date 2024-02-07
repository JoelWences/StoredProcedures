CREATE OR REPLACE FUNCTION buscar_hospitales(p_nombre IN VARCHAR2) RETURN SYS_REFCURSOR IS
    v_cursor SYS_REFCURSOR;
BEGIN
    OPEN v_cursor FOR
        SELECT *
        FROM hospital
        WHERE nombre LIKE '%' || p_nombre || '%';

    RETURN v_cursor;
END buscar_hospitales;
/

DECLARE
    v_resultado SYS_REFCURSOR;
    v_nombre_buscado VARCHAR2(50) := 'lima';
    v_registro hospital%ROWTYPE; -- Definir una variable de registro para almacenar toda la fila
BEGIN
    v_resultado := buscar_hospitales(v_nombre_buscado);

    -- Recorre el cursor y muestra los resultados en la consola
    LOOP
        FETCH v_resultado INTO v_registro;
        EXIT WHEN v_resultado%NOTFOUND;

       -- Muestra o realiza operaciones con los resultados
        DBMS_OUTPUT.PUT_LINE('ID Hospital: ' || v_registro.idHospital || 
                             ', Nombre: ' || v_registro.nombre || 
                             ', Antigüedad: ' || v_registro.antiguedad ||
                             ', Área: ' || v_registro.area ||
                             ', Área Decimal: ' || v_registro.areaDecimal ||
                             ', ID Sede: ' || v_registro.idSede ||
                             ', ID Gerente: ' || v_registro.idGerente ||
                             ', ID Condición: ' || v_registro.idCondicion ||
                             ', Fecha de Registro: ' || TO_CHAR(v_registro.fechaRegistro, 'DD-MON-YYYY'));   
        -- Ajusta las columnas según la estructura de tu tabla
    END LOOP;

    CLOSE v_resultado;
END;
/





