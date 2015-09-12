create or replace procedure delete_country(pId NUMBER)
is

BEGIN
     
    delete from country
    where country_id = pId;
    
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('Country not found');
   
END;
