
  Select gameid, 
  startTime,
  ROUND((attendance/venueCapacity)*100 , 2) as venue_utilisation_perc, 
  homeTeamName, 
  awayTeamName,
  {{get_date_parts('startTime')}} as date_extract
  from dbt-exploration-449811.baseball.games_post_wide

  
