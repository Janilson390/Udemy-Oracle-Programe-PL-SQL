SELECT * FROM TBPESSOA;

ALTER TABLE TBPESSOA ADD CARGO CHAR(2);

UPDATE TBPESSOA SET CARGO = 'AD' WHERE ID = 1;
UPDATE TBPESSOA SET CARGO = 'AD' WHERE ID = 2;
UPDATE TBPESSOA SET CARGO = 'BO' WHERE ID = 3;
UPDATE TBPESSOA SET CARGO = 'ES' WHERE ID = 4;
UPDATE TBPESSOA SET CARGO = 'MP' WHERE ID = 5;
UPDATE TBPESSOA SET CARGO = 'AR' WHERE ID = 6;

 --CURSOR FOR LOOP 
 DECLARE
    CURSOR CRPESSOA IS
    SELECT ID, NOME, CARGO
      FROM TBPESSOA
    ORDER BY 1;
 
 BEGIN 
    FOR CR IN CRPESSOA LOOP
        DBMS_OUTPUT.PUT_LINE('C�DIGO: ' || CR.ID || ' ,NOME: ' || CR.NOME || ', CARGO: ' || CR.CARGO || '!');
    END LOOP;    
 END;
 
DECLARE
    CURSOR CRPESSOA (pID NUMBER)IS
    SELECT ID, NOME, CARGO
      FROM TBPESSOA
     WHERE ID >= pID 
    ORDER BY 1;
 
 BEGIN 
    FOR CR IN CRPESSOA(pID => :ID ) LOOP
        DBMS_OUTPUT.PUT_LINE('C�DIGO: ' || CR.ID || ' ,NOME: ' || CR.NOME || ', CARGO: ' || CR.CARGO || '!');
    END LOOP;    
 END;
 
--CURSOR FOR LOOP COM DEFINI��O INTERNA 
DECLARE
    vID  VARCHAR2(2);   
BEGIN 
    vID := :ID;
    FOR CR IN (SELECT ID, NOME, CARGO FROM TBPESSOA WHERE ID >= vID ORDER BY 1) LOOP
        DBMS_OUTPUT.PUT_LINE('C�DIGO: ' || CR.ID || ' ,NOME: ' || CR.NOME || ', CARGO: ' || CR.CARGO || '!');
    END LOOP;    
END;
 
CREATE TABLE TBSALARIO(
   ID_PESSOA NUMBER,
   SALARIO NUMBER(38,0)
);

INSERT INTO TBSALARIO (ID_PESSOA, SALARIO) VALUES (1, 300);
INSERT INTO TBSALARIO (ID_PESSOA, SALARIO) VALUES (2, 300);
INSERT INTO TBSALARIO (ID_PESSOA, SALARIO) VALUES (3, 300);
INSERT INTO TBSALARIO (ID_PESSOA, SALARIO) VALUES (4, 300);
INSERT INTO TBSALARIO (ID_PESSOA, SALARIO) VALUES (5, 300);
INSERT INTO TBSALARIO (ID_PESSOA, SALARIO) VALUES (6, 300);
COMMIT;

SELECT * FROM TBSALARIO;

DECLARE
    vSALBASE NUMBER := 300;
BEGIN
    FOR CR IN (SELECT ID, NOME, CARGO FROM TBPESSOA ORDER BY 1) LOOP
       
        FOR CRS IN (SELECT ID_PESSOA, SALARIO FROM TBSALARIO WHERE ID_PESSOA = CR.id) LOOP
        
            DBMS_OUTPUT.PUT_LINE('C�DIGO: ' || CR.ID || ' ,NOME: ' || CR.NOME || ', CARGO: ' || CR.CARGO || '!');
            DBMS_OUTPUT.NEW_LINE;
            
            IF CR.CARGO = 'AD' THEN
                UPDATE TBSALARIO SET SALARIO = CRS.SALARIO * 1.50 WHERE ID_PESSOA = CR.id;
            ELSIF CR.CARGO = 'AR' THEN    
                UPDATE TBSALARIO SET SALARIO = CRS.SALARIO * 1.50 WHERE ID_PESSOA = CR.id;
            ELSIF CR.CARGO = 'MP' THEN
                UPDATE TBSALARIO SET SALARIO = CRS.SALARIO * 1.80 WHERE ID_PESSOA = CR.id;
            END IF;        
        END LOOP;
        
    END LOOP;   
    COMMIT;
END;

SELECT * 
  FROM TBPESSOA P
  INNER JOIN TBSALARIO S
   ON  P.ID = S.ID_PESSOA;



