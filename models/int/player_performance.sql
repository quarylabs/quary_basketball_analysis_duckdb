SELECT
    p.id_player,
    p.full_name,
    p.first_name,
    p.last_name,
    p.team_name,
    p.position,
    p.height,
    p.weight,
    p.season_exp,
    p.pts,
    p.ast,
    p.reb,
    p.all_star_appearances,
    p.pie
FROM
    q.stg_players AS p
