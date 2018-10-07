/*Logado como Fabinho */
/*Ações no usuário Fabinho*/
/*Descrever o que é exibido em cada comando*/

SHOW DATABASES; /*Mostra os bancos de dados existentes */
USE employees; /*Usa o banco de dados emplyees*/
SHOW TABLES;/*ostra as tabelas do banco de dados Employees*/
DESCRIBE employees;/*Descreve a tabela Employees mostrando suas especificações como, número do empregado, Data de aniversário, Primeiro nome, Ultimo nome, Gênero e Data do contrato.*/

SELECT last_name, COUNT(emp_no) AS num_emp FROM employees GROUP BY last_name ORDER BY num_emp DESC LIMIT 10;/*Mostra o último nome, e o número do empregado na ordem decrescente na tabela empregado(employees)*/

DESCRIBE salaries;/*Mostra uma descrição da tabela salaries*/
SELECT salary FROM salaries ORDER BY emp_no limit 10;/*Mostra os salários(salary) contidos na tabela Salário(salaries)*/