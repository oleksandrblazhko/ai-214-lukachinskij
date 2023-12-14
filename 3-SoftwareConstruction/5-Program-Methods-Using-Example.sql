DECLARE
    v_result INT;
BEGIN
    v_result := sortListByDate('11-03-2023', '12-03-2023');

    IF v_result IS -1 THEN
        DBMS_OUTPUT.PUT_LINE('Невірне значення сьогоднішньої дати');
    ELSE IF v_result = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Некоректне значення змінної для шуканої дати');
    ELSE IF v_result = 1 THEN
        DBMS_OUTPUT.PUT_LINE('Список:');
    END IF;
END;
/