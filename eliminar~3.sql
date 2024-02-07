CREATE OR REPLACE PROCEDURE SP_HOSPITAL_ELIMINAR(
    p_idHospital INT
) IS
BEGIN
    -- Eliminar hospital por IdHospital
    DELETE FROM hospital
    WHERE idHospital = p_idHospital;

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Hospital eliminado exitosamente.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al eliminar hospital: ' || SQLERRM);
END SP_HOSPITAL_ELIMINAR;
/
BEGIN
    SP_HOSPITAL_ELIMINAR(p_idHospital => 101);
END;
/
