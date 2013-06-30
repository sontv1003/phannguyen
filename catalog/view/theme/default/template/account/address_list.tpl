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
                <?php if ($error_warning) { ?>
                    <div class="warning"><?php echo $error_warning; ?></div>
                <?php } ?>
                <div class="line">
                    <div class="unit size1of1">					
                        <h2 class="h2"><?php echo $heading_title; ?></h2>																																						
                    </div>
                </div>		
                <div class="line">
                    <?php foreach ($addresses as $result) { ?>
                        <div class="content">
                            <table style="width: 100%;">
                                <tr>
                                    <td><?php echo $result['address']; ?></td>
                                    <td style="text-align: right;"><a href="<?php echo $result['update']; ?>" class="button"><?php echo $button_edit; ?></a> &nbsp; <a href="<?php echo $result['delete']; ?>" class="button"><?php echo $button_delete; ?></a></td>
                                </tr>
                            </table>
                        </div>
                    <?php } ?>
                    
                    <div class="actions">

                        <button value="<?php echo $button_back; ?>" onclick="location='<?php echo $back; ?>'" class="button butWhite gaTrack gaViewEvent" type="button">
                            <span>
                                <?php echo $button_back; ?>
                            </span>
                        </button>
                        <button value="<?php echo $button_new_address; ?>" onclick="location='<?php echo $insert; ?>'" class="button butBlack gaTrack gaViewEvent" type="button">
                            <span>
                                <?php echo $button_new_address; ?>
                            </span>
                        </button>
                    </div>
                    </form>



                </div>
            </div>
        
    </section>
</div><!-- END div body -->
<?php echo $content_bottom; ?>
<?php echo $footer; ?>

