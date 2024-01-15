SELECT e.first_name, e.last_name, t.titel_name
FROM employee e
JOIN positions pos ON e.employee_id = pos.employee_id
JOIN titles t ON pos.title_id = t.id
JOIN projects proj ON pos.project_id = proj.project_id
GROUP BY e.employee_id, e.first_name, e.last_name, t.titel_name
HAVING COUNT(proj.project_id) > 1;