CREATE USER 'red'@'localhost' identified by 'red';
REVOKE ALL, GRANT OPTION FROM 'red'@'localhost';
GRANT SELECT ON * TO 'red'@'localhost';