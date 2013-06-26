
<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
    <div class="storePage main">
        <section id="main" class="content-main body">

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
                    <?php echo $text_message; ?>
                    <div class="actions actionsControls">
                        <button type="button" onclick="location='<?php echo $continue; ?>'" value="<?php echo $button_continue; ?>" class="button butBlack actionButton">
                            <span><?php echo $button_continue; ?></span>
                        </button>
                    </div>
                </div>
            </div>
            <!-- END ItxCachedCompanyCommitmentView.jsp --> 
        </section>
    </div>
    <?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>