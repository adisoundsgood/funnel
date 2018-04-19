SELECT count(*) AS Num_Accounts, -- count the number of accounts created in May, 2013
 count (*) FILTER ( 
  WHERE (
  SELECT count (*)
  WHERE created_at BETWEEN '2013-05-01 00:00:00' AND '2013-05-31 12:59:59'
  AND activated_at IS NOT NULL
  ) > 0) AS Num_Active, -- count the number of accounts that then became active
count (*) FILTER (
WHERE (
SELECT count (*)
  FROM tutorial.playbook_events
  WHERE user_id = tutorial.playbook_users.user_id
  AND event_name = 'login') > 0 ) AS Num_Login -- count the number of accounts that then logged in
    FROM tutorial.playbook_users
WHERE created_at BETWEEN '2013-05-01 00:00:00' AND '2013-05-31 12:59:59'
