
<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<?php echo $content_top; ?>
<div class="storePage main">
    <section class="content-main body" id="main">
        <div class="head">
        </div>
        <div class="body">	

            <!-- Begin ItxCachedCompanyCommitmentView.jsp --><!--line-->					
            <div class="line">
                <div class="unit size1of1">					
                    <h2 class="h2"><?php echo $heading_title; ?></h2>																																						
                </div>
            </div>	
            <!--/line--><!--line-->		
            <div class="line">
                <?php foreach ($downloads as $download) { ?>
                    <div class="download-list">
                        <div class="download-id"><b><?php echo $text_order; ?></b> <?php echo $download['order_id']; ?></div>
                        <div class="download-status"><b><?php echo $text_size; ?></b> <?php echo $download['size']; ?></div>
                        <div class="download-content">
                            <div><b><?php echo $text_name; ?></b> <?php echo $download['name']; ?><br />
                                <b><?php echo $text_date_added; ?></b> <?php echo $download['date_added']; ?></div>
                            <div><b><?php echo $text_remaining; ?></b> <?php echo $download['remaining']; ?></div>
                            <div class="download-info">
                                <?php if ($download['remaining'] > 0) { ?>
                                    <a href="<?php echo $download['href']; ?>"><img src="catalog/view/theme/default/image/download.png" alt="<?php echo $button_download; ?>" title="<?php echo $button_download; ?>" /></a>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                <?php } ?>
                <div class="pagination"><?php echo $pagination; ?></div>
            </div>
        </div>
        <!-- END ItxCachedCompanyCommitmentView.jsp --> 
    </section>
</div><!-- END div body -->
<?php echo $content_bottom; ?>
<?php echo $footer; ?>





