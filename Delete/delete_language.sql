create or replace procedure delete_language(pId NUMBER)
is

BEGIN
    delete from languages
    where languages_id = pId;
    
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('Languages not found');
   
END;
