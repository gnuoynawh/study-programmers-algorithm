
/*
    SELECT
    조건에 맞는 회원수 구하기

    https://school.programmers.co.kr/learn/courses/30/lessons/131535
*/

-- 코드를 입력하세요
SELECT COUNT(*) USERS FROM USER_INFO 
WHERE
    year(JOINED) = '2021' 
AND
    AGE BETWEEN 20 AND 29;