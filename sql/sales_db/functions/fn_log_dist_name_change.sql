CREATE OR REPLACE FUNCTION fn_log_dist_name_change()
    RETURNS TRIGGER
    LANGUAGE PLPGSQL
AS
$body$
BEGIN
    IF NEW.name <> OLD.name THEN
        INSERT INTO distributor_audit
        (distributor_id, name, edit_date)
        VALUES
        (OLD.id, OLD.name, NOW());
    END IF;
    RAISE NOTICE 'Trigger Name : %', TG_NAME;
    RAISE NOTICE 'Table Name : %', TG_TABLE_NAME;
    RAISE NOTICE 'Operation : %', TG_OP;
    RAISE NOTICE 'When Executed : %', TG_WHEN;
    RAISE NOTICE 'Row or Statement : %', TG_LEVEL;
    RAISE NOTICE 'Table Schema : %', TG_TABLE_SCHEMA;
    RETURN NEW;
END;
$body$ 