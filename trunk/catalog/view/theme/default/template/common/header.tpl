<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" id="V2013-HOMBRE-CAZADORAS" class="productPage newDesign-2013-1 js no-touch video" lang="<?php echo $lang; ?>">
    <head>
        <meta charset="UTF-8" />
        <title><?php echo $title; ?></title>
        <base href="<?php echo $base; ?>" />
        <?php if ($description) { ?>
            <meta name="description" content="<?php echo $description; ?>" />
        <?php } ?>
        <?php if ($keywords) { ?>
            <meta name="keywords" content="<?php echo $keywords; ?>" />
        <?php } ?>
        <?php if ($icon) { ?>
            <link href="<?php echo $icon; ?>" rel="icon" />
        <?php } ?>
        <?php foreach ($links as $link) { ?>
            <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
        <?php } ?>
        <!--<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />-->
        <link rel="stylesheet" type="text/css" href="/catalog/view/theme/default/stylesheet/standard-comp-1368617633534.css" />
        <link rel="stylesheet" type="text/css" href="/catalog/view/theme/default/stylesheet/standard-v.1.0.51.min.css" />
        <link rel="stylesheet" type="text/css" href="/catalog/view/theme/default/stylesheet/application-comp-1368617633534.css" />
        <link rel="stylesheet" type="text/css" href="/catalog/view/theme/default/stylesheet/perfect-scrollbar.min.css" />
        <link rel="stylesheet" type="text/css" href="/catalog/view/theme/default/stylesheet/category-comp-1370537430555.css" />
        <link rel="stylesheet" type="text/css" href="/catalog/view/theme/default/stylesheet/bootstrap.min.css" />
        <?php foreach ($styles as $style) { ?>
            <link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
        <?php } ?>
        <script type="text/javascript" src="/catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="/catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
        <link rel="stylesheet" type="text/css" href="/catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
        <script type="text/javascript" src="/catalog/view/javascript/common.js"></script>
        <script type="text/javascript" src="/catalog/view/javascript/jquery/main.js"></script>
        <script type="text/javascript" src="/catalog/view/javascript/perfect-scrollbar.min.js"></script>
        <script type="text/javascript" src="/catalog/view/javascript/perfect-scrollbar.with-mousewheel.min.js"></script>
        <script type="text/javascript" src="/catalog/view/javascript/jquery/bootstrap.min.js"></script>

        <script>
            $(document).ready(function ($) {
                "use strict";
                $('#container-nav').perfectScrollbar({wheelPropagation:true});
                $('.modal-body').perfectScrollbar({wheelPropagation:true});
                $('.login-page > a').live('click',function(){
                    $('#modal-ajax').modal();
                    $('#itxLoading').show();
                    
                    $.ajax({
                        url: 'index.php?route=checkout/login',
                        dataType: 'html',
                        success: function(html) {
                            $('.modal-body').html(html);
                            $('#itxLoading').hide();
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                    return false;
                })
                
                
                
                // Login
                $('#button-login').live('click', function() {
                    $.ajax({
                        url: 'index.php?route=checkout/login/validate',
                        type: 'post',
                        data: $('#logonPanel :input'),
                        dataType: 'json',
                        beforeSend: function() {
                            $('#button-login').attr('disabled', true);
                            $('#itxLoading').show();
                        },	
                        complete: function() {
                            $('#button-login').attr('disabled', false);
                            $('#itxLoading').hide();
                        },				
                        success: function(json) {
                            $('.warning, .error').remove();
			
                            if (json['redirect']) {
                                //                                location = json['redirect'];
                            } else if (json['error']) {
                                $('.logonPanel').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '</div>');
                                $('.warning').fadeIn('slow');
                            }
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });	
                });
                
                
                // Checkout
                $('#button-account').live('click', function() {
                    $.ajax({
                        url: 'index.php?route=checkout/' + $('input[name=\'account\']:checked').attr('value'),
                        dataType: 'html',
                        beforeSend: function() {
                            $('.warning, .error').remove();
                            $('#button-account').attr('disabled', true);
                            $('#itxLoading').show();
                        },		
                        complete: function() {
                            $('#button-account').attr('disabled', false);
                            
                        },			
                        success: function(html) {
                            
                            $('.modal-body').html(html);
                            $('#itxLoading').hide();
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                });
            });
        </script>
        <?php foreach ($scripts as $script) { ?>
            <script type="text/javascript" src="<?php echo $script; ?>"></script>
        <?php } ?>

        <?php if ($stores) { ?>
            <script type="text/javascript"><!--
                $(document).ready(function() {
    <?php foreach ($stores as $store) { ?>
                $('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
    <?php } ?>
                                                                
                                                                
        });
                                                                
                                                             
        //--></script>
        <?php } ?>
        <?php echo $google_analytics; ?>
    </head>
    <body class="designPage homePage staticMenu">
        <div id="modal-ajax" class="modal hide fade">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>


            <div class="modal-body">

            </div>
            <div id="itxLoading" ></div>
        </div>
        <?php if ($logo) { ?>
            <h1> 		 
                <a href="<?php echo $home; ?>" class="fixed" id="logo" style="left: 55px;">
                    <img  class="gaTrack gaViewEvent" alt="<?php echo $name; ?>" src="<?php echo $logo; ?>">
                </a>
            </h1>
        <?php } ?>


        <div id="container-nav">
            <nav id="menu">
                <ul id="mainNavigationMenu">
                    <li id="menuItemData_363021">
                        <a href="#" >
                            New this week
                        </a>

                    </li>
                    <li><i class="icon icon-line-menu-divider"></i> </li>
                    <?php if ($categories) { ?>
                        <?php foreach ($categories as $category) { ?>
                            <li class="<?php echo ($category['category_id'] == $category_id) ? 'current' : '' ?>">
                                <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                <?php if ($category['children']) { ?>
                                    <?php for ($i = 0; $i < count($category['children']);) { ?>
                                        <ul>
                                            <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                                            <?php for (; $i < $j; $i++) { ?>
                                                <?php if (isset($category['children'][$i])) { ?>
                                                    <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
                                                <?php } ?>
                                            <?php } ?>
                                        </ul>
                                    <?php } ?>
                                <?php } ?>
                            </li>
                        <?php } ?>
                    <?php } ?>

                    <?php echo $information ?>        

                </ul>            
                <div id="search" class="search">
                    <input type="text" class="textField searchTextField placeholder" size="18" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
                    <div class="button searchButton button-search"></div>
                </div>

        </div>

        

        <div id="page-container">
            
            <header class="content-main fixed" id="header" style="left: 0px;">
                <!-- User menu section -->
                <nav class="_menuUser">
                    <ul id="header-actions">

                        <li class="login-page"> 
                            <?php if (!$logged) { ?>
                                <?php echo $text_welcome; ?>
                            <?php } else { ?>
                                <?php echo $text_logged; ?>
                            <?php } ?>
                        </li>
                        <?php echo $language; ?>
                        <li class="miniShopCart" id="miniShopCart">
                            <?php echo $cart; ?>
                        </li>

                        <li class="_userHelp">
                            <a href="<?php echo $contact ?>"><?php echo $text_contact ?></a>
                        </li>

                    </ul>
                </nav>

            </header>
            <div id="notification"></div>