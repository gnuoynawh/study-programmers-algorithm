
/*
    SUM, MAX, MIN
    가격이 제일 비싼 식품의 정보 출력하기

    https://school.programmers.co.kr/learn/courses/30/lessons/131115
*/

-- 코드를 입력하세요
SELECT PRODUCT_ID, PRODUCT_NAME, PRODUCT_CD, CATEGORY, PRICE FROM FOOD_PRODUCT 
ORDER BY PRICE DESC LIMIT 1;