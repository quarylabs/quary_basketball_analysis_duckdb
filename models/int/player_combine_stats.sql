SELECT
    p.id_player,
    p.full_name,
    p.first_name,
    p.last_name,
    c.year_combine,
    c.height_wo_shoes_inches,
    c.wingspan_inches,
    c.slug_position
FROM
    q.stg_players AS p
LEFT JOIN q.stg_draft_combine AS c ON p.id_player = c.id_player
