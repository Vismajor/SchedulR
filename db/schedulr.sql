
DROP TABLE appointments;
DROP TABLE events;

CREATE TABLE events(
  id serial4 PRIMARY KEY,
  start_date DATE,
  start_time TIME,
  end_date DATE,
  end_time TIME,
  title VARCHAR(255),
  location VARCHAR(255)
);

CREATE TABLE appointments (
  id serial4 PRIMARY KEY,
  start_date DATE,
  start_time TIME,
  end_date DATE,
  end_time TIME,
  title VARCHAR(255),
  location VARCHAR(255),
  priority INTEGER
);
