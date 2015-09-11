CREATE TABLE match
(
       match_id NUMBER(6), CONSTRAINT pk_match_id PRIMARY KEY(match_id),
       user_name VARCHAR2(25)CONSTRAINT match_username_nn NOT NULL,
       CONSTRAINT match_username_uk UNIQUE(user_name),
       age number(3)CONSTRAINT match_age_nn NOT NULL,
       profileLink VARCHAR2(40) CONSTRAINT match_profilelink_nn NOT NULL
);
