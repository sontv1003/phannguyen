
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
                <?php if ($categories) { ?>
                    
                    <?php foreach ($categories as $category) { ?>
                        <div class="manufacturer-list">
                            <div class="manufacturer-heading"><?php echo $category['name']; ?><a id="<?php echo $category['name']; ?>"></a></div>
                            <div class="manufacturer-content">
                                <?php if ($category['manufacturer']) { ?>
                                    <?php for ($i = 0; $i < count($category['manufacturer']);) { ?>
                                        <ul>
                                            <?php $j = $i + ceil(count($category['manufacturer']) / 4); ?>
                                            <?php for (; $i < $j; $i++) { ?>
                                                <?php if (isset($category['manufacturer'][$i])) { ?>
                                                    <li><a href="<?php echo $category['manufacturer'][$i]['href']; ?>"><?php echo $category['manufacturer'][$i]['name']; ?></a></li>
                                                <?php } ?>
                                            <?php } ?>
                                        </ul>
                                    <?php } ?>
                                <?php } ?>
                            </div>
                        </div>
                    <?php } ?>
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

