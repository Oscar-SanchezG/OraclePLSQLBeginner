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
