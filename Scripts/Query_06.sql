SELECT s.fullname, g.name
FROM [students] s
JOIN [groups] g ON s.group_id = g.id
WHERE g.name = 1
ORDER BY s.fullname ASC; 

