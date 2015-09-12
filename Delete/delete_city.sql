create or replace procedure delete_city(pId NUMBER)
is

BEGIN
     
    delete from city
    where city_id = pId;
 
    
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('City not found');
   
END;
