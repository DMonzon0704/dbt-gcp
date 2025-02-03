select * from dbt-exploration-449811.baseball.games_wide o
join {{ref("stg_venue_perc")}} c on o.gameid = c.gameid