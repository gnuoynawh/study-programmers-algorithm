
/*
    JOIN
    주문량이 많은 아이스크림들 조회하기

    https://school.programmers.co.kr/learn/courses/30/lessons/133027
*/

-- 코드를 입력하세요
SELECT A.FLAVOR
FROM FIRST_HALF A
INNER JOIN JULY B
ON
    A.FLAVOR = B.FLAVOR
GROUP BY A.FLAVOR, B.FLAVOR
ORDER BY (A.TOTAL_ORDER + SUM(B.TOTAL_ORDER)) DESC LIMIT 3;