  function preStyler(styler) {
    var opt = {};
    switch(styler) {
      case "fb":
        opt.autohidemode = false;
        opt.cursorcolor = "#01d2d8";
        opt.railcolor = "";
        opt.cursoropacitymax = 0.5;
        opt.cursorwidth = 7;
        opt.cursorborder = "none";
        opt.cursorborderradius = "10px";
        break;
    }
    return opt;
}

$(document).ready(function(){
    $('.SignInPopup').removeClass('SignInPopup').addClass('steamjq');
});

$(document).ready(function(){
    $('.Popup').removeClass('Popup').addClass('steamjq');
});
