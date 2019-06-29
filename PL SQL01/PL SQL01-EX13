CREATE OR REPLACE DIRECTORY CTEST AS 'C:\TEST';
GRANT READ,WRITE ON DIRECTORY CTEST TO PUBLIC; 
DECLARE
  out_file  UTL_FILE.FILE_TYPE;
BEGIN
DECLARE 
emp_id EMPLOYEES.EMPLOYEE_ID%TYPE;
first_name EMPLOYEES.FIRST_NAME%TYPE;
highest_salary  EMPLOYEES.SALARY%TYPE;
BEGIN
SELECT EMPLOYEE_ID,FIRST_NAME,SALARY INTO emp_id,first_name,highest_salary 
FROM EMPLOYEES
WHERE SALARY=(SELECT MAX(SALARY)FROM EMPLOYEES);

  out_file := UTL_FILE.FOPEN('CTEST', 'testing.txt' , 'W');
  UTL_FILE.PUT_LINE(out_file ,'ID of him '|| emp_id);
  UTL_FILE.PUT_LINE(out_file ,'Name of him '|| first_name);
  UTL_FILE.PUT_LINE(out_file ,'Salary of him ' || highest_salary);
    UTL_FILE.PUT_LINE(out_file ,'Salary of him in dolar ' || highest_salary*5);
  UTL_FILE.FCLOSE(out_file);
  
  END;
END;
/
