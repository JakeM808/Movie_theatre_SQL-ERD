CREATE TABLE "Movie" (
  "film_id" SERIAL PRIMARY KEY,
  "title" VARCHAR(50),
  "rating" VARCHAR(5)
);

CREATE TABLE "Customer" (
  "customer_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "loyalty" BOOLEAN
);


CREATE TABLE "Theater" (
  "theater_id" SERIAL PRIMARY KEY,
  "location_id" INTEGER,
  "ticket_num" INTEGER
);




CREATE TABLE "Tickets" (
  "ticket_num" SERIAL PRIMARY KEY,
  "cost" NUMERIC(4,2),
  "film_id" INTEGER,
  FOREIGN KEY (film_id) REFERENCES "Movie"("film_id"),
  "customer_id" INTEGER,
  FOREIGN KEY ("customer_id") REFERENCES "Customer"("customer_id"),
  "theater_id" INTEGER,
  FOREIGN KEY ("theater_id") REFERENCES "Theater"("theater_id")  
);

ALTER TABLE "Theater"
ADD FOREIGN KEY("ticket_num") REFERENCES "Tickets"("ticket_num");

CREATE TABLE "Movie-Theater" (
"theater_id" INTEGER,
FOREIGN KEY ("theater_id") REFERENCES "Theater"("theater_id"),
"film_id" INTEGER,
FOREIGN KEY ("film_id") REFERENCES "Movie"("film_id")
);

