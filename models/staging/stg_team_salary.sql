SELECT
    team_salary.nameteam AS team_name,
    team_salary.slugteam AS slug_team,
    team_salary."X2020-21" AS "2020_salary",
    team_salary."X2021-22" AS "2021_salary",
    team_salary."X2022-23" AS "2022_salary",
    team_salary."X2023-24" AS "2023_salary",
    team_salary."X2024-25" AS "2024_salary",
    team_salary."X2025-26" AS "2025_salary"
FROM
    q.raw_team_salary AS team_salary
