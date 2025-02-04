-- test to check if there are no games played today

Select count(*) as num_games_today
from {{ref('stg_venue_perc')}}
where DATE(startTime) = CURRENT_DATE()
having count(*)>0