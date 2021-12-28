DECLARE 
    J NUMBER := 2;
BEGIN
    FOR I IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE('I = ' || I * J);
        
        IF (I * J) = 10 THEN
            EXIT;
        END IF;
    END LOOP;
END;