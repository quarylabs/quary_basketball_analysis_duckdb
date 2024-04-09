SELECT
    p.team_name,
    p.team_abbreviation,
    p.team_code,
    p.team_city,
    AVG(p.pts) AS avg_points,
    AVG(p.ast) AS avg_assists,
    AVG(p.reb) AS avg_rebounds,
    SUM(p.all_star_appearances) AS total_all_star_appearances,
    AVG(p.pie) AS avg_player_impact_estimate
FROM
    q.players AS p
WHERE
    p.team_name IS NOT NULL AND p.team_name != ''
GROUP BY
    p.team_name,
    p.team_abbreviation,
    p.team_code,
    p.team_city

