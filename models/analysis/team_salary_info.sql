SELECT
    tp.team_name,
    tp.team_abbreviation,
    tp.team_code,
    tp.team_city,
    tp.avg_points,
    tp.avg_assists,
    tp.avg_rebounds,
    tp.total_all_star_appearances,
    tp.avg_player_impact_estimate,
    ts."2020_salary" AS salary_2020,
    ts."2021_salary" AS salary_2021,
    ts."2022_salary" AS salary_2022,
    ts."2023_salary" AS salary_2023,
    ts."2024_salary" AS salary_2024,
    ts."2025_salary" AS salary_2025
FROM
    q.team_performance AS tp
LEFT JOIN
    q.stg_team_salary AS ts ON tp.team_name = ts.team_name;
