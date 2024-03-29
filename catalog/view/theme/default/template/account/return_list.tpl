
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
                <?php if ($returns) { ?>
                    <?php foreach ($returns as $return) { ?>
                        <div class="return-list">
                            <div class="return-id"><b><?php echo $text_return_id; ?></b> #<?php echo $return['return_id']; ?></div>
                            <div class="return-status"><b><?php echo $text_status; ?></b> <?php echo $return['status']; ?></div>
                            <div class="return-content">
                                <div><b><?php echo $text_date_added; ?></b> <?php echo $return['date_added']; ?><br />
                                    <b><?php echo $text_order_id; ?></b> <?php echo $return['order_id']; ?></div>
                                <div><b><?php echo $text_customer; ?></b> <?php echo $return['name']; ?></div>
                                <div class="return-info"><a href="<?php echo $return['href']; ?>"><img src="catalog/view/theme/default/image/info.png" alt="<?php echo $button_view; ?>" title="<?php echo $button_view; ?>" /></a></div>
                            </div>
                        </div>
                    <?php } ?>
                    <div class="pagination"><?php echo $pagination; ?></div>
                <?php } else { ?>
                    <div class="content"><?php echo $text_empty; ?></div>
                <?php } ?>
            </div>
        </div>
        <!-- END ItxCachedCompanyCommitmentView.jsp --> 
    </section>
</div><!-- END div body -->
<?php echo $content_bottom; ?>
<?php echo $footer; ?>

