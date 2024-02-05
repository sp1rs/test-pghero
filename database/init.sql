-- init.sql



-- Create tables in mydatabase1
CREATE DATABASE mydatabase1;
\c mydatabase1;
CREATE TABLE users1 (
    id serial PRIMARY KEY,
    name VARCHAR (100),
    age INT
);

-- Generate 10,000 rows of dummy data
DO $$
BEGIN
    FOR i IN 1..1000000 LOOP
        INSERT INTO users1 (name, age) VALUES ('User' || i, (i % 80) + 20);
    END LOOP;
END $$;

-- Create user
CREATE USER user1 WITH PASSWORD 'password1';
GRANT ALL PRIVILEGES ON DATABASE mydatabase1 TO user1;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO user1;

-- Create tables in mydatabase2
CREATE DATABASE mydatabase2;
\c mydatabase2;
CREATE TABLE users2 (
    id serial PRIMARY KEY,
    name VARCHAR (100),
    age INT
);

-- Generate 10,000 rows of dummy data
DO $$
BEGIN
    FOR i IN 1..1000000 LOOP
        INSERT INTO users2 (name, age) VALUES ('User' || i, (i % 80) + 20);
    END LOOP;
END $$;

-- Create user
CREATE USER user2 WITH PASSWORD 'password2';
GRANT ALL PRIVILEGES ON DATABASE mydatabase2 TO user2;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO user2;

-- Create tables in mydatabase3
CREATE DATABASE mydatabase3;
\c mydatabase3;
CREATE TABLE users3 (
    id serial PRIMARY KEY,
    name VARCHAR (100),
    age INT
);

-- Generate 10,000 rows of dummy data
DO $$
BEGIN
    FOR i IN 1..1000000 LOOP
        INSERT INTO users3 (name, age) VALUES ('User' || i, (i % 80) + 20);
    END LOOP;
END $$;

-- Create user
CREATE USER user3 WITH PASSWORD 'password3';
GRANT ALL PRIVILEGES ON DATABASE mydatabase3 TO user3;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO user3;