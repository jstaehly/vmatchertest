CREATE TABLE venues (
  id SERIAL PRIMARY KEY,
  name TEXT,
  city TEXT,
  seated_capacity INT,
  vibe TEXT,
  has_lodging BOOLEAN,
  has_av BOOLEAN,
  all_inclusive BOOLEAN,
  min_price INT,
  max_price INT
);

INSERT INTO venues (name, city, seated_capacity, vibe, has_lodging, has_av, all_inclusive, min_price, max_price) VALUES
('Revolution Mill', 'Greensboro', 250, 'Rustic', false, true, true, 5000, 10000),
('Castle McCulloch', 'Jamestown', 150, 'Elegant', true, true, false, 4000, 8000);
