SHOW MASTER STATUS;

GRANT SELECT, RELOAD, SHOW DATABASES, REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'debezium'@'%';
FLUSH PRIVILEGES;

USE testdb;

CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  email VARCHAR(100)
);


INSERT INTO users (name,email) VALUES ('Alice','alice@example.com');
INSERT INTO users (name,email) VALUES ('Bob','bob@example.com');
UPDATE users SET email='alice_new@example.com' WHERE name='Alice';
DELETE FROM users WHERE name='Alice';