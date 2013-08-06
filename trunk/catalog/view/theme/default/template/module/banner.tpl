<?php if($layout_id!=1): ?>

    <div id="banner<?php echo $module; ?>" class="banner">
        <?php foreach ($banners as $banner) { ?>
            <?php if ($banner['link']) { ?>
                <div><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a></div>
            <?php } else { ?>
                <div><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></div>
            <?php } ?>
        <?php } ?>
    </div>

<?php else: ?>

<!-- HOME PAGE -->
<div id="banner<?php echo $module; ?>">    
  <?php foreach ($banners as $banner) { ?>
    <div style="position: absolute; left: 0px; top: 0px; opacity: 1; display: block;" class="dgbnr col2 collection htxtleft vtxtmiddle isotope-item" data-category="collection" data-social="none">
    <a href="<?php echo $banner['link'] ?>">
        <div class="figure"> 
            <img src="<?php echo $banner['image'] ?>" class="bdg" alt="#" height="374" width="560">
            <div style="opacity: 0.5285; display: block;" class="fdr"></div>
            <div class="caption">
                <div class="cpos_h3">
                    <h3><?php echo $banner['title']; ?></h3>
                </div>
            </div>
        </div>
    </a>
    </div>
      <?php } ?>
</div>
<!-- END HOME PAGE -->
<?php endif; ?>

<script type="text/javascript"><!--
$(document).ready(function() {
	$('#banner<?php echo $module; ?> div:first-child').css('display', 'block');
});

var banner = function() {
	$('#banner<?php echo $module; ?>').cycle({
		before: function(current, next) {
			$(next).parent().height($(next).outerHeight());
		}
	});
}

setTimeout(banner, 2000);
//--></script>