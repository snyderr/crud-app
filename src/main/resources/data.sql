INSERT INTO client(
    client_name,
    uri,
    phone_number,
    street_address,
    city,
    state,
    zip_code
) VALUES (
  'Google',
  'google.com',
  '1-800-455-1234',
  '1600 Amphitheatre Parkway',
  'Mountain View',
  'CA',
  '94043'
), (
  'Facebook',
  'facebook.com',
  '1-800-554-4321',
  '1 Hacker Way',
  'Menlo Park',
  'CA',
  '94025'
);

INSERT INTO person (
    first_name,
    last_name,
    email_address,
    street_address,
    city,
    state,
    zip_code,
    client_id
) VALUES (
    'John',
    'Smith',
    'fake1@aquent.com',
    '123 Any St.',
    'Asheville',
    'NC',
    '28801',
    '0'
), (
    'Jane',
    'Smith',
    'fake2@aquent.com',
    '123 Any St.',
    'Asheville',
    'NC',
    '28801',
    '1'
), (
    'Ryan',
    'Snyder',
    'fake3@aquent.com',
    '123 Any St.',
    'Asheville',
    'NC',
    '28801',
    '1'
);
