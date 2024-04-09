SELECT
    p.player_id,
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
    p.pie,
    s.slug_season,
    s.player_status,
    s.is_final_season,
    s.is_waived,
    s.is_on_roster,
    s.is_non_guaranteed,
    s.is_team_option,
    s.is_player_option,
    s.type_contract_detail,
    s.value AS salary
FROM
    q.players AS p
LEFT JOIN
    q.stg_player_salary AS s ON p.full_name = s.player_name