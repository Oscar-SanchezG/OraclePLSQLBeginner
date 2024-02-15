SET SERVEROUTPUT ON

DECLARE
        X NUMBER := 20; -- Global accede solo el hijo y padre
        Y NUMBER := 30;
        Z NUMBER := 50;
        X1 VARCHAR2(50);
        MAYUS VARCHAR2(50);
        FECHA DATE;
        A NUMBER := 109.80;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Estoy en el primer bloque');
    DECLARE
        X NUMBER := 10; -- Local accede solo el hijo
        Y NUMBER := 100;
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Estoy en el segundo bloque ' || X);
        DBMS_OUTPUT.PUT_LINE('Estoy en el segundo bloque ' || Y);
        DBMS_OUTPUT.PUT_LINE('Estoy en el segundo bloque ' || Z);
        X1 := 'Ejemplo';
        DBMS_OUTPUT.PUT_LINE(SUBSTR(X,1,3));
        MAYUS := UPPER(X);
        DBMS_OUTPUT.PUT_LINE(MAYUS);
        FECHA := SYSDATE;
        DBMS_OUTPUT.PUT_LINE(FECHA);
        DBMS_OUTPUT.PUT_LINE(FLOOR(A));
        
    END;    
    
    DBMS_OUTPUT.PUT_LINE('Estoy en el Primer bloque ' || X);
    DBMS_OUTPUT.PUT_LINE('Estoy en el Primer bloque ' || Y);
END;