CREATE OR REPLACE PROCEDURE pr_debt_paid(
    past_due_id int,
    payment numeric
) AS
$body$
DECLARE
BEGIN
    UPDATE past_due
    SET balance = balance - payment
    WHERE id=past_due_id;
    COMMIT;
END;
$body$
LANGUAGE PLPGSQL;