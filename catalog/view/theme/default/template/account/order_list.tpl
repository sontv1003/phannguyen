
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
                <?php if ($orders) { ?>
                    <?php foreach ($orders as $order) { ?>
                        <div class="order-list">
                            <div class="order-id"><b><?php echo $text_order_id; ?></b> #<?php echo $order['order_id']; ?></div>
                            <div class="order-status"><b><?php echo $text_status; ?></b> <?php echo $order['status']; ?></div>
                            <div class="order-content">
                                <div><b><?php echo $text_date_added; ?></b> <?php echo $order['date_added']; ?><br />
                                    <b><?php echo $text_products; ?></b> <?php echo $order['products']; ?></div>
                                <div><b><?php echo $text_customer; ?></b> <?php echo $order['name']; ?><br />
                                    <b><?php echo $text_total; ?></b> <?php echo $order['total']; ?></div>
                                <div class="order-info"><a href="<?php echo $order['href']; ?>"><img src="catalog/view/theme/default/image/info.png" alt="<?php echo $button_view; ?>" title="<?php echo $button_view; ?>" /></a>&nbsp;&nbsp;<a href="<?php echo $order['reorder']; ?>"><img src="catalog/view/theme/default/image/reorder.png" alt="<?php echo $button_reorder; ?>" title="<?php echo $button_reorder; ?>" /></a></div>
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
