
/*
    SELECT
    3월에 태어난 여성 회원 목록 출력하기

    https://school.programmers.co.kr/learn/courses/30/lessons/131120
*/

/*
# SELECT MEMBER_ID, MEMBER_NAME, GENDER, DATE_OF_BIRTH FROM MEMBER_PROFILE WHERE GENDER = 'W' AND TLNO IS NOT NULL AND month(DATE_OF_BIRTH) = '3' ORDER BY MEMBER_ID ASC;
*/
/*
# SELECT MEMBER_ID, MEMBER_NAME, GENDER, date_format(DATE_OF_BIRTH, '%Y-%m-%d') DATE_OF_BIRTH 
# FROM MEMBER_PROFILE 
# WHERE GENDER = 'W' 
# AND TLNO IS NOT NULL 
# AND month(DATE_OF_BIRTH) = '3'
# ORDER BY MEMBER_ID ASC;
# 3
*/
SELECT MEMBER_ID, MEMBER_NAME, GENDER, TO_CHAR (DATE_OF_BIRTH, 'YYYY-MM-DD') 
FROM MEMBER_PROFILE 
WHERE GENDER = 'W' 
    AND TLNO IS NOT NULL 
    AND month(DATE_OF_BIRTH) = '3'
ORDER BY MEMBER_ID ASC
;