-- Inserts for Movie table
INSERT INTO movie
VALUES(
	1,
	'Encanto'
),
(
	2,
	'The Kings Man'
),
(
	3,
	'Spider-Man'
);

-- Inserts for Room table
INSERT INTO room
VALUES(
	1,
	120
),
(
	2,
	80
),
(
	3,
	60
);

-- Inserts for Seat table
INSERT INTO seat
VALUES(
	1,
	1,
	1
),
(
	2,
	1,
	1
);

-- Insert for Ticket table
INSERT INTO ticket
VALUES(
	1,
	'2022-02-01',
	1,
	1
);

-- Insert for Customer table
INSERT INTO customer
VALUES(
	1,
	'Ulises',
	'Ibarra',
	'totallyrealemail@notreally.cmon',
	'1989-04-26', --I'm a Taurus
	1
);

-- Insert for Concession table
INSERT INTO concession
VALUES(
	1,
	'Nachos',
	1
);

SELECT *
FROM movie;