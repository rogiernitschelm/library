## Joins

Cross join:

```sql
SELECT * FROM student_grades, students;
```

### Inner join

Select records that have matching values in both tables.

Implicit inner join:

```sql
SELECT * FROM student_grades, students
WHERE student_grades.student_id = students.id;
```

Explicit inner join:

```sql
SELECT * FROM students
  JOIN student_grades
  ON students.id = student_grades.student_id
  WHERE students.grade > 10;
```

### Outer join

Select all records from the left table and join with the matching records
from the right table.

Left outer join:

```sql
SELECT * FROM students
  LEFT OUTER JOIN student_projects
  ON students.id = student_projects.student_id;
```
