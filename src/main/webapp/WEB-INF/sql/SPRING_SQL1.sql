CREATE DATABASE spr1;
USE spr1; 

-- 173 page
CREATE TABLE tbl_board (
	bno INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    content VARCHAR(2000) NOT NULL,
    writer VARCHAR(50) NOT NULL,
    regdate TIMESTAMP DEFAULT NOW(),
    updatedate TIMESTAMP DEFAULT NOW()
);

INSERT INTO tbl_board (title, content, writer)
VALUES ('테스트 제목', '테스트 내용', 'user00');

SELECT * FROM tbl_board;

DROP TABLE tbl_board;

-- 연습
CREATE TABLE tbl_test1 (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL
);

INSERT INTO tbl_test1 (name, age) VALUES ('JINAH', 27);
INSERT INTO tbl_test1 (name, age) VALUES ('JoonHee', 26);
INSERT INTO tbl_test1 (name, age) VALUES ('jooye', 27);

SELECT * FROM tbl_test1;
-- VO (org.zerock.domain.Test1VO
-- org.zerock.mapper.Test1Mapper (interface)
-- org.zerock.mapper.Test1Mapper.xml (xml)
-- Test1Tests

SELECT * FROM tbl_board ORDER BY bno DESC;