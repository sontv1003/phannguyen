<div class="modalTitle">
    <h2>Thông tin khách hàng</h2>
</div>
<br/>
<div class="infoLogin logonPanel gaTrack gaPanel" id="logonPanel" style="height: 262px;">
    <div id="payment-address">
        <div class="left">
            <span class="required">*</span> Họ:<br />
            <input type="text" name="lastname" value="<?php echo $lastname; ?>" class="large-field inputText" />
            <br />
            <br />
            <span class="required">*</span> <?php echo $entry_firstname; ?><br />
            <input type="text" name="firstname" value="<?php echo $firstname; ?>" class="large-field inputText" />
            <br />
            <br />
            <span class="required">*</span> <?php echo $entry_email; ?><br />
            <input type="text" name="email" value="<?php echo $email; ?>" class="large-field inputText" />
            <br />
            <br />
            <span class="required">*</span> <?php echo $entry_telephone; ?><br />
            <input type="text" name="telephone" value="<?php echo $telephone; ?>" class="large-field inputText" />
            <br />
            <br />
            <input type="hidden" name="fax" value="<?php echo $fax; ?>" class="large-field inputText" />
        </div>
        <div class="right">
            <input type="hidden" name="company" value="" class="large-field inputText" />
            <div style="display: <?php echo (count($customer_groups) > 1 ? 'table-row' : 'none'); ?>;"> <?php echo $entry_customer_group; ?><br />
                <?php foreach ($customer_groups as $customer_group) { ?>
                    <?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
                        <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" id="customer_group_id<?php echo $customer_group['customer_group_id']; ?>" checked="checked" />
                        <label for="customer_group_id<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></label>
                        <br />
                    <?php } else { ?>
                        <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" id="customer_group_id<?php echo $customer_group['customer_group_id']; ?>" />
                        <label for="customer_group_id<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></label>
                        <br />
                    <?php } ?>
                <?php } ?>
                <br />
            </div>
            <input type="hidden" name="company_id" value="<?php echo 'Không có'; //$company_id;    ?>" class="large-field inputText" />
            <div id="tax-id-display" style="display: none"><span id="tax-id-required" class="required">*</span> <?php echo $entry_tax_id; ?><br />
                <input type="hidden" name="tax_id" value="<?php echo 'Không có'; //$tax_id;    ?>" class="large-field inputText" />
                <br />
                <br />
            </div>
            <span class="required">*</span> Địa chỉ<br />
            <input type="text" name="address_1" value="<?php echo $address_1; ?>" class="large-field inputText" />
            <br />
            <br />
            
            <!-- <?php echo $entry_address_2; ?><br /> -->
            <input type="hidden" name="address_2" value="<?php echo $address_2; ?>" class="large-field inputText" />
            <input type="hidden" name="city" value="Không có" class="large-field inputText" />
            
            <span id="payment-postcode-required" class="required" style="display: none">*</span> 
            <input type="hidden" name="postcode" value="<?php echo 'Không có'; //$postcode;    ?>" class="large-field inputText" />
            <span class="required">*</span> <?php echo $entry_country; ?><br />
            <select name="country_id" id="country_id" class="large-field inputText">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($countries as $country) { ?>
                    <?php if ($country['country_id'] == $country_id) { ?>
                        <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                    <?php } else { ?>
                        <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                    <?php } ?>
                <?php } ?>
            </select>
            <br />
            <br />
            <span class="required">*</span>Tỉnh/Thành phố:<br />
            <select name="zone_id" class="large-field inputText">
            </select>
            <br />
            <br />
        </div>
        <?php if ($shipping_required) { ?>
            <div style="clear: both; display: none; padding-top: 15px; border-top: 1px solid #DDDDDD;">
                <?php if ($shipping_address) { ?>
                    <input type="checkbox" name="shipping_address" value="1" id="shipping" checked="checked" />
                <?php } else { ?>
                    <input type="checkbox" name="shipping_address" value="1" id="shipping" />
                <?php } ?>
                <label for="shipping"><?php echo $entry_shipping; ?></label>
                <br />
                <br />
                <br />
            </div>
        <?php } ?>
        <!--<div class="clear"></div>-->
        <div class="actions actionsControls">
            <button class="button butBlack actionButton" id="button-guest" value="<?php echo $button_continue; ?>" type="button">
                <span><?php echo $button_continue; ?></span>
            </button>
        </div>
    </div>
</div>
<script type="text/javascript"><!--
$('#payment-address input[name=\'customer_group_id\']:checked').live('change', function() {
        var customer_group = [];

<?php foreach ($customer_groups as $customer_group) { ?>
            customer_group[<?php echo $customer_group['customer_group_id']; ?>] = [];
            customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_display'] = '<?php echo $customer_group['company_id_display']; ?>';
            customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_required'] = '<?php echo $customer_group['company_id_required']; ?>';
            customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_display'] = '<?php echo $customer_group['tax_id_display']; ?>';
            customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_required'] = '<?php echo $customer_group['tax_id_required']; ?>';
<?php } ?>

        if (customer_group[this.value]) {
            if (customer_group[this.value]['company_id_display'] == '1') {
                $('#company-id-display').show();
            } else {
                $('#company-id-display').hide();
            }

            if (customer_group[this.value]['company_id_required'] == '1') {
                $('#company-id-required').show();
            } else {
                $('#company-id-required').hide();
            }

            if (customer_group[this.value]['tax_id_display'] == '1') {
                $('#tax-id-display').show();
            } else {
                $('#tax-id-display').hide();
            }

            if (customer_group[this.value]['tax_id_required'] == '1') {
                $('#tax-id-required').show();
            } else {
                $('#tax-id-required').hide();
            }
        }
    });

    $('#payment-address input[name=\'customer_group_id\']:checked').trigger('change');
//--></script> 
<script type="text/javascript"><!--
$('#payment-address select[name=\'country_id\']').bind('change', function() {
        if (this.value == '')
            return;
            
        loadZone(this.value);
    });

    //$('#payment-address input[name=\'country_id\']').trigger('change');
    
    loadZone(230);
    
    function loadZone(value) {
        $.ajax({
            url: 'index.php?route=checkout/checkout/country&country_id=' + value,
            dataType: 'json',
            beforeSend: function() {
                $('#payment-address select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
            },
            complete: function() {
                $('.wait').remove();
            },
            success: function(json) {
                if (json['postcode_required'] == '1') {
                    $('#payment-postcode-required').show();
                } else {
                    $('#payment-postcode-required').hide();
                }

                html = '<option value=""><?php echo $text_select; ?></option>';

                if (json['zone'] != '') {
                    for (i = 0; i < json['zone'].length; i++) {
                        html += '<option value="' + json['zone'][i]['zone_id'] + '"';

                        if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
                            html += ' selected="selected"';
                        }

                        html += '>' + json['zone'][i]['name'] + '</option>';
                    }
                } else {
                    html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
                }

                $('#payment-address select[name=\'zone_id\']').html(html);
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    }


//--></script>