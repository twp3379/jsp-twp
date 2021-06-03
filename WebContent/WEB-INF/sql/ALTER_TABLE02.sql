use test2;
DESC Member;

ALTER TABLE Member
ADD PRIMARY KEY(id);

ALTER TABLE Member
MODIFY
password VARCHAR(255) not null;

ALTER TABLE Member
MODIFY
name VARCHAR(255) not null;

ALTER TABLE Member
MODIFY
birth DATE not null;

ALTER TABLE Member
MODIFY
inserted TIMESTAMP NOT NULL DEFAULT NOW();

INSERT INTO Member
(id, password, name, birth)
VALUE
('donald', 'trump', 'trump', '2011-01-01');

SELECT * FROM Member;




