
/*
    GROUP BY
    년, 월, 성별 별 상품 구매 회원 수 구하기

    https://school.programmers.co.kr/learn/courses/30/lessons/131532
*/

-- 코드를 입력하세요
/*
# SELECT 
#     year(SALES_DATE) AS YEAR, 
#     month(SALES_DATE) AS MONTH, 
#     count(USER_ID) AS TOTAL
# FROM ONLINE_SALE
# GROUP BY YEAR, MONTH
# ORDER BY YEAR, MONTH;
*/ /*
# 유저 200 (남자 84, 여자 111, null 5)
# SELECT count(*) 
# FROM USER_INFO
# GROUP BY GENDER HAVING GENDER IS NOT NULL
# ORDER BY GENDER ASC
*/
SELECT
    year(A.SALES_DATE) AS YEAR, 
    month(A.SALES_DATE) AS MONTH, 
    B.GENDER,
    count(distinct A.USER_ID) AS USERS
FROM ONLINE_SALE A 
INNER JOIN USER_INFO B
ON
    A.USER_ID = B.USER_ID
GROUP BY YEAR, MONTH, GENDER HAVING GENDER IS NOT NULL
ORDER BY YEAR, MONTH, GENDER