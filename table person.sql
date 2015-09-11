CREATE TABLE person
(
       person_id NUMBER(6),CONSTRAINT pk_person PRIMARY KEY(person_id),
       academic_training_id number(6),
       country_id number (6),
       drinker_id number(6),
       smoker_id number(6),
       eyes_color_id number(6),
       hair_color_id number(6),
       skin_color_id number(6),
       height_id number(6),
       weight_id number(6),
       hobbie_id number(6),
       interest_id number(6),
       lenguages_id number(6),
       marital_status_id number(6),
       ocupation_id number(6),
       physical_activity_id number(6),
       religion_id number(6),
       salary_id number(6),
       user_type_id number(6),
       winks_id number(6),
       zodiac_id number(6),
       -- tenemos que ver que hacemos con lo de la foto
       
       first_name VARCHAR2(20)CONSTRAINT person_firstname_nn NOT NULL,
       last_name VARCHAR2(25)CONSTRAINT person_lastname_nn NOT NULL,
       gender VARCHAR2(20) CONSTRAINT person_gender_nn NOT NULL,
       phrase VARCHAR2(25)CONSTRAINT person_phrase_nn NOT NULL,
       email VARCHAR2(25)CONSTRAINT person_email_nn NOT NULL,
       CONSTRAINT person_email_uk UNIQUE(email),
       birth_date DATE ,-- tengo mis dudas de si es asi 
       user_name VARCHAR2(25)CONSTRAINT person_username_nn NOT NULL,
       CONSTRAINT person_username_uk UNIQUE(user_name),
       passwordP VARCHAR2(25)CONSTRAINT person_passwordP_nn NOT NULL,
       want_children number (1)  CONSTRAINT person_wantchildren_nn NOT NULL,
       about_children number (1) CONSTRAINT person_aboutchildren_nn NOT NULL,
       like_pets number (1) CONSTRAINT person_likepets_nn NOT NULL,
       willing_pets number (1) CONSTRAINT person_willingpets_nn NOT NULL,
       has_pets number (1) CONSTRAINT person_haspets_nn NOT NULL
);

ALTER TABLE person 
      ADD CONSTRAINT FK_academictraining_id
      FOREIGN KEY (academic_training_id) 
      REFERENCES academic_training(academic_training_id);
      
ALTER TABLE person       
      ADD CONSTRAINT FK_counry_id
      FOREIGN KEY (country_id) 
      REFERENCES country(country_id);

ALTER TABLE person 
      ADD CONSTRAINT FK_drinker_id
      FOREIGN KEY (drinker_id) 
      REFERENCES drinker(drinker_id);

ALTER TABLE person    
      ADD CONSTRAINT FK_smoker_id
      FOREIGN KEY (smoker_id) 
      REFERENCES smoker(smoker_id);

ALTER TABLE person     
      ADD CONSTRAINT FK_eyescolor_id 
      FOREIGN KEY (eyes_color_id) 
      REFERENCES eyes_color(eyes_color_id);
      
ALTER TABLE person      
      ADD CONSTRAINT FK_haircolor_id 
      FOREIGN KEY (hair_color_id) 
      REFERENCES hair_color(hair_color_id);
      
ALTER TABLE person     
      ADD CONSTRAINT FK_skincolor_id 
      FOREIGN KEY (skin_color_id) 
      REFERENCES skincolor(skincolor_id);
      
ALTER TABLE person  
      ADD CONSTRAINT FK_height_id 
      FOREIGN KEY (height_id) 
      REFERENCES height(height_id);
            
ALTER TABLE person       
      ADD CONSTRAINT FK_weight_id 
      FOREIGN KEY (weight_id) 
      REFERENCES weight(weight_id);
            
ALTER TABLE person             
      ADD CONSTRAINT FK_hobbie_id 
      FOREIGN KEY (hobbie_id) 
      REFERENCES hobbie(hobbie_id);
            
ALTER TABLE person            
      ADD CONSTRAINT FK_interest_id 
      FOREIGN KEY (interest_id) 
      REFERENCES interest(interest_id);
            
ALTER TABLE person       
      ADD CONSTRAINT FK_lenguages_id 
      FOREIGN KEY (lenguages_id) 
      REFERENCES languajes(languajes_id);
            
ALTER TABLE person 
      ADD CONSTRAINT FK_maritalstatus_id 
      FOREIGN KEY (marital_status_id) 
      REFERENCES marital_status(marital_status_id);
                        
ALTER TABLE person 
      ADD CONSTRAINT FK_ocupation_id 
      FOREIGN KEY (ocupation_id) 
      REFERENCES ocupation(ocupation_id);

ALTER TABLE person            
      ADD CONSTRAINT FK_physicalactivity_id 
      FOREIGN KEY (physical_activity_id) 
      REFERENCES physical_activity(physical_activity_id);
        
ALTER TABLE person      
      ADD CONSTRAINT FK_religion_id 
      FOREIGN KEY (religion_id) 
      REFERENCES religion(religion_id);

ALTER TABLE person         
      ADD CONSTRAINT FK_salary_id 
      FOREIGN KEY (salary_id) 
      REFERENCES salary(salary_id);

ALTER TABLE person       
      ADD CONSTRAINT FK_usertype_id 
      FOREIGN KEY (user_type_id) 
      REFERENCES user_type(user_type_id);
 
ALTER TABLE person            
      ADD CONSTRAINT FK_winks_id 
      FOREIGN KEY (winks_id) 
      REFERENCES winks(winks_id);

ALTER TABLE person             
      ADD CONSTRAINT FK_zodiac_id 
      FOREIGN KEY (zodiac_id) 
      REFERENCES zodiac(zodiac_id);
            
            
