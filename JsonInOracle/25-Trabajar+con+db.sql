/*
  Objetos JSON en PL/SQL
  

 Trabajar con la base de datos

*/
set serveroutput on format wrapped line 1000;
select json_object(datos) from productos1;


declare
 json1 JSON_OBJECT_T;
 v1 varchar2(4000); 
 resultado varchar2(4000);
begin
  select datos into v1 from productos1 where codigo=3;
  json1:=json_object_t(v1);
  dbms_output.put_line(json1.to_string);
  json1.put('c1','ejemplo');
  resultado:=json1.to_string;
  update productos1 set datos=resultado  where codigo=3;

end;
/