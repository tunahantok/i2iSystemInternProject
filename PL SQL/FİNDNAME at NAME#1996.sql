DECLARE
vs_NAME VARCHAR(100);
os_NAME VARCHAR(100);
BEGIN
vs_Name :='Tunahan#1996';
SELECT SUBSTR(vs_NAME,0,INSTR(vs_name,'#')-1)INTO os_NAME from DUAL;
DBMS_OUTPUT.PUT_LINE('NAME is : '||os_NAME);
END;
