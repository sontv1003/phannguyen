<?php

class ControllerProductSizeguide extends Controller {

    function index() {
        
        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/sizeguide.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/product/sizeguide.tpl';
        } else {
            $this->template = 'default/template/product/sizeguide.tpl';
        }
    }

}
?>