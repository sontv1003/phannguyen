jQuery.easing.def = "easeInOutQuad";
var agent = navigator.userAgent.toLowerCase();
var device;
var scrollTimer = null;
var ajaxLoading = true;
var lang = 'en';
//GLOBAL VAR FASHION SHOW
var app_domain="http://"+location.hostname;
var CONFIG_URL = app_domain+"/dg/fashion-show/config.php";
//var CONFIG_URL = "/dg_mainpage/trunk/html/json/config.json";

var URL_SHOW_IT = "/dg/sfilata/";
var URL_SHOW_EN = "/dg/fashion-show/";
var myTimer;

var envurl=""

if (agent.indexOf('android') != -1) {
    device = "tablet";
} else if (agent.indexOf('ipad') != -1) {
    device = "tablet";
} else {
    device = "desktop";
}

var TimerShow;
$(document).ready(function () {
   if(typeof lang!='undefined'){
       $('body').addClass(lang);
   }
   loadbar.init();
   bnrs.init();
   gotop.init();
   //bnrs.setgrid();
    mng_bnrs_fl();

    if ($('#fshow').length) {
        banner_runway.init();
        var TimerShow = window.setInterval(function () {
            banner_runway.checkStatus(CONFIG_URL);
        }, 30000);
    }

    mng_footer.init();
    mng_chlang_top.init();

});


$(window).load(function(){
   $(window).trigger('resize');
});

$(window).resize(function(){
   gotop.set_left();
   bnrs.resize_slide();
   setYTCOLS();
   setFBCOLS();
});

$(window).scroll(function(){
    if (scrollTimer) {
            clearTimeout(scrollTimer);   // clear any previous pending timer
        }
    sctop=$(window).scrollTop();
    scrollTimer = setTimeout("gotop.show_hide(sctop)", 300);   // set new timer
});

$(window).bind('scrollstart', function (e) {
    $('#footer').slideUp();
});

$(window).bind('scrollstop', function (e) {
    $('#footer').slideDown();
});



var mng_footer = {
    $ftrcl : null,
    $btcl : null,
    isIn : 0,
    tmr : 0,
    init : function(){
        var $this=this;
        $this.$btcl=$('#btn_change_lang');
        $this.$ftrcl=$('#ftr_langs');        
        var btLeft= 0;
        $this.$ftrcl.css({left:btLeft});
        $this.set_default();
        $this.set_events();
    },
    set_default : function(){
        var $this=this;
        $this.$ftrcl.find("[data-lang='"+lang+"']").addClass('on');
    },
    set_events:function () {
        var $this = this;
        $this.$btcl.bind('mouseenter', function () {
            $this.show_el();
        });
        $this.$btcl.bind('mouseleave', function () {
            window.clearTimeout($this.tmr);
            $this.tmr = window.setTimeout(function () {
                $this.hide_el();
            }, 300);
        });
        $this.$ftrcl.bind('mouseenter', function () {
            $this.isIn = 1;
            window.clearTimeout($this.tmr);
            $this.show_el();
        });
        $this.$ftrcl.bind('mouseleave', function () {
            $this.tmr = window.setTimeout(function () {
                $this.isIn = 0;
                $this.hide_el();
            }, 300);
        });

    },
    show_el : function(){
        var $this=this;
        $this.$ftrcl.show();
    },
    hide_el : function(){
        var $this=this;
        $this.isIn=0;
        $this.$ftrcl.hide();
    }
}



var mng_chlang_top = {
    $ftrcl : null,
    $btcl : null,
    isIn : 0,
    tmr : 0,
    isOpen : 0,
    init : function(){
        var $this=this;
        $this.$btcl=$('#chlngtop');
        $this.$ftrcl=$('#c_langs_top');
        $this.set_default();
        $this.set_events();
    },
    set_default : function(){
        var $this=this;
        $this.$ftrcl.find("[data-lang='"+lang+"']").addClass('on');
    },
    set_events:function () {
        var $this = this;
        $this.$btcl.bind('mouseenter', function () {
            var $qn_win=$('#quicknav');
                if($qn_win.data('open')==1){
                    $qn_win.fadeOut('fast').data('open',0);
                }
            $this.show_el();
        });
        $this.$btcl.bind('mouseleave', function () {
            window.clearTimeout($this.tmr);
            $this.tmr = window.setTimeout(function () {
                $this.hide_el();
            }, 1000);
        });


        if(device=='tablet'){
            $this.$btcl.bind('click', function () {
                    if($this.isOpen==0){
                        $this.show_el();
                    }else{
                        $this.hide_el();
                    }

            });
        }

        $this.$ftrcl.bind('mouseenter', function () {
            $this.isIn = 1;
            window.clearTimeout($this.tmr);
            $this.show_el();
        });
        $this.$ftrcl.bind('mouseleave', function () {
            $this.tmr = window.setTimeout(function () {
                $this.isIn = 0;
                $this.hide_el();
            }, 300);
        });

    },
    show_el : function(){
        var $this=this;
        $this.$btcl.addClass('on');
        $this.$ftrcl.show();
        $this.isOpen=1;
    },
    hide_el : function(){
        var $this=this;
        $this.isIn=0;
        $this.$btcl.removeClass('on');
        $this.$ftrcl.hide();
        window.clearTimeout($this.tmr);
        $this.isOpen=0;
    }
}

