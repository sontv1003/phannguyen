<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div class="fullScreen " style="visibility: visible; opacity: 1; width: 100%;position: static;height: 550px;">
    <a href="#" style="">
        <img id="bgImage_home" class="fullImage" data-anchor="top center" data-ratio="2"  src="<?php echo $image_home ?>">
        <div id="banner"></div>
    </a>
    <script>
       
        $(document).ready(function(){
            //            $('#header').css('background','none repeat scroll 0 0 transparent')
            //            $('.fullImage').css('height',$(window).height());
            //            $('.fullImage').css('width',$(window).width());
            //            
            //            console.debug($(window).height());
            //            console.debug($(window).width());

            $(document).ready(function(){
                
                $("#bgImage_home").load(function(){
                    var h=this.height,w=this.width
                    $(this).removeAttr('width').removeAttr('height')
                    var actualHeight =$(this).height(),actualWidth=$(this).width()
                    
                    var p_image = actualWidth / actualHeight;
                   
                
                    var hwindow = $(window).height();
                    var wwindow = $(window).width();
                    
                    if(hwindow < 550){
                        hwindow = 550;
                    }
                
                    var p_window = wwindow/hwindow;
                
                    //                if(wwindow < 930){
                    //                    wwindow = 930;
                    //                    wwindow = wwindow/p_window;
                    //                }
                    if(p_window > p_image){
                        c_width = wwindow/p_image*p_window;
                        c_height = c_width/p_image;
                    
                    }else{
                        c_height = hwindow;
                        c_width = c_height * p_image;
                    }
                
                    $('.fullImage').css('height',c_height);
                    $('.fullImage').css('width',c_width);
                    $('#header').css('background','none repeat scroll 0 0 transparent')
                    $('#container-nav').css('overflow','hidden')
                    $('html').attr('id','homePage');
                    console.debug(actualHeight)
                    console.debug(actualWidth)
                })
                              
                $(window).resize(function(){
                    resize_image()
                })

                
            })
            
            function resize_image(){
                var c_height = 0;
                var c_width = 0;
                var h=this.height,w=this.width
                $(this).removeAttr('width').removeAttr('height')
                var actualHeight = $("#bgImage_home").height(),actualWidth= $("#bgImage_home").width()
                    
                var p_image = actualWidth / actualHeight;
                   
                
                var hwindow = 557;
                var wwindow = $(window).width();
                
                var p_window = wwindow/hwindow;
                
                //                if(wwindow < 930){
                //                    wwindow = 930;
                //                    wwindow = wwindow/p_window;
                //                }
                if(p_window > p_image){
                    c_width = wwindow/p_image*p_window;
                    c_height = c_width/p_image;
                    
                }else{
                    c_height = hwindow;
                    c_width = c_height * p_image;
                }
                
                $('.fullImage').css('height',c_height);
                $('.fullImage').css('width',c_width);
                $('#header').css('background','none repeat scroll 0 0 transparent')
                $('#container-nav').css('overflow','hidden')
                $('html').attr('id','homePage');
                console.debug(hwindow)
                console.debug(actualWidth)
            }
            
            
            
        })
    </script>
</div>
</div>
</div>

</body>
</html>