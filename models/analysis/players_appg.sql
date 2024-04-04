SELECT
    full_name,
    ast AS assists_per_game
FROM
    q.player_performance
ORDER BY assists_per_game DESC
