/*
    GROUP BY
    대여 횟수가 많은 자동차들의 월별 대여 횟수 구하기

    https://school.programmers.co.kr/learn/courses/30/lessons/151139
*/

-- 코드를 입력하세요
SELECT month(START_DATE) AS MONTH, CAR_ID, COUNT(*) AS RECORDS
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE 
    START_DATE BETWEEN '2022-08-01' AND '2022-10-31'
AND
    CAR_ID IN (
        SELECT CAR_ID
        FROM 
            CAR_RENTAL_COMPANY_RENTAL_HISTORY 
        WHERE
            START_DATE BETWEEN '2022-08-01' AND '2022-10-31'
        GROUP BY CAR_ID
        HAVING COUNT(CAR_ID) >= 5
    )
GROUP BY MONTH, CAR_ID 
ORDER BY MONTH, CAR_ID DESC;