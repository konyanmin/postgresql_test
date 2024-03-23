CREATE OR REPLACE TRIGGER tr_block_weekend_changes
    BEFORE UPDATE OR INSERT OR DELETE OR TRUNCATE
    ON product
    FOR EACH STATEMENT
    WHEN (
        EXTRACT('DOW' FROM CURRENT_TIMESTAMP) BETWEEN 6 AND 7
    )
    EXECUTE PROCEDURE fn_block_weekend_changes();