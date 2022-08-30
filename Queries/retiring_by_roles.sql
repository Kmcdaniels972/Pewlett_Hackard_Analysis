SELECT COUNT(ut.emp_no) as retiring,
ut.title,
d.dept_name
INTO retiring_by_roles
FROM unique_titles as ut
INNER JOIN dept_emp as de
ON (ut.emp_no = de.emp_no)
INNER JOIN departments as d
ON (de.dept_no = d.dept_no)
GROUP BY ut.title, d.dept_name
ORDER BY dept_name;

SELECT COUNT(me.emp_no) as mentor,
me.title,
d.dept_name
INTO mentor_by_roles
FROM mentorship_eligibility as me
INNER JOIN dept_emp as de
ON (me.emp_no = de.emp_no)
INNER JOIN departments as d
ON (de.dept_no = d.dept_no)
GROUP BY me.title, d.dept_name
ORDER BY dept_name;
