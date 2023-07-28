
/*
    JOIN
    5월 식품들의 총매출 조회하기

    https://school.programmers.co.kr/learn/courses/30/lessons/131117
*/

-- 코드를 입력하세요
SELECT A.PRODUCT_ID, A.PRODUCT_NAME, SUM(A.PRICE * B.AMOUNT) AS TOTAL_SALES 
FROM FOOD_PRODUCT A
INNER JOIN 
    FOOD_ORDER B
ON 
    A.PRODUCT_ID = B.PRODUCT_ID
WHERE 
    B.PRODUCE_DATE BETWEEN '2022-05-01' AND '2022-05-31'
GROUP BY PRODUCT_ID
ORDER BY TOTAL_SALES DESC, PRODUCT_ID ASC;