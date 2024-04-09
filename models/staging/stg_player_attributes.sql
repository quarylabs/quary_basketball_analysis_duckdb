with

source as (

    select * from q.raw_player_attributes

),

attributes as (

    select
        "ID" as player_id,
        "FIRST_NAME" as first_name,
        "LAST_NAME" as last_name,  
        "DISPLAY_FIRST_LAST" as display_first_last,
        "DISPLAY_LAST_COMMA_FIRST" as display_last_comma_first,
        "DISPLAY_FI_LAST" as display_fi_last,
        "PLAYER_SLUG" as player_slug,
        CAST(
            SUBSTRING(CAST("BIRTHDATE" AS VARCHAR), 1, 4) AS INTEGER
        ) AS birth_year,
        "SCHOOL" as school,
        "COUNTRY" as country,
        "LAST_AFFILIATION" as last_affiliation,
        "HEIGHT" as height,
        "WEIGHT" as weight,
        "SEASON_EXP" as season_exp,
        "JERSEY" as jersey_number,
        "POSITION" as position,
        "ROSTERSTATUS" as roster_status,
        "TEAM_ID" as team_id,
        "TEAM_NAME" as team_name,
        "TEAM_ABBREVIATION" as team_abbreviation,
        "TEAM_CODE" as team_code,
        "TEAM_CITY" as team_city,
        "PLAYERCODE" as player_code,
        "FROM_YEAR" as from_year,
        "TO_YEAR" as to_year,
        "DRAFT_YEAR" as draft_year,
        "DRAFT_ROUND" as draft_round,
        "DRAFT_NUMBER" as draft_number,
        "PTS" as points,
        "AST" as assists,  
        "REB" as rebounds,
        "ALL_STAR_APPEARANCES" as all_star_appearances,
        "PIE" as player_impact_estimate,
        case
            when "GAMES_PLAYED_CURRENT_SEASON_FLAG" = 'Y' then true
            else false
        end as games_played_current_season_flag,
        case
            when "DLEAGUE_FLAG" = 'Y' then true
            else false
        end as dleague_flag,
        case
            when "NBA_FLAG" = 'Y' then true
            else false
        end as nba_flag,
        case
            when "GAMES_PLAYED_FLAG" = 'Y' then true
            else false
        end as games_played_flag
    from source

)

select * from attributes

