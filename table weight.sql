create table weight
(
       weight_id number(6), constraint pk_weight primary key (weight_id),
       amount number (4) CONSTRAINT weight_amount_nn NOT NULL
);
