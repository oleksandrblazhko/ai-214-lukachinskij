

-- Створення бази даних TSPP
CREATE DATABASE TSPP;
-- Підключення до бази даних TSPP
\c TSPP your_username
-- Створення таблиці record
CREATE TABLE record (
    source TEXT CONSTRAINT check_source_length CHECK (LENGTH(source) <= 20),
    record_name TEXT CONSTRAINT check_record_name_length CHECK (LENGTH(record_name) <= 20 AND record_name ~ '^[A-Za-z\\-]+$'),
    date DATE,
    summ INT CONSTRAINT check_summ_positive CHECK (summ > 0)
);

-- Створення таблиці category_r
CREATE TABLE category_r (
    record_category_name TEXT CONSTRAINT check_category_name_length CHECK (LENGTH(record_category_name) < 20 AND record_category_name ~ '^[A-Za-z\\-]+$')
);

-- Створення таблиці budget
CREATE TABLE budget (
    budget_name TEXT CONSTRAINT check_budget_name_length CHECK (LENGTH(budget_name) <= 20 AND budget_name ~ '^[A-Za-z\\-]+$'),
    limit INT CONSTRAINT check_limit_positive CHECK (limit > 0)
);

-- Створення таблиці category_b
CREATE TABLE category_b (
    budget_category_name TEXT CONSTRAINT check_budget_category_name_length CHECK (LENGTH(budget_category_name) < 20 AND budget_category_name ~ '^[A-Za-z\\-]+$')
);
-- З'єднання таблиць record і category_r багато до багатьох
CREATE TABLE record_category (
    record_id SERIAL,
    category_r_id SERIAL,
    CONSTRAINT fk_record_category_record FOREIGN KEY (record_id) REFERENCES record(id),
    CONSTRAINT fk_record_category_category FOREIGN KEY (category_r_id) REFERENCES category_r(id),
    CONSTRAINT pk_record_category PRIMARY KEY (record_id, category_r_id)
);

-- З'єднання таблиць budget і category_b багато до багатьох
CREATE TABLE budget_category (
    budget_id SERIAL,
    category_b_id SERIAL,
    CONSTRAINT fk_budget_category_budget FOREIGN KEY (budget_id) REFERENCES budget(id),
    CONSTRAINT fk_budget_category_category FOREIGN KEY (category_b_id) REFERENCES category_b(id),
    CONSTRAINT pk_budget_category PRIMARY KEY (budget_id, category_b_id)
);

