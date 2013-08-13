
<footer class="content-main" id="footer">

    <nav class="line-up" id="utilities">
        <!-- Please - Do not remove this comment.  --><ul class="listH">
            <li>
                <p><?php echo $text_information; ?></p>
                <ul class="submenuUtilities">
                    <?php foreach ($informations as $information) { ?>
                        <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                    <?php } ?>
                </ul>
            </li>
            <li>
                <p><?php echo $text_service; ?></p>
                <ul class="submenuUtilities">
                    <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
                    <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                </ul>
            </li>

            <li>
                <p><?php echo $text_extra; ?></p>
                <ul class="submenuUtilities">
                    <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
                    <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>    
                </ul>
            </li>

            <li>
                <p><?php echo $text_account; ?></p>
                <ul class="submenuUtilities">
                    <?php if ($logged) { ?>
                        <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                        <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                        <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                    <?php } else { ?>
                        <li class="login-page"><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                        <li class="login-page"><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                        <li class="login-page"><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                    <?php } ?>
                </ul>
            </li>
        </ul>

    </nav>


    <div class="line-up">
        <nav id="countries" style="float: right;">
            <ul>
                <li>

                    <span style="display: block; text-align: right;">
                        <?php echo $powered; ?>
                    </span>	

                </li>
            </ul>
        </nav>

    </div>

</footer>
<div class="checkout">
    <div id="checkout" class="modal hide fade">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
        <div class="checkout-content"></div>
    </div>
    <?php if (!$logged) { ?>
        <div id="payment-address" class="modal hide fade">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            <div class="checkout-content"></div>
        </div>
    <?php } else { ?>
        <div id="payment-address" class="modal hide fade">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            <div class="checkout-heading"><span><?php echo $text_checkout_payment_address; ?></span></div>
            <div class="checkout-content"></div>
        </div>
    <?php } ?>
    <?php if ($shipping_required) { ?>
        <div id="shipping-address" class="modal hide fade">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            <div class="checkout-heading"><span><?php echo $text_checkout_shipping_address; ?></span></div>
            <div class="checkout-content"></div>
        </div>
        <div id="shipping-method" class="modal hide fade">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            <div class="checkout-heading"><span><?php echo $text_checkout_shipping_method; ?></span></div>
            <div class="checkout-content"></div>
        </div>
    <?php } ?>
    <div id="payment-method" class="modal hide fade">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
        <div class="checkout-heading"><span><?php echo $text_checkout_payment_method; ?></span></div>
        <div class="checkout-content"></div>
    </div>
    <div id="confirm" class="modal hide fade">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
        <div class="checkout-heading" class="modal hide fade"><span><?php echo $text_checkout_confirm; ?></span></div>
        <div class="checkout-content"></div>
    </div>
</div>

