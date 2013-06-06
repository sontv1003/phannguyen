
<?php if (count($languages) > 1) { ?>
    <li class="_userLang">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <a href="javascript:void(0)"><?php echo $text_language; ?></a>

            <ul class="list-languages">
                <?php foreach ($languages as $language) { ?>
                    <?php if ($language['code'] == $language_code) { ?>
                        <li class="current">
                            <a href="javascript:void(0)"><?php echo $language['name']; ?></a>
                        </li>
                    <?php } else { ?>
                        <li>
                            <a href="javascript:void(0)" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $(this).parent().parent().parent().submit();">
                                <?php echo $language['name']; ?>
                            </a>
                        </li>
                    <?php } ?>
                <?php } ?>

            </ul>

            <input type="hidden" name="language_code" value="" />
            <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
        </form>
    </li>
<?php } ?>