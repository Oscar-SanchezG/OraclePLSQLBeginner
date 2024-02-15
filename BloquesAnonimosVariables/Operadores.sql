SET SERVEROUT ON

DECLARE
    X NUMBER := 5;
    Z NUMBER := 10;
    A VARCHAR2(100) := 'EXAMPLE';
    D DATE := '10-01-1990';
BEGIN

    DBMS_OUTPUT.PUT_LINE('Suma X + Z = '|| (X+Z));    
    DBMS_OUTPUT.PUT_LINE('Resta X - Z = ' || ( X-Z));    
    DBMS_OUTPUT.PUT_LINE('Multiplicacion X * Z = ' || (X*Z));    
    DBMS_OUTPUT.PUT_LINE('Divicion entre X / Z = ' || (X/Z));    
    DBMS_OUTPUT.PUT_LINE('Exponente de X ** Z = ' || ( X**Z));
    DBMS_OUTPUT.PUT_LINE('Concatenacion A + D = ' || A || ' ' ||D);
    DBMS_OUTPUT.PUT_LINE('LA fecha de hoy es = ' || SYSDATE);
    DBMS_OUTPUT.PUT_LINE('LA fecha de mañana es = ' || (SYSDATE+1));
    DBMS_OUTPUT.PUT_LINE('LA fecha de ayer es = ' || (SYSDATE-1));


END;