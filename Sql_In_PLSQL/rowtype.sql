SET SERVEROUTPUT ON
DECLARE
    salario   NUMBER;
    NOMBRE EMPLOYEES.FIRST_NAME%TYPE;
    EMPLEADO EMPLOYEES%ROWTYPE;
BEGIN
    SELECT  --SOLO PUEDE DEVOLVER UNA FILA
        * INTO EMPLEADO
    FROM
        employees
    WHERE
        employee_id = 100;
    dbms_output.put_line(EMPLEADO.SALARY*100);
    dbms_output.put_line(EMPLEADO.FIRST_NAME);
END;