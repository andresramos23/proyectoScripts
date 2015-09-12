create or replace procedure insert_language(pLenguage VARCHAR2)
is
val number;

BEGIN
val :=s_languages.nextval();
insert into languages(languages_id,languages)
VALUES (val,pLenguage);
END;
