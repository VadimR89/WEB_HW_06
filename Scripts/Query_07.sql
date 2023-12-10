SELECT s.fullname, gr.grade
FROM [students] s
JOIN [groups] g ON s.group_id = g.id
JOIN [grades] gr ON s.id = gr.student_id
JOIN [disciplines] d ON gr.discipline_id = d.id
WHERE g.id = 1 AND d.id = 1;
