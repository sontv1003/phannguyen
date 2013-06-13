

<li id="menuItemData_194501">
    <a href="javascript:void(0)" onclick="$('#information').toggle()">
        + <?php echo $heading_title; ?>
    </a>
    <ul id="information">
        <?php foreach ($informations as $information) { ?>
        <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
        <?php } ?>
        <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
    </ul>
</li>