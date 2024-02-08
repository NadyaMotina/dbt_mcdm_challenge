with bing as (
    select *
    from {{ ref('stg_bing')}}
),

facebook as (
    select * 
    from {{ ref('stg_creative_facebook')}}
),

tiktok as (
    select * 
    from {{ ref('stg_tiktok')}}
),

twitter as (
    select * 
    from {{ ref('stg_promoted_tweets_twitter')}}
),

final as (
    select * from bing
    union all
    select * from facebook
    union all
    select * from tiktok
    union all
    select * from twitter
)

select * from final