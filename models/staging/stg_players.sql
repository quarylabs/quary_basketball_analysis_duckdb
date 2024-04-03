SELECT 
    player.id AS id_player, 
    player.full_name, 
    player.first_name, 
    player.last_name, 
    player.is_active,
    CAST(SUBSTRING(CAST(attributes.BIRTHDATE AS VARCHAR), 1, 4) AS INTEGER) AS birth_year,
    attributes.SCHOOL AS school,
    attributes.COUNTRY AS country,
    attributes.LAST_AFFILIATION AS last_affiliation,
    attributes.HEIGHT AS height,
    attributes.WEIGHT AS weight,
    attributes.SEASON_EXP AS season_exp,
    attributes.JERSEY AS jersey,
    attributes.POSITION AS position,
    attributes.ROSTERSTATUS AS roster_status,
    attributes.GAMES_PLAYED_CURRENT_SEASON_FLAG AS games_played_current_season_flag,
    attributes.TEAM_ID AS team_id,
    attributes.TEAM_NAME AS team_name,
    attributes.TEAM_ABBREVIATION AS team_abbreviation,
    attributes.TEAM_CODE AS team_code,
    attributes.TEAM_CITY AS team_city,
    attributes.PLAYERCODE AS player_code,
    attributes.FROM_YEAR AS from_year,
    attributes.TO_YEAR AS to_year,
    attributes.DLEAGUE_FLAG AS dleague_flag,
    attributes.NBA_FLAG AS nba_flag,
    attributes.GAMES_PLAYED_FLAG AS games_played_flag,
    attributes.DRAFT_YEAR AS draft_year,
    attributes.DRAFT_ROUND AS draft_round,
    attributes.DRAFT_NUMBER AS draft_number,
    attributes.PTS AS pts,
    attributes.AST AS ast,
    attributes.REB AS reb,
    attributes.ALL_STAR_APPEARANCES AS all_star_appearances,
    attributes.PIE AS pie
FROM 
    q.raw_player player
JOIN 
    q.raw_player_attributes attributes
ON 
   ( player.id = attributes.ID )