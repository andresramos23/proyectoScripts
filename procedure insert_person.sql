create or replace procedure insert_person
(pAcademicTraining NUMBER,pCountry NUMBER,
pDrinker NUMBER,pSmoker NUMBER,pEyesColor NUMBER,
pHairColor NUMBER,pSkinColor NUMBER,pHeight NUMBER,
pWeight NUMBER,pMaritalStatus NUMBER,pOcupation NUMBER,
pPhysicalActivity NUMBER,pReligion NUMBER,pSalary NUMBER,
pUserType NUMBER,pZodiac NUMBER,pFirstName VARCHAR2,
pLastName VARCHAR2,pGender VARCHAR2,pPhrase VARCHAR2,
pEmail VARCHAR2,pBirthDate DATE,pUserName VARCHAR2,
pPasswordP VARCHAR2,pWantChildren NUMBER,pAboutChildren NUMBER,
pLikePets NUMBER,pWillingPets NUMBER,pHasPets NUMBER,
pPreference VARCHAR2,pBodyType NUMBER)
is
c_person number;

BEGIN
c_person := s_person.nextval();


insert into person (person_id,academic_training_id,country_id,drinker_id,
smoker_id,eyes_color_id,hair_color_id,skin_color_id,height_id,weight_id,
marital_status_id,ocupation_id,physical_activity_id,religion_id,
salary_id,user_type_id,zodiac_id,first_name,last_name,gender,
phrase,email,birth_date,user_name,passwordp,want_children,
about_children,like_pets,willing_pets,has_pets,preference,bodytype_id)

values(c_person,pAcademicTraining,pCountry,pDrinker,
pSmoker,pEyescolor,pHaircolor,pSkincolor,pHeight,pWeight,
pMaritalstatus,pOcupation,pPhysicalactivity,pReligion,
pSalary,pUsertype,pZodiac,pFirstName,pLastName,pGender,
pPhrase,pEmail,pBirthDate,pUserName,pPasswordP,pWantChildren,
pAboutChildren,pLikePets,pWillingPets,pHasPets,pPreference,pBodytype);
commit;
EXCEPTION
  WHEN zero_divide then
    dbms_output.put_line('zero divide');

 when dup_val_on_index then
   dbms_output.put_line('duplicate value');

 when value_error then
   dbms_output.put_line('Error on a conversion,truncation or invalidad constraining');

when too_many_rows then
   dbms_output.put_line('Error, more than one row was returned');

when storage_error then
   dbms_output.put_line('Error,memory is full');

when no_data_found then
   dbms_output.put_line('Error,No rows were returned');

when others then
   dbms_output.put_line('Error not found');


END;
