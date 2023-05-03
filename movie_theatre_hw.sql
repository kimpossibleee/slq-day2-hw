CREATE TABLE theatre(
	theatre_id SERIAL PRIMARY KEY,
	location_count INT
);

CREATE TABLE anaheim_amc(
	location_id SERIAL PRIMARY KEY,
	employees int,
	customers int,
	movies int,
	theatre_id int NOT null,
	FOREIGN KEY (theatre_id) REFERENCES theatre(theatre_id)
);

CREATE TABLE employees(
	employee_id SERIAL PRIMARY KEY,
	first_name varchar(100),
	last_name varchar(100),
	job_position varchar(100),
	pay_rate decimal,
	location_id int NOT NULL,
	FOREIGN KEY (location_id) REFERENCES anaheim_amc(location_id)
);

CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	first_name varchar(100),
	last_name varchar(100),
	is_member bool,
	email varchar(100),
	location_id int NOT NULL,
	FOREIGN KEY (location_id) REFERENCES anaheim_amc(location_id)
);


CREATE TABLE consessions(
	consession_id SERIAL PRIMARY KEY,
	purchase_time timestamp,
	item_name varchar,
	item_price decimal,
	customer_id int NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE movies( 
	movie_id SERIAL PRIMARY KEY,
	title varchar(100),
	runtime int
);

CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	movie_time time,
	movie_id int NOT NULL,
	seat_number int,
	customer_id int,
	FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

ALTER TABLE theatre 
ADD theatre_name varchar(100);

ALTER TABLE anaheim_amc 
ADD location_name varchar(100);

--Accidentally created the seatnumber to an int-type
ALTER TABLE tickets
ALTER COLUMN seat_number TYPE varchar(5);
