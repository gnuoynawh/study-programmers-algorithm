
/*
    JOIN
    그룹별 조건에 맞는 식당 목록 출력하기

    https://school.programmers.co.kr/learn/courses/30/lessons/131124
*/

-- 코드를 입력하세요
SELECT A.MEMBER_NAME, B.REVIEW_TEXT, date_format(B.REVIEW_DATE, '%Y-%m-%d') as REVIEW_DATE
FROM MEMBER_PROFILE A
INNER JOIN 
    REST_REVIEW B
ON 
    A.MEMBER_ID = B.MEMBER_ID
WHERE
    A.MEMBER_ID = (
        SELECT MEMBER_ID
        FROM REST_REVIEW
        GROUP BY MEMBER_ID
        ORDER BY COUNT(MEMBER_ID) DESC LIMIT 1
    )
ORDER BY REVIEW_DATE, B.REVIEW_TEXT;