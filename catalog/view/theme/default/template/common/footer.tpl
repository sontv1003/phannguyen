

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
                    <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
                    <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
                    <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                </ul>
            </li>

            <li>
                <p><?php echo $text_extra; ?></p>
                <ul class="submenuUtilities">
                    <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
                    <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
                    <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
                    <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>    
                </ul>
            </li>

            <li>
                <p><?php echo $text_account; ?></p>
                <ul class="submenuUtilities">
                    <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                    <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                    <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                    <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                </ul>
            </li>
        </ul>

    </nav>


    <div class="line-up">
        <nav id="countries">

            <ul>
                <li>

                    <span>
                        <?php echo $powered; ?>
                    </span>	

                </li>



            </ul>
        </nav>

    </div>
    
</footer>



<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<div id="powered"><?php echo $powered; ?></div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
</div>

</body>
</html>