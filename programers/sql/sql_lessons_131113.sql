
/*
    String, Date
    조건별로 분류하여 주문상태 출력하기

    https://school.programmers.co.kr/learn/courses/30/lessons/131113
*/

-- 코드를 입력하세요
SELECT 
    ORDER_ID, 
    PRODUCT_ID, 
    date_format(OUT_DATE, '%Y-%m-%d') AS OUT_DATE,
    CASE 
        when OUT_DATE > '2022-05-01' THEN "출고대기"
        when OUT_DATE IS NULL THEN "출고미정"
        ELSE "출고완료"
    END AS 출고여부
FROM FOOD_ORDER