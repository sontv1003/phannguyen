<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div class="fullScreen " style="visibility: visible; opacity: 1; width: 100%;position: static">
    <a href="#" style="">
        <img id="bgImage" class="fullImage" data-anchor="top center" data-ratio="2"  src="<?php echo $image_home ?>">
        <div id="banner"></div>
    </a>
    <script>
        $(document).ready(function(){
            $('#header').css('background','none repeat scroll 0 0 transparent')
            $('.fullImage').css('height',$(window).height());
            $('.fullImage').css('width',$(window).width());
            
            console.debug($(window).height());
            console.debug($(window).width());
        })
    </script>
</div>
</div>

</body>
</html>