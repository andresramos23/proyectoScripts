create or replace procedure insert_person
(pAcademicTraining NUMBER,
pCountry NUMBER,
pDrinker NUMBER,
pSmoker NUMBER,
pEyesColor NUMBER,
pHairColor NUMBER,
pSkinColor NUMBER,
pHeight NUMBER,
pWeight NUMBER,
pMaritalStatus NUMBER,
pOcupation NUMBER,
pPhysicalActivity NUMBER,
pReligion NUMBER,
pSalary NUMBER,
pUserType NUMBER,
pZodiac NUMBER,
pFirstName VARCHAR2,
pLastName VARCHAR2,
pGender VARCHAR2,
pPhrase VARCHAR2,
pEmail VARCHAR2,
pBirthDate DATE,
pUserName VARCHAR2,
pPasswordP VARCHAR2,
pWantChildren NUMBER,
pAboutChildren NUMBER,
pLikePets NUMBER,
pWillingPets NUMBER,
pHasPets NUMBER,
pPreference VARCHAR2,
pBodyType NUMBER)

is
c_person number;
c_academictraining number;
c_country number;
c_drinker number;
c_smoker number;
c_eyescolor number;
c_haircolor number;
c_skincolor number;
c_height number;
c_weight number;
c_maritalstatus number;
c_ocupation number;
c_physicalactivity number;
c_religion number;
c_salary number;
c_usertype number;
c_zodiac number;
c_bodytype number;

BEGIN
c_person := s_person.nextval();
c_academictraining := s_academictraining.nextval();
c_country := s_country.nextval();
c_drinker := s_drinker.nextval();
c_smoker := s_smoker.nextval();
c_eyescolor := s_eyescolor.nextval();
c_haircolor := s_haircolor.nextval();
c_skincolor := s_skincolor.nextval();
c_height := s_height.nextval();
c_weight := s_weight.nextval();
c_maritalstatus := s_maritalstatus.nextval();
c_ocupation := s_ocupation.nextval();
c_physicalactivity := s_physicalactivity.nextval();
c_religion := s_religion.nextval();
c_salary := s_salary.nextval();
c_usertype := s_usertype.nextval();
c_zodiac := s_zodiac.nextval();
c_bodytype := s_bodytype.nextval();


insert into person (person_id,academic_training_id,country_id,drinker_id,
smoker_id,eyes_color_id,hair_color_id,skin_color_id,height_id,weight_id,
marital_status_id,ocupation_id,physical_activity_id,religion_id,
salary_id,user_type_id,zodiac_id,first_name,last_name,gender,
phrase,email,birth_date,user_name,passwordp,want_children,
about_children,like_pets,willing_pets,has_pets,preference,bodytype_id)
values(c_person,c_academictraining,c_country,c_drinker,
c_smoker,c_eyescolor,c_haircolor,c_skincolor,c_height,c_weight,
c_maritalstatus,c_ocupation,c_physicalactivity,c_religion,
c_salary,c_usertype,c_zodiac,pFirstName,pLastName,pGender,
pPhrase,pEmail,pBirthDate,pUserName,pPasswordP,pWantChildren,
pAboutChildren,pLikePets,pWillingPets,pHasPets,pPreference,c_bodytype);

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
   dbms_output.put_line('Error');


END;
