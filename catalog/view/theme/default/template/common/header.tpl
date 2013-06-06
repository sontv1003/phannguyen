<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
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
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/standard-comp-1368617633534.css" />
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/standard-v.1.0.51.min.css" />
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/application-comp-1368617633534.css" />
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/perfect-scrollbar.min.css" />
        <?php foreach ($styles as $style) { ?>
            <link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
        <?php } ?>
        <script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
        <link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
        <script type="text/javascript" src="catalog/view/javascript/common.js"></script>
        <script type="text/javascript" src="catalog/view/javascript/jquery/main.js"></script>
        <script type="text/javascript" src="catalog/view/javascript/perfect-scrollbar.min.js"></script>
        <script type="text/javascript" src="catalog/view/javascript/perfect-scrollbar.with-mousewheel.min.js"></script>

        <script>
            $(document).ready(function ($) {
                "use strict";
                $('#container-nav').perfectScrollbar({wheelPropagation:true});
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
        <?php if ($logo) { ?>
            <h1> 		 
                <a href="<?php echo $home; ?>" class="fixed" id="logo" style="left: 55px;">
                    <img  class="gaTrack gaViewEvent" alt="<?php echo $name; ?>" src="<?php echo $logo; ?>">
                </a>
            </h1>
        <?php } ?>


        <div  class="page gaView">
            <!--main-->
            <div id="page-container">

                <header class="content-main fixed" id="header" style="left: 0px;">
                    <!-- User menu section -->
                    <nav class="_menuUser">
                        <ul id="header-actions">

                            <li>
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

            </div>
        </div>


        <div id="container-nav">
            <nav id="menu">
                <!--menu vertical desplegable-->

                <ul id="searchMenu">
                    <li class="mainMenuEntry">MAIN MENU</li>
                </ul>

                <ul id="mainNavigationMenu">

                    <li id="menuItemData_363021">
                        <a href="http://www.zara.com/webapp/wcs/stores/servlet/category/us/en/zara-nam-S2013/363008/New+this+week" >
                            New this week
                        </a>

                    </li>

                    <li><i class="icon icon-line-menu-divider"></i>

                    </li>

                    <li id="menuItemData_358501">
                        <a href="http://www.zara.com/webapp/wcs/stores/servlet/category/us/en/zara-nam-S2013/358501/Woman" >
                            Woman
                        </a>

                    </li>

                    <li id="menuItemData_358502">
                        <a href="http://www.zara.com/webapp/wcs/stores/servlet/category/us/en/zara-nam-S2013/358502/TRF" >
                            TRF
                        </a>

                    </li>

                    <li id="menuItemData_358523">
                        <a href="http://www.zara.com/webapp/wcs/stores/servlet/category/us/en/zara-nam-S2013/358523/Man" >
                            Man
                        </a>

                    </li>

                    <li id="menuItemData_358503">
                        <a href="http://www.zara.com/webapp/wcs/stores/servlet/category/us/en/zara-nam-S2013/358503/Kids" >
                            Kids
                        </a>

                    </li>

                    <li id="menuItemData_295501">
                        <a href="http://www.zara.com/webapp/wcs/stores/servlet/category/us/en/zara-nam-S2013/295501/GIFT+CARD" >
                            GIFT CARD
                        </a>

                    </li>

                    <li class="icon-empty-divider">&nbsp;</i>

                    </li>

                    <li id="menuItemData_362004">
                        <a href="http://www.zara.com/webapp/wcs/stores/servlet/category/us/en/zara-nam-S2013/362004/APPS" >
                            APPS
                        </a>

                    </li>

                    <li id="menuItemData_362003">
                        <a href="http://www.zara.com/webapp/wcs/stores/servlet/category/us/en/zara-nam-S2013/362003/Campaign" >
                            Campaign
                        </a>

                    </li>

                    <li id="menuItemData_367001">
                        <a href="http://www.zara.com/webapp/wcs/stores/servlet/category/us/en/zara-nam-S2013/367001/LOOKBOOK" >
                            LOOKBOOK
                        </a>

                    </li>

                    <li id="menuItemData_390501">
                        <a href="http://www.zara.com/webapp/wcs/stores/servlet/category/us/en/zara-nam-S2013/427501/PEOPLE" >
                            PEOPLE!
                        </a>

                    </li>

                    <li id="menuItemData_426501">
                        <a href="http://www.zara.com/webapp/wcs/stores/servlet/category/us/en/zara-nam-S2013/426501/Cities" >
                            Cities
                        </a>

                    </li>

                    <li class="icon-empty-divider">&nbsp;</i>

                    </li>

                    <li id="menuItemData_194501">
                        <a href="http://www.zara.com/webapp/wcs/stores/servlet/category/us/en/zara-nam-S2013/194501/%2B+INFO" >
                            + INFO
                        </a>

                    </li>

                    <li id="menuItemData_11108">
                        <a href="http://www.zara.com/webapp/wcs/stores/servlet/category/us/en/zara-nam-S2013/11108/Stores" >
                            Stores
                        </a>

                    </li>

                    <li id="menuItemData_11110">
                        <a href="http://www.zara.com/webapp/wcs/stores/servlet/category/us/en/zara-nam-S2013/11110/Newsletter" >
                            Newsletter
                        </a>

                    </li>

                    <li id="menuItemData_11111">
                        <a href="http://www.zara.com/webapp/wcs/stores/servlet/category/us/en/zara-nam-S2013/11111/Press" >
                            Press
                        </a>

                    </li>

                    <li id="menuItemData_11112">
                        <a href="http://www.zara.com/webapp/wcs/stores/servlet/category/us/en/zara-nam-S2013/11112/Company" >
                            Company
                        </a>

                    </li>

                    <li id="menuItemData_11113">
                        <a href="http://www.zara.com/webapp/wcs/stores/servlet/category/us/en/zara-nam-S2013/11113/Contact+us" >
                            Contact us
                        </a>

                    </li>

                    <li id="menuItemData_196001">
                        <a href="http://www.zara.com/webapp/wcs/stores/servlet/category/us/en/zara-nam-S2013/196001/Buying+guide" >
                            Buying guide
                        </a>

                    </li>

                </ul>



                <div class="search">



                    <form id="innerSearchForm" name="CatalogSearchForm" action="http://www.zara.com/webapp/wcs/stores/servlet/ItxSolrSearchingDataCmd?catalogId=24056&amp;langId=-1&amp;storeId=11719" method="get">			
                        <input type="hidden" name="storeId" value="11719" />			
                        <input type="hidden" name="langId" value="-1" />
                        <input type="hidden" class="catalogId" name="catalogId" value="24056" />
                        <input type="hidden" class="warehouseId" name="warehouseId" value="11551" />
                        <input type="hidden" class="searchFilter" name="filter" value="" data-originalValue=""/>



                        <input type="text" size="18" name="searchTerm" id="search" 
                               autocomplete="off"  
                               autocorrect="off"
                               value=""
                               class="textField searchTextField placeholder" 
                               placeholder="Search..." />

                        <input id="WC_searchForm_button_1" type="submit" value="" class="button searchButton"/>
                    </form>
                </div>

                <div id="sb-autocompletePanel" class="sb-autocomplete">
                    <div class="resultsWrapper"></div>
                </div>
        </div>

        <div id="container">
            <div id="notification"></div>

            <div class="center-containt">
                <div class="bottom_bg">
                    <div class="clear"></div>