with

source as (

    select * from q.raw_team_salary

),

team_salary as (

    select
        nameteam AS team_name,
        slugteam AS slug_team,
        "X2020-21" AS "2020_salary",
        "X2021-22" AS "2021_salary",
        "X2022-23" AS "2022_salary",
        "X2023-24" AS "2023_salary",
        "X2024-25" AS "2024_salary",
        "X2025-26" AS "2025_salary"
    from source
)

select * from team_salary