Task 1
select id, question from polls
where id = 398

Task 2
select polls.id, polls.question,choices.text, choices.poll_id
from polls
join choices
on polls.id=choices.id
where poll_id = 125

Task 3
INSERT INTO Animals (name,type,country_id)
VALUES ('Slim','Giraffe','1');
SELECT Animals.name,Animals.type,Countries.country_id
FROM Animals
inner join Countries
ON Animals.country_id=Countries.id 
ORDER BY country;

Task 4
SELECT id,city,address,price
status from Apartments
WHERE price >(SELECT AVG(price) FROM Apartments)
ORDER BY price;

Task 5
SELECT DISTINCT name,calories
FROM cakes
ORDER BY calories
LIMIT 3

Task 6
select polls.created_at, polls.question, polls.created_by, users.name,users.username
  from polls
join users
 on polls.created_by=users.id
 
 Task 7
 select * from polls
 where created_at 
 between "2022-03-01" and "2022-03-15"
 
 Task 8
 select polls.question, choices.text, users.username
from polls
 join choices
 on choices.id=polls.id
 join users
 on polls.created_by=users.id
 where username= "tg3admin"
 
 Task 9
 select choices.text,polls.question,roles.name
from polls
 join choices
on polls.id=choices.poll_id
join users
on polls.created_by=users.id
 join user_roles
on users.id=user_roles.role_id
 join roles
on user_roles.role_id=roles.id
