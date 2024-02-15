    /*
  Objetos JSON en PL/SQL
  

 JSON_ARRAY_T : Un objeto que representa un array  JSON.
 
 APPEND
 APPEND_NULL
 PUT
 PUT_NULL

*/
set serveroutput on format wrapped line 1000;



declare
 json1 JSON_ARRAY_T;
 v1 varchar2(4000); 

begin
  
    json1:=json_array_t('["bmw","mercedes","citroen"]');
    dbms_output.put_line(json1.to_string);
    -- Ver el numero de elemntos
    dbms_output.put_line(json1.get_size);
    -- recuperar un valor
        dbms_output.put_line(json1.get(0).to_string);
        
        -- Recuperar todos
    for x in 0..json1.get_size-1 loop
           dbms_output.put_line(json1.get(x).to_string);
    end loop;

    
    
    -- Array de documentos
    json1:=json_array_t('[
                         {"ciudad":"Madrid",
                         "concesionario1":["bmw","mercedes","citroen"]
                         },
                         {"ciudad":"Valencia",
                         "concesionario2":["honda","kia","audi"]}
                         ]');
        --Recuperar el tamaño
        dbms_output.put_line(json1.get_size);
        
        -- recuperar un valor
        dbms_output.put_line(json1.get(0).to_string);
        
        -- Recuperar todos
    for x in 0..json1.get_size-1 loop
           dbms_output.put_line(json1.get(x).to_string);
    end loop;


end;
/