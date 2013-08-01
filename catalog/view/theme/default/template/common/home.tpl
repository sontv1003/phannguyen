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
        <script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
        <script src="catalog/view/javascript/home/jquery_002.js"></script>
        <script src="catalog/view/javascript/home/utils.js"></script>
        <script src="catalog/view/javascript/home/scripts.js"></script>
        <script src="catalog/view/javascript/jquery/nivo-slider/jquery.nivo.slider.pack.js"></script>
        <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/screen.css" />
        <?php echo $column_left; ?>
        <?php echo $column_right; ?>
    <div id="bgtop"></div>
    <div id="wrapper">
        <div style="left: 1249.5px; display: none;" id="gotop"><a href="#"><span>Go Top</span></a></div>
        <!--layout-->
        <div id="layout" class="clearfix">
            <header id="header">
                <div id="followus"> <span>Follow us:</span>
                    <ul>
                        <li id="int_fb"><a name="&amp;lid=http://www.facebook.com/phannguyen" href="http://www.facebook.com/phannguyen" target="_blank">&nbsp;</a></li>
                        <li id="int_tw"><a name="&amp;lid=http://twitter.com/phannguyen" href="http://twitter.com/phannguyen" target="_blank">&nbsp;</a></li>
                        <li id="int_yt"><a name="&amp;lid=http://www.youtube.com/phannguyen" href="http://www.youtube.com/phannguyen" target="_blank">&nbsp;</a></li>
                    </ul>
                </div>
                <div id="sn">
                    <p id="signin">
                        <?php if (!$logged) { ?>
                            <?php echo $text_welcome; ?>
                        <?php } else { ?>
                            <?php echo $text_logged; ?>
                        <?php } ?>
                    </p>
                </div>
            </header>
            <!--main_nav-->
            <section id="main_nav">
                <div id="qn_logo">
                    <a href="<?php echo $home; ?>" id="logo"><img src="<?php echo HTTP_SERVER ?>image/home/logo_dg.png" alt="Gia Phan logo"></a> </div>
                <nav id="nt"> </nav>
            </section>
            <!--/main_nav--> 

            <!--body-->
            <section id="body">                
                <!--topbanner-->
                <div class="row-fluid" id="topbanner">
                    <div class="col4">
                        <div class="figure">
                            <img id="logo_c4" style="position:absolute;top:125px;left:50px;z-index:100;" src="<?php echo HTTP_SERVER ?>image/home/logo_small.png" > 
                            <?php echo $content_top; ?>
                            <!--                            <div style="height: 339.72px;" id="slide_top"> 
                                                            <img style="display: block;" src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-fw-2014-men-adv-campaign-.jpg" alt="phan nguyễn 1">
                                                            <img style="display: block;" src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-fw-2014-child-adv-campaign-04.jpg" alt="">
                                                            <img style="display: inline;" src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-fw-2014-women-adv-campaign-02.jpg" alt="#">
                                                        </div>
                                                        <div style="opacity: 0.7; display: none; height: 339.72px;" class="fdr"></div>
                                                        <div class="caption">
                                                            <img id="logo_c4" src="<?php echo HTTP_SERVER ?>image/home/logo_small.png" > 
                                                            <ul class="en" style="display: none;" id="dglinks">
                                                                <li id="dg_wmn">
                                                                    <a href="http://www.thoitrangphannguyen.com/ao-phong-nam" target="_blank">Hàng hiệu của người Việt</a><span></span></li>
                                                            </ul>
                                                        </div>-->
                        </div>
                    </div>
                </div>
                <!--/topbanner--> 

                <!--filterby-->
                <div class="loaded" id="filterby">
                    <h3>Danh Mục</h3>
                    <ul id="filters">
                        <?php if ($categories): ?>
                            <?php foreach ($categories as $category) : ?>
                                <li><a href="<?php echo $category['href'] ?>"><?php echo $category['name'] ?></a></li>
                                <?php
                            endforeach;
                        endif;
                        ?>
                    </ul>
                    <div style="width: 100%; display: none;" id="loading_bar"></div>
                </div>
                <!--/filterby--> 

                <!--container_dgbnr-->
                <div class="isotope"  id="container_dgbnr">

                    <?php foreach ($categories as $category): ?>
                        <div style="position: absolute; left: 0px; top: 0px; opacity: 1; display: block;" class="dgbnr col2 collection htxtleft vtxtmiddle isotope-item" data-category="collection" data-social="none"> 
                            <a href="<?php echo $category['href'] ?>">
                                <div class="figure"> 
                                    <img src="<?php echo $category['image'] ?>" class="bdg" alt="#" height="374" width="560">
                                    <div style="opacity: 0.5285; display: block;" class="fdr"></div>
                                    <div class="caption">
                                        <div class="cpos_h3">
                                            <h3><?php echo $category['name'] ?></h3>
                                        </div>
                                    </div>
                                </div>
                            </a> 
                        </div>
                    <?php endforeach; ?>

                </div>
                <!--/container_dgbnr--> 
            </section>
            <!--/body--> 
            <!--load_more-->
            <!--            <div  id="load_more">
                            <div style="display: none;" id="txt_loading_more">Loading more content...</div>
                            <div style="display: none;" id="btn_load_more"><a href="#"><span>Load more content</span></a></div>
                        </div>-->
            <!--/load_more--> 
        </div>
        <!--/layout--> 
    </div>

    <!--footer-->
    <footer style="display: block;" id="footer">
        <div id="footer_container">
            <p> <br>
                Copyright © Gia Phan - ĐT: 0936.474.346 - Giấy Phép số. 763 - All rights reserved. Thiết kế bởi: <a href="http://geckomedia.vn"> Gecko Media</a> </p>
        </div>
    </footer>
    <!--chiude footer--> 
    <div id="mboxScriptContainer" style="display:none;visibility:hidden;"></div>
    <style>
        .mboxDefault{visibility:hidden;}
    </style>
</body>
</html>