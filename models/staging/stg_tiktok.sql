select 
    CAST(ad_id as string) as ad_id, 
    add_to_cart, 
    CAST(adgroup_id as string) as adset_id, 
    CAST(campaign_id as string) as campaign_id, 
    channel, 
    clicks, 
    0 as comments,
    '' as creative_id,
    date, 
    (add_to_cart + rt_installs + skan_app_install + registrations + purchase + conversions + skan_conversion + video_views) as engagements,
    impressions,  
    (rt_installs + skan_app_install) as installs, 
    0 as likes,
    0 as link_clicks,
    '' as placement_id,
    0 as post_click_conversions,
    0 as post_view_conversions,
    0 as posts,
    purchase, 
    registrations, 
    0 as revenue,
    0 as shares,
    spend,
    (conversions + skan_conversion) as total_conversions,
    video_views

from {{ ref('src_ads_tiktok_ads_all_data')}}