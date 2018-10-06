use employees;

DROP USER IF EXISTS 'Thonynho';
DROP USER IF EXISTS 'Andersinho';
DROP USER IF EXISTS 'Fabinho';

CREATE USER 'Thonynho'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'Andersinho'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'Fabinho'@'localhost' IDENTIFIED BY 'password';

GRANT ALL PRIVILEGES ON * . * TO 'Thonynho'@'localhost';
GRANT ALL PRIVILEGES ON * . * TO 'Andersinho'@'localhost';
GRANT ALL PRIVILEGES ON * . * TO 'Fabinho'@'localhost';









