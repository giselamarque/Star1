INSERT INTO `EMPLOYEE`
VALUES
    (1,'name',10000,1),
    (2,'name1',10000,2),
    (3,'name2',10000,3);

INSERT INTO 'DEPARTMENT'
VALUES
    (1,'IT'),
    (2,'HR'),
    (3,'FINANCE');

INSERT INTO 'ROLES'


INSERT INTO 'USER_ROLES'
VALUES
    (1,'MANAGER'),
    (2,'ASSOCIATE'),
    (3,'ENGINEER');

INSERT INTO 'MANAGER'
VALUES
    (1,'name3'),
    (2,'name4'),
    (3,'name5');



-- I am getting the following error:

-- > ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'INSERT INTO 'DEPARTMENT' VALUES (1,'IT'), (2,'HR'), (3,'FINANCE')' at line 1