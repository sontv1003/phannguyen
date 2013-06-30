
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
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                    <div class="content">
                        <table class="form">
                            <tr>
                                <td><?php echo $entry_newsletter; ?></td>
                                <td><?php if ($newsletter) { ?>
                                        <input type="radio" name="newsletter" value="1" checked="checked" />
                                        <?php echo $text_yes; ?>&nbsp;
                                        <input type="radio" name="newsletter" value="0" />
                                        <?php echo $text_no; ?>
                                    <?php } else { ?>
                                        <input type="radio" name="newsletter" value="1" />
                                        <?php echo $text_yes; ?>&nbsp;
                                        <input type="radio" name="newsletter" value="0" checked="checked" />
                                        <?php echo $text_no; ?>
                                    <?php } ?></td>
                            </tr>
                        </table>
                    </div>
                    <div class="buttons">
                        <div class="actions">
                            <input type="button" onclick="location='<?php echo $button_continue; ?>'" value="<?php echo $button_back; ?>" class="viewShopCartBt button butWhite gaTrack gaViewEvent" />
                            <input type="submit" value="<?php echo $button_continue; ?>" class="viewShopCartBt button butBlack gaTrack gaViewEvent" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- END ItxCachedCompanyCommitmentView.jsp --> 
    </section>
</div><!-- END div body -->
<?php echo $content_bottom; ?>
<?php echo $footer; ?>
