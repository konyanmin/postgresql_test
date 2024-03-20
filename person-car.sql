create table car (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	make VARCHAR(50),
	model VARCHAR(50),
	price VARCHAR(50)
);

create table person (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	date_of_birth DATE,
	country_of_birth VARCHAR(50),
    car_id BIGINT REFERENCES car(id),
    UNIQUE(car_id)
    
);

insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Katy', 'De Lacey', 'kdelacey0@angelfire.com', 'Female', '1990/12/21', 'Aland Islands');
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Berna', 'Dimmack', 'bdimmack1@typepad.com', 'Female', '2014/11/30', 'Aland Islands');
insert into person (first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('Lizabeth', 'Sapauton', 'lsapauton2@mozilla.com', 'Female', '2007/01/19', 'Aland Islands');

insert into car (id, make, model, price) values (1, 'Honda', 'Crosstour', '$7.14');
insert into car (id, make, model, price) values (2, 'Subaru', 'Impreza', '$9.68');
