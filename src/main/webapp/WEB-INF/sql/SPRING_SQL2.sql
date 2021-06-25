-- 상위 5개
SELECT * FROM tbl_board
ORDER BY bno DESC
LIMIT 5;

-- 0번 ~ 상위 5개
SELECT * FROM tbl_board
ORDER BY bno DESC
LIMIT 0, 5;

