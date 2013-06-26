<?php

class ControllerCommonFooter extends Controller {

    protected function index() {
        $this->language->load('common/footer');

        $this->data['text_information'] = $this->language->get('text_information');
        $this->data['text_service'] = $this->language->get('text_service');
        $this->data['text_extra'] = $this->language->get('text_extra');
        $this->data['text_contact'] = $this->language->get('text_contact');
        $this->data['text_return'] = $this->language->get('text_return');
        $this->data['text_sitemap'] = $this->language->get('text_sitemap');
        $this->data['text_manufacturer'] = $this->language->get('text_manufacturer');
        $this->data['text_voucher'] = $this->language->get('text_voucher');
        $this->data['text_affiliate'] = $this->language->get('text_affiliate');
        $this->data['text_special'] = $this->language->get('text_special');
        $this->data['text_account'] = $this->language->get('text_account');
        $this->data['text_order'] = $this->language->get('text_order');
        $this->data['text_wishlist'] = $this->language->get('text_wishlist');
        $this->data['text_newsletter'] = $this->language->get('text_newsletter');

        $this->load->model('catalog/information');

        $this->data['informations'] = array();
        $this->data['logged'] = $this->customer->isLogged();

        foreach ($this->model_catalog_information->getInformations() as $result) {
            if ($result['bottom']) {
                $this->data['informations'][] = array(
                    'title' => $result['title'],
                    'href' => $this->url->link('information/information', 'information_id=' . $result['information_id'])
                );
            }
        }

        $this->data['contact'] = $this->url->link('information/contact');
        $this->data['return'] = $this->url->link('account/return/insert', '', 'SSL');
        $this->data['sitemap'] = $this->url->link('information/sitemap');
        $this->data['manufacturer'] = $this->url->link('product/manufacturer');
        $this->data['voucher'] = $this->url->link('account/voucher', '', 'SSL');
        $this->data['affiliate'] = $this->url->link('affiliate/account', '', 'SSL');
        $this->data['special'] = $this->url->link('product/special');
        $this->data['account'] = $this->url->link('account/account', '', 'SSL');
        $this->data['order'] = $this->url->link('account/order', '', 'SSL');
        $this->data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
        $this->data['newsletter'] = $this->url->link('account/newsletter', '', 'SSL');        

        $this->data['powered'] = sprintf($this->language->get('text_powered'), $this->config->get('config_name'), date('Y', time()));

        // Whos Online
        if ($this->config->get('config_customer_online')) {
            $this->load->model('tool/online');

            if (isset($this->request->server['REMOTE_ADDR'])) {
                $ip = $this->request->server['REMOTE_ADDR'];
            } else {
                $ip = '';
            }

            if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
                $url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];
            } else {
                $url = '';
            }

            if (isset($this->request->server['HTTP_REFERER'])) {
                $referer = $this->request->server['HTTP_REFERER'];
            } else {
                $referer = '';
            }

            $this->model_tool_online->whosonline($ip, $this->customer->getId(), $url, $referer);
        }
        
        
        // Validate minimum quantity requirments.			
        $products = $this->cart->getProducts();

        foreach ($products as $product) {
            $product_total = 0;

            foreach ($products as $product_2) {
                if ($product_2['product_id'] == $product['product_id']) {
                    $product_total += $product_2['quantity'];
                }
            }

            if ($product['minimum'] > $product_total) {
                $this->redirect($this->url->link('checkout/cart'));
            }
        }

        $this->language->load('checkout/checkout');

        $this->document->addScript('catalog/view/javascript/jquery/colorbox/jquery.colorbox-min.js');
        $this->document->addStyle('catalog/view/javascript/jquery/colorbox/colorbox.css');

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home'),
            'separator' => false
        );

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_cart'),
            'href' => $this->url->link('checkout/cart'),
            'separator' => $this->language->get('text_separator')
        );

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('checkout/checkout', '', 'SSL'),
            'separator' => $this->language->get('text_separator')
        );
        
        $this->data['text_checkout_option'] = $this->language->get('text_checkout_option');
        $this->data['text_checkout_account'] = $this->language->get('text_checkout_account');
        $this->data['text_checkout_payment_address'] = $this->language->get('text_checkout_payment_address');
        $this->data['text_checkout_shipping_address'] = $this->language->get('text_checkout_shipping_address');
        $this->data['text_checkout_shipping_method'] = $this->language->get('text_checkout_shipping_method');
        $this->data['text_checkout_payment_method'] = $this->language->get('text_checkout_payment_method');
        $this->data['text_checkout_confirm'] = $this->language->get('text_checkout_confirm');
        $this->data['text_modify'] = $this->language->get('text_modify');

        $this->data['logged'] = $this->customer->isLogged();
        $this->data['shipping_required'] = $this->cart->hasShipping();
        
        
        
        
        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/footer.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/common/footer.tpl';
        } else {
            $this->template = 'default/template/common/footer.tpl';
        }

        $this->render();
    }

}

?>