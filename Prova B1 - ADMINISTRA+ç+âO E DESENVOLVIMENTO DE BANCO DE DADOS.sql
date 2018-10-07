use employees;/* Usar o Banco de Dados Employees*/
/*Questão 3*/
/* 1- criar os usuários */
DROP USER IF EXISTS 'Thonynho'; /*Faz o teste para saber se o usuário existe*/
DROP USER IF EXISTS 'Andersinho';
DROP USER IF EXISTS 'Fabinho';

CREATE USER 'Thonynho'@'localhost' IDENTIFIED BY 'password'; /*Cria os usuários e especifica o ost */
CREATE USER 'Andersinho'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'Fabinho'@'localhost' IDENTIFIED BY 'password';
/* 1- crie os usuários */

/* 2- Realizar a importação do database employees e conceder privilegios */
/* -u <employeed.sql root -p */
GRANT ALL PRIVILEGES ON employees.* TO 'Thonynho'@'localhost'; /* */
GRANT ALL PRIVILEGES ON employees.* TO 'Andersinho'@'localhost';
GRANT ALL PRIVILEGES ON employees.* TO 'Fabinho'@'localhost';
GRANT ALL PRIVILEGES ON employees.salaries TO 'Fabinho'@'localhost';
/* 2- Realize a importação  do database employees e conceder privilegios */

FLUSH PRIVILEGES;/*Atualiza os privilegios*/

SELECT user, HOST FROM mysql.user;/*Mostra os usuarios*/

SHOW GRANTS FOR Fabinho@localhost; /*Mostra informações relacionadas a atribuição de privilegios a determinado usuário*/

/* 3- Remover o acesso de Fabinho a tabela salaries*/
REVOKE ALL ON employees.salaries FROM 'Fabinho'@'localhost'; /*  */
/* 3- Remover o acesso de Fabinho a tabela salaries*/
FLUSH PRIVILEGES;

/* 4- Remover o acesso de select de Andersinho às tabelas salaries e employees */
REVOKE SELECT ON employees.salaries FROM 'Andersinho'@'localhost';/* */
REVOKE SELECT ON employees.employees FROM 'Andersinho'@'localhost';/* */
/* 4- Remover o acesso de select de Andersinho às tabelas salaries e employees */

GRANT SELECT ON employees.salaries TO 'Thonynho'@'localhost';
GRANT SELECT ON employees.salaries TO 'Andersinho'@'localhost';

FLUSH PRIVILEGES;


