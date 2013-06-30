
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
                <p><?php echo $text_total; ?><b> <?php echo $total; ?></b>.</p>
                <table class="list">
                    <thead>
                        <tr>
                            <td class="left"><?php echo $column_date_added; ?></td>
                            <td class="left"><?php echo $column_description; ?></td>
                            <td class="right"><?php echo $column_amount; ?></td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if ($transactions) { ?>
                            <?php foreach ($transactions as $transaction) { ?>
                                <tr>
                                    <td class="left"><?php echo $transaction['date_added']; ?></td>
                                    <td class="left"><?php echo $transaction['description']; ?></td>
                                    <td class="right"><?php echo $transaction['amount']; ?></td>
                                </tr>
                            <?php } ?>
                        <?php } else { ?>
                            <tr>
                                <td class="center" colspan="5"><?php echo $text_empty; ?></td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
                <div class="pagination"><?php echo $pagination; ?></div>
            </div>
        </div>
        <!-- END ItxCachedCompanyCommitmentView.jsp --> 
    </section>
</div><!-- END div body -->
<?php echo $content_bottom; ?>
<?php echo $footer; ?>

