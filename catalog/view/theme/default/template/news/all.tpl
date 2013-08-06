<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>

<div class="main">
    <div class="head">
    </div>
</div>

<div id="pageLoading"></div>

<section class="content-main body" id="main" style="padding-top: 21px;">
    <div class="head">
    </div>
    <input type="hidden" name="lh_page" id="lh_page" value="2"/>
    <div id="news-info">
        <?php if ($news) { ?>
            <?php foreach ($news as $news_item) { ?>

                <div class="look" style="width: 599px;">
                    <?php if ($news_item['thumb']) { ?>
                        <img src="<?php echo $news_item['thumb']; ?>" class="image" >
                    <?php } ?>

                    <div class="details" style="height: 101px;">
                        <div class="detail">
                            <a href="<?php echo $news_item['href']; ?>" class="_product-link"><?php echo $news_item['name']; ?></a>
                        </div>
                    </div>
                </div>
            <?php } ?>
        <?php } ?>
    </div>

</section>
<?php echo $footer; ?>
<script>
    $(window).scroll(function(){		
        if ($(window).scrollTop() == $(document).height() - $(window).height()){	
            var lh_page = $("#lh_page").val();
            if(lh_page >= 2){
                ajaxHomepageGetMore();					
            }	
            var html = $('#product-info').html();
            
        }
    });	
    
    function ajaxHomepageGetMore(){
        var lh_page = jQuery("#lh_page").val();
        $.ajax({
            url: '<?php echo html_entity_decode($ajax_href) ?>&page='+lh_page,
            type: 'post',
            data:$('form#filters-form').serialize(),
            beforeSend: function(){
                $('#pageLoading').show();
                $('#pageLoading').css('right',$(window).width()/2);
                jQuery("#lh_page").val(1);
            },
            success: function(data) {
                $('#pageLoading').hide();
                if($.trim(data).length > 0){
                    lh_page++;
                    jQuery("#lh_page").val(lh_page);
                    $('#news-info').append(data);
                }
            }
        });
        
    }
</script>