function mng_bnrs_fl(){

    $('#container_dgbnr img.bdg').imagesLoaded({
               always:function () {
                   bnrs.setgrid();
                   loadbar.hide();

               },
               progress : function(isBroken, $images, $proper, $broken){
                   var tot=$proper.length + $broken.length;
                   var els=$images.length
                   loadbar.update(tot,els);
               }
           });

}

var loadbar={
    $lb : null,
    init : function(){
        var $this=this;
        $('#filterby').append('<div id="loading_bar"></div>');
        $this.$lb=$('#loading_bar');
    },
    update : function(tot,els){
        var $this=this;
        var gap=(100/els);
        var incr=tot*gap;
        $this.$lb.css({width:incr+'%'});
    },
    hide : function(){
        bnrs.slide_top();
        $('#filterby').addClass('loaded');
        $('#loading_bar').fadeOut('slow');
    }
}


function bnrs_s_1b1(els){
    var $container = $('#container_dgbnr');
    $(els).eq(0).fadeTo(40, 1, function () {
        if (els.length == 1) {
            //terminato fadeIn elementi filtrati top
        }
        bnrs_s_1b1($(els).slice(1));
    });
}





function setYTCOLS(){
    if($('.bg_yt_video').length){
            $('.yt').find('.coldx').css({height:$('.bg_yt_video').height()});
        }
}

function setFBCOLS(){
    if($('.fb').length){
               $('.fb').find('.coldx,img.bg_fb,img.bg_fb_on').css({height:$('.colsx').height()});
               $('.fb').find('.c_pos_social').css({height:$('.fb').height()});
           }
}

function getRepString (rep) {
  rep = rep+''; // coerce to string
  if (rep < 1000) {
    return rep; // return the same number
  } else if (rep < 10000) { // place a comma between
    return rep.charAt(0) + ',' + rep.substring(1);
  } else { // divide and format
    return (rep/1000).toFixed(rep % 1000 != 0)+'K';
  }
}

var gotop = {
    gt :  null,
    lt : null,
    init : function(){
        var $this=this;
        $this.gt=$('#gotop');
        $this.lt=$('#layout');
        $this.gt.click(function(e){
            e.preventDefault();
            var $this=this;
            $('html,body').animate({scrollTop:0},800);
        });
        $this.set_left();
    },
    set_left : function(){
        var $this=this;
        var left=$this.lt.offset().left;
        var width=$this.lt.width();
        var newleft=left+width;
        $this.gt.css({left:newleft+5});
    },
    show_hide : function(sctop){
        var $this=this;
        if(sctop>520){
            $this.gt.fadeIn('fast');
            }
            else{
            $this.gt.hide();
            }
    }
}


