
 -- QUERIES
 
 -- QUERY 2
 -- (Update the members phone with manager’s phone number if the member’s phone number is NULL.)
 update members as m1
 set phone = 
 (select phone from members as m2 
  where m1.coachid = m2.memberid
 )
 where m1.phone is null
 -----------------------------------------------------------------------------------------------------

 -- QUERY 3
/* 
  (3. Find all the members with their membership types and coach name, query should return
  member_first_name, member_last_name, membership_type, coach_name and results should be 
  sorted by member_first_name in descending order.)
*/

 --step: 1
 alter table members add coachname VARCHAR(100) 
 
 --step: 2
 update members as m1
 set coachname = 
 (select firstname from members as m2 
  where m1.coachid = m2.memberid
 )
 where m1.coachid is not null
 
 --step: 3
 SELECT
    m1.firstname,
    m1.lastname,
    m2.type,
    m1.coachname
FROM
    members m1
INNER JOIN membertype m2
ON m1.membertypeid = m2.id
order by m1.firstname desc
-------------------------------------------------------------------------------------------------

 -- QUERY 4
 -- (4.	Find all the open tournaments.)

 select * from tournament
 where is_open = true
 -------------------------------------------------------------------------------------------------

 -- QUERY 5
/*
  (5. Find the Golfers that entered tournaments in 2022 year.
  Result should contain first_name, last_name and tournament type.)
*/
SELECT
    m1.firstname,
    m1.lastname,
    m3.tour_type
FROM
    members m1
INNER JOIN tournament_entry m2 on m1.memberid = m2.memberid
INNER JOIN tournament m3 on m2.tourid = m3.id
where m2.year = 2022
 -------------------------------------------------------------------------------------------------

 -- QUERY 6
 -- (6.	Find the membership wise count of members, result should return membership_name and member_count)
SELECT
    m2.type,
    count(*)
FROM
    members m1
INNER JOIN membertype m2
ON m1.membertypeid = m2.id
group by type
 -------------------------------------------------------------------------------------------------

 -- QUERY 7
 -- (7.	Return team wise members count only if the member count is greater than 5.)
 SELECT
    t1.teamname,
	count(*)
FROM
    team t1
INNER JOIN members t2
ON t1.teamid = t2.teamid
group by teamname
having count(teamname)>5
 -------------------------------------------------------------------------------------------------