DECLARE
   T TEST.C1%TYPE;
BEGIN
   T:=10;
   UPDATE TEST SET C2='CCCCC' WHERE C1=T;
   COMMIT;
END;