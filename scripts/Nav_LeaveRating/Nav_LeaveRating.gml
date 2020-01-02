
var url;
switch(os_type)
{

    case os_ios:
        //url = "https://userpub.itunes.apple.com/WebObjects/MZUserPublishing.woa/wa/addUserReview?id=532848402&type=iOS+App";
        url = "https://itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id=541211363";
        break;
        
    case os_android:
        url= "";
        break;
        
}


if(string_length(url)) > 0
    {
        global.rating_left = shop_leave_rating("Would you like to leave a rating for this game?", "Take me there!!", "Not yet, thanks", url);
    }