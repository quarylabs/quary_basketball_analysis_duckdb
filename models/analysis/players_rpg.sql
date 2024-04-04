SELECT
    full_name,
    reb AS rebounds_per_game
FROM
    q.player_performance
ORDER BY rebounds_per_game DESC
