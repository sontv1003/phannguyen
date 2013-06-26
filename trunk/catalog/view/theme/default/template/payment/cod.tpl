<div class="actions">
    <button type="button" id="button-confirm" class="button butBlack gaTrack gaViewEvent" value="<?php echo $button_confirm; ?>">
        <span>
            <?php echo $button_confirm; ?>
        </span>
    </button>
</div>
<script type="text/javascript"><!--
$('#button-confirm').bind('click', function() {
	$.ajax({ 
		type: 'get',
		url: 'index.php?route=payment/cod/confirm',
		success: function() {
			location = '<?php echo $continue; ?>';
		}		
	});
});
//--></script> 
