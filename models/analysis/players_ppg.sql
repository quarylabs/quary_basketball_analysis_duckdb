SELECT
    full_name,
    pts AS points_per_game
FROM
    q.player_performance
ORDER BY points_per_game DESC
