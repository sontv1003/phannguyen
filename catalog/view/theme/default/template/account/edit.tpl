<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<?php echo $content_top; ?>
<div class="storePage main">
    <section class="content-main body" id="main">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
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
                    <table class="form">
                        <tr>
                            <td><span class="required">*</span> <?php echo $entry_firstname; ?></td>
                            <td><input type="text" class="inputText" name="firstname" value="<?php echo $firstname; ?>" />
                                <?php if ($error_firstname) { ?>
                                    <span class="error"><?php echo $error_firstname; ?></span>
                                <?php } ?></td>
                        </tr>
                        <tr>
                            <td><span class="required">*</span> <?php echo $entry_lastname; ?></td>
                            <td><input type="text" class="inputText" name="lastname" value="<?php echo $lastname; ?>" />
                                <?php if ($error_lastname) { ?>
                                    <span class="error"><?php echo $error_lastname; ?></span>
                                <?php } ?></td>
                        </tr>
                        <tr>
                            <td><span class="required">*</span> <?php echo $entry_email; ?></td>
                            <td><input type="text" class="inputText" name="email" value="<?php echo $email; ?>" />
                                <?php if ($error_email) { ?>
                                    <span class="error"><?php echo $error_email; ?></span>
                                <?php } ?></td>
                        </tr>
                        <tr>
                            <td><span class="required">*</span> <?php echo $entry_telephone; ?></td>
                            <td><input type="text" class="inputText" name="telephone" value="<?php echo $telephone; ?>" />
                                <?php if ($error_telephone) { ?>
                                    <span class="error"><?php echo $error_telephone; ?></span>
                                <?php } ?></td>
                        </tr>
                        <tr>
                            <td><?php echo $entry_fax; ?></td>
                            <td><input type="text" class="inputText" name="fax" value="<?php echo $fax; ?>" /></td>
                        </tr>
                    </table>

                    <div class="actions">

                        <button value="<?php echo $button_continue; ?>" class="button butBlack gaTrack gaViewEvent" type="submit">
                            <span>
                                <?php echo $button_continue; ?>
                            </span>
                        </button>
                    </div>
                    
                </div>
            </div>
        </form>
    </section>
</div><!-- END div body -->
<?php echo $content_bottom; ?>
<?php echo $footer; ?>

