CREATE TABLE persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT,
    age INTEGER);
    
INSERT INTO persons (fullname, age) VALUES ("John johns", "12");
INSERT INTO persons (fullname, age) VALUES ("Lucy blue", "25");
INSERT INTO persons (fullname, age) VALUES ("Banana Foster", "14");
INSERT INTO persons (fullname, age) VALUES ("alo Kale", "20");
INSERT INTO persons (fullname, age) VALUES ("Mike tes", "8");

CREATE table hobbies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    name TEXT);
    
INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");

CREATE table friends (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person1_id INTEGER,
    person2_id INTEGER);

INSERT INTO friends (person1_id, person2_id)
    VALUES (1, 4);
INSERT INTO friends (person1_id, person2_id)
    VALUES (2, 3);
    
SELECT persons.fullname, hobbies.name FROM persons 
    JOIN hobbies ON persons.id = hobbies.person_id;
    
    select f1.fullname, f2.fullname as partner from friends
join persons f1
on friends.person1_id = f1.id
join persons f2
on friends.person2_id = f2.id
