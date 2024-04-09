SELECT
    player.id AS player_id,
    player.full_name,
    player.first_name,
    player.last_name,
    player.is_active,
    attributes.school,
    attributes.country,
    attributes.last_affiliation,
    attributes.height,
    attributes.weight,
    attributes.season_exp,
    attributes.jersey,
    attributes.position,
    attributes.rosterstatus AS roster_status,
    attributes.games_played_current_season_flag,
    attributes.team_id,
    attributes.team_name,
    attributes.team_abbreviation,
    attributes.team_code,
    attributes.team_city,
    attributes.playercode AS player_code,
    attributes.from_year,
    attributes.to_year,
    attributes.dleague_flag,
    attributes.nba_flag,
    attributes.games_played_flag,
    attributes.draft_year,
    attributes.draft_round,
    attributes.draft_number,
    attributes.pts,
    attributes.ast,
    attributes.reb,
    attributes.all_star_appearances,
    attributes.pie,
    CAST(
        SUBSTRING(CAST(attributes.birthdate AS VARCHAR), 1, 4) AS INTEGER
    ) AS birth_year
FROM
    q.raw_player AS player
INNER JOIN
    q.raw_player_attributes AS attributes
    ON
        player.id = attributes.id
