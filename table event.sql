create table event
(
       event_id number(6), CONSTRAINT pk_event primary key (event_id),
       event_name VARCHAR2(20)CONSTRAINT event_event_name_nn NOT NULL,
       event_date DATE CONSTRAINT event_event_date_nn NOT NULL,
       country VARCHAR2(25)CONSTRAINT event_country_nn NOT NULL,
       city VARCHAR2(25)CONSTRAINT event_city_nn NOT NULL,
       event_time VARCHAR2(25)CONSTRAINT event_time_nn NOT NULL,
       event_description VARCHAR2(25)CONSTRAINT event_description_nn NOT NULL
);
