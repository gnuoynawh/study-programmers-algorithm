/*
    SELECT
    조건에 부합하는 중고거래 댓글 조회하기

    https://school.programmers.co.kr/learn/courses/30/lessons/164673
*/

-- 코드를 입력하세요
SELECT
 A.TITLE, A.BOARD_ID, 
 B.REPLY_ID, B.WRITER_ID, B.CONTENTS, 
 date_format(B.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE 
FROM USED_GOODS_BOARD AS A 
INNER JOIN USED_GOODS_REPLY AS B 
ON 
    A.BOARD_ID = B.BOARD_ID 
WHERE
    year(A.CREATED_DATE) = 2022
AND 
    month(A.CREATED_DATE) = 10
ORDER BY 
    B.CREATED_DATE ASC, A.TITLE ASC;