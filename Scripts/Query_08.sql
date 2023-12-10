SELECT t.fullname, ROUND(AVG(gr.grade), 0) AS average_grade
FROM [teachers] t
JOIN [disciplines] d ON t.id = d.teacher_id
JOIN [grades] gr ON d.id = gr.discipline_id
GROUP BY t.id;
