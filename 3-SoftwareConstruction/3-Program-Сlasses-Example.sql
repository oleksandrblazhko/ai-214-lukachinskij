CREATE OR REPLACE TYPE Record AS OBJECT (
    record_name varchar(30),        
    source varchar(30),       
    date_ date,
    summ float,
    NOT FINAL MEMBER PROCEDURE display
);
/

CREATE OR REPLACE TYPE Budget AS OBJECT(
    budget_name VARCHAR(30),  
    limit_ float,    
    NOT FINAL MEMBER PROCEDURE display
); 
/

CREATE OR REPLACE TYPE category_r AS OBJECT (
    budget_category_name,
    MEMBER PROCEDURE display
); 
/

CREATE OR REPLACE TYPE category_b AS OBJECT (
    record_category_name,
    MEMBER PROCEDURE display
); 
/


