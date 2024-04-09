with

source as (

    select * from q.raw_team

),

team as (

    select
        id as team_id,
        full_name, 
        abbreviation,
        nickname,
        city,
        state,
        year_founded
    from source
)

select * from team