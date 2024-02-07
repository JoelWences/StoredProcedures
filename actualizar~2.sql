CREATE OR REPLACE PROCEDURE SP_HOSPITAL_ACTUALIZAR(
    p_idHospital INT,
    p_idGerente INT,
    p_idCondicion INT,
    p_idSede INT,
    p_idDistrito INT
) IS
BEGIN
    -- Actualizar registros del hospital solo para los campos de gerente, condicion, sede y distrito
    UPDATE hospital
    SET
        idGerente = p_idGerente,
        idCondicion = p_idCondicion,
        idSede = p_idSede,
        idDistrito = p_idDistrito
    WHERE idHospital = p_idHospital;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Registros del hospital actualizados exitosamente.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al actualizar registros del hospital: ' || SQLERRM);
END SP_HOSPITAL_ACTUALIZAR;
/

BEGIN
    SP_HOSPITAL_ACTUALIZAR(
        p_idHospital => 2,
        p_idGerente => 3,
        p_idCondicion => 2,
        p_idSede => 2,
        p_idDistrito => 6
    );
END;
/
