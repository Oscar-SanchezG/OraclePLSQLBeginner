create or replace TYPE body PRODUCTO  AS 
MEMBER FUNCTION ver_producto RETURN VARCHAR2 as 
begin
    return nombre||' '||precio;

end ver_producto;

MEMBER FUNCTION ver_precio  RETURN NUMBER as
begin
  return precio;
end ver_precio;

MEMBER PROCEDURE cambiar_precio(pvp number) as
begin
  precio:=pvp;
end cambiar_precio;
end;
/