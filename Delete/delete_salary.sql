create or replace procedure delete_salary(pId NUMBER)
is

BEGIN    
    delete from salary
    where salary_id = pId;    
    
   EXCEPTION 
    when no_data_found then
      dbms_output.put_line('Salary not found');
END;
