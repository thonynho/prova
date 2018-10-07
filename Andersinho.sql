/*Logado como Andersinho */
/*Ações no usuário Andersinho*/

SHOW DATABASES; /*Mostra os bancos de dados*/
USE employees;/*Usa o banco de dados escolhido*/
SHOW TABLES;/*Mostra as tabelas contidas no banco de dados*/
DESCRIBE employees;/*Descreve a tabela employees, mostrando suas colunas e respectivas especificações*/

SELECT last_name, COUNT(emp_no) AS num_emp FROM employees GROUP BY last_name ORDER BY num_emp DESC LIMIT 10; /*Mostra o último nome e número dos empregados por ordem decrescente limitando a 10*/

DESCRIBE salaries; /*Descreve a tabela salaries, mostrando suas colunas e especificações*/
SELECT salary FROM salaries ORDER BY emp_no limit 10; /*Mostra os salarios contidos na tabela salaries limitados em 10*/
