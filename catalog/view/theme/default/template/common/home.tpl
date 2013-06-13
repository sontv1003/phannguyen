<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div class="fullScreen " style="visibility: visible; opacity: 1; width: 100%;position: static">
    <a href="#" style="">
        <img id="bgImage" class="fullImage" data-anchor="top center" data-ratio="2" style="left: 0px; top: 0px;" data-images="{&quot;2&quot;:{&quot;src&quot;:&quot;http://static.zara.net/static/2013/V/homes/WOMAN_20_SUB.jpg&quot;}}" data-src="http://static.zara.net/static/2013/V/homes/WOMAN_20_SUB.jpg" src="http://static.zara.net/static/2013/V/homes/WOMAN_20_SUB.jpg">
        <div id="banner"></div>
    </a>
    <script>
        $(document).ready(function(){
            $('#header').css('background','none repeat scroll 0 0 transparent')
            $('.fullScreen').css('height',$(window).height());
            $('.fullImage').css('height',$(window).height());
            $('.fullImage').css('width',$(window).width());
        })
    </script>
</div>
