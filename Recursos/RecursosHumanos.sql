SET SERVEROUTPUT ON

DECLARE

    --Constantes siempre inicializadas solo lectura
    X       CONSTANT NUMBER := 10;
    --Variables
    NAME     VARCHAR2(100);
    LASTNAME VARCHAR2(100);
    Z        NUMBER NOT NULL := 20;
     -- Variables Boolean
    B1 BOOLEAN;
    B2 BOOLEAN;
    B3 BOOLEAN;
    
    -- Variables TYPE Campo-Tabla
    EMPLE EMPLOYEES.SALARY%TYPE;
BEGIN

    NAME := 'Oscar';
    LASTNAME := 'Sanchez';
    Z := 30;
    B1 := TRUE;
    B2 := FALSE;
    B3 := NULL;
    EMPLE := 100;
    
    DBMS_OUTPUT.PUT_LINE(NAME);
    DBMS_OUTPUT.PUT_LINE(LASTNAME);
    DBMS_OUTPUT.PUT_LINE(name || ' ' || LASTNAME );
    DBMS_OUTPUT.PUT_LINE('Soy una constante =' || ' ' || X);
    DBMS_OUTPUT.PUT_LINE('Soy una variable not null = ' || ' ' || Z);
    --DBMS_OUTPUT.PUT_LINE('Soy una variable Boolean = ' || ' '  ||  B1);
    --DBMS_OUTPUT.PUT_LINE('Soy una variable Boolean = ' || ' '  ||  B2);
    --DBMS_OUTPUT.PUT_LINE('Soy una variable Boolean = ' || ' '  ||  B3);
    DBMS_OUTPUT.PUT_LINE('Soy una variable TYPE =' || ' ' || EMPLE);
                        
END;