<script type="text/javascript"><!--
    
    function checkout(){
<?php if (!$logged) { ?> 
            $.ajax({
                url: 'index.php?route=checkout/login',
                dataType: 'html',
                success: function(html) {
                    $('#checkout .checkout-content').html(html);
                    $('#checkout').modal();	
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
            });	
<?php } else { ?>
            payment_address();
<?php } ?>
    }
    
    function payment_address(){
        $.ajax({
            url: 'index.php?route=checkout/payment_address',
            dataType: 'html',
            success: function(html) {
                $('#payment-address .checkout-content').html(html);
                $('#payment-address').modal();    
                $('#checkout').modal('hide');	
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });	
    }
    $('#checkout .checkout-content input[name=\'account\']').live('change', function() {
        if ($(this).attr('value') == 'register') {
            $('#payment-address .checkout-heading span').html('<?php echo $text_checkout_account; ?>');
        } else {
            $('#payment-address .checkout-heading span').html('<?php echo $text_checkout_payment_address; ?>');
        }
    });

    $('.checkout-heading a').live('click', function() {
        $('.checkout-content').slideUp('slow');
	
        $(this).parent().parent().find('.checkout-content').slideDown('slow');
    });


    // Checkout
    $('#checkout #button-account').live('click', function() {
        $.ajax({
            url: 'index.php?route=checkout/' + $('input[name=\'account\']:checked').attr('value'),
            dataType: 'html',
            beforeSend: function() {
                $('#button-account').attr('disabled', true);
                $('#button-account').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
            },		
            complete: function() {
                $('#button-account').attr('disabled', false);
                $('.wait').remove();
            },			
            success: function(html) {
                $('.warning, .error').remove();
			
                $('#payment-address .checkout-content').html(html);
				
                $('#checkout').modal('hide');
				
                $('#payment-address').modal();
				
                $('.checkout-heading a').remove();
				
                $('#checkout .checkout-heading').append('<a><?php echo $text_modify; ?></a>');
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });
    
    // Login
    $('#checkout #button-login').live('click', function() {
        $.ajax({
            url: 'index.php?route=checkout/login/validate',
            type: 'post',
            data: $('#checkout #login :input'),
            dataType: 'json',
            beforeSend: function() {
                $('#button-login').attr('disabled', true);
                $('#button-login').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
            },	
            complete: function() {
                $('#button-login').attr('disabled', false);
                $('.wait').remove();
            },				
            success: function(json) {
                $('.warning, .error').remove();
			
                if (json['redirect']) {
                    payment_address()
                } else if (json['error']) {
                    $('#checkout .checkout-content').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '</div>');
				
                    $('.warning').fadeIn('slow');
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });	
    });

    // Register
    $('#button-register').live('click', function() {
        $.ajax({
            url: 'index.php?route=checkout/register/validate',
            type: 'post',
            data: $('#payment-address input[type=\'text\'], #payment-address input[type=\'password\'], #payment-address input[type=\'checkbox\']:checked, #payment-address input[type=\'radio\']:checked, #payment-address input[type=\'hidden\'], #payment-address select'),
            dataType: 'json',
            beforeSend: function() {
                $('#button-register').attr('disabled', true);
                $('#button-register').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
            },	
            complete: function() {
                $('#button-register').attr('disabled', false); 
                $('.wait').remove();
            },			
            success: function(json) {
                $('.warning, .error').remove();
						
                if (json['redirect']) {
                    location = json['redirect'];				
                } else if (json['error']) {
                    if (json['error']['warning']) {
                        $('#payment-address .checkout-content').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
                        $('.warning').fadeIn('slow');
                    }
				
                    if (json['error']['firstname']) {
                        $('#payment-address input[name=\'firstname\'] + br').after('<span class="error">' + json['error']['firstname'] + '</span>');
                    }
				
                    if (json['error']['lastname']) {
                        $('#payment-address input[name=\'lastname\'] + br').after('<span class="error">' + json['error']['lastname'] + '</span>');
                    }	
				
                    if (json['error']['email']) {
                        $('#payment-address input[name=\'email\'] + br').after('<span class="error">' + json['error']['email'] + '</span>');
                    }
				
                    if (json['error']['telephone']) {
                        $('#payment-address input[name=\'telephone\'] + br').after('<span class="error">' + json['error']['telephone'] + '</span>');
                    }	
					
                    if (json['error']['company_id']) {
                        $('#payment-address input[name=\'company_id\'] + br').after('<span class="error">' + json['error']['company_id'] + '</span>');
                    }	
				
                    if (json['error']['tax_id']) {
                        $('#payment-address input[name=\'tax_id\'] + br').after('<span class="error">' + json['error']['tax_id'] + '</span>');
                    }	
																		
                    if (json['error']['address_1']) {
                        $('#payment-address input[name=\'address_1\'] + br').after('<span class="error">' + json['error']['address_1'] + '</span>');
                    }	
				
                    if (json['error']['city']) {
                        $('#payment-address input[name=\'city\'] + br').after('<span class="error">' + json['error']['city'] + '</span>');
                    }	
				
                    if (json['error']['postcode']) {
                        $('#payment-address input[name=\'postcode\'] + br').after('<span class="error">' + json['error']['postcode'] + '</span>');
                    }	
				
                    if (json['error']['country']) {
                        $('#payment-address select[name=\'country_id\'] + br').after('<span class="error">' + json['error']['country'] + '</span>');
                    }	
				
                    if (json['error']['zone']) {
                        $('#payment-address select[name=\'zone_id\'] + br').after('<span class="error">' + json['error']['zone'] + '</span>');
                    }
				
                    if (json['error']['password']) {
                        $('#payment-address input[name=\'password\'] + br').after('<span class="error">' + json['error']['password'] + '</span>');
                    }	
				
                    if (json['error']['confirm']) {
                        $('#payment-address input[name=\'confirm\'] + br').after('<span class="error">' + json['error']['confirm'] + '</span>');
                    }																																	
                } else {
<?php if ($shipping_required) { ?>				
                        var shipping_address = $('#payment-address input[name=\'shipping_address\']:checked').attr('value');
                                    				
                        if (shipping_address) {
                            $.ajax({
                                url: 'index.php?route=checkout/shipping_method',
                                dataType: 'html',
                                success: function(html) {
                                    $('#shipping-method .checkout-content').html(html);
                                    							
                                    $('#payment-address .checkout-content').slideUp('slow');
                                    							
                                    $('#shipping-method .checkout-content').slideDown('slow');
                                    							
                                    $('#checkout .checkout-heading a').remove();
                                    $('#payment-address .checkout-heading a').remove();
                                    $('#shipping-address .checkout-heading a').remove();
                                    $('#shipping-method .checkout-heading a').remove();
                                    $('#payment-method .checkout-heading a').remove();											
                                    							
                                    $('#shipping-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');									
                                    $('#payment-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');	

                                    $.ajax({
                                        url: 'index.php?route=checkout/shipping_address',
                                        dataType: 'html',
                                        success: function(html) {
                                            $('#shipping-address .checkout-content').html(html);
                                        },
                                        error: function(xhr, ajaxOptions, thrownError) {
                                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                        }
                                    });	
                                },
                                error: function(xhr, ajaxOptions, thrownError) {
                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                }
                            });	
                        } else {
                            $.ajax({
                                url: 'index.php?route=checkout/shipping_address',
                                dataType: 'html',
                                success: function(html) {
                                    $('#shipping-address .checkout-content').html(html);
                                    							
                                    $('#payment-address .checkout-content').slideUp('slow');
                                    							
                                    $('#shipping-address .checkout-content').slideDown('slow');
                                    							
                                    $('#checkout .checkout-heading a').remove();
                                    $('#payment-address .checkout-heading a').remove();
                                    $('#shipping-address .checkout-heading a').remove();
                                    $('#shipping-method .checkout-heading a').remove();
                                    $('#payment-method .checkout-heading a').remove();							

                                    $('#payment-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');	
                                },
                                error: function(xhr, ajaxOptions, thrownError) {
                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                }
                            });			
                        }
<?php } else { ?>
                        $.ajax({
                            url: 'index.php?route=checkout/payment_method',
                            dataType: 'html',
                            success: function(html) {
                                $('#payment-method .checkout-content').html(html);
                                    						
                                $('#payment-address .checkout-content').slideUp('slow');
                                    						
                                $('#payment-method .checkout-content').slideDown('slow');
                                    						
                                $('#checkout .checkout-heading a').remove();
                                $('#payment-address .checkout-heading a').remove();
                                $('#payment-method .checkout-heading a').remove();								
                                    						
                                $('#payment-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');	
                            },
                            error: function(xhr, ajaxOptions, thrownError) {
                                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                            }
                        });					
<?php } ?>

                    $.ajax({
                        url: 'index.php?route=checkout/payment_address',
                        dataType: 'html',
                        success: function(html) {
                            $('#payment-address .checkout-content').html(html);
							
                            $('#payment-address .checkout-heading span').html('<?php echo $text_checkout_payment_address; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                }	 
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });	
    });

    // Payment Address	
    $('#button-payment-address').live('click', function() {
        $.ajax({
            url: 'index.php?route=checkout/payment_address/validate',
            type: 'post',
            data: $('#payment-address input[type=\'text\'], #payment-address input[type=\'password\'], #payment-address input[type=\'checkbox\']:checked, #payment-address input[type=\'radio\']:checked, #payment-address input[type=\'hidden\'], #payment-address select'),
            dataType: 'json',
            beforeSend: function() {
                $('#button-payment-address').attr('disabled', true);
                $('#button-payment-address').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
            },	
            complete: function() {
                $('#button-payment-address').attr('disabled', false);
                $('.wait').remove();
            },			
            success: function(json) {
                $('.warning, .error').remove();
                if (json['redirect']) {
                    location = json['redirect'];
                } else if (json['error']) {
                    if (json['error']['warning']) {
                        $('#payment-address .checkout-content').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
                        $('.warning').fadeIn('slow');
                    }
								
                    if (json['error']['firstname']) {
                        $('#payment-address input[name=\'firstname\']').after('<span class="error">' + json['error']['firstname'] + '</span>');
                    }
				
                    if (json['error']['lastname']) {
                        $('#payment-address input[name=\'lastname\']').after('<span class="error">' + json['error']['lastname'] + '</span>');
                    }	
				
                    if (json['error']['telephone']) {
                        $('#payment-address input[name=\'telephone\']').after('<span class="error">' + json['error']['telephone'] + '</span>');
                    }		
				
                    if (json['error']['company_id']) {
                        $('#payment-address input[name=\'company_id\']').after('<span class="error">' + json['error']['company_id'] + '</span>');
                    }	
				
                    if (json['error']['tax_id']) {
                        $('#payment-address input[name=\'tax_id\']').after('<span class="error">' + json['error']['tax_id'] + '</span>');
                    }	
														
                    if (json['error']['address_1']) {
                        $('#payment-address input[name=\'address_1\']').after('<span class="error">' + json['error']['address_1'] + '</span>');
                    }	
				
                    if (json['error']['city']) {
                        $('#payment-address input[name=\'city\']').after('<span class="error">' + json['error']['city'] + '</span>');
                    }	
				
                    if (json['error']['postcode']) {
                        $('#payment-address input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
                    }	
				
                    if (json['error']['country']) {
                        $('#payment-address select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
                    }	
				
                    if (json['error']['zone']) {
                        $('#payment-address select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
                    }
                } else {
<?php if ($shipping_required) { ?>
                        $.ajax({
                            url: 'index.php?route=checkout/shipping_address',
                            dataType: 'html',
                            success: function(html) {
                                $('#payment-address').modal('hide');
                                $('#shipping-address .checkout-content').html(html);
                                    					
                                $('#shipping-address').modal();
                                    						
                                $('#payment-address .checkout-heading a').remove();
                                $('#shipping-address .checkout-heading a').remove();
                                $('#shipping-method .checkout-heading a').remove();
                                $('#payment-method .checkout-heading a').remove();
                                    						
                                $('#payment-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');	
                            },
                            error: function(xhr, ajaxOptions, thrownError) {
                                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                            }
                        });
<?php } else { ?>
                        $.ajax({
                            url: 'index.php?route=checkout/payment_method',
                            dataType: 'html',
                            success: function(html) {
                                $('#payment-method').modal('hide');
                                $('#payment-method .checkout-content').html(html);
                                    					
                                $('#payment-address').modal();
                                    						
                                $('#payment-address .checkout-heading a').remove();
                                $('#payment-method .checkout-heading a').remove();
                                    													
                                $('#payment-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');	
                            },
                            error: function(xhr, ajaxOptions, thrownError) {
                                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                            }
                        });	
<?php } ?>
				
                    $.ajax({
                        url: 'index.php?route=checkout/payment_address',
                        dataType: 'html',
                        success: function(html) {
                            $('#payment-address .checkout-content').html(html);
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });				
                }	  
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });	
    });

    // Shipping Address			
    $('#button-shipping-address').live('click', function() {
        $.ajax({
            url: 'index.php?route=checkout/shipping_address/validate',
            type: 'post',
            data: $('#shipping-address input[type=\'text\'], #shipping-address input[type=\'password\'], #shipping-address input[type=\'checkbox\']:checked, #shipping-address input[type=\'radio\']:checked, #shipping-address select'),
            dataType: 'json',
            beforeSend: function() {
                $('#button-shipping-address').attr('disabled', true);
                $('#button-shipping-address').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
            },	
            complete: function() {
                $('#button-shipping-address').attr('disabled', false);
                $('.wait').remove();
            },			
            success: function(json) {
                $('.warning, .error').remove();
			
                if (json['redirect']) {
                    location = json['redirect'];
                } else if (json['error']) {
                    if (json['error']['warning']) {
                        $('#shipping-address .checkout-content').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
                        $('.warning').fadeIn('slow');
                    }
								
                    if (json['error']['firstname']) {
                        $('#shipping-address input[name=\'firstname\']').after('<span class="error">' + json['error']['firstname'] + '</span>');
                    }
				
                    if (json['error']['lastname']) {
                        $('#shipping-address input[name=\'lastname\']').after('<span class="error">' + json['error']['lastname'] + '</span>');
                    }	
				
                    if (json['error']['email']) {
                        $('#shipping-address input[name=\'email\']').after('<span class="error">' + json['error']['email'] + '</span>');
                    }
				
                    if (json['error']['telephone']) {
                        $('#shipping-address input[name=\'telephone\']').after('<span class="error">' + json['error']['telephone'] + '</span>');
                    }		
										
                    if (json['error']['address_1']) {
                        $('#shipping-address input[name=\'address_1\']').after('<span class="error">' + json['error']['address_1'] + '</span>');
                    }	
				
                    if (json['error']['city']) {
                        $('#shipping-address input[name=\'city\']').after('<span class="error">' + json['error']['city'] + '</span>');
                    }	
				
                    if (json['error']['postcode']) {
                        $('#shipping-address input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
                    }	
				
                    if (json['error']['country']) {
                        $('#shipping-address select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
                    }	
				
                    if (json['error']['zone']) {
                        $('#shipping-address select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
                    }
                } else {
                    $.ajax({
                        url: 'index.php?route=checkout/shipping_method',
                        dataType: 'html',
                        success: function(html) {
                            
                            $('#shipping-address').modal('hide');
                            $('#shipping-method .checkout-content').html(html);
                            $('#shipping-method').modal();
                            $('#shipping-address .checkout-heading a').remove();
                            $('#shipping-method .checkout-heading a').remove();
                            $('#payment-method .checkout-heading a').remove();
						
                            $('#shipping-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');							
						
                            $.ajax({
                                url: 'index.php?route=checkout/shipping_address',
                                dataType: 'html',
                                success: function(html) {
                                    $('#shipping-address .checkout-content').html(html);
                                },
                                error: function(xhr, ajaxOptions, thrownError) {
                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                }
                            });
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });	
				
                    $.ajax({
                        url: 'index.php?route=checkout/payment_address',
                        dataType: 'html',
                        success: function(html) {
                            $('#payment-address .checkout-content').html(html);
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });					
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });	
    });

    // Guest
    $('#button-guest').live('click', function() {
        $.ajax({
            url: 'index.php?route=checkout/guest/validate',
            type: 'post',
            data: $('#payment-address input[type=\'text\'], #payment-address input[type=\'checkbox\']:checked, #payment-address input[type=\'radio\']:checked, #payment-address input[type=\'hidden\'], #payment-address select'),
            dataType: 'json',
            beforeSend: function() {
                $('#button-guest').attr('disabled', true);
                $('#button-guest').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
            },	
            complete: function() {
                $('#button-guest').attr('disabled', false); 
                $('.wait').remove();
            },			
            success: function(json) {
                $('.warning, .error').remove();
			
                if (json['redirect']) {
                    location = json['redirect'];
                } else if (json['error']) {
                    if (json['error']['warning']) {
                        $('#payment-address .checkout-content').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
                        $('.warning').fadeIn('slow');
                    }
								
                    if (json['error']['firstname']) {
                        $('#payment-address input[name=\'firstname\'] + br').after('<span class="error">' + json['error']['firstname'] + '</span>');
                    }
				
                    if (json['error']['lastname']) {
                        $('#payment-address input[name=\'lastname\'] + br').after('<span class="error">' + json['error']['lastname'] + '</span>');
                    }	
				
                    if (json['error']['email']) {
                        $('#payment-address input[name=\'email\'] + br').after('<span class="error">' + json['error']['email'] + '</span>');
                    }
				
                    if (json['error']['telephone']) {
                        $('#payment-address input[name=\'telephone\'] + br').after('<span class="error">' + json['error']['telephone'] + '</span>');
                    }	
					
                    if (json['error']['company_id']) {
                        $('#payment-address input[name=\'company_id\'] + br').after('<span class="error">' + json['error']['company_id'] + '</span>');
                    }	
				
                    if (json['error']['tax_id']) {
                        $('#payment-address input[name=\'tax_id\'] + br').after('<span class="error">' + json['error']['tax_id'] + '</span>');
                    }	
																		
                    if (json['error']['address_1']) {
                        $('#payment-address input[name=\'address_1\'] + br').after('<span class="error">' + json['error']['address_1'] + '</span>');
                    }	
				
                    if (json['error']['city']) {
                        $('#payment-address input[name=\'city\'] + br').after('<span class="error">' + json['error']['city'] + '</span>');
                    }	
				
                    if (json['error']['postcode']) {
                        $('#payment-address input[name=\'postcode\'] + br').after('<span class="error">' + json['error']['postcode'] + '</span>');
                    }	
				
                    if (json['error']['country']) {
                        $('#payment-address select[name=\'country_id\'] + br').after('<span class="error">' + json['error']['country'] + '</span>');
                    }	
				
                    if (json['error']['zone']) {
                        $('#payment-address select[name=\'zone_id\'] + br').after('<span class="error">' + json['error']['zone'] + '</span>');
                    }
                } else {
<?php if ($shipping_required) { ?>	
                        var shipping_address = $('#payment-address input[name=\'shipping_address\']:checked').attr('value');
                                    				
                        if (shipping_address) {
                            $.ajax({
                                url: 'index.php?route=checkout/shipping_method',
                                dataType: 'html',
                                success: function(html) {
                                    $('#shipping-method .checkout-content').html(html);
                                    							
                                    $('#payment-address .checkout-content').slideUp('slow');
                                    							
                                    $('#shipping-method .checkout-content').slideDown('slow');
                                    							
                                    $('#payment-address .checkout-heading a').remove();
                                    $('#shipping-address .checkout-heading a').remove();
                                    $('#shipping-method .checkout-heading a').remove();
                                    $('#payment-method .checkout-heading a').remove();		
                                    															
                                    $('#payment-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');	
                                    $('#shipping-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');									
                                    							
                                    $.ajax({
                                        url: 'index.php?route=checkout/guest_shipping',
                                        dataType: 'html',
                                        success: function(html) {
                                            $('#shipping-address .checkout-content').html(html);
                                        },
                                        error: function(xhr, ajaxOptions, thrownError) {
                                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                        }
                                    });
                                },
                                error: function(xhr, ajaxOptions, thrownError) {
                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                }
                            });					
                        } else {
                            $.ajax({
                                url: 'index.php?route=checkout/guest_shipping',
                                dataType: 'html',
                                success: function(html) {
                                    $('#shipping-address .checkout-content').html(html);
                                    							
                                    $('#payment-address .checkout-content').slideUp('slow');
                                    							
                                    $('#shipping-address .checkout-content').slideDown('slow');
                                    							
                                    $('#payment-address .checkout-heading a').remove();
                                    $('#shipping-address .checkout-heading a').remove();
                                    $('#shipping-method .checkout-heading a').remove();
                                    $('#payment-method .checkout-heading a').remove();
                                    							
                                    $('#payment-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');	
                                },
                                error: function(xhr, ajaxOptions, thrownError) {
                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                }
                            });
                        }
<?php } else { ?>				
                        $.ajax({
                            url: 'index.php?route=checkout/payment_method',
                            dataType: 'html',
                            success: function(html) {
                                $('#payment-method .checkout-content').html(html);
                                    						
                                $('#payment-address .checkout-content').slideUp('slow');
                                    							
                                $('#payment-method .checkout-content').slideDown('slow');
                                    							
                                $('#payment-address .checkout-heading a').remove();
                                $('#payment-method .checkout-heading a').remove();
                                    														
                                $('#payment-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');
                            },
                            error: function(xhr, ajaxOptions, thrownError) {
                                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                            }
                        });				
<?php } ?>
                }	 
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });	
    });

    // Guest Shipping
    $('#button-guest-shipping').live('click', function() {
        $.ajax({
            url: 'index.php?route=checkout/guest_shipping/validate',
            type: 'post',
            data: $('#shipping-address input[type=\'text\'], #shipping-address select'),
            dataType: 'json',
            beforeSend: function() {
                $('#button-guest-shipping').attr('disabled', true);
                $('#button-guest-shipping').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
            },	
            complete: function() {
                $('#button-guest-shipping').attr('disabled', false); 
                $('.wait').remove();
            },			
            success: function(json) {
                $('.warning, .error').remove();
			
                if (json['redirect']) {
                    location = json['redirect'];
                } else if (json['error']) {
                    if (json['error']['warning']) {
                        $('#shipping-address .checkout-content').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
                        $('.warning').fadeIn('slow');
                    }
								
                    if (json['error']['firstname']) {
                        $('#shipping-address input[name=\'firstname\']').after('<span class="error">' + json['error']['firstname'] + '</span>');
                    }
				
                    if (json['error']['lastname']) {
                        $('#shipping-address input[name=\'lastname\']').after('<span class="error">' + json['error']['lastname'] + '</span>');
                    }	
										
                    if (json['error']['address_1']) {
                        $('#shipping-address input[name=\'address_1\']').after('<span class="error">' + json['error']['address_1'] + '</span>');
                    }	
				
                    if (json['error']['city']) {
                        $('#shipping-address input[name=\'city\']').after('<span class="error">' + json['error']['city'] + '</span>');
                    }	
				
                    if (json['error']['postcode']) {
                        $('#shipping-address input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
                    }	
				
                    if (json['error']['country']) {
                        $('#shipping-address select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
                    }	
				
                    if (json['error']['zone']) {
                        $('#shipping-address select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
                    }
                } else {
                    $.ajax({
                        url: 'index.php?route=checkout/shipping_method',
                        dataType: 'html',
                        success: function(html) {
                            $('#shipping-method .checkout-content').html(html);
						
                            $('#shipping-address .checkout-content').slideUp('slow');
						
                            $('#shipping-method .checkout-content').slideDown('slow');
						
                            $('#shipping-address .checkout-heading a').remove();
                            $('#shipping-method .checkout-heading a').remove();
                            $('#payment-method .checkout-heading a').remove();
							
                            $('#shipping-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });				
                }	 
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });	
    });

    $('#button-shipping-method').live('click', function() {
        $.ajax({
            url: 'index.php?route=checkout/shipping_method/validate',
            type: 'post',
            data: $('#shipping-method input[type=\'radio\']:checked, #shipping-method textarea'),
            dataType: 'json',
            beforeSend: function() {
                $('#button-shipping-method').attr('disabled', true);
                $('#button-shipping-method').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
            },	
            complete: function() {
                $('#button-shipping-method').attr('disabled', false);
                $('.wait').remove();
            },			
            success: function(json) {
                $('.warning, .error').remove();
			
                if (json['redirect']) {
                    location = json['redirect'];
                } else if (json['error']) {
                    if (json['error']['warning']) {
                        $('#shipping-method .checkout-content').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
                        $('.warning').fadeIn('slow');
                    }			
                } else {
                    $.ajax({
                        url: 'index.php?route=checkout/payment_method',
                        dataType: 'html',
                        success: function(html) {
                            $('#payment-method .checkout-content').html(html);
						
                            $('#shipping-method').modal('hide');
						
                            $('#payment-method').modal();

                            $('#shipping-method .checkout-heading a').remove();
                            $('#payment-method .checkout-heading a').remove();
						
                            $('#shipping-method .checkout-heading').append('<a><?php echo $text_modify; ?></a>');	
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });					
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });	
    });

    $('#button-payment-method').live('click', function() {
        $.ajax({
            url: 'index.php?route=checkout/payment_method/validate', 
            type: 'post',
            data: $('#payment-method input[type=\'radio\']:checked, #payment-method input[type=\'checkbox\']:checked, #payment-method textarea'),
            dataType: 'json',
            beforeSend: function() {
                $('#button-payment-method').attr('disabled', true);
                $('#button-payment-method').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
            },	
            complete: function() {
                $('#button-payment-method').attr('disabled', false);
                $('.wait').remove();
            },			
            success: function(json) {
                $('.warning, .error').remove();
			
                if (json['redirect']) {
                    location = json['redirect'];
                } else if (json['error']) {
                    if (json['error']['warning']) {
                        $('#payment-method .checkout-content').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
                        $('.warning').fadeIn('slow');
                    }			
                } else {
                    $.ajax({
                        url: 'index.php?route=checkout/confirm',
                        dataType: 'html',
                        success: function(html) {
                            $('#confirm .checkout-content').html(html);
						
                            $('#payment-method').modal('hide');
						
                            $('#confirm').modal();
						
                            $('#payment-method .checkout-heading a').remove();
						
                            $('#payment-method .checkout-heading').append('<a><?php echo $text_modify; ?></a>');	
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });	
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });	
    });
    //--></script> 
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
</div>
</div>

</body>
</html>