CREATE TABLE client (
  client_id integer IDENTITY,
  client_name VARCHAR(50) NOT NULL,
  uri VARCHAR(50) NOT NULL,
  phone_number VARCHAR(50) NOT NULL,
  street_address varchar(50) NOT NULL,
  city varchar(50) NOT NULL,
  state varchar(2) NOT NULL,
  zip_code varchar(5) NOT NULL
);

CREATE TABLE person (
    person_id integer IDENTITY,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    email_address varchar(50) NOT NULL,
    street_address varchar(50) NOT NULL,
    city varchar(50) NOT NULL,
    state varchar(2) NOT NULL,
    zip_code varchar(5) NOT NULL,
    client_id integer,
    FOREIGN KEY (client_id) references client(client_id) ON DELETE CASCADE
);
