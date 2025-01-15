CREATE DATABASE social;

CREATE TABLE blogs (Content VARCHAR(150),created_at DATETIME DEFAULT CURRENT_TIMESTAMP,updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP);

INSERT INTO blogs (Content) VALUES ('This is my first blog');

SELECT * FROM blogs;

UPDATE blogs SET Content = 'This is my first blog from India';