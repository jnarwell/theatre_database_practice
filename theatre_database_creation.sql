CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);

CREATE TABLE theatre(
	theatre_id SERIAL PRIMARY KEY,
	name_ VARCHAR(50),
	description VARCHAR
);

CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	name_ VARCHAR(50),
	description VARCHAR,
	price NUMERIC(5,2),
	theatre_id INTEGER NOT NULL,
	FOREIGN KEY(theatre_id) REFERENCES theatre(theatre_id)
);

CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id)
);