var bnrs={
    data_loaded : false,
    elsloading : 0, //blocco infscroll se sta caricando elementi
    currFilter : '',
    is_filter_on : 0,
    abis : 0, //appended_by_infinite_scroll
    json_data : '',
    ic : 0, //counter per split banners da json
    bnr_x_page : 12,
    more_to_load : 1,
    imgslide : null,
    slTimer : null,
    sitelang : 'en',
    count_bnr_in_dom : function(){
        var bnrs=$('#container_dgbnr').find('.dgbnr').length;
        var empty_bnrs=$('#container_dgbnr').find('.empty').length;
        var realbnrs=bnrs-empty_bnrs;
        if($('#fshow').length){
            realbnrs--;
        }
        return realbnrs;
    },
    init : function(){
        var $this=this;
        $this.sitelang=lang;
        //i dati sono caricati tutti su primo load
        $this.call_data();
        $this.slide_top();
        $this.set_social_onload();
        $this.ic=$this.count_bnr_in_dom();


        $('#btn_close_qn').click(function(e){
            e.preventDefault();
            var $qn_win=$('#quicknav');
            $('#qn').removeClass('on');
            $qn_win.fadeOut('fast').data('open',0);
        });
        if(device!='tablet'){

            $('#qn').bind('mouseenter',function(){
                        var $qn_win=$('#quicknav');
                        mng_chlang_top.hide_el();
                        $(this).addClass('on');
                        $qn_win.fadeIn('fast').data('open',1);
                    });


            $('div.dgbnr').live("mouseenter",function(){
              if(bnrs.is_filter_on==1){
                  $(this).removeClass('filtered-faded');
                  if($(this).hasClass('cft')){
                      $(this).find('.desc').addClass('desc_over');
                       $(this).find('.fdr').fadeTo('fast',0.7);
                  }

                }else{
                $(this).find('.desc').addClass('desc_over');
                $(this).find('.fdr').fadeTo('fast',0.7);
                }
            });

            $('div.dgbnr').live("mouseleave",function(){
                        if(bnrs.is_filter_on==1){
                            //no add class filtered su elementi filtrati top ma solo su quelli bottom non filtrati
                            if(!$(this).hasClass('cft')){
                                $(this).addClass('filtered-faded');
                            }

                         }
                        $(this).find('.desc').removeClass('desc_over');
                        $(this).find('.fdr').fadeOut('fast');
                    });

            $('#topbanner').live("mouseenter", function () {
                $(this).find('.fdr').fadeTo('fast', 0.7);
                $(this).find('#dglinks').show();
            });
            $('#topbanner').live("mouseleave", function () {
                $(this).find('.fdr').fadeOut('fast');
                $(this).find('#dglinks').hide();
            });

        }else{

            $('#qn').click(function(e){
                       e.preventDefault();
                      var $qn_win=$('#quicknav');
                       if($qn_win.data('open')==1){
                           $(this).removeClass('on');
                           $qn_win.fadeOut('fast').data('open',0);
                       }else{
                           $(this).addClass('on');
                           $qn_win.fadeIn('fast').data('open',1);
                       }
                   });

            /*$('#topbanner').bind("click", function () {
                            var $dgl=$('#dglinks');
                            if($dgl.css('display')=='none'){
                                $(this).find('.fdr').fadeTo('fast', 0.7);
                                $dgl.show();
                            }else{
                                $(this).find('.fdr').fadeOut('fast');
                                $dgl.hide();
                            }
                        });
                        */
        }


        if(device!='tablet'){
        $(window).bind('scroll', function (e) {
                    var sct = $(document).scrollTop();
                    var wh = $(window).height();
                    var dh = $(document).height();
                    var maxscroll = dh - wh;
                    if (sct == maxscroll) {
                        bnrs.infinite_scroll();
                    }
                });
        }

        $('#btn_load_more>a').click(function(e){
                e.preventDefault();
                bnrs.infinite_scroll()
        });

        $('.twitter').live('mouseenter',function(){
            $(this).addClass('over');
            $(this).find('.bg_tw').stop().fadeTo(400,0);
        });
        $('.twitter').live('mouseleave',function(){
            $(this).find('.bg_tw').stop().fadeTo(100,1);
            $(this).removeClass('over');
        });

        $('.yt').live('mouseenter',function(){
            $(this).addClass('over');
            $(this).find('.bg_yt').stop().fadeTo(400,0);
            //$(this).find('.bg_yt_video').stop().fadeTo(400,0);
            });
        $('.yt').live('mouseleave',function(){
            $(this).find('.bg_yt').stop().fadeTo(100,1);
            $(this).removeClass('over');
        });

        $('.fb').live('mouseenter',function(){
                  $(this).addClass('over');
                   $(this).find('.bg_fb').stop().fadeTo(400,0);
                   //$(this).find('.bg_fb_video').stop().fadeTo(400,0);
               });
        $('.fb').live('mouseleave',function(){
                   $(this).find('.bg_fb').stop().fadeTo(100,1);
                   $(this).removeClass('over');
               });

        $('.swd').live('mouseenter',function(){
                          $(this).addClass('over');
                          $(this).find('.bg_swd').stop().fadeTo(400,0);
                          //$(this).find('.bg_swd,.logo_swd,.desc_swd').stop().fadeTo(400,0);
                       });
        $('.swd').live('mouseleave',function(){
                           $(this).find('.bg_swd').stop().fadeTo(100,1);
                           $(this).removeClass('over');
                       });

        /*if($('#cont_fb').length){
            var $elfb=$('#cont_fb');
            var $firstImg=$elfb.find('img.img').eq(0);
            $('.fb .colsx').append($firstImg);
        }*/
    },
    call_data : function(){
        var $this=this;
    },
    set_caption_height : function(){
        //imposta altezze caption per allineamento centrato verticale
        var $dgbnrs=$('#container_dgbnr').find('.dgbnr');
        $dgbnrs.each(function(){
            var imgH=$(this).find('img.bdg').attr('height');
        });
    },
    filter_els : function(show_selector,filter_selector){
                var $this=this;
                $this.is_filter_on=1;
                var $container=$('#container_dgbnr');
                $('#filterby').after('<div id="selectedBox"></div>');
                var $selDiv=$('#selectedBox');
                $this.add_filtered_banner(show_selector);


                $selDiv.show();
                $selDiv.isotope({
                         itemSelector : '.dgbnr',
                         layoutMode : 'fitRows'
                         });


    },
    show_onebyone : function(els){
            var $this = this;
            $(els).eq(0).fadeTo(40, 1, function () {
                if (els.length == 1) {
                    //terminato fadeIn elementi filtrati top
                }
                $this.show_onebyone($(els).slice(1));
            });

    },
    setgrid : function(){
        var $this=this;
        var $container=$('#container_dgbnr');

//        $('#filters a').click(function(e){
//          e.preventDefault();
//
//          //nel caso dati banner non siano disponibili
//          if(!$this.data_loaded){
//              return;
//          }
//          if($(this).hasClass("selected")) return;
//          $('#filters a').removeClass("selected");
//          $(this).addClass("selected");
//
//          bnrs.currFilter = $(this).attr('data-filter');
//          var show_selector = $(this).attr('data-show');
//
//          if($('#selectedBox').length) $('#selectedBox').remove();
//          bnrs.abis=0;
//          if(show_selector=='*'){
//              $this.is_filter_on=0;
//              $container.isotope({ filter:bnrs.currFilter}).isotope('reLayout');
//              $container.find('.dgbnr').removeClass('filtered-faded');
//          }else{
//              $this.filter_els(show_selector,bnrs.currFilter);
//              $this.is_filter_on=1;
//              /*$container.isotope({ filter:filter_selector},function($items){
//                            $items.css({opacity:0.3})
//                            }).isotope('reLayout');*/
//                }
//          return false;
//        });

        $container.isotope({
         resizable: true,
         itemSelector : '.dgbnr',
         layoutMode : 'fitRows',
            transformsEnabled:false,
            animationEngine  :"css",
            animationOptions :{
                duration:400,
                easing  :'linear',
                queue   :false,
                complete:function(){
                    var els = $container.find('.dgbnr');
                    $this.show_onebyone(els);
                }
            }
       });



    },
    infinite_scroll : function(){
            var $this=this;
            if($this.more_to_load==0||$this.elsloading==1) return;
            $('#txt_loading_more').fadeIn('fast');
            //$('#btn_load_more,#footer').hide();
            if($this.json_data==''){
                log('error retrieving data')
            }else{
                window.setTimeout(function(){
                    bnrs.add_banner();
                },1500);
            }


    },
    checkLastRowSpace : function(){
        var $container=$('#container_dgbnr');
        var $divs=$container.find('div.dgbnr');
        var last_cc=0;
        $divs.each(function(){
            if($(this).hasClass('col1')){
                last_cc+=1;
            }else if($(this).hasClass('col3')){
                last_cc+=3;
            }else if($(this).hasClass('col3')){
                last_cc+=4;
            }
        });
        return last_cc;
    },
    set_social_onload : function(){
        var $this=this;
        if($('.swd').length){
            $this.build_bnr_swd();
        }
        if($('.fb').length){
            $('.fb').attr({id:'fbbnr'});
            $this.build_bnr_fb();
        }

    },
    build_bnr_swd : function(){
        var $theImg=$('.desc_swd').find('img');
        var srcImgSwd=$theImg.attr('src');
        var lastDash=srcImgSwd.lastIndexOf('-');
        var imgBig=srcImgSwd.substr(0,lastDash)+".jpg";
        var imgleftswd='<div id="cimgswd"><img src="'+imgBig+'" class="imgswdbig"></div>';
        $('.swd .colsx').append(imgleftswd);
        $('.desc_swd').find('div').dotdotdot();

    },
    build_bnr_fb : function(){
        var $firstImg=$('#cont_fb').find('img.img');
        var imgleft='';
        if($firstImg){
            var imgSrc=$firstImg.attr('src');
            if ($firstImg.is("[src^='http://external.ak.fbcdn.net/safe_image.php']")) {
              var extSrc = $.trim($.url(imgSrc).param("url") || "");
              if (extSrc != "") {
                $('.fb .colsx').append('<div id="cimgfb">'+ extSrc +'</div>');
                return;
              }
            }
            var lastDash=imgSrc.lastIndexOf('.');
            var imgBig=imgSrc.substr(0,lastDash);
            var islastunderscore=imgBig.substr(imgBig.length-2,imgBig.length);
            if(islastunderscore=='_s'){
                imgBig=imgSrc.substr(0,lastDash-2)+"_b.jpg";
                imgleft='<img id="fb_img_big" class="img" src="'+imgBig+'">';
                $('.fb>.colsx').append('<div id="cimgfb">'+imgleft+'</div>');
                $('#fb_img_big').imagesLoaded(function(){
                              window.setTimeout(function(){
                                  var fbh=$('#cimgfb').height();
                                  $('#fbbnr').find('img.bg_fb,img.bg_fb_on').css({height:fbh});
                              },500);
                          });
                $(window).resize(function(){
                    var fbh=$('#cimgfb').height();
                    $('#fbbnr').find('img.bg_fb,img.bg_fb_on').css({height:fbh});
                });
            }else{
                var $elfb=$('#cont_fb');
                            var $firstImg=$elfb.find('img.img').eq(0);
                            $('.fb .colsx').append($firstImg);
            }

        }

    },
    add_banner : function(){
        var $this=this;
        var items = $this.json_data.banners;
        $this.elsloading=1;
        var cols_counter=0;
        var is_first_round=1;
        var html_banner='';
        var empty_div_left='<div class="dgbnr col1 empty">&nbsp;</div>';
        var empty_div_right='<div class="dgbnr col1 empty">&nbsp;</div>';

        var maxbnr=($this.bnr_x_page+$this.ic);
        if(maxbnr>items.length) maxbnr=items.length;


        for ($this.ic;$this.ic<maxbnr; $this.ic++) {
            var imgbnr=items[$this.ic].picture;
            var bnrcategory=items[$this.ic].category;
            var srcimg=envurl+imgbnr.href;
            var imgwidth=imgbnr.width;
            var imgheight=imgbnr.height;
            var wimg=imgbnr.width;
            var caption=items[$this.ic].caption;
            var summary=items[$this.ic].summary;
            var bnrUrl=items[$this.ic].bannerUrl;
            var spacer='';
            var social=items[$this.ic].social;
            var socialclass='social';
            var coltype='none';
            var captionHAlign="htxt"+items[$this.ic].captionHAlign;
            var captionVAlign="vtxt"+items[$this.ic].captionVAlign;
            (summary=='')? is_desc_empty='desc_empty':is_desc_empty='';
            cols_counter=1;
            if(!social){
                switch(wimg){
                    case 268 :
                        coltype="col1";
                        cols_counter=1;
                    break;
                    case 270 :
                       coltype="col1";
                       cols_counter=1;
                       break;
                    case 560 :
                       coltype="col2";
                       cols_counter=2;
                   break;
                    case 850 :
                        coltype="col3";
                        cols_counter=3;
                    break;
                    case 1140 :
                        coltype="col4";
                        cols_counter=4;
                    break;
                }
            }else{
                switch(social){
                    case 'facebook-dolce-gabbana-wall-rss' :
                        coltype="col2";
                        cols_counter=2;
                        socialclass='fb';
                    break;
                    case 'swide-rss' :
                       coltype="col2";
                       cols_counter=2;
                       socialclass='swd';
                   break;
                    case 'twitter-stefano-gabbana-rss' :
                        coltype="col1";
                        cols_counter=1;
                        socialclass='twitter';
                    break;
                    case 'twitter-dolce-gabbana-rss' :
                        coltype="col1";
                        cols_counter=1;
                        socialclass='twitter';
                    break;
                    case 'youtube-dolce-gabbana-channel-rss' :
                        coltype="col2";
                        cols_counter=2;
                        socialclass='yt';
                    break;
                }
            }

            if(spacer=='left'){
               html_banner+='<div class="dgbnr col1 empty">&nbsp;</div>';
            }

            if(social){
                if(socialclass=='twitter'){
                    var twLink="https://twitter.com/dolcegabbana";
                    if(lang=='jp'){
                        var twLink="https://twitter.com/dolcegabbanajp";
                    }
                    html_banner+='<div class="tofadein twitter dgbnr '+coltype+'" data-category="social">'+
                                  '<img src="http://cdn.dolcegabbana.com/img/shared/bg_tw_off.jpg" class="bg_tw"><img src="http://cdn.dolcegabbana.com/img/shared/bg_tw_on.jpg" class="bg_tw_on">'+
                                  '<a href="'+twLink+'" target="_blank">' +
                                  '<div class="c_pos_social"><div class="cxtw"><img src="http://cdn.dolcegabbana.com/img/shared/logo_tw.png" class="logo">' +
                                  ' <h3>Dolce&Gabbana <br>on Twitter</h3>' +
                                  '<div class="desc_tw">'+summary+'</div></div></div>' +
                                  '</a>' +
                                  '</div>';
                }else if(socialclass=='fb'){
                    var $fbHtml=$("<div>"+summary+"</div>");
                    var $firstImg=$fbHtml.find('img.img');
                    var imgleft='';
                    if($firstImg.length > 0){
                        var imgSrc=$firstImg.attr('src');
                        var extSrc = "";
                        if ($firstImg.is("[src^='http://external.ak.fbcdn.net/safe_image.php']")) {
                          var extSrc = $.trim($.url(imgSrc).param("url") || "");
                        }
                        if (extSrc != "") {
                          imgBig = extSrc;
                        } else {
                          var lastDash=imgSrc.lastIndexOf('_');
                          var imgBig=imgSrc.substr(0,lastDash)+"_b.jpg";
                        }

                        imgleft='<img class="img" src="'+imgBig+'">';
                    }

                    var fbLink = "https://www.facebook.com/DolceGabbana";
                    if (lang == 'jp') {
                        var fbLink = "https://www.facebook.com/DolceGabbana.Japan";
                    }

                    html_banner+='<div class="tofadein fb dgbnr '+coltype+'" data-category="social">'+
                                  '<div class="colsx"><div id="cimgfb">'+imgleft+'</div><img src="http://cdn.dolcegabbana.com/img/shared/bg_yt_box.gif" class="bg_fb_video"></div>'+
                                  '<div class="coldx"><img src="http://cdn.dolcegabbana.com/img/shared/bg_tw_off.jpg" class="bg_fb" width="270"><img src="http://cdn.dolcegabbana.com/img/shared/bg_tw_on.jpg" class="bg_fb_on" width="270">'+
                                  '<a href="'+fbLink+'" target="_blank"><div class="c_pos_social"><div class="cxfb"><h3><p class="logo_fb">&nbsp;</p>Dolce&Gabbana <br/> on Facebook</h3><div class="fbtitle">'+caption+'</div></div></div>'+
                                  '<div class="desc_fb"><div id="cont_fb">'+summary+'</div></div></a></div>'+
                                  '</div>';



                }
                else if(socialclass=='yt'){
                    var $fbHtml=$("<div>"+summary+"</div>");
                    var $firstImg=$fbHtml.find('img.img');
                    var videoUrl=items[$this.ic].bannerUrl;
                    var videoid=checkparam(videoUrl,'v');
                    var imgleft='';

                    html_banner+='<div class="tofadein yt dgbnr '+coltype+'" data-category="social">'+
                                  '<div class="colsx"><img src="http://cdn.dolcegabbana.com/img/shared/bg_yt_box.gif" class="bg_yt_video" width="270"><iframe width="100%" src="http://www.youtube.com/embed/'+videoid+'?rel=0&showinfo=0" frameborder="0" allowfullscreen></iframe></div>'+
                                  '<div class="coldx"><img src="http://cdn.dolcegabbana.com/img/shared/bg_tw_off.jpg" class="bg_yt" width="270"><img src="http://cdn.dolcegabbana.com/img/shared/bg_tw_on.jpg" class="bg_yt_on" width="270">'+
                                  ' <a href="http://www.youtube.com/dolcegabbanachannel" target="_blank" class="social_link">' +
                                  '<div class="c_pos_social"><div class="cxyt"><p class="logo_yt">&nbsp;</p><h3>Dolce&Gabbana <br>on Youtube</h3>'+
                                  '<div class="desc_yt"><p>'+caption+'</p><p class="gochannel">Click to see more Dolce&Gabbana exclusive videos</p></div>' +
                                  '</div></div></a>'+
                                  '</div></div>';
                                }

                else if(socialclass=='swd'){
                                  var $swdHtml=$("<div>"+summary+"</div>");
                                  var $firstImgSwd=$swdHtml.find('img');
                                  var imgSrc=$firstImgSwd.attr('src');
                                  var lastDash=imgSrc.lastIndexOf('-');
                                  var imgBig=imgSrc.substr(0,lastDash)+".jpg";
                                  var bnrUrl=items[$this.ic].bannerUrl;

                                  html_banner+='<div class="tofadein swd dgbnr '+coltype+'" data-category="social">'+
                                                '<div class="colsx"><img src="http://cdn.dolcegabbana.com/img/shared/bg_yt_box.gif" class="bg_swd_csx" width="270"><div id="cimgswd"><img src="'+imgBig+'" class="img_swd"></div></div>'+
                                                '<div class="coldx"><img src="http://cdn.dolcegabbana.com/img/shared/bg_tw_off.jpg" class="bg_swd" width="270"><img src="http://cdn.dolcegabbana.com/img/shared/bg_tw_on.jpg" class="bg_swd_on" width="270">'+
                                                '<a href="'+bnrUrl+'" target="_blank"><p class="logo_swd"><img src="http://cdn.dolcegabbana.com/img/shared/logo_swide.gif" width="270" height="97"></p>'+
                                                '<div class="desc_swd"><h3 class="swdtitle">'+caption+'</h3><div>'+$swdHtml.text()+'</div></div></a></div>'+
                                                '</div>';
                                              }

            }else{
            html_banner+='<div class="tofadein dgbnr '+captionHAlign+' '+captionVAlign+' '+coltype+' '+bnrcategory+'" data-category="'+bnrcategory+'">' +
                            '<a href="'+bnrUrl+'" target="_blank">' +
                            '<div class="figure"><img src="'+srcimg+'" width="'+imgwidth+'" height="'+imgheight+'">' +
                            '<div class="fdr"></div>' +
                            '<div class="caption" style="'+imgheight+'px">' +
                            '<div class="cpos_h3"><h3>'+caption+'</h3></div>' +
                            '</div>' +
                            '</div>' +
                            '</a>' +
                            '</div>';
            }


            if(spacer=='right'){
                            html_banner+='<div class="dgbnr col1 empty">&nbsp;</div>';
                        }

            is_first_round=0;

        }
        var $container=$('#container_dgbnr');
        $container.find('.filtered-faded').removeClass('filtered-faded');
        var $html_banner=$(html_banner);
        //blocca load more finch� img banner non sono caricate per dare un feedback
        var $lm=$('#load_more');
        var lmOffset=$('#load_more').offset();
        $lm.css({position:'absolute',top:lmOffset.top,left:(($('#layout').width()-250)/2)});

        $container.append($html_banner);
        //se aggiungo banner da IFSCROLL il comportamento dei banner non filtrati � quello di default anche se top ci sono dei banner filtrati
        $this.is_filter_on=0;
        var $lastblock=$container.find('.tofadein');
        //$lastblock.css({opacity:0}).data('loaded','yes');

        $this.abis=1;

       $container.imagesLoaded(function(){
            //$lastblock.fadeTo(700,1);
            $container.isotope('reloadItems').isotope();
            $lm.hide();
            $this.show_onebyone($lastblock);
            if ($this.ic >= items.length) {
                $this.more_to_load = 0;
                $('#btn_load_more').hide();
                $('#txt_loading_more').hide();
            } else {
                $('#btn_load_more').show();
                $('#txt_loading_more').hide();
            }

            $lm.css({position:'relative',top:'auto',left:'auto'}).show();
            $('#footer').show();
            $lastblock.removeClass('tofadein');
            $this.elsloading=0;
            window.setTimeout("setYTCOLS()",500);
            window.setTimeout("setFBCOLS()",500);
        });





    },
    set_new_fluidrow : function(){

    },
    add_filtered_banner : function(category){
        var $this=this;
        var filter_category=category;
        var items = $this.json_data.banners;
        var cols_counter=0;
        //var row_counter=0;
        //var is_row_to_open=1;
        var is_first_round=1;
        var html_banner='';
        //var openrow='<div class="row-fluid">';
        //var closerow='</div>';
        var empty_div_left='<div class="dgbnr col1 empty">&nbsp;</div>';
        var empty_div_right='<div class="dgbnr col1 empty">&nbsp;</div>';

        for (var i=0;i<items.length;i++) {
            var item=items[i];
            var bnrcategory=item.category;

            if(bnrcategory!=filter_category) continue;
                var imgbnr=item.picture;
                var srcimg=envurl+imgbnr.href;
                var wimg=imgbnr.width;
                var caption=item.caption;
                var summary=item.summary;
                var bnrUrl=item.bannerUrl;
                var spacer=item.spacer;
                var coltype='none';
                var captionHAlign="htxt"+item.captionHAlign;
                var captionVAlign="vtxt"+item.captionVAlign;

                (summary=='')? is_desc_empty='desc_empty':is_desc_empty='';
                cols_counter=1;
                switch(wimg){
                    case 268 :
                        coltype="col1";
                        cols_counter=1;
                    break;
                    case 270 :
                        coltype="col1";
                        cols_counter=1;
                    break;
                    case 560 :
                          coltype="col2";
                          cols_counter=2;
                    break;
                    case 850 :
                        coltype="col3";
                        cols_counter=3;
                    break;
                    case 1140 :
                        coltype="col4";
                        cols_counter=4;
                    break;
                }


                if(spacer=='left'){
                    html_banner+='<div class="dgbnr col1 empty">&nbsp;</div>';
                }

                html_banner+='<div class="tofadein dgbnr cft '+captionHAlign+' '+captionVAlign+' '+coltype+' '+bnrcategory+'" data-category="'+bnrcategory+'">' +
                                    '<a href="'+bnrUrl+'" target="_blank">' +
                                    '<div class="figure"><img src="'+srcimg+'">' +
                                    '<div class="fdr"></div>' +
                                    '<div class="caption">' +
                                    '<div class="cpos_h3"><h3>'+caption+'</h3></div>' +
                                    '</div>' +
                                    '</div>' +
                                    //'<div class="desc '+is_desc_empty+'">'+summary+'</div>' +
                                    '</a>' +
                                    '</div>';

                if(spacer=='right'){
                                html_banner+='<div class="dgbnr col1 empty">&nbsp;</div>';
                            }



                is_first_round=0;


        }
        var $container=$('#selectedBox');
        $container.append(html_banner).css({overflow:'visible'});
        var $lastblock=$container.find('.tofadein');


        $container.imagesLoaded(function(){
                $container.isotope('reloadItems').isotope();
                $this.show_onebyone($lastblock);
                //nascondo banner attivi nel blocco inferiore in modo da non avere duplicati
                $('#container_dgbnr').isotope({filter:bnrs.currFilter});
                $lastblock.removeClass('tofadein');
                if (bnrs.is_filter_on == 1) {
                    $('#container_dgbnr').find('.dgbnr').css({opacity:'.99'}).addClass('filtered-faded');
                } else if (bnrs.is_filter_on == 0) {
                    $('#container_dgbnr').find('.dgbnr').removeClass('filtered-faded');
                }
            });


    },
    inserted_els : function(){
        //log("inserted_els")
    },
    slide_top : function(){
        var $this=this;
        $('#slide_top').imagesLoaded(function(){
            $this.start_slide();
        });


    },
    slide_started : 0,
    start_slide : function(){
        var $this=this;
        if($this.slide_started==1) return;
        $this.slide_started=1;
        $this.resize_slide();

        if(device!='tablet'){
            var $tb=$('#topbanner');
            $tb.find('ul#dglinks').addClass(lang);

            $tb.find('.figure').bind('mouseenter',function(){
                bnrs.pause_slide();

            });
            $tb.find('.figure').bind('mouseleave',function(){
                            bnrs.next_slide();

                        });

        }

        bnrs.imgslide=$('#slide_top img');
        bnrs.next_slide();

    },
    pause_slide : function(){
        $('#slide_top').stop(true, true);
        window.clearInterval(bnrs.slTimer);

    },
    next_slide : function(){
        var $this=this;
        $('#slide_top').children().eq(0).appendTo('#slide_top').show();
            $this.slTimer=setInterval(function(){
                        $('#slide_top :first-child').hide().appendTo('#slide_top').fadeIn(1500);
                    },
              4000);
    },
    //top_slide_height_checked : 0,
    resize_slide : function(){
       // if(this.top_slide_height_checked) return;
        var ww=$(window).width();
        var wh=$(window).height();
        //var newh=$('#slide_top img').eq(0).height();
        var $theimg=$('#slide_top img').eq(0);
        var imgH=$theimg.height();
        var imgW=$theimg.width();
        var perc=73;

        if(wh<=680||ww<=1010){
            perc=57;
        }

        var newh=(wh*perc)/100;

        if(newh>imgH){
            newh=imgH;
        }

        $('#slide_top').css({height:newh});
        $('#topbanner').find('.fdr').css({height:newh});
        //this.top_slide_height_checked=1;
    }
}

