USE spr1;

SELECT 
b.title,
b.content,
b.writer,
b.regdate,
b.updatedate,
count(r.rno)
FROM tbl_board b
LEFT JOIN tbl_reply r
ON b.bno = r.bno
GROUP BY b.bno
ORDER BY b.bno DESC;

USE spr1;

CREATE TABLE tbl_tx_test1 (
	name VARCHAR(5) -- 5글자까지만 가능
);

SELECT * FROM tbl_tx_test1;

INSERT INTO tbl_tx_test1 (name)
VALUES ('abcde');
