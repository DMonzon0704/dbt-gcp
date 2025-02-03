WITH stg_baseball_venue AS(
  Select gameid, 
  ROUND((attendance/venueCapacity)*100 , 2) as venue_utilisation_perc, 
  homeTeamName, 
  awayTeamName
  from dbt-exploration-449811.baseball.games_post_wide
  group by 1,2,3,4
  
)

select * from stg_baseball_venue