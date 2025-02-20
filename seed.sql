DROP TABLE IF EXISTS notes;
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    password TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS notes (
    id SERIAL PRIMARY KEY,
    note TEXT NOT NULL,
    from_user INTEGER NOT NULL,
    to_user INTEGER NOT NULL,
    FOREIGN KEY (from_user) REFERENCES users(id),
    FOREIGN KEY (to_user) REFERENCES users(id)
);

INSERT INTO users (name, password) VALUES ('brian', 'password');
INSERT INTO users (name, password) VALUES ('david', 'password');

INSERT INTO notes (note, from_user, to_user) VALUES ('sup', 1, 2);
INSERT INTO notes (note, from_user, to_user) VALUES ('shut up brian', 2, 1);