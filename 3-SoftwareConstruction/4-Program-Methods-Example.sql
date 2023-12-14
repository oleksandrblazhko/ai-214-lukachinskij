CREATE OR REPLACE FUNCTION sortListByDate(p_date IN VARCHAR2, p_current_date IN VARCHAR2)
RETURN NUMBER
IS
    l_year NUMBER;
    l_month NUMBER;
    l_day NUMBER;
BEGIN
    -- Умова 2: Перевірка чи дата не раніше 01.01.1975
    l_year := EXTRACT(YEAR FROM TO_DATE(p_date, 'DD-MM-YYYY'));
    IF l_year < 1975 THEN
        RETURN 0; -- Недопустимі значення для змінної date
    END IF;

    -- Умова 1: Перевірка чи date не пізніше сьогоднішньої дати (current_date)
    IF TO_DATE(p_date, 'DD-MM-YYYY') > TO_DATE(p_current_date, 'DD-MM-YYYY') THEN
        RETURN -1; -- Недопустимі значення для змінної current_date
    END IF;

    -- Умова 3: Перевірка чи current_date не раніше 26.11.2023
    IF TO_DATE(p_current_date, 'DD-MM-YYYY') < TO_DATE('26-11-2023', 'DD-MM-YYYY') THEN
        RETURN -1; -- Недопустимі значення для змінної current_date
    END IF;

    -- Якщо усі умови виконані, повертаємо 1 - виведений список
    RETURN 1;
END sortListByDate;
/
