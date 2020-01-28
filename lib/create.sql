CREATE TABLE projects (id INTEGER PRIMARY key, title TEXT, category TEXT, funding_goal FLOAT, start_date INTEGER, end_date INTEGER);
CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, age INTEGER);
CREATE TABLE pledges (id INTEGER PRIMARY KEY, amount FLOAT, user_id INTEGER, project_id INTEGER)