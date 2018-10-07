/*7- Conceder acesso apenas de select aos usuários Thonynho e Andersinho*/
/*Repitir os procedimentos das questões 5 e 6*/
/*Descrever quais são as chaves primárias das tabelas e o que é retornado nas consultas 'select'*/

SHOW DATABASES;/*Mostra o banco de daddos employees*/
USE employees;/*Usa o banco de dados employees*/
SHOW TABLES;/*Mostra as tabelas do banco de dados employees*/
DESCRIBE employees;/*Descreve a tabela employees, suas colunas e espeecificações*/

SELECT last_name, COUNT(emp_no) AS num_emp FROM employees GROUP BY last_name ORDER BY num_emp DESC LIMIT 10;/*Mosta o ultimo nome dos 10 empregados ordenados por numemro do empregado */

DESCRIBE salaries;/*Descreve a tabela salaries, suas colunas e especificações*/
SELECT salary FROM salaries ORDER BY emp_no limit 10;/*Seleciona a tabela salaries e monstra os valores contidos na coluna salary*/
/*As chaves primarias são emp_no e from_date.*/