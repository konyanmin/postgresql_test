CREATE TABLE past_due (
    id SERIAL PRIMARY KEY,
    cust_id INTEGER NOT NULL,
    balance NUMERIC(6,2) NOT NULL
);

INSERT INTO past_due(cust_id, balance)
VALUES (1, 123.45), (2, 324.50);