<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div class="fullScreen " style="visibility: visible; opacity: 1; width: 100%;position: absolute; height: 720px; left: 0px; top: 0px;">
    <a href="#" style="">
        <img id="bgImage_home" style="" class="fullImage" data-anchor="top center" data-ratio="2"  src="<?php echo $image_home ?>">
        <div id="banner"></div>
    </a>
    <script>
        $("#bgImage_home").load(function() {
            var h = this.height;
            var w = this.width;
            $(this).removeAttr('width').removeAttr('height');
            var actualHeight = $(this).height();
            var actualWidth = $(this).width();
            var p_image = actualWidth / actualHeight;
            var hwindow = $(window).height();
            var wwindow = $(window).width();

            if (hwindow < 550) {
                hwindow = 550;
            }

            var p_window = wwindow / hwindow;
            if (p_window > p_image) {
                c_width = wwindow / p_image * p_window;
                c_height = c_width / p_image;

            } else {
                c_height = hwindow;
                c_width = c_height * p_image;
            }

            var left = 0;
            $('.fullImage').css('left', left + 'px');
            $('.fullImage').css('height', c_height);
            $('.fullImage').css('width', c_width);

            $('#header').css('background', 'none repeat scroll 0 0 transparent')
            $('#container-nav').css('overflow', 'hidden')
            $('html').attr('id', 'homePage');
        });

        $(document).ready(function() {



            $(window).resize(function() {
                resize_image();
            });

            function resize_image() {
                var c_height = 0;
                var c_width = 0;
                var h = this.height;
                var w = this.width;
                $("#bgImage_home").removeAttr('width').removeAttr('height')
                var actualHeight = 1440;
                var actualWidth = 2880;

                var p_image = actualWidth / actualHeight;


                var hwindow = $(window).height();
                var wwindow = $(window).width();

                if (hwindow < 550) {
                    hwindow = 550;
                }

                var wwindow = $(window).width();

                var p_window = wwindow / hwindow;

                if (p_window > p_image) {
                    c_width = wwindow / p_image * p_window;
                    c_height = c_width / p_image;

                } else {
                    c_height = hwindow;
                    c_width = c_height * p_image;
                }

                var left = 0;
                $('.fullImage').css('left', left + 'px');

                $('.fullImage').css('height', c_height);
                $('.fullImage').css('width', c_width);
                $('#header').css('background', 'none repeat scroll 0 0 transparent')
                $('#container-nav').css('overflow', 'hidden')
                $('html').attr('id', 'homePage');
            }
        });
    </script>
</div>
</div>
</div>

</body>
</html>