create or replace procedure delete_event(pId NUMBER)
is

BEGIN    
    delete from  event
    where event_id = pId;
    
     
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('Event not found');
   
END;
