SELECT 
    idPlayer as id_player,
    yearDraft as year_draft,
    numberPickOverall as number_pick_overall,
    numberRound as number_round,
    numberRoundPick as number_round_pick,
    namePlayer as name_player,
    slugTeam as slug_team,
    nameOrganizationFrom as name_organization_from,
    typeOrganizationFrom as type_organization_from,
    idTeam as id_team,
    nameTeam as name_team,
    cityTeam as city_team,
    teamName as team_name,
    PLAYER_PROFILE_FLAG as player_profile_flag,
    slugOrganizationTypeFrom as slug_organization_type_from,
    locationOrganizationFrom as location_organization_from
FROM
    q.raw_draft