DECLARE
    v_idHospita2 INT := 1; 
    v_idDistrito INT := 2;  
    v_nombre VARCHAR2(200) := 'Hospital Lima';
    v_antiguedad INT := 5;
    v_area INT := 2500;
    v_areaDecimal DECIMAL := 150.75;
    v_idSede INT := 2;   
    v_idGerente INT := 2;    
    v_idCondicion INT := 2;  
BEGIN
    -- Insertar el registro en la tabla Hospital
    INSERT INTO hospital (
        idHospital, idDistrito, nombre, antiguedad, area, areaDecimal, idSede, idGerente, idCondicion, fechaRegistro
    ) VALUES (
        v_idHospita2, v_idDistrito, v_nombre, v_antiguedad, v_area, v_areaDecimal, v_idSede, v_idGerente, v_idCondicion, SYSDATE
    );

    COMMIT; -- Confirmar la transacción
    DBMS_OUTPUT.PUT_LINE('Hospital registrado exitosamente.');
EXCEPTION
    WHEN OTHERS THEN
        -- Capturar cualquier excepción y mostrar un mensaje de error
        DBMS_OUTPUT.PUT_LINE('Error al registrar el hospital: ' || SQLERRM);
END;
