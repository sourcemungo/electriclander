

if(os_type==os_ios or os_type==os_android)
    {
    if(global.adBannerAdded==1)
        iAds_RemoveBanner();
    
    iAds_AddBanner();
    global.adBannerAdded=1;
    iAds_HideBanner(false);
    
    
    // Position it at bottom of screen
    var bh = iAds_BannerGetHeight();
    iAds_MoveBanner( 0, display_get_height() - bh );
    }
