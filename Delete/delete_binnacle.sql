create or replace procedure delete_binnacle(pId NUMBER)
is

BEGIN
    delete from binnacle
    where binnacle_id = pId;
     
    
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('Binnacle not found');
   
END;
