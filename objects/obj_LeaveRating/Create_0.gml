GetSettings();
global.games_played += 1;
SetSettings();

if(global.games_played mod 40 == 0)
    Nav_LeaveRating();

