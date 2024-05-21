CREATE OR REPLACE PROCEDURE custom_procedure()
LANGUAGE plpgsql
AS $$
BEGIN
    PERFORM pg_sleep(2);
    RAISE NOTICE 'This is a custom procedure using built-in functions';
END;
$$;
