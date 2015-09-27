create or replace procedure update_person(pPerson NUMBER,pAcademictraining NUMBER,pCountry NUMBER,pDrinker NUMBER,
pSmoker NUMBER,pEyescolor NUMBER,pHaircolor NUMBER,pSkincolor NUMBER,pHeight NUMBER,pWeight NUMBER,
pMaritalstatus NUMBER,pOcupation NUMBER,pPhysicalactivity NUMBER,pReligion NUMBER,
pSalary NUMBER,pUsertype NUMBER,pZodiac NUMBER,pFirstName VARCHAR2,pLastName VARCHAR2,pGender VARCHAR2,
pPhrase VARCHAR2,pEmail VARCHAR2,pBirthDate DATE,pUserName VARCHAR2,pPasswordP VARCHAR2,pWantChildren NUMBER,
pAboutChildren NUMBER,pLikePets NUMBER,pWillingPets NUMBER,pHasPets NUMBER,pPreference VARCHAR2,pBodytype NUMBER)

IS 
BEGIN
 UPDATE PERSON
 set academic_training_id = pAcademictraining,
     country_id = pCountry,
     drinker_id = pDrinker,
     smoker_id = pSmoker,
     eyes_color_id = pEyescolor,
     hair_color_id = pHaircolor,
     skin_color_id = pSkincolor,
     height_id = pHeight,
     weight_id = pWeight,
     marital_status_id = pMaritalstatus,
     ocupation_id = pOcupation,
     physical_activity_id = pPhysicalactivity,
     religion_id = pReligion,
     salary_id = pSalary,
     user_type_id = pUsertype,
     zodiac_id = pZodiac,
     first_name = pFirstname,
     last_name = pLastname,
     gender = pGender ,
     phrase = pPhrase,
     email = pEmail ,
     birth_date = pBirthDate,
     user_name = pUsername,
     passwordp = pPasswordp,
     want_children = pWantchildren,
     about_children = pAboutchildren,
     like_pets = pLikepets,
     willing_pets = pWillingPets,
     has_pets = pHaspets,
     preference = pPreference , 
     bodytype_id = pBodytype 
WHERE person_id = pPerson ;
 

EXCEPTION 
    WHEN zero_divide then 
      dbms_output.put_line('Zero divide');
      
   when dup_val_on_index then 
     dbms_output.put_line('Duplicate value');
     
   when value_error then 
     dbms_output.put_line('Error on a conversion,truncation or invalidad constraining');

  when too_many_rows then 
     dbms_output.put_line('Error, more than one row was returned');
     
  when storage_error then 
     dbms_output.put_line('Error,memory is full');
     
  when no_data_found then 
     dbms_output.put_line('Error,No rows were returned');
     
  when others then 
     dbms_output.put_line('Error');
       
 
END;
