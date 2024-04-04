SELECT
    p.id_player,
    p.full_name,
    p.first_name,
    p.last_name,
    d.year_draft,
    d.number_pick_overall,
    d.number_round,
    d.number_round_pick,
    d.slug_team,
    d.name_organization_from,
    d.type_organization_from,
    d.name_team,
    d.city_team,
    d.player_profile_flag,
    d.slug_organization_type_from,
    d.location_organization_from
FROM
    q.stg_players AS p
LEFT JOIN q.stg_draft AS d ON p.id_player = d.id_player
