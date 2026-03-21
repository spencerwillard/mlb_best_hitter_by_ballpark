
-- Query to use to for baseball_statdium analysis

SELECT atbats.g_id, 
       atbats.ab_id,
       atbats.batter_id,
       player_b.position,
       player_b.first_name, 
       player_b.last_name, 
       player_b.team,
       atbats.event, 
       atbats.out, 
       atbats.strikeout, 
       atbats.hit, 
       atbats.homerun,
       games.home_team,
       games.away_team, 
       games.venue_name
FROM atbats 
JOIN players as player_b
    ON atbats.batter_id = player_b.id
JOIN games
    ON games.g_id = atbats.g_id; 