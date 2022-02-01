CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(20)
);

-- Theater Room table creation
CREATE TABLE room(
	room_id SERIAL PRIMARY KEY,
	seats NUMERIC(3)
);

-- Theater Seat table creation
CREATE TABLE seat(
	seat_id SERIAL PRIMARY KEY,
	row_number_ NUMERIC(1),
	room_id INTEGER NOT NULL,
	FOREIGN KEY(room_id) REFERENCES room(room_id)
);

-- Show Ticket table creation
CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	show_date DATE,
	movie_id INTEGER NOT NULL,
	seat_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id),
	FOREIGN KEY(seat_id) REFERENCES seat(seat_id)
);

-- Customer table creation
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	email VARCHAR(50),
	birthday DATE,
	ticket_id INTEGER NOT NULL,
	FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id)
);

-- Concession table creation
CREATE TABLE concession(
	snack_id SERIAL PRIMARY KEY,
	snack_name VARCHAR(20),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);