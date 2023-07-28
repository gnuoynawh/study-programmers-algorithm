
/*
    SELECT
    과일로 만든 아이스크림 고르기

    https://school.programmers.co.kr/learn/courses/30/lessons/133025
*/

-- 코드를 입력하세요
SELECT A.FLAVOR FROM FIRST_HALF AS A, ICECREAM_INFO AS B
WHERE
    A.FLAVOR = B.FLAVOR
AND
    A.TOTAL_ORDER > 3000
AND 
    B.INGREDIENT_TYPE = 'fruit_based';

/*
# -- 코드를 입력하세요
# SELECT A.FLAVOR FROM FIRST_HALF A INNER JOIN ICECREAM_INFO B ON A.FLAVOR = B.FLAVOR
# WHERE
#     A.TOTAL_ORDER > 3000
# AND 
#     B.INGREDIENT_TYPE = 'fruit_based';
*/