CREATE TABLE niggastudents (
    student_id NUMBER,
    sname VARCHAR2(50)
);

CREATE TABLE niggalog (
    student_id NUMBER,
    actions VARCHAR2(50),
    log_date TIMESTAMP
);

SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER niggatrigger
AFTER INSERT OR UPDATE OR DELETE ON niggastudents
FOR EACH ROW
DECLARE
    v_action VARCHAR2(50);
BEGIN
    IF INSERTING THEN
        v_action := 'INSERT';
    ELSIF UPDATING THEN
        v_action := 'UPDATE';
    ELSIF DELETING THEN
        v_action := 'DELETE';
    END IF;

    
END;
/
INSERT INTO niggalog VALUES (&id);
