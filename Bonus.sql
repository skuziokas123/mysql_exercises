
--bonus work
SELECT n.newsId,n.date,n.text,`c`.date,c.text
FROM `news` AS n
  JOIN comments AS c
    ON c.commentId=
	(
	   SELECT ci.commentId
	   FROM comments AS ci
	   WHERE ci.newsId=n.newsId
	   ORDER BY ci.date DESC
	   LIMIT 1
	
	)
	ORDER BY n.date DESC
    LIMIT 10;











