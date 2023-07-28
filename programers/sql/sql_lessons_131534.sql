
/*
    JOIN
    상품을 구매한 회원 비율 구하기

    https://school.programmers.co.kr/learn/courses/30/lessons/131534
*/

-- 코드를 입력하세요
SELECT
    year(A.SALES_DATE) AS 'YEAR', 
    month(A.SALES_DATE) AS 'MONTH',
    COUNT(DISTINCT A.USER_ID) AS PUCHASED_USERS,
    ROUND( 
        COUNT(DISTINCT A.USER_ID)
        /
        (SELECT COUNT(*) FROM USER_INFO WHERE year(JOINED) = '2021')
    , 1) AS PUCHASED_RATIO
FROM 
    ONLINE_SALE A
INNER JOIN 
    USER_INFO B
ON
    A.USER_ID = B.USER_ID
WHERE 
    year(B.JOINED) = '2021'
GROUP BY YEAR, MONTH 
ORDER BY YEAR, MONTH;