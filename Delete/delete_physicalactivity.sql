create or replace procedure delete_physicalactivity(pId NUMBER)
is

BEGIN    
    delete from physical_activity
    where physical_activity_id = pId;    
    
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('Physical activity not found');
END;
