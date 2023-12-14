BEGIN
    DBMS_OUTPUT.PUT('TC1.1: ');
    IF sortListByDate('25-11-2023', '26-11-2023') = 1 THEN
        DBMS_OUTPUT.PUT_LINE('Passed');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Failed');
    END IF;
    
    DBMS_OUTPUT.PUT('TC1.2: ');
    IF sortListByDate('27-11-2023', '26-11-2023') = -1 THEN 
        DBMS_OUTPUT.PUT_LINE('Passed');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Failed');
    END IF;

    DBMS_OUTPUT.PUT('TC1.3: ');
    IF sortListByDate('10-11-1974', '26-11-2023') = 0 THEN 
        DBMS_OUTPUT.PUT_LINE('Passed');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Failed');
    END IF;

    DBMS_OUTPUT.PUT('TC1.4: ');
    IF sortListByDate('25-11-2023', '25-11-2023') = -1 THEN 
        DBMS_OUTPUT.PUT_LINE('Passed');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Failed');
    END IF;
END;
/