
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
                    <div class="contact-info">
                        <div class="content"><div class="left"><b><?php echo $text_address; ?></b><br />
                                <?php echo $store; ?><br />
                                <?php echo $address; ?></div>
                            <div class="right">
                                <?php if ($telephone) { ?>
                                    <b><?php echo $text_telephone; ?></b><br />
                                    <?php echo $telephone; ?><br />
                                    <br />
                                <?php } ?>
                                <?php if ($fax) { ?>
                                    <b><?php echo $text_fax; ?></b><br />
                                    <?php echo $fax; ?>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                    <h2><?php echo $text_contact; ?></h2>
                    <div class="content">
                        <b><?php echo $entry_name; ?></b><br />
                        <input type="text" class="inputText" name="name" value="<?php echo $name; ?>" />
                        <br />
                        <?php if ($error_name) { ?>
                            <span class="error"><?php echo $error_name; ?></span>
                        <?php } ?>
                        <br />
                        <b><?php echo $entry_email; ?></b><br />
                        <input type="text" class="inputText" name="email" value="<?php echo $email; ?>" />
                        <br />
                        <?php if ($error_email) { ?>
                            <span class="error"><?php echo $error_email; ?></span>
                        <?php } ?>
                        <br />
                        <b><?php echo $entry_enquiry; ?></b><br />
                        <textarea class="textarea" name="enquiry" cols="40" rows="10" style="width: 99%;"><?php echo $enquiry; ?></textarea>
                        <br />
                        <?php if ($error_enquiry) { ?>
                            <span class="error"><?php echo $error_enquiry; ?></span>
                        <?php } ?>
                        <br />
                        <b><?php echo $entry_captcha; ?></b><br />
                        <input type="text" class="inputText" name="captcha" value="<?php echo $captcha; ?>" />
                        <br />
                        <img src="index.php?route=information/contact/captcha" alt="" />
                        <?php if ($error_captcha) { ?>
                            <span class="error"><?php echo $error_captcha; ?></span>
                        <?php } ?>
                    </div>
                    <div class="actions">
                        <input type="submit" value="<?php echo $button_continue; ?>" class="button butBlack" />
                    </div>
                </form>
            </div>
        </div>
        <!-- END ItxCachedCompanyCommitmentView.jsp --> 
    </section>
</div><!-- END div body -->
<?php echo $content_bottom; ?>
<?php echo $footer; ?>
