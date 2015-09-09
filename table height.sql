create table height
(
       height_id number(6), constraint pk_height primary key (height_id),
       amount number (4) CONSTRAINT height_amount_nn NOT NULL
);
