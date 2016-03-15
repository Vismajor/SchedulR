DROP TABLE appointments;
DROP TABLE events;

CREATE TABLE events (
  id serial4 PRIMARY KEY,
  start_time TIMESTAMP,
  end_time TIMESTAMP,
  title VARCHAR(255),
  location VARCHAR(255)
);

CREATE TABLE appointments (
  id serial4 PRIMARY KEY,
  start_time TIMESTAMP,
  end_time TIMESTAMP,
  title VARCHAR(255),
  location VARCHAR(255),
  priority INTEGER
);
