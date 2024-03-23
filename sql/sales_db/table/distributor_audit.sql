CREATE TABLE distributor_audit (
    id SERIAL PRIMARY KEY,
    distributor_id INT NOT NULL,
    name VARCHAR(100),
    edit_date TIMESTAMP NOT NULL
);

