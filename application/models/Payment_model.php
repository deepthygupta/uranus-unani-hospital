<?php
/**
 * Created by PhpStorm.
 * User: acer
 * Date: 01-07-2017
 * Time: 10:17
 */
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Payment_model extends CI_Model
{

    function pay_data($amount,$billing_cust_name,$billing_cust_address,$billing_city,$billing_cust_state,$delivery_zip,$delivery_cust_country,$delivery_cust_tel,$billing_cust_email){
//        require_once(APPPATH . 'libraries/ccavenue/adler32.php');
//        require_once(APPPATH . 'libraries/ccavenue/Aes.php');
        $url='http://www.rawsqueezed.com/index.php/home/response_handler';
        $merchant_id=$this->crud_model->getMerchantKey();
        $order_id=$this->session->userdata('sale_code');
        $working_key = $this->crud_model->getWorkingKey();
//        $checksum = getchecksum($merchant_id, $amount, $order_id, $url, $working_key); // Method to generate checksum
        $merchant_data = 'tid='.time().'&merchant_id='.$merchant_id.'&order_id='.$order_id.'&amount='.$amount.
            '&currency=INR'.'&redirect_url='.$url.'&cancel_url='.$url.'&language=EN'.
            '&billing_name='.$billing_cust_name.'&billing_address='.$billing_cust_address.'&billing_city='.$billing_city.'&billing_state='.$billing_cust_state.
            '&billing_zip='.$delivery_zip.'&billing_country='.$delivery_cust_country.'&billing_tel='.$delivery_cust_tel.'&billing_email='.$billing_cust_email;
        return $merchant_data;
    }
}