var youtube = {
  fixIFrameUrls:function() {
    $("iframe[src^='http://www.youtube.com/watch']").each(function() {
       var $this = $(this);

       var videoId = "";
       var src = $this.attr("src");
       var queryPairs = src.substr(src.indexOf("?")).slice(1).split("&");

       $.each(queryPairs, function(index, value) {
          var pair = value.split("=");
          var name = pair[0] || "";
          if (name == "v") {
            videoId = decodeURIComponent(pair[1] || "");
          }
       });

       if (videoId != "") {
         $this.attr("src", "http://www.youtube.com/embed/" + videoId + "?rel=0&showinfo=0");
       }
    });
  }
};

$(function(){
  youtube.fixIFrameUrls();
});

function checkparam(theurl,theparam){
            name = theparam.replace(/[\[]/,"\\\[").replace(/[\]]/,"\\\]");
            var regexS = "[\\?&]"+theparam+"=([^&#]*)";
            var regex = new RegExp( regexS );
            var results = regex.exec(theurl);
            if( results == null ){
                return "";
             }
            else{
                return results[1];
             }
    }



//*BANNER COUNTDOWN FASHION SHOW*//


var fsday={
    'it' : 'giorno',
    'en' : 'day',
    'de' : 'tag',
    'fr' : 'jour',
    'es' : 'D�?A',
    'jp' : '日',
    'ru' : 'ДЕ�?Ь',
    'ko' : '�?�',
    'zh' : '天'
}

