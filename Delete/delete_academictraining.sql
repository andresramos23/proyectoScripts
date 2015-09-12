create or replace procedure delete_academictraining(pId NUMBER)
is

BEGIN
    delete from academic_training
    where academic_training_id = pId;
    
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('Academic training not found');
   
END;
