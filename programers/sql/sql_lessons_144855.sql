/*
    GROUP BY
    카테고리 별 도서 판매량 집계하기

    https://school.programmers.co.kr/learn/courses/30/lessons/144855
*/

-- 코드를 입력하세요
SELECT A.CATEGORY, SUM(B.SALES) AS TOTAL_SALES FROM BOOK A, BOOK_SALES B
WHERE 
    A.BOOK_ID = B.BOOK_ID
AND
    B.SALES_DATE BETWEEN '2022-01-01' AND '2022-01-31'
GROUP BY A.CATEGORY
ORDER BY A.CATEGORY ASC;