var fshour={
    'it' : 'ora',
    'en' : 'hour',
    'de' : 'stunde',
    'fr' : 'heure',
    'es' : 'hora',
    'jp' : '時',
    'ru' : 'Ча�?ы',
    'ko' : '시간',
    'zh' : '�?时'
}



var banner_runway = {
    status:0,
    timerBlink : 0,
    timerColons : 0,
    init:function () {
        var $this = this;
        //$("#fshow").insertBefore($("div.dgbnr").eq(2));
        //$('#container_dgbnr').isotope('reloadItems').isotope();
        $this.checkStatus(CONFIG_URL);
        var fulldomain = window.location.host;
        var domainArray = fulldomain.split('.');
        var els_array = domainArray.length;
        var domainExtension = domainArray[els_array - 1];
        if (domainExtension == 'it') {
            showUrl = URL_SHOW_IT;
        }
        else {
            showUrl = URL_SHOW_EN;
        }
        var $br = $('#runwaylink');
        $br.attr({href:showUrl, target:'_blank'});
        var fdr_runway = '<div id="fdr_box_runway">&nbsp;</div>';
        $br.append(fdr_runway);
        $br.hover(function () {
                    $('#fdr_box_runway').fadeTo('fast', 0.1);
                },
                function () {
                    $('#fdr_box_runway').hide();
                });


    },
    checkStatus:function (configUrl) {
        var $this = this;
        $.ajax({
            dataType:'JSON',
            url:configUrl,
            success:function (data) {
                var gender = data["gender"];
                var showPhase = data["showphase_" + gender];
                var showDate = data["datetime_start_" + gender];
                var serverTime = data["server_time"];
                if (showPhase == "countdown") {
                    countdownStatus(showDate, serverTime);
                }
                else if(showPhase=='live'){
                    $this.setLive();
                }else{
                    $this.setPostLive();
                }

            },
            error:function (xhr, ajaxOptions) {
                //alert('Errore ' + xhr.responseText);
            }
        });

    },
    setCounter:function (days, hours, mins) {
        var $this = this;
        $('#countdown_show').show();
        $('#live_show').hide();
        $('#postlive_show').hide();
        if (days > 0) {
            if(days == 1){
                $('#label_days').html(fsday[lang]);
            }
            
            $('#nr_days').html('-'+(days + (hours > 12 ? 1 : 0)));

            $('#count_days').show();
            $('#count_hours').hide();
            $('#count_mins').hide();

        } else if(hours > 0){
            (hours < 10) ? ore =  hours : ore = hours;
            (mins < 10) ? minuti =  mins : minuti = mins;
            //$('#number_mins').html(minuti);
            $('#nr_hours').html('-'+ore);
            if(hours==1){
                $('#label_hours').html(fshour[lang]);
            }


            $('#count_days').hide();
            $('#count_hours').show();
            $('#count_mins').hide();


        }else{

            (hours < 10) ? ore = '-' : ore = hours;
            (mins < 10) ? minuti = '0' +  mins : minuti = mins;
            $('#nr_mins').text(minuti);
            //$('#number_hours_mins').html('');

            $('#count_days').hide();
            $('#count_hours').hide();
            $('#count_mins').show();

            if ($this.status == 0) {
                $this.setColons();
                $this.status = 1;
            }
        }
    },
    setColons:function () {
        var $this = this;
        if ($('#colons').css('visibility') == 'hidden') {
            $('#colons').css({visibility:'visible'});
        } else {
            $('#colons').css({visibility:'hidden'});
        }
        $this.timerColons=window.setTimeout("banner_runway.setColons()", 1000);
    },
    isBlinking : 0,
    setBlinkingLive:function () {
            var $this = this;
            var $riga=$('#txt_live').find('span.divider');

            if($riga.hasClass('grey')){
                $riga.removeClass('grey').addClass('white');
            }else{
                $riga.removeClass('white').addClass('grey');
            }
           $this.isBlinking=1;
           $this.timerBlink=window.setTimeout("banner_runway.setBlinkingLive()", 1000);
        },
    setLive:function () {
        var $this=this;
        window.clearTimeout($this.timerColons);
        $('#countdown_show').hide();
        $('#live_show').show();
        $('#postlive_show').hide();
        if($this.isBlinking==0){
            $this.setBlinkingLive();
        }
    },
    setPostLive:function () {
        var $this=this;
        window.clearTimeout($this.timerBlink);
        $this.isBlinking=0;
        $('#txt_count_show').hide();
        $('#txt_post_show').show();

        $('#countdown_show').hide();
        $('#live_show').hide();
        $('#postlive_show').show();
        }
}

