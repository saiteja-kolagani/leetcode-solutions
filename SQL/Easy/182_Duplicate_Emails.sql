SELECT DISTINCT P1.EMAIL AS Email
FROM PERSON P1
JOIN PERSON P2
ON P1.EMAIL = P2.EMAIL
WHERE P1.ID != P2.ID

--OR--

SELECT Email from person group by email having count(*) > 1