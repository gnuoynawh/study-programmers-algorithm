
/*
    GROUP BY
    식품분류별 가장 비싼 식품의 정보 조회하기

    https://school.programmers.co.kr/learn/courses/30/lessons/131116
*/

-- 코드를 입력하세요
SELECT CATEGORY, PRICE AS MAX_PRICE, PRODUCT_NAME
FROM FOOD_PRODUCT 
WHERE
    PRICE IN (
        SELECT MAX(PRICE)
        FROM FOOD_PRODUCT
        GROUP BY CATEGORY
    )
AND 
    (
        CATEGORY = '과자' OR 
        CATEGORY = '국' OR 
        CATEGORY = '김치' OR 
        CATEGORY = '식용유'
    )
ORDER BY MAX_PRICE DESC;