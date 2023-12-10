SELECT d.name, s.fullname
FROM [grades] gr
JOIN [students] s ON gr.student_id = s.id
JOIN [disciplines] d ON gr.discipline_id = d.id
WHERE s.id = 110
ORDER BY d.id DESC; 

