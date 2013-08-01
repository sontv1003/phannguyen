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
                    <p id="signin"><a href="#" target="_blank">Đăng Nhập</a></p>
                </div>
            </header>
            <!--main_nav-->
            <section id="main_nav">
                <div id="qn_logo"> 
                    <!-- <a class="on" href="#" id="qn"><span>+</span> Danh Mục</a> ---> 
                    <a href="#" id="logo"><img src="<?php echo HTTP_SERVER ?>image/home/logo_dg.png" alt="Gia Phan logo"></a> </div>
                <nav id="nt"> </nav>
            </section>
            <!--/main_nav--> 

            <!--body-->
            <section id="body"> 
                <!--topbanner-->
                <div class="row-fluid" id="topbanner">
                    <div class="col4">
                        <div class="figure">
                            <div style="height: 339.72px;" id="slide_top"> <img style="display: block;" src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-fw-2014-men-adv-campaign-.jpg" alt="phan nguyễn 1"> <img style="display: block;" src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-fw-2014-child-adv-campaign-04.jpg" alt=""> <img style="display: inline;" src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-fw-2014-women-adv-campaign-02.jpg" alt="#"></div>
                            <div style="opacity: 0.7; display: none; height: 339.72px;" class="fdr"></div>
                            <div class="caption"> <img id="logo_c4" src="<?php echo HTTP_SERVER ?>image/home/logo_small.png" > 
                                <ul class="en" style="display: none;" id="dglinks">
                                    <li id="dg_wmn">
                                        <a href="http://www.thoitrangphannguyen.com/ao-phong-nam" target="_blank">Hàng hiệu của người Việt</a><span></span></li>
                                </ul>
                            </div>


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
                    <div style="position: absolute; left: 0px; top: 0px; opacity: 1; display: block;" class="dgbnr col2 collection htxtleft vtxtmiddle isotope-item" data-category="collection" data-social="none"> <a href="#" target="_blank">
                            <div class="figure"> <img src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-ss-2014-men-fashion-show.jpg" class="bdg" alt="#" height="374" width="560">
                                <div style="opacity: 0.5285; display: block;" class="fdr"></div>
                                <div class="caption">
                                    <div class="cpos_h3">
                                        <h3>THƯƠNG HIỆU VIỆT </h3>
                                    </div>
                                </div>
                            </div>
                        </a> </div>
                    <div style="position: absolute; left: 578px; top: 0px; opacity: 1; display: block;" class="dgbnr col2 beauty htxtright vtxtmiddle isotope-item" data-category="beauty" data-social="none"> <a href="#" target="_blank">
                            <div class="figure"> <img src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-light-blue-men-women-perfumes-david-gandy-.jpg" class="bdg" alt="#" height="374" width="560">
                                <div style="opacity: 0.7; display: none;" class="fdr"></div>
                                <div class="caption">
                                    <div class="cpos_h3">
                                        <h3>PHONG CÁCH CÁ TÍNH</h3>
                                    </div>
                                </div>
                            </div>
                        </a> </div>
                    <div style="position: absolute; left: 0px; top: 404px; opacity: 1; display: block;" class="dgbnr col2 advertising htxtleft vtxtmiddle isotope-item" data-category="advertising" data-social="none"> <a href="#" target="_blank">
                            <div class="figure"> <img src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-fw-2014-men-adv-campaign-016.jpg" class="bdg" alt="#" height="374" width="560">
                                <div style="opacity: 0.7; display: none;" class="fdr"></div>
                                <div class="caption">
                                    <div class="cpos_h3">
                                        <h3>VEST THỜI THƯỢNG</h3>
                                    </div>
                                </div>
                            </div>
                        </a> </div>
                    <div style="position: absolute; left: 578px; top: 404px; opacity: 1; display: block;" class="dgbnr col2 advertising htxtright vtxtmiddle isotope-item" data-category="advertising" data-social="none"> <a href="#" target="_blank">
                            <div class="figure"> <img src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-fw-2014-women-adv-campaign-06.jpg" class="bdg" alt="#" height="374" width="560">
                                <div style="opacity: 0; display: block;" class="fdr"></div>
                                <div class="caption">
                                    <div class="cpos_h3">
                                        <h3>PHỤ KIỆN </h3>
                                    </div>
                                </div>
                            </div>
                        </a> </div>
                    <div style="position: absolute; left: 0px; top: 808px; opacity: 1; display: block;" class="dgbnr col2 collection htxtleft vtxtmiddle isotope-item" data-category="collection" data-social="none"> <a href="#" target="_blank">
                            <div class="figure"> <img src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-fw-2014-men-collection-02.jpg" class="bdg" alt="Dolce and Gabbana Men Collection Fashion Winter 2014" height="374" width="560">
                                <div class="fdr"></div>
                                <div class="caption">
                                    <div class="cpos_h3">
                                        <h3>BỘ SƯ TẬP MÙA THU</h3>
                                    </div>
                                </div>
                            </div>
                        </a> </div>
                    <div style="position: absolute; left: 578px; top: 808px; opacity: 1; display: block;" class="dgbnr col2 collection htxtright vtxtmiddle isotope-item" data-category="collection" data-social="none"> <a href="#" target="_blank">
                            <div class="figure"> <img src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-fw-2014-women-collection-10.jpg" class="bdg" alt="Dolce and Gabbana Women Collection Winter 2014" height="374" width="560">
                                <div style="opacity: 0.7; display: none;" class="fdr"></div>
                                <div class="caption">
                                    <div class="cpos_h3">
                                        <h3>WOMAN COLLECTION</h3>
                                    </div>
                                </div>
                            </div>
                        </a> </div>
                    <div style="position: absolute; left: 0px; top: 1212px; opacity: 1; display: block;" class="dgbnr col2 collection htxtleft vtxtmiddle isotope-item" data-category="collection" data-social="none"> <a href="#" target="_blank">
                            <div class="figure"> <img src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-fw-2014-kids-collection-02.jpg" class="bdg" alt="#" height="374" width="560">
                                <div class="fdr"></div>
                                <div class="caption">
                                    <div class="cpos_h3">
                                        <h3>KIDS</h3>
                                    </div>
                                </div>
                            </div>
                        </a> </div>
                    <div style="position: absolute; left: 578px; top: 1212px; opacity: 1; display: block;" class="dgbnr col2 beauty htxtright vtxtmiddle isotope-item" data-category="beauty" data-social="none"> <a href="#" target="_blank">
                            <div class="figure"> <img src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-love-in-taormina-make-up-collection-nail-l.jpg" class="bdg" alt="#" height="374" width="560">
                                <div style="opacity: 0.7; display: none;" class="fdr"></div>
                                <div class="caption">
                                    <div class="cpos_h3">
                                        <h3>MAKE UP</h3>
                                    </div>
                                </div>
                            </div>
                        </a> </div>
                    <div style="position: absolute; left: 0px; top: 1616px; opacity: 1; display: block;" class="dgbnr col2 accessories htxtleft vtxtmiddle isotope-item" data-category="accessories" data-social="none"> <a href="" target="_blank">
                            <div class="figure"> <img src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-jewellery-collection-woman.jpg" class="bdg" alt="#" height="374" width="560">
                                <div class="fdr"></div>
                                <div class="caption">
                                    <div class="cpos_h3">
                                        <h3>JEWELLERY</h3>
                                    </div>
                                </div>
                            </div>
                        </a> </div>
                    <div style="position: absolute; left: 578px; top: 2424px; opacity: 1; display: block;" class="dgbnr col2 collection htxtright vtxtmiddle isotope-item" data-category="collection" data-social="none"> <a href="#" target="_blank">
                            <div class="figure"> <img src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-fw-2014-women-fashion-show-runway-01.jpg" class="bdg" alt="#" height="374" width="560">
                                <div style="opacity: 0.7; display: none;" class="fdr"></div>
                                <div class="caption">
                                    <div class="cpos_h3">
                                        <h3>WINTER 2014 WOMAN FASHION SHOW</h3>
                                    </div>
                                </div>
                            </div>
                        </a> </div>
                    <div style="position: absolute; left: 0px; top: 2828px; opacity: 1; display: block;" class="dgbnr htxtleft vtxtmiddle col2 world isotope-item" data-category="world"><a href="#" target="_blank">
                            <div class="figure"><img src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-gold-restaurant-milan-italian-cooking_560x.jpg" height="374" width="560">
                                <div class="fdr"></div>
                                <div class="caption" style="374px">
                                    <div class="cpos_h3">
                                        <h3> GOLD RESTAURANT </h3>
                                    </div>
                                </div>
                            </div>
                        </a></div>
                    <div style="position: absolute; left: 578px; top: 2828px; opacity: 1; display: block;" class="dgbnr htxtright vtxtmiddle col2 world isotope-item" data-category="world"><a href="#" target="_blank">
                            <div class="figure"><img src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-martini-bar-milan_560x374.jpg" height="374" width="560">
                                <div style="opacity: 0.7; display: none;" class="fdr"></div>
                                <div class="caption" style="374px">
                                    <div class="cpos_h3">
                                        <h3> BAR MARTINI </h3>
                                    </div>
                                </div>
                            </div>
                        </a></div>
                    <div style="position: absolute; left: 0px; top: 3232px; opacity: 1; display: block;" class="dgbnr htxtleft vtxtmiddle col2 sports isotope-item" data-category="sports"><a href="#" target="_blank">
                            <div class="figure"><img src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-lionel-andres-messi_560x374.jpg" height="374" width="560">
                                <div class="fdr"></div>
                                <div class="caption" style="374px">
                                    <div class="cpos_h3">
                                        <h3> LIONEL ANDRÉS MESSI </h3>
                                    </div>
                                </div>
                            </div>
                        </a></div>
                    <div style="position: absolute; left: 578px; top: 3232px; opacity: 1; display: block;" class="dgbnr htxtright vtxtmiddle col2 sports isotope-item" data-category="sports"><a href="#" target="_blank">
                            <div class="figure"><img src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-italy-national-team-football-uniforms-play.jpg" height="374" width="560">
                                <div style="opacity: 0.7; display: none;" class="fdr"></div>
                                <div class="caption" style="374px">
                                    <div class="cpos_h3">
                                        <h3> ITALIAN FOOTBALL TEAM &nbsp; </h3>
                                    </div>
                                </div>
                            </div>
                        </a></div>
                    <div style="position: absolute; left: 0px; top: 3636px; opacity: 1; display: block;" class="dgbnr htxtleft vtxtmiddle col2 sports isotope-item" data-category="sports"><a href="#" target="_blank">
                            <div class="figure"><img src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-ac-milan-sites-players-portraits_560x374.jpg" height="374" width="560">
                                <div class="fdr"></div>
                                <div class="caption" style="374px">
                                    <div class="cpos_h3">
                                        <h3> AC MILAN </h3>
                                    </div>
                                </div>
                            </div>
                        </a></div>
                    <div style="position: absolute; left: 578px; top: 3636px; opacity: 1; display: block;" class="dgbnr htxtright vtxtmiddle col2 sports isotope-item" data-category="sports"><a href="#" target="_blank">
                            <div class="figure"><img src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-italia-thunder-milan-boxing-team_560x374.jpg" height="374" width="560">
                                <div style="opacity: 0.7; display: none;" class="fdr"></div>
                                <div class="caption" style="374px">
                                    <div class="cpos_h3">
                                        <h3> ITALIA THUNDER </h3>
                                    </div>
                                </div>
                            </div>
                        </a></div>
                    <div style="position: absolute; left: 0px; top: 4040px; opacity: 1; display: block;" class="dgbnr htxtleft vtxtmiddle col2 world isotope-item" data-category="world"><a href="#" target="_blank">
                            <div class="figure"><img src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-books-photo-gallery-collection_560x374.jpg" height="374" width="560">
                                <div class="fdr"></div>
                                <div class="caption" style="374px">
                                    <div class="cpos_h3">
                                        <h3> BOOKS </h3>
                                    </div>
                                </div>
                            </div>
                        </a></div>
                    <div style="position: absolute; left: 578px; top: 4040px; opacity: 1; display: block;" class="dgbnr htxtright vtxtmiddle col2 beauty isotope-item" data-category="beauty"><a href="#" target="_blank">
                            <div class="figure"><img src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-perfumes-pour-femme-pour-homme.jpg" height="374" width="560">
                                <div style="opacity: 0.7; display: none;" class="fdr"></div>
                                <div class="caption" style="374px">
                                    <div class="cpos_h3">
                                        <h3> POUR HOMME<br>
                                            POUR FEMME </h3>
                                    </div>
                                </div>
                            </div>
                        </a></div>
                    <div style="position: absolute; left: 0px; top: 4444px; opacity: 1; display: block;" class="dgbnr htxtleft vtxtmiddle col2 beauty isotope-item" data-category="beauty"><a href="#" target="_blank">
                            <div class="figure"><img src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-woman-perfumes-desire-the-one-fragrance_.jpg" height="374" width="560">
                                <div class="fdr"></div>
                                <div class="caption" style="374px">
                                    <div class="cpos_h3">
                                        <h3> THE ONE DESIRE </h3>
                                    </div>
                                </div>
                            </div>
                        </a></div>
                    <div style="position: absolute; left: 578px; top: 4444px; opacity: 1; display: block;" class="dgbnr htxtright vtxtmiddle col2 beauty isotope-item" data-category="beauty"><a href="#" target="_blank">
                            <div class="figure"><img src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-the-one-sport-man-perfume-fragrance.jpg" height="374" width="560">
                                <div style="opacity: 0.7; display: none;" class="fdr"></div>
                                <div class="caption" style="374px">
                                    <div class="cpos_h3">
                                        <h3> THE ONE SPORT </h3>
                                    </div>
                                </div>
                            </div>
                        </a></div>
                    <div style="position: absolute; left: 0px; top: 4848px; opacity: 1; display: block;" class="dgbnr htxtleft vtxtmiddle col2 world isotope-item" data-category="world"><a href="#" target="_blank">
                            <div class="figure"><img src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-celebrities-photo-album-online_-560x374.jpg" height="374" width="560">
                                <div class="fdr"></div>
                                <div class="caption" style="374px">
                                    <div class="cpos_h3">
                                        <h3> CELEBRITIES </h3>
                                    </div>
                                </div>
                            </div>
                        </a></div>
                    <div style="position: absolute; left: 578px; top: 4848px; opacity: 1; display: block;" class="dgbnr htxtright vtxtmiddle col2 world isotope-item" data-category="world"><a href="#" target="_blank">
                            <div class="figure"><img src="<?php echo HTTP_SERVER ?>image/home/dolce-and-gabbana-store-on-line-finder-locator_560x374.jpg" height="374" width="560">
                                <div style="opacity: 0.7; display: none;" class="fdr"></div>
                                <div class="caption" style="374px">
                                    <div class="cpos_h3">
                                        <h3> STORE LOCATOR </h3>
                                    </div>
                                </div>
                            </div>
                        </a></div>
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