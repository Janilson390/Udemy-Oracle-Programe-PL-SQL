
DECLARE
    v_COUNT NUMBER := 1;
    v_COUNT2 NUMBER := 1;
BEGIN
    WHILE v_COUNT <= 10 LOOP
        DBMS_OUTPUT.PUT_LINE('TABUADA DE ' || v_COUNT || '!');
        DBMS_OUTPUT.NEW_LINE;
        
        WHILE v_COUNT2 <= 10 LOOP
            DBMS_OUTPUT.PUT_LINE(v_COUNT || ' x ' || v_COUNT2 || ' = ' || v_COUNT * v_COUNT2);
            v_COUNT2 := v_COUNT2 + 1;
        END LOOP;
        
        DBMS_OUTPUT.PUT_LINE('-----------------------------------');
        DBMS_OUTPUT.NEW_LINE;        
        
        v_COUNT2 := 1;
        
        v_COUNT := v_COUNT + 1; 
    END LOOP;    
END;



DECLARE
    v_COUNT NUMBER := 1;
    v_COUNT2 NUMBER := 1;
BEGIN
    WHILE v_COUNT <= 10 LOOP
        DBMS_OUTPUT.PUT_LINE('TABUADA DE ' || v_COUNT || '!');
        DBMS_OUTPUT.NEW_LINE;
        
        WHILE v_COUNT2 <= 10 LOOP
            DBMS_OUTPUT.PUT_LINE(v_COUNT || ' x ' || v_COUNT2 || ' = ' || v_COUNT * v_COUNT2);
            v_COUNT2 := v_COUNT2 + 1;
        END LOOP;
        
        DBMS_OUTPUT.PUT_LINE('-----------------------------------');
        DBMS_OUTPUT.NEW_LINE;        
        
        IF v_COUNT = 7 THEN
           EXIT; 
        END IF;
        
        v_COUNT2 := 1;
        
        v_COUNT := v_COUNT + 1; 
    END LOOP;    
END;


DECLARE
    v_COUNT NUMBER := 1;
BEGIN
    
    DBMS_OUTPUT.PUT_LINE('USANDO FOR!');    
    FOR i IN 1..1024 LOOP
        IF MOD(i, 2) = 0 THEN
             DBMS_OUTPUT.PUT_LINE(i || ' É PAR!');
        ELSE
             DBMS_OUTPUT.PUT_LINE(i || ' É IMPAR!');
        END IF;
    END LOOP;
    
    DBMS_OUTPUT.NEW_LINE;
    
    DBMS_OUTPUT.PUT_LINE('USANDO WHILE!');
    WHILE v_COUNT <= 1024 LOOP
         IF MOD(v_COUNT, 2) = 0 THEN
             DBMS_OUTPUT.PUT_LINE(v_COUNT || ' É PAR!');
        ELSE
             DBMS_OUTPUT.PUT_LINE(v_COUNT || ' É IMPAR!');
        END IF;
        v_COUNT := v_COUNT + 1;
    END LOOP;    
END;
