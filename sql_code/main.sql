SELECT DISTINCT first.snum, sname, first.city
	FROM Salespeople first, Customer second
	WHERE EXISTS
	(SELECT *
	FROM Customer third
	WHERE second.snum = third.snum
	AND second.cnum <> third.cnum
	AND first.snum = second.snum);
	
	
SELECT DISTINCT snum
	FROM Customer outers
	WHERE NOT EXISTS
	(SELECT * 
	FROM Customer inners
	WHERE inners.snum = outers.snum
	AND inners.cnum <> outers.cnum);
	

SELECT *
	FROM Salespeople
	WHERE city = ANY
	(SELECT city FROM Customer);
	
SELECT *
	 FROM Salespeople
	 WHERE city IN
	 (SELECT city FROM Customer);
	 
	 
SELECT *
	FROM Salespeople
	WHERE sname < ANY
	(SELECT cname
	FROM Customer);
	
	
SELECT *
	FROM Customer
	WHERE rating > ALL
	(SELECT rating
	FROM Customer
	WHERE city = 'Rome');
	
	
SELECT *
	FROM Customer
	WHERE rating <> 
	(SELECT rating
	FROM Customer
	WHERE city = "San Jose");
	
	
SELECT * 
	FROM Customer
	WHERE rating > ANY
	(SELECT rating 
	FROM Customer
	WHERE city = 'Rome'); 
	
	
SELECT snum, sname
	FROM Salespeople
	WHERE city = "London"
	UNION
SELECT cnum, cname
	FROM Customer
	WHERE city = "London";
	
	
SELECT snum, city
	FROM Customer
	UNION ALL
	SELECT snum, city
	FROM Salespeople;
	
	


	

