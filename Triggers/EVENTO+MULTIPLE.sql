CREATE OR REPLACE TRIGGER TR1_REGION 
BEFORE INSERT OR UPDATE OF REGION_NAME OR DELETE
ON REGIONS 
BEGIN
  IF USER <>'HR' THEN
    RAISE_APPLICATION_ERROR(-20000,'SOLO HR PUEDE TRABAJAR EN REGIONS');
  END IF;
  
END