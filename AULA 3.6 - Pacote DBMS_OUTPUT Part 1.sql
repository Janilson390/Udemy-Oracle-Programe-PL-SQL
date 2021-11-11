BEGIN
    dbms_output.enable(2000);
    --dbms_output.disable;
    dbms_output.put_line('Aprenda PL/SQL');
END;

BEGIN
    dbms_output.enable(2000);
    dbms_output.put('P');
    dbms_output.put('L');
    dbms_output.new_line;
    dbms_output.put('/');
    dbms_output.new_line;
    dbms_output.put('S');
    dbms_output.put('Q');
    dbms_output.put('L');
    dbms_output.new_line;
END;

BEGIN
    dbms_output.put('Aprenda');
    dbms_output.new_line;
    dbms_output.put('PL/');
    dbms_output.new_line;
    dbms_output.put('SQL');
    dbms_output.new_line;
END;

BEGIN
    dbms_output.put('Aprenda');
    dbms_output.new_line;
    dbms_output.put('PL/');
    dbms_output.new_line;
    dbms_output.put('SQL');
    dbms_output.new_line;
END;

DECLARE
    var1 varchar2(100) DEFAULT NULL;
    var2 varchar2(100) DEFAULT NULL;
    var3 varchar2(100) DEFAULT NULL;
    status number DEFAULT NULL;
    
BEGIN
    dbms_output.get_line(var1, status);
    dbms_output.get_line(var2, status);
    dbms_output.get_line(var3, status);
    
    DBMS_OUTPUT.PUT_LINE(var1 || ' ' || var2 || ' ' || var3);
END;