function countdownStatus(showDate, serverTime) {
    //showDate: format: 2010-02-22 17:00
    //serverTime: unit measure - seconds

    showDate = showDate.replace("-", ",").replace("-", ",").replace(" ", ",").replace(":", ",").replace("00", "0");
    showDate = showDate.split(",");

    var sYear = parseInt(showDate[0]);
    var sMonth = parseInt(showDate[1].replace("0", "")) - 1;
    var sDate = parseInt(showDate[2]);
    var sHours = parseInt(showDate[3]);
    var sMinutes = parseInt(showDate[4]);

    showDate = new Date(sYear, sMonth, sDate, sHours, sMinutes, 0, 0);
    showDate.setHours(sHours, sMinutes);

    var showDateMillis = showDate.getTime();
    var serverTimeMillis = serverTime * 1000;

    var countdown = diffTimeToDayHoursMinutes(serverTimeMillis, showDateMillis);
    banner_runway.setCounter(countdown.DHM.days,countdown.DHM.hours,countdown.DHM.minutes);
}

// thanks to: andrew d.
// http://stackoverflow.com/questions/7763327/how-to-calculate-date-difference-in-javascript
function diffTimeToDayHoursMinutes(fromTime, toTime) {
  var diff=toTime-fromTime;
  var sign=diff<0?-1:1;

  var milliseconds,seconds,minutes,hours,days;

  diff/=sign; // or diff=Math.abs(diff);
  diff=(diff-(milliseconds=diff%1000))/1000;
  diff=(diff-(seconds=diff%60))/60;
  diff=(diff-(minutes=diff%60))/60;
  days=(diff-(hours=diff%24))/24;

  return {
    DHM : {
        days: days,
           hours: hours,
           minutes: minutes
    }

  }
}
