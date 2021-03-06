CREATE TABLE TBPESSOA(
    ID NUMBER(38),
    NOME VARCHAR2(250),
    CPF VARCHAR2(11)
);

INSERT INTO TBPESSOA (ID, NOME, CPF) VALUES (1, 'JANILSON FLORENCIO DA SILVA', NULL);
INSERT INTO TBPESSOA (ID, NOME, CPF) VALUES (2, 'KASSIO JANIELSON EUGENIO', NULL);
INSERT INTO TBPESSOA (ID, NOME, CPF) VALUES (3, 'GILBERTO SANTANA', NULL);
INSERT INTO TBPESSOA (ID, NOME, CPF) VALUES (4, 'MAILSON ANACLETO', NULL);
INSERT INTO TBPESSOA (ID, NOME, CPF) VALUES (5, 'WILLAIN SANTOS', NULL);
INSERT INTO TBPESSOA (ID, NOME, CPF) VALUES (6, 'EVELEN SILVA', NULL);
COMMIT;

SELECT * FROM TBPESSOA;

DECLARE 
    CURSOR CRPESSOA IS
    SELECT ID, NOME 
      FROM TBPESSOA
    ORDER BY 1;
    
    vID NUMBER;
    vNOME VARCHAR2(250);    
BEGIN
    OPEN CRPESSOA;
    LOOP
    FETCH CRPESSOA INTO vID, vNOME;
    EXIT WHEN CRPESSOA%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('C?DIGO: ' || vID || ' ,NOME: ' || vNOME || '!');
    END LOOP;
END;


DECLARE 
    CURSOR CRPESSOA IS
    SELECT *--ID, NOME, CPF 
      FROM TBPESSOA
    ORDER BY 1;
    
    CURSOR_PESSOA CRPESSOA%ROWTYPE;
BEGIN
    OPEN CRPESSOA;
    LOOP
    FETCH CRPESSOA INTO CURSOR_PESSOA;
    EXIT WHEN CRPESSOA%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('C?DIGO: ' || CURSOR_PESSOA.ID || ' ,NOME: ' || CURSOR_PESSOA.NOME || ', CPF: ' || CURSOR_PESSOA.CPF || '!');
    END LOOP;
    
    CLOSE CRPESSOA;
END;


DECLARE 
    CURSOR CRPESSOA(pID NUMBER) IS
    SELECT ID, NOME 
      FROM TBPESSOA
     WHERE ID = pID
    ORDER BY 1;
    
    CURSOR_PESSOA CRPESSOA%ROWTYPE;
BEGIN
    OPEN CRPESSOA(pID => :ID);
    
    LOOP
    FETCH CRPESSOA INTO CURSOR_PESSOA;
    EXIT WHEN CRPESSOA%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('C?DIGO: ' || CURSOR_PESSOA.ID || ' ,NOME: ' || CURSOR_PESSOA.NOME || '!');
    END LOOP;
    
    CLOSE CRPESSOA;
END;


--CURSOR IMPL?CITO
BEGIN
    UPDATE TBPESSOA SET CPF = '22233344455';
    DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' LINHAS AFETADAS');    
    COMMIT;
END;