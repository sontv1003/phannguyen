
<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<?php echo $content_top; ?>
<div class="storePage main">
    <section class="content-main body" id="main">
        <div class="head">
        </div>
        <div class="body">	
            <?php if ($success) { ?>
                <div class="success"><?php echo $success; ?></div>
            <?php } ?>
            <!-- Begin ItxCachedCompanyCommitmentView.jsp --><!--line-->					
            <div class="line">
                <div class="unit size1of1">					
                    <h2 class="h2"><?php echo $heading_title; ?></h2>																																						
                </div>
            </div>	
            <!--/line--><!--line-->		
            <div class="line">
                <h2><strong><?php echo $text_my_account; ?></strong></h2>
                <div class="content">
                    <ul>
                        <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
                        <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
                        <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
                    </ul>
                </div>
                <h2><strong><?php echo $text_my_orders; ?></strong></h2>
                <div class="content">
                    <ul>
                        <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                        <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                       
                        <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                        <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                    </ul>
                </div>
                <h2><?php echo $text_my_newsletter; ?></h2>
                <div class="content">
                    <ul>
                        <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- END ItxCachedCompanyCommitmentView.jsp --> 
    </section>
</div><!-- END div body -->
<?php echo $content_bottom; ?>
<?php echo $footer; ?>
