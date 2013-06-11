<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" id="V2013-HOMBRE-CAZADORAS" lang="<?php echo $lang; ?>">
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
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/category-comp-1370537430555.css" />
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


        <div id="container-nav">
            <nav id="menu">
                <ul id="mainNavigationMenu">
                    <li id="menuItemData_363021">
                        <a href="http://www.zara.com/webapp/wcs/stores/servlet/category/us/en/zara-nam-S2013/363008/New+this+week" >
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


                    <li id="menuItemData_194501">
                        <a href="javascript:void(0)" onclick="$('#information').toggle()">
                            + INFO
                        </a>
                        <ul id="information">
                            <li id="menuItemData_11108">
                                <a href="http://www.zara.com/us/en/stores-c11108.html" >
                                    Stores
                                </a>

                            </li>
                            <li id="menuItemData_11110">
                                <a href="http://www.zara.com/us/en/newsletter-c11110.html" >
                                    Newsletter
                                </a>

                            </li><li id="menuItemData_11111">
                                <a href="http://www.zara.com/us/en/press-c11111.html" >
                                    Press
                                </a>

                            </li><li id="menuItemData_11112">
                                <a href="http://www.zara.com/us/en/company-c11112.html" >
                                    Company
                                </a>

                            </li><li id="menuItemData_11113">
                                <a href="http://www.zara.com/us/en/contact-us-c11113.html" >
                                    Contact us
                                </a>

                            </li>
                            <li id="menuItemData_196001">
                                <a href="http://www.zara.com/webapp/wcs/stores/servlet/ShopGuideView?catalogId=24056&amp;fts=0&amp;langId=-1&amp;storeId=11719"  class=" gaTag gaEvent myShopGuideLinkClass" gaprops="{events:'click', section:'Pie_Pagina', action:'Guia_Compra_Como_Comprar'}">
                                    Buying guide
                                </a>

                            </li>
                        </ul>
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

        </div>

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
