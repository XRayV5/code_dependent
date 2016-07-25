CREATE DATABASE guestbook;

\c guestbook

CREATE TABLE guests(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(200)
);

INSERT INTO guests (name) VALUES ('mum');
INSERT INTO guests (name) VALUES ('dad');
