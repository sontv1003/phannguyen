<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<?php echo $content_top; ?>
<div class="storePage main">
    <section class="content-main body" id="main">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <div class="head">
            </div>
            <div class="body">											
                <div class="line">
                    <div class="unit size1of1">					
                        <h2 class="h2"><?php echo $heading_title; ?></h2>																																						
                    </div>
                </div>		
                <div class="line">
                    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                        <div class="content">
                            <table class="form">
                                <tr>
                                    <td><span class="required">*</span> <?php echo $entry_password; ?></td>
                                    <td><input class="inputText" type="password" name="password" value="<?php echo $password; ?>" />
                                        <?php if ($error_password) { ?>
                                            <span class="error"><?php echo $error_password; ?></span>
                                        <?php } ?></td>
                                </tr>
                                <tr>
                                    <td><span class="required">*</span> <?php echo $entry_confirm; ?></td>
                                    <td><input class="inputText" type="password" name="confirm" value="<?php echo $confirm; ?>" />
                                        <?php if ($error_confirm) { ?>
                                            <span class="error"><?php echo $error_confirm; ?></span>
                                        <?php } ?></td>
                                </tr>
                            </table>
                        </div>
                        <div class="actions">

                            <button value="<?php echo $button_continue; ?>" class="button butBlack gaTrack gaViewEvent" type="submit">
                                <span>
                                    <?php echo $button_continue; ?>
                                </span>
                            </button>
                        </div>
                    </form>



                </div>
            </div>
        </form>
    </section>
</div><!-- END div body -->
<?php echo $content_bottom; ?>
<?php echo $footer; ?>

