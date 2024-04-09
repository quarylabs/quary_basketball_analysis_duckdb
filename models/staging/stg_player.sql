with

source as (

    select * from q.raw_player

),

player as (

    select
        id as player_id,
        full_name, 
        first_name,
        last_name,
        case
            when is_active = 1 then true
            else false
        end as is_active,
    from source

)

select * from player