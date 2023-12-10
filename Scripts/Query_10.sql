SELECT d.name
FROM [disciplines] d
JOIN [teachers] t ON d.teacher_id = t.id
JOIN [grades] gr ON d.id = gr.discipline_id
JOIN [students] s ON gr.student_id = s.id
WHERE t.id = 4 AND s.id = 56;

