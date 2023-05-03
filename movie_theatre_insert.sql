INSERT INTO theatre (theatre_name)
VALUES ('AMC');

INSERT INTO anaheim_amc (location_name, theatre_id)
VALUES ('Anaheim AMC', 1)

INSERT INTO customers(first_name, last_name, is_member, email, location_id)
VALUES ('Paul', 'Kim', TRUE, 'kimpaul@gmail.com', 2),
		('Christina', 'Kim', FALSE, 'tina@gmail.com', 2),
		('Benedict', 'Cumberbatch', TRUE, 'bennycucumber@gmail.com', 2);
	

INSERT INTO employees(first_name, last_name, job_position, pay_rate, location_id)
VALUES ('Audrey', 'Hepburn', 'Manager', 92.45, 2)

INSERT INTO consessions (purchase_time, item_name, item_price, customer_id)
VALUES (CURRENT_TIMESTAMP, 'Caramel Popcorn', 12.99, 1),
		(current_timestamp, 'Icee', 7.99, 1),
		(current_timestamp, 'Nachos', 10.99, 3);

INSERT INTO movies(title, runtime)
VALUES ('Avengers: Endgame', 3),
		('Dr. Strange', 2),
		('Parasite', 2);

INSERT INTO tickets(movie_time, movie_id, seat_number, customer_id)
VALUES ('22:55', 2, '36G', 1),
		('22:55', 2, '35G', 1),
		('22:55', 2, '37G', 1)
;

DELETE FROM tickets WHERE ticket_id = 2;
