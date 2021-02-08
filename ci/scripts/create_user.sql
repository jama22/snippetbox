CREATE USER 'test_web'@'localhost';
GRANT SELECT, INSERT, UPDATE ON snippetbox.* TO 'test_web'@'localhost';
-- Important: Make sure to swap 'pass' with a password of your own choosing.
ALTER USER 'test_web'@'localhost' IDENTIFIED BY 'pass'