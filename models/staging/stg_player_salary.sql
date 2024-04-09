with

source as (

    select * from q.raw_player_salary

),

player_salary as (

    select
        SLUGSEASON AS slug_season,
        CAST(SUBSTRING("SLUGSEASON", 1, 4) AS INT)  AS start_year,
        CAST(SUBSTRING("SLUGSEASON", 1, 4) AS INT) + 1 AS end_year,
        NAMETEAM AS team_name,
        NAMEPLAYER AS player_name,
        STATUSPLAYER AS player_status,
        TYPECONTRACTDETAIL AS type_contract_detail,
        VALUE as value,
        case
            when ISFINALSEASON = 1 then true
            else false
        end as is_final_season,
        case
            when ISWAIVED = 1 then true
            else false
        end as is_waived,
        case
            when ISONROSTER = 1 then true
            else false
        end as is_on_roster,
        case
            when ISNONGUARANTEED = 1 then true
            else false
        end as is_non_guaranteed,
        case
            when ISTEAMOPTION = 1 then true
            else false
        end as is_team_option,
        case
            when ISPLAYEROPTION = 1 then true
            else false
        end as is_player_option,

    from source

)

select * from player_salary