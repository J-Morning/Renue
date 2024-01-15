SELECT pj.project_name, t.titel_name, AVG(p.salary) AS average_salary
FROM positions p
JOIN titles t ON p.title_id = t.id
JOIN projects pj ON p.project_id = pj.project_id
WHERE pj.project_name = 'ПУМЧД' AND t.titel_name = 'qa engineer'
GROUP BY pj.project_name, t.titel_name;