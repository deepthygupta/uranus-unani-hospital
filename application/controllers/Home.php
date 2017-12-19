<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Home extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->library('paypal');
        $this->load->library('twoCheckout_Lib');
        $this->load->library('vouguepay');
        /* cache control */

        $cache_time = $this->db->get_where('general_settings', array('type' => 'cache_time'))->row()->value;
        if (!$this->input->is_ajax_request()) {
            $this->output->set_header('HTTP/1.0 200 OK');
            $this->output->set_header('HTTP/1.1 200 OK');
            $this->output->set_header('Last-Modified: ' . gmdate('D, d M Y H:i:s', time()) . ' GMT');
            $this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate');
            $this->output->set_header('Cache-Control: post-check=0, pre-check=0');
            $this->output->set_header('Pragma: no-cache');
            if ($this->router->fetch_method() == 'index' ||
                    $this->router->fetch_method() == 'featured_item' ||
                    $this->router->fetch_method() == 'others_product' ||
                    $this->router->fetch_method() == 'all_brands' ||
                    $this->router->fetch_method() == 'all_category' ||
                    $this->router->fetch_method() == 'all_vendor' ||
                    $this->router->fetch_method() == 'blog' ||
                    $this->router->fetch_method() == 'blog_view' ||
                    $this->router->fetch_method() == 'vendor' ||
                    $this->router->fetch_method() == 'category'
            ) {
                $this->output->cache($cache_time);
            }
        }
        $this->config->cache_query();
        $currency = $this->session->userdata('currency');
        if (!isset($currency)) {
            $this->session->set_userdata('currency', $this->db->get_where('business_settings', array('type' => 'home_def_currency'))->row()->value);
        }
        setcookie('lang', $this->session->userdata('language'), time() + (86400), "/");
        setcookie('curr', $this->session->userdata('currency'), time() + (86400), "/");
        //echo $_COOKIE['lang'];
    }

    /* FUNCTION: Loads Homepage */

    public function index() {

        $page_data['asset_page'] = "home";
        $page_data['page_name'] = "home";
        $page_data['is_loggedin'] = $this->session->userdata('user_login');

        $page_data['page_title'] = "home";
        $this->benchmark->mark('code_start');
        $this->load->view('front/index', $page_data);

        // Some code happens here

        $this->benchmark->mark('code_end');
    }

    function home() {

        $page_data['page_name'] = "home1";
        $page_data['page_title'] = "home";
        $this->load->view('front/index', $page_data);
    }

    function add_count($slug) {
        // load cookie helper
        $this->load->helper('cookie'); // this line will return the cookie which has slug name
        $check_visitor = $this->input->cookie(urldecode($slug), FALSE); // this line will return the visitor ip address
        $ip = $this->input->ip_address(); // if the visitor visit this article for first time then
        // //set new cookie and update article_views column ..
        //you might be notice we used slug for cookie name and ip
        //address for value to distinguish between articles views
        if ($check_visitor == false) {
            $cookie = array("name" => urldecode($slug),
                "value" => "$ip", "expire" => time() + 7200,
                "secure" => false);
            $this->input->set_cookie($cookie);
            $this->news->update_counter(urldecode($slug));
        }
    }

    function top_bar_right() {
        $this->load->view('front/components/top_bar_right.php');
    }

    function load_portion($page = '') {
        $page = str_replace('-', '/', $page);
        $this->load->view('front/' . $page);
    }

    function vendor_profile($para1 = '', $para2 = '') {
        if ($this->crud_model->get_settings_value('general_settings', 'vendor_system') !== 'ok') {
            redirect(base_url() . 'index.php/home');
        }
        if ($para1 == 'get_slider') {
            $page_data['vendor_id'] = $para2;
            $this->db->where("status", "ok");
            $this->db->where('added_by', json_encode(array('type' => 'vendor', 'id' => $para2)));
            $page_data['sliders'] = $this->db->get('slides')->result_array();
            $this->load->view('front/vendor/public_profile/home/slider', $page_data);
        } else {
            $status = $this->db->get_where('vendor', array('vendor_id' => $para1))->row()->status;
            if ($status !== 'approved') {
                redirect(base_url(), 'refresh');
            }
            $page_data['page_title'] = $this->crud_model->get_type_name_by_id('vendor', $para1, 'display_name');
            $page_data['asset_page'] = "vendor_public_home";
            $page_data['page_name'] = "vendor/public_profile";
            $page_data['content'] = "home";
            $this->db->where("status", "ok");
            $this->db->where('added_by', json_encode(array('type' => 'vendor', 'id' => $para1)));
            $page_data['sliders'] = $this->db->get('slides')->result_array();
            $page_data['vendor_info'] = $this->db->get_where('vendor', array('vendor_id' => $para1))->result_array();
            $page_data['vendor_tags'] = $this->db->get_where('vendor', array('vendor_id' => $para1))->row()->keywords;
            $page_data['vendor_id'] = $para1;
            $this->load->view('front/index', $page_data);
        }
    }

    /* FUNCTION: Loads Category filter page */

    function vendor_category($vendor, $para1 = "", $para2 = "", $min = "", $max = "", $text = '') {
        if ($this->crud_model->get_settings_value('general_settings', 'vendor_system') !== 'ok') {
            redirect(base_url() . 'index.php/home');
        }
        if ($para2 == "") {
            $page_data['all_products'] = $this->db->get_where('product', array(
                        'category' => $para1
                    ))->result_array();
        } else if ($para2 != "") {
            $page_data['all_products'] = $this->db->get_where('product', array(
                        'sub_category' => $para2
                    ))->result_array();
        }

        $brand_sub = explode('-', $para2);

        $sub = 0;
        $brand = 0;

        if (isset($brand_sub[0])) {
            $sub = $brand_sub[0];
        }
        if (isset($brand_sub[1])) {
            $brand = $brand_sub[1];
        }

        $page_data['range'] = $min . ';' . $max;
        $page_data['page_name'] = "vendor/public_profile";
        $page_data['content'] = "product_list";
        $page_data['asset_page'] = "product_list_other";
        $page_data['page_title'] = translate('products');
        $page_data['all_category'] = $this->db->get('category')->result_array();
        $page_data['all_sub_category'] = $this->db->get('sub_category')->result_array();
        $page_data['cur_sub_category'] = $sub;
        $page_data['cur_brand'] = $brand;
        $page_data['cur_category'] = $para1;
        $page_data['vendor_id'] = $vendor;
        $page_data['text'] = $text;
        $page_data['category_data'] = $this->db->get_where('category', array(
                    'category_id' => $para1
                ))->result_array();
        $this->load->view('front/index', $page_data);
    }

    function vendor_featured($para1 = '', $para2 = '') {
        if ($this->crud_model->get_settings_value('general_settings', 'vendor_system') !== 'ok') {
            redirect(base_url() . 'index.php/home');
        }
        if ($para1 == 'get_list') {
            $page_data['vendor_id'] = $para2;
            $this->load->view('front/vendor/public_profile/featured/list_page', $page_data);
        } elseif ($para1 == 'get_ajax_list') {
            $this->load->library('Ajax_pagination');

            $vendor_id = $this->input->post('vendor');

            $this->db->where('status', 'ok');
            $this->db->where('featured', 'ok');
            $this->db->where('added_by', json_encode(array('type' => 'vendor', 'id' => $vendor_id)));
            // pagination
            $config['total_rows'] = $this->db->count_all_results('product');
            $config['base_url'] = base_url() . 'index.php?home/listed/';
            $config['per_page'] = 9;
            $config['uri_segment'] = 5;
            $config['cur_page_giv'] = $para2;

            $function = "filter_blog('0')";
            $config['first_link'] = '&laquo;';
            $config['first_tag_open'] = '<li><a onClick="' . $function . '">';
            $config['first_tag_close'] = '</a></li>';

            $rr = ($config['total_rows'] - 1) / $config['per_page'];
            $last_start = floor($rr) * $config['per_page'];
            $function = "filter_vendor_featured('" . $last_start . "')";
            $config['last_link'] = '&raquo;';
            $config['last_tag_open'] = '<li><a onClick="' . $function . '">';
            $config['last_tag_close'] = '</a></li>';

            $function = "filter_vendor_featured('" . ($para2 - $config['per_page']) . "')";
            $config['prev_tag_open'] = '<li><a onClick="' . $function . '">';
            $config['prev_tag_close'] = '</a></li>';

            $function = "filter_vendor_featured('" . ($para2 + $config['per_page']) . "')";
            $config['next_link'] = '&rsaquo;';
            $config['next_tag_open'] = '<li><a onClick="' . $function . '">';
            $config['next_tag_close'] = '</a></li>';

            $config['full_tag_open'] = '<ul class="pagination">';
            $config['full_tag_close'] = '</ul>';

            $config['cur_tag_open'] = '<li class="active"><a>';
            $config['cur_tag_close'] = '<span class="sr-only">(current)</span></a></li>';

            $function = "filter_vendor_featured(((this.innerHTML-1)*" . $config['per_page'] . "))";
            $config['num_tag_open'] = '<li><a onClick="' . $function . '">';
            $config['num_tag_close'] = '</a></li>';
            $this->ajax_pagination->initialize($config);

            $this->db->where('status', 'ok');
            $this->db->where('featured', 'ok');
            $this->db->where('added_by', json_encode(array('type' => 'vendor', 'id' => $vendor_id)));

            $page_data['products'] = $this->db->get('product', $config['per_page'], $para2)->result_array();
            $page_data['count'] = $config['total_rows'];

            $this->load->view('front/vendor/public_profile/featured/ajax_list', $page_data);
        } else {
            $page_data['page_title'] = translate('vendor_featured_product');
            $page_data['asset_page'] = "product_list_other";
            $page_data['page_name'] = "vendor/public_profile";
            $page_data['content'] = "featured";
            $page_data['vendor_id'] = $para1;
            $this->load->view('front/index', $page_data);
        }
    }

    function all_vendor() {
        if ($this->crud_model->get_settings_value('general_settings', 'vendor_system') !== 'ok') {
            redirect(base_url() . 'index.php/home');
        }
        $page_data['page_name'] = "vendor/all";
        $page_data['asset_page'] = "all_vendor";
        $page_data['page_title'] = translate('all_vendors');
        $this->load->view('front/index', $page_data);
    }

    function vendor($vendor_id) {
        if ($this->crud_model->get_settings_value('general_settings', 'vendor_system') !== 'ok') {
            redirect(base_url() . 'index.php/home');
        }
        $vendor_system = $this->db->get_where('general_settings', array('type' => 'vendor_system'))->row()->value;
        if ($vendor_system == 'ok' &&
                $this->db->get_where('vendor', array('vendor_id' => $vendor_id))->row()->status == 'approved'
        ) {
            $min = $this->get_range_lvl('added_by', '{"type":"vendor","id":"' . $vendor_id . '"}', "min");
            $max = $this->get_range_lvl('added_by', '{"type":"vendor","id":"' . $vendor_id . '"}', "max");
            $this->db->order_by('product_id', 'desc');
            $page_data['featured_data'] = $this->db->get_where('product', array(
                        'featured' => "ok",
                        'status' => 'ok',
                        'added_by' => '{"type":"vendor","id":"' . $vendor_id . '"}'
                    ))->result_array();
            $page_data['range'] = $min . ';' . $max;
            $page_data['all_category'] = $this->db->get('category')->result_array();
            $page_data['all_sub_category'] = $this->db->get('sub_category')->result_array();
            $page_data['page_name'] = 'vendor_home';
            $page_data['vendor'] = $vendor_id;
            $page_data['page_title'] = $this->db->get_where('vendor', array('vendor_id' => $vendor_id))->row()->display_name;
            $this->load->view('front/index', $page_data);
        } else {
            redirect(base_url(), 'refresh');
        }
    }

    function surfer_info() {
        $this->crud_model->ip_data();
    }

    /* FUNCTION: Loads Customer Profile Page */

    function profile($para1 = "", $para2 = "") {
        if ($this->session->userdata('user_login') != "yes") {
            redirect(base_url(), 'refresh');
        }
        if ($para1 == "info") {
            $page_data['user_info'] = $this->db->get_where('user', array('user_id' => $this->session->userdata('user_id')))->result_array();
            $this->load->view('front/user/profile', $page_data);
        } elseif ($para1 == "wishlist") {
            $this->load->view('front/user/wishlist');
        } elseif ($para1 == "order_history") {
            $this->load->view('front/user/order_history');
        } elseif ($para1 == "downloads") {
            $this->load->view('front/user/downloads');
        } elseif ($para1 == "update_profile") {
            $page_data['user_info'] = $this->db->get_where('user', array('user_id' => $this->session->userdata('user_id')))->result_array();
            $this->load->view('front/user/update_profile', $page_data);
        } elseif ($para1 == "ticket") {
            $this->load->view('front/user/ticket');
        } elseif ($para1 == "message_box") {
            $page_data['ticket'] = $para2;
            $this->crud_model->ticket_message_viewed($para2, 'user');
            $this->load->view('front/user/message_box', $page_data);
        } elseif ($para1 == "message_view") {
            $page_data['ticket'] = $para2;
            $page_data['message_data'] = $this->db->get_where('ticket', array(
                        'ticket_id' => $para2
                    ))->result_array();
            $this->crud_model->ticket_message_viewed($para2, 'user');
            $this->load->view('front/user/message_view', $page_data);
        } else {
            $page_data['part'] = 'info';
            if ($para2 == "info") {
                $page_data['part'] = 'info';
            } elseif ($para2 == "wishlist") {
                $page_data['part'] = 'wishlist';
            } elseif ($para2 == "order_history") {
                $page_data['part'] = 'order_history';
            } elseif ($para2 == "downloads") {
                $page_data['part'] = 'downloads';
            } elseif ($para2 == "update_profile") {
                $page_data['part'] = 'update_profile';
            } elseif ($para2 == "ticket") {
                $page_data['part'] = 'ticket';
            }
            $page_data['user_info'] = $this->db->get_where('user', array('user_id' => $this->session->userdata('user_id')))->result_array();
            $page_data['page_name'] = "user";
            $page_data['asset_page'] = "user_profile";
            $page_data['page_title'] = translate('my_profile');
            $this->load->view('front/index', $page_data);
        }
        /* $page_data['all_products'] = $this->db->get_where('user', array(
          'user_id' => $this->session->userdata('user_id')
          ))->result_array();
          $page_data['user_info']    = $this->db->get_where('user', array(
          'user_id' => $this->session->userdata('user_id')
          ))->result_array(); */
    }

    function ticket_message($para1 = '') {
        $page_data['page_name'] = "ticket_message";
        $page_data['ticket'] = $para1;
        $page_data['message_data'] = $this->db->get_where('ticket', array(
                    'ticket_id' => $para1
                ))->result_array();
        $this->Crud_model->ticket_message_viewed($para1, 'user');
        $page_data['msgs'] = $this->db->get_where('ticket_message', array('ticket_id' => $para1))->result_array();
        $page_data['ticket_id'] = $para1;
        $page_data['page_name'] = "ticket_message";
        $page_data['page_title'] = translate('ticket_message');
        $this->load->view('front/index', $page_data);
    }

    function ticket_message_add() {
        $this->load->library('form_validation');
        $safe = 'yes';
        $char = '';
        foreach ($_POST as $row) {
            if (preg_match('/[\^}{#~|+Â¬]/', $row, $match)) {
                $safe = 'no';
                $char = $match[0];
            }
        }

        $this->form_validation->set_rules('sub', 'Subject', 'required');
        $this->form_validation->set_rules('reply', 'Message', 'required');

        if ($this->form_validation->run() == FALSE) {
            echo validation_errors();
        } else {
            if ($safe == 'yes') {
                $data['time'] = time();
                $data['subject'] = $this->input->post('sub');
                $id = $this->session->userdata('user_id');
                $data['from_where'] = json_encode(array('type' => 'user', 'id' => $id));
                $data['to_where'] = json_encode(array('type' => 'admin', 'id' => ''));
                $data['view_status'] = 'ok';
                $this->db->insert('ticket', $data);
                $ticket_id = $this->db->insert_id();
                $data1['message'] = $this->input->post('reply');
                $data1['time'] = time();
                if (!empty($this->db->get_where('ticket_message', array('ticket_id' => $ticket_id))->row()->ticket_id)) {
                    $data1['from_where'] = $this->db->get_where('ticket_message', array('ticket_id' => $ticket_id))->row()->from_where;
                    $data1['to_where'] = $this->db->get_where('ticket_message', array('ticket_id' => $ticket_id))->row()->to_where;
                } else {
                    $data1['from_where'] = $this->db->get_where('ticket', array('ticket_id' => $ticket_id))->row()->from_where;
                    $data1['to_where'] = $this->db->get_where('ticket', array('ticket_id' => $ticket_id))->row()->to_where;
                }
                $data1['ticket_id'] = $ticket_id;
                $data1['view_status'] = json_encode(array('user_show' => 'ok', 'admin_show' => 'no'));
                $data1['subject'] = $this->db->get_where('ticket', array('ticket_id' => $ticket_id))->row()->subject;
                $this->db->insert('ticket_message', $data1);
                echo 'success#-#-#';
            } else {
                echo 'fail#-#-#Disallowed charecter : " ' . $char . ' " in the POST';
            }
        }
    }

    function ticket_reply($para1 = '') {
        $this->load->library('form_validation');
        $safe = 'yes';
        $char = '';
        foreach ($_POST as $row) {
            if (preg_match('/[\^}{#~|+Â¬]/', $row, $match)) {
                $safe = 'no';
                $char = $match[0];
            }
        }

        $this->form_validation->set_rules('reply', 'Message', 'required');

        if ($this->form_validation->run() == FALSE) {
            echo validation_errors();
        } else {
            if ($safe == 'yes') {
                $data['message'] = $this->input->post('reply');
                $data['time'] = time();
                if (!empty($this->db->get_where('ticket_message', array('ticket_id' => $para1))->row()->ticket_id)) {
                    $data['from_where'] = $this->db->get_where('ticket_message', array('ticket_id' => $para1))->row()->from_where;
                    $data['to_where'] = $this->db->get_where('ticket_message', array('ticket_id' => $para1))->row()->to_where;
                } else {
                    $data['from_where'] = $this->db->get_where('ticket', array('ticket_id' => $para1))->row()->from_where;
                    $data['to_where'] = $this->db->get_where('ticket', array('ticket_id' => $para1))->row()->to_where;
                }
                $data['ticket_id'] = $para1;
                $data['view_status'] = json_encode(array('user_show' => 'ok', 'admin_show' => 'no'));
                $data['subject'] = $this->db->get_where('ticket', array('ticket_id' => $para1))->row()->subject;
                $this->db->insert('ticket_message', $data);
                echo 'success#-#-#';
            } else {
                echo 'fail#-#-#Disallowed charecter : " ' . $char . ' " in the POST';
            }
        }
    }

    function ticket_listed($para2 = '') {
        $this->load->library('Ajax_pagination');

        $id = $this->session->userdata('user_id');
        $this->db->where('from_where', '{"type":"user","id":"' . $id . '"}');
        $this->db->or_where('to_where', '{"type":"user","id":"' . $id . '"}');
        $config['total_rows'] = $this->db->count_all_results('ticket');
        $config['base_url'] = base_url() . 'index.php/home/ticket_listed/';
        $config['per_page'] = 5;
        $config['uri_segment'] = 5;
        $config['cur_page_giv'] = $para2;

        $function = "ticket_listed('0')";
        $config['first_link'] = '&laquo;';
        $config['first_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
        $config['first_tag_close'] = '</a></li>';

        $rr = ($config['total_rows'] - 1) / $config['per_page'];
        $last_start = floor($rr) * $config['per_page'];
        $function = "ticket_listed('" . $last_start . "')";
        $config['last_link'] = '&raquo;';
        $config['last_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
        $config['last_tag_close'] = '</a></li>';

        $function = "ticket_listed('" . ($para2 - $config['per_page']) . "')";
        $config['prev_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
        $config['prev_tag_close'] = '</a></li>';

        $function = "ticket_listed('" . ($para2 + $config['per_page']) . "')";
        $config['next_link'] = '&rsaquo;';
        $config['next_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
        $config['next_tag_close'] = '</a></li>';

        $config['full_tag_open'] = '<ul class="pagination pagination-style-2 pagination-sm">';
        $config['full_tag_close'] = '</ul>';

        $config['cur_tag_open'] = '<li class="active"><a rel="grow" class="btn-u btn-u-red grow" class="active">';
        $config['cur_tag_close'] = '</a></li>';

        $function = "ticket_listed(((this.innerHTML-1)*" . $config['per_page'] . "))";
        $config['num_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
        $config['num_tag_close'] = '</a></li>';
        $this->ajax_pagination->initialize($config);
        $this->db->where('from_where', '{"type":"user","id":"' . $id . '"}');
        $this->db->or_where('to_where', '{"type":"user","id":"' . $id . '"}');
        $page_data['query'] = $this->db->get('ticket', $config['per_page'], $para2)->result_array();
        $this->load->view('front/user/ticket_listed', $page_data);
    }

    function order_listed($para2 = '') {
        $this->load->library('Ajax_pagination');

        $id = $this->session->userdata('user_id');
        $this->db->where('buyer', $id);
        $config['total_rows'] = $this->db->count_all_results('sale');
        $config['base_url'] = base_url() . 'index.php/home/order_listed/';
        $config['per_page'] = 5;
        $config['uri_segment'] = 5;
        $config['cur_page_giv'] = $para2;

        $function = "order_listed('0')";
        $config['first_link'] = '&laquo;';
        $config['first_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
        $config['first_tag_close'] = '</a></li>';

        $rr = ($config['total_rows'] - 1) / $config['per_page'];
        $last_start = floor($rr) * $config['per_page'];
        $function = "order_listed('" . $last_start . "')";
        $config['last_link'] = '&raquo;';
        $config['last_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
        $config['last_tag_close'] = '</a></li>';

        $function = "order_listed('" . ($para2 - $config['per_page']) . "')";
        $config['prev_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
        $config['prev_tag_close'] = '</a></li>';

        $function = "order_listed('" . ($para2 + $config['per_page']) . "')";
        $config['next_link'] = '&rsaquo;';
        $config['next_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
        $config['next_tag_close'] = '</a></li>';

        $config['full_tag_open'] = '<ul class="pagination pagination-style-2 pagination-sm">';
        $config['full_tag_close'] = '</ul>';

        $config['cur_tag_open'] = '<li class="active"><a rel="grow" class="btn-u btn-u-red grow" class="active">';
        $config['cur_tag_close'] = '</a></li>';

        $function = "order_listed(((this.innerHTML-1)*" . $config['per_page'] . "))";
        $config['num_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
        $config['num_tag_close'] = '</a></li>';
        $this->ajax_pagination->initialize($config);
        $this->db->where('buyer', $id);
        $page_data['orders'] = $this->db->get('sale', $config['per_page'], $para2)->result_array();
        $this->load->view('front/user/order_listed', $page_data);
    }

    function wish_listed($para2 = '') {
        $this->load->library('Ajax_pagination');

        $id = $this->session->userdata('user_id');
        $ids = json_decode($this->db->get_where('user', array('user_id' => $id))->row()->wishlist, true);
        $this->db->where_in('product_id', $ids);

        $config['total_rows'] = $this->db->count_all_results('product');
        ;
        $config['base_url'] = base_url() . 'index.php/home/wish_listed/';
        $config['per_page'] = 5;
        $config['uri_segment'] = 5;
        $config['cur_page_giv'] = $para2;

        $function = "wish_listed('0')";
        $config['first_link'] = '&laquo;';
        $config['first_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
        $config['first_tag_close'] = '</a></li>';

        $rr = ($config['total_rows'] - 1) / $config['per_page'];
        $last_start = floor($rr) * $config['per_page'];
        $function = "wish_listed('" . $last_start . "')";
        $config['last_link'] = '&raquo;';
        $config['last_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
        $config['last_tag_close'] = '</a></li>';

        $function = "wish_listed('" . ($para2 - $config['per_page']) . "')";
        $config['prev_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
        $config['prev_tag_close'] = '</a></li>';

        $function = "wish_listed('" . ($para2 + $config['per_page']) . "')";
        $config['next_link'] = '&rsaquo;';
        $config['next_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
        $config['next_tag_close'] = '</a></li>';

        $config['full_tag_open'] = '<ul class="pagination pagination-style-2 ">';
        $config['full_tag_close'] = '</ul>';

        $config['cur_tag_open'] = '<li class="active"><a rel="grow" class="btn-u btn-u-red grow" class="active">';
        $config['cur_tag_close'] = '</a></li>';

        $function = "wish_listed(((this.innerHTML-1)*" . $config['per_page'] . "))";
        $config['num_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
        $config['num_tag_close'] = '</a></li>';
        $this->ajax_pagination->initialize($config);
        $ids = json_decode($this->db->get_where('user', array('user_id' => $id))->row()->wishlist, true);
        $this->db->where_in('product_id', $ids);
        $page_data['query'] = $this->db->get('product', $config['per_page'], $para2)->result_array();
        $this->load->view('front/user/wish_listed', $page_data);
    }

    function downloads_listed($para2 = '') {
        $this->load->library('Ajax_pagination');

        $id = $this->session->userdata('user_id');
        $downloads = json_decode($this->db->get_where('user', array('user_id' => $id))->row()->downloads, true);
        $ids = array();
        foreach ($downloads as $row) {
            $ids[] = $row['product'];
        }
        if (count($ids) !== 0) {
            $this->db->where_in('product_id', $ids);
        } else {
            $this->db->where('product_id', 0);
        }

        $config['total_rows'] = $this->db->count_all_results('product');
        ;
        $config['base_url'] = base_url() . 'index.php/home/downloads_listed/';
        $config['per_page'] = 5;
        $config['uri_segment'] = 5;
        $config['cur_page_giv'] = $para2;

        $function = "downloads_listed('0')";
        $config['first_link'] = '&laquo;';
        $config['first_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
        $config['first_tag_close'] = '</a></li>';

        $rr = ($config['total_rows'] - 1) / $config['per_page'];
        $last_start = floor($rr) * $config['per_page'];
        $function = "downloads_listed('" . $last_start . "')";
        $config['last_link'] = '&raquo;';
        $config['last_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
        $config['last_tag_close'] = '</a></li>';

        $function = "downloads_listed('" . ($para2 - $config['per_page']) . "')";
        $config['prev_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
        $config['prev_tag_close'] = '</a></li>';

        $function = "downloads_listed('" . ($para2 + $config['per_page']) . "')";
        $config['next_link'] = '&rsaquo;';
        $config['next_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
        $config['next_tag_close'] = '</a></li>';

        $config['full_tag_open'] = '<ul class="pagination pagination-style-2 ">';
        $config['full_tag_close'] = '</ul>';

        $config['cur_tag_open'] = '<li class="active"><a rel="grow" class="btn-u btn-u-red grow" class="active">';
        $config['cur_tag_close'] = '</a></li>';

        $function = "downloads_listed(((this.innerHTML-1)*" . $config['per_page'] . "))";
        $config['num_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
        $config['num_tag_close'] = '</a></li>';
        $this->ajax_pagination->initialize($config);
        if (count($ids) !== 0) {
            $this->db->where_in('product_id', $ids);
        } else {
            $this->db->where('product_id', 0);
        }
        $page_data['query'] = $this->db->get('product', $config['per_page'], $para2)->result_array();
        $this->load->view('front/user/downloads_listed', $page_data);
    }

    /* FUNCTION: Loads Customer Download */

    function download($id) {
        if ($this->session->userdata('user_login') != "yes") {
            redirect(base_url(), 'refresh');
        }
        $this->crud_model->download_product($id);
    }

    /* FUNCTION: Loads Customer Download Permission */

    function can_download($id) {
        if ($this->session->userdata('user_login') != "yes") {
            redirect(base_url(), 'refresh');
        }
        if ($this->crud_model->can_download($id)) {
            echo 'ok';
        } else {
            echo 'not';
        }
    }

    /* FUNCTION: Loads Category filter page */

    function category($para1 = "", $para2 = "", $min = "", $max = "", $text = '') {

        if ($para2 == "") {
            $page_data['all_products'] = $this->db->get_where('product', array(
                        'category' => $para1
                    ))->result_array();
        } else if ($para2 != "") {
            $page_data['all_products'] = $this->db->get_where('product', array(
                        'sub_category' => $para2
                    ))->result_array();
        }

        if ($para1 == "" || $para1 == "0") {
            $type = 'other';
        } else {
            if ($this->db->get_where('category', array('category_id' => $para1))->row()->digital == 'ok') {
                $type = 'digital';
            } else {
                $type = 'other';
            }
        }

        $type = 'other';
        $brand_sub = explode('-', $para2);

        $sub = 0;
        $brand = 0;

        if (isset($brand_sub[0])) {
            $sub = $brand_sub[0];
        }
        if (isset($brand_sub[1])) {
            $brand = $brand_sub[1];
        }

        $page_data['range'] = $min . ';' . $max;
        $page_data['page_name'] = "product_list/" . $type;
        $page_data['asset_page'] = "product_list_" . $type;
        $page_data['page_title'] = translate('products');
        $page_data['all_category'] = $this->db->get('category')->result_array();
        $page_data['all_sub_category'] = $this->db->get('sub_category')->result_array();
        $page_data['cur_sub_category'] = $sub;
        $page_data['cur_brand'] = $brand;
        $page_data['cur_category'] = $para1;
        $page_data['text'] = $text;
        $page_data['category_data'] = $this->db->get_where('category', array(
                    'category_id' => $para1
                ))->result_array();
        $this->load->view('front/index', $page_data);
    }

    function all_category() {
        $page_data['page_name'] = "others/all_category";
        $page_data['asset_page'] = "all_category";
        $page_data['page_title'] = translate('all_category');
        $this->load->view('front/index', $page_data);
    }

    function about_us() {
        $page_data['page_name'] = "about_us";
        $page_data['asset_page'] = "about_us";
        $page_data['page_title'] = translate('about');
        $this->load->view('front/index', $page_data);
    }

    function shop() {
        $page_data['page_name'] = "shop";
        //$page_data['asset_page'] = "about_us";
        $page_data['page_title'] = translate('shop');
        $this->load->view('front/index', $page_data);
    }

    function gallery() {
        $page_data['page_name'] = "gallery";
        $page_data['page_title'] = translate('photo_gallery');
        $this->load->view('front/index', $page_data);
    }

    function shop_details($param1 = '') {
        //$this->db->get('category', $param1);
        $page_data['id'] = $param1;
        $page_data['name'] = $this->db->get_where('category', array('category_id' => $param1))->row()->category_name;
        //$page_data['id']=$this->db->get_where('category', array('blog_id' => $param1))->row()->category_id;
        $page_data['page_name'] = "shop_details";
        $page_data['page_title'] = translate('shop');
        $this->load->view('front/index', $page_data);
    }

    function image_details($param1 = '', $param2 = '') {

        $product_data = $this->db->get_where('product', array('product_id' => $param1, 'status' => 'ok'));
        $pin = $this->input->post('pin');
        $query = $this->db->get_where('pincode', array('pincode' => $pin));
        if ($query->num_rows() > 0) {
            $exist = 1;
        } else if ($pin == '') {
            $exist = 2;
        } else {
            $exist = 0;
        }

        $page_data['pincode'] = $exist;
        $this->db->where('product_id', $param1);
        $this->db->update('product', array(
            'number_of_view' => $product_data->row()->number_of_view + 1,
            'last_viewed' => time()
        ));
        $page_data['product_id'] = $param1;
        $page_data['category'] = $param2;
        $page_data['page_name'] = "image_details";
        $page_data['page_title'] = "Image Details";
        $this->load->view('front/index', $page_data);
    }

    function cate($param1 = "") {
        $page_data['cate_id'] = $param1;
        $page_data['page_name'] = "shop_collection";
        //$page_data['asset_page'] = "about_us";
        $this->load->view('front/index', $page_data);
    }

    function offer() {
        $page_data['page_name'] = "offer";
        //$page_data['asset_page'] = "about_us";
        $page_data['page_title'] = translate('offer');
        $this->load->view('front/index', $page_data);
    }

    function faq1() {
        $page_data['page_name'] = "faq";
        //$page_data['asset_page'] = "about_us";
        $page_data['page_title'] = translate('faq');
        $this->load->view('front/index', $page_data);
    }

    function blog_details($param1 = "") {
        $page_data['blog_id'] = $param1;
        $page_data['page_name'] = "blog_details";
        //$page_data['asset_page'] = "about_us";
        $page_data['page_title'] = translate('blog');
        $this->load->view('front/index', $page_data);
    }

    function event_details($event_id = "") {
        $page_data['event_id'] = $event_id;
        $page_data['page_name'] = "event_details";
        $page_data['page_title'] = translate('Event');
        $this->load->view('front/index', $page_data);
    }

    function contact1() {
        $page_data['page_name'] = "contact";
        //$page_data['asset_page'] = "about_us";
        $page_data['page_title'] = translate('contact');
        $this->load->view('front/index', $page_data);
    }

    function send_message() {
        $page_data['page_name'] = "contact_us";
        //$page_data['asset_page'] = "about_us";
        $page_data['page_title'] = translate('contact');
        $this->load->view('front/index', $page_data);
    }

    function view_cart() {
        $page_data['page_name'] = "view_cart";
        //$page_data['asset_page'] = "about_us";
        $page_data['page_title'] = translate('cart');
        $this->load->view('front/index', $page_data);
    }

    function my_cart() {
        //$page_data['blog_id']=$param1;
        $page_data['page_name'] = "mycart";
        //$page_data['asset_page'] = "about_us";
        $this->load->view('front/index', $page_data);
    }

    function login2($para1 = '', $para2 = '') {

        $page_data['page_name'] = "login";
        if ($para1 && $para2) {
            $page_data['uid'] = $para1;
            $page_data['code'] = $para2;
            $name = $this->db->get_where('user', array('user_id' => $para1, 'referral_token' => $para2))->row();
            $full_name = $name->username . ' ' . $name->surname;
            $this->session->set_flashdata('msg', $full_name);
        }
        $page_data['page_title'] = "Login";
        $this->load->view('front/index', $page_data);
    }

    function curl() {
        echo function_exists('curl_version');
    }

    function logout2() {
        $this->crud_model->logout();
        redirect(base_url() . 'index.php/home/home', 'refresh');
    }

    function signup_separate() {
        $ref_code = $this->input->post('code');
        $user_id = $this->input->post('user_id');
        $data['username'] = $this->input->post('username');
        $data['surname'] = $this->input->post('surname');
        $data['address1'] = $this->input->post('address');
        $data['city'] = $this->input->post('city');
        $data['state'] = $this->input->post('state');
        $data['country'] = "India";
        $data['email'] = $this->input->post('email');

        $data['zip'] = $this->input->post('zip');
        $data['phone'] = $this->input->post('phone');
        $data['creation_date'] = time();
        $data['last_login'] = time();
        $data['user_type'] = "default";
        $re_pwd = $this->input->post('re-password');
        $repwd = $this->input->post('password');
        if ($re_pwd == $repwd) {
            $data['password'] = sha1($repwd);
            $this->db->insert('user', $data);
            $id = $this->db->insert_id();
            $this->session->set_userdata('user_login', '1');
            $this->session->set_userdata('user_name', $data['username']);
            $this->session->set_userdata('user_id', $id);
            $this->session->set_userdata('user_type', $data['user_type']);
            $code = $this->crud_model->email_verification('generate', $id);
            $link = 'user_login/' . $id . '/' . $code;
            $this->email_model->send_email($data['email'], 'Verify Your email', $this->crud_model->email_template($data['username'], $link));
            if ($ref_code != '' && $user_id != '') {
                $this->crud_model->referral($ref_code, $user_id, $id);
            }
            $page_data['res1'] = "Login";
            $page_data['page_name'] = "login";
            $this->load->view('front/index', $page_data);
        } else {
            $data['res'] = "The password you re-entered is wrong";
            $data['page_name'] = "login";
            $this->load->view('front/index', $data);
        }


        //$page_data['asset_page'] = "about_us";
    }

    function reset_password($param1 = '', $param2 = '') {
        $data['user_id'] = $param1;
        $data['code'] = $param2;
        $code = $this->db->get_where('user', array('user_id' => $param1))->row()->recover_code;
        if ($param2 != $code || $param2 == 'recovered')
            redirect(base_url(), 'refresh');
        $data['page_name'] = "recover_password";
        $this->load->view('front/index', $data);
    }

    function renew_password() {
        $password = $this->input->post('password');
        $re_password = $this->input->post('re_password');
        $user_id = $this->input->post('user_id');
        $code = $this->input->post('code');
        if ($password == $re_password) {
            echo $this->crud_model->password_recovery($user_id, $code, $password);
        }
    }

    function test($param1 = '', $param2 = '') {
        $this->sms_model->send_sms('9495401456', 'test message');
    }

    function login_seperate() {
        $email = $this->input->post('email');
        $password = sha1($this->input->post('password'));
        $query = $this->db->get_where('user', array(
            'email' => $email,
            'password' => $password)
        );
        if ($query->num_rows() > 0) {
            $this->session->set_userdata('user_login', 'yes');
            $this->session->set_userdata('zip', $query->row()->zip);
            $this->session->set_userdata('user_name', $query->row()->username);
            $this->session->set_userdata('user_id', $query->row()->user_id);
            $this->session->set_userdata('user_type', $query->row()->user_type);
            $this->db->where('user_id', $query->row()->user_id);
            $this->db->update('user', array(
                'last_login' => time()
            ));
            $page_data['page_name'] = "my_account";
            $page_data['page_title'] = "my_account";
            $this->load->view('front/index', $page_data);
        } else {
            $page_data['login_result'] = "The password you re-entered is wrong";
            $page_data['page_name'] = "login";
            $page_data['page_title'] = "login";
            $this->load->view('front/index', $page_data);
        }
    }

    function procced_checkout() {

        //$page_data['blog_id']=$param1;
        //echo 'haaai';
        $this->session->set_userdata('delivery_note', $this->input->post('message'));
        $this->session->set_userdata('delivery_date', $this->input->post('date'));
        $check = $this->input->post('check');
        //echo 'haaai'.$this->session->userdata('delivery_date');

        if (isset($check)) {
            $data['msg'] = $this->session->userdata('delivery_note');
            $data['date'] = $this->session->userdata('delivery_date');
            $page_data['page_name'] = "guest_login";
            $this->load->view('front/index', $page_data);
//            redirect(base_url() . 'index.php/home/guest_login1/' , 'refresh');
        } else {
            /*            if ($this->session->userdata('user_login')== 'yes'){
              $page_data['msg'] = $this->session->userdata('delivery_note');
              $page_data['date'] = $this->session->userdata('delivery_date');
              $page_data['user_id']=$this->session->userdata('user_id');
              $page_data['page_name'] = "login_details";
              $this->load->view('front/index', $page_data);
              } */
            if ($this->session->userdata('user_login') == 'yes') {
                redirect(base_url() . 'index.php/home/user_login', 'refresh');
            }
            $data['msg'] = $this->session->userdata('delivery_note');
            $data['date'] = $this->session->userdata('delivery_date');
            //$page_data['msg'] = $this->session->userdata('delivery_note');
            //$page_data['date'] = $this->session->userdata('delivery_date');
            $page_data['page_name'] = "proceed_checkout";
            $page_data['page_title'] = "login";
            $this->load->view('front/index', $page_data);
//            redirect(base_url() . 'index.php/home/login1/' , 'refresh');
        }
    }

    function guest_login1() {
        $data['username'] = $this->input->post('firstname');
        $data['surname'] = $this->input->post('surname');
        $data['address1'] = $this->input->post('address1');
        $data['city'] = $this->input->post('city');
        $data['state'] = $this->input->post('state');
        $data['email'] = $this->input->post('email');
        $data['zip'] = $this->input->post('zip');
        $data['phone'] = $this->input->post('phone');
        $data['msg'] = $this->input->post('msg');
        $data['date'] = $this->input->post('date');
        $data['page_name'] = "guest_login_details";
        //$page_data['asset_page'] = "about_us";
        $this->load->view('front/index', $data);
    }

    function login1() {
        $page_data['page_name'] = "proceed_checkout";
        //$page_data['asset_page'] = "about_us";
        $this->load->view('front/index', $page_data);
    }

    function user_login($param1 = '', $param2 = '') {
        if ($param1 != '' && $param2 != '') {
            $verify = $this->crud_model->email_verification($param2, $param1);
            //echo $verify ;
            switch ($verify) {
                case 'success':
                    $this->session->set_flashdata('category_success', 'Email Verification Successful');
                    echo $this->crud_model->referral('generate', $param1);
                    break;
                case 'expired':
                    $this->session->set_flashdata('category_error', 'Expired token!!');
                    break;
                default:
                    $this->session->set_flashdata('category_error', 'Failed!!');
                    break;
            }
            //redirect(base_url() . 'index.php/', 'refresh');
        }
        $email = $this->input->post('email');
        $password = sha1($this->input->post('password'));
        $query = $this->db->get_where('user', array(
            'email' => $email,
            'password' => $password)
        );
        if ($this->session->userdata('user_login') == 'yes') {

            $page_data['msg'] = $this->session->userdata('delivery_note');
            $page_data['date'] = $this->session->userdata('delivery_date');
            $page_data['user_id'] = $this->session->userdata('user_id');
            $page_data['page_title'] = "login_details";
            $page_data['page_name'] = "login_details";
            $this->load->view('front/index', $page_data);
        } else {
            if ($query->num_rows() > 0) {
                $page_data['msg'] = $this->input->post('msg');
                $page_data['date'] = $this->input->post('date');
                $page_data['user_id'] = $query->row()->user_id;

                $this->session->set_userdata('user_login', 'yes');
                $this->session->set_userdata('user_name', $query->row()->username);
                $this->session->set_userdata('user_id', $query->row()->user_id);
                $this->session->set_userdata('user_type', $query->row()->user_type);
                $this->db->where('user_id', $query->row()->user_id);
                $this->db->update('user', array(
                    'last_login' => time()
                ));
                $page_data['page_title'] = "login_details";
                $page_data['page_name'] = "login_details";
                $this->load->view('front/index', $page_data);
            } else {
                $page_data['res'] = "Login Failed";
                $page_data['page_name'] = "proceed_checkout";
                $page_data['page_title'] = "proceed_checkout";
                $this->load->view('front/index', $page_data);
            }
        }
    }

    function place_order($param1 = '') {
        $rad = $this->input->post('pay');
        $refresh_hash = $this->input->post('refresh_hash');
        if ($this->session->userdata('refresh_hash') == $refresh_hash) {
            redirect(base_url(), 'refresh');
        }
        if ($rad == "cash on delivery") {
            $carted = $this->cart->contents();
            $product_details = json_encode($carted);

            $data['buyer'] = $this->session->userdata('user_id');
            $data['product_details'] = $product_details;
            $name = $this->db->get_where('user', array('user_id' => $param1))->row()->username;
            $phone = $this->db->get_where('user', array('user_id' => $param1))->row()->phone;
            $add = $this->db->get_where('user', array('user_id' => $param1))->row()->address1;
            $city = $this->db->get_where('user', array('user_id' => $param1))->row()->city;
            $state = $this->db->get_where('user', array('user_id' => $param1))->row()->state;
            $zip = $this->db->get_where('user', array('user_id' => $param1))->row()->zip;
            $email = $this->db->get_where('user', array('user_id' => $param1))->row()->email;
            $country = $this->db->get_where('user', array('user_id' => $param1))->row()->country;
            $shipping_address = array();
            $shipping_address['firstname'] = $this->db->get_where('user', array('user_id' => $data['buyer']))->row()->username;
            $shipping_address['lastname'] = $this->db->get_where('user', array('user_id' => $data['buyer']))->row()->surname;
            $shipping_address['email'] = $this->db->get_where('user', array('user_id' => $data['buyer']))->row()->email;
            $shipping_address['phone'] = $this->db->get_where('user', array('user_id' => $data['buyer']))->row()->phone;
            $shipping_address['address1'] = $this->db->get_where('user', array('user_id' => $data['buyer']))->row()->address1;
            $shipping_address['address2'] = $this->db->get_where('user', array('user_id' => $data['buyer']))->row()->address2;
            $shipping_address['city'] = $this->db->get_where('user', array('user_id' => $data['buyer']))->row()->city;
            $shipping_address['state'] = $this->db->get_where('user', array('user_id' => $data['buyer']))->row()->state;
            $shipping_address['zip'] = $this->db->get_where('user', array('user_id' => $data['buyer']))->row()->zip;
            $shipping_address['country'] = $this->db->get_where('user', array('user_id' => $data['buyer']))->row()->country;
            $payment = $this->input->post('pay');
            $shipping_address['payment_type'] = $payment;
            $data['shipping_address'] = json_encode($shipping_address);
            $data['payment_type'] = $payment;
            $data['payment_status'] = '[]';
            $data['delivery_note'] = $this->session->userdata('delivery_note');
            $data['delivery_date'] = $this->session->userdata('delivery_date');
            if ($this->crud_model->get_total() < 300) {
                $data['grand_total'] = $this->crud_model->shipping_total();
            } else {
                $data['grand_total'] = $this->crud_model->get_total();
            }
            if ($this->crud_model->get_total() < 300) {
                $data['shipping'] = 20;
            } else {
                $data['shipping'] = "FREE";
            }
            $data['sale_datetime'] = time();

            $this->db->insert('sale', $data);
            $sale_id = $this->db->insert_id();
            $data['sale_code'] = $sale_code = date('Ym', $data['sale_datetime']) . $sale_id;
            if ($this->crud_model->is_admin_in_sale($sale_id)) {
                $delivery_status[] = array('admin' => '', 'status' => 'pending', 'delivery_time' => '');
                $payment_status[] = array('admin' => '', 'status' => 'due');
                $order_status[] = array('admin' => '', 'status' => 'not confirmed');
            }

            $data['delivery_status'] = json_encode($delivery_status);
            $data['payment_status'] = json_encode($payment_status);
            $data['order_status'] = json_encode($order_status);
            $data['coupon_id'] = $this->cart->get_coupon();
            $this->db->where('sale_id', $sale_id);
            $this->db->update('sale', $data);
            $page_data['sale_code'] = $data['sale_code'];
            $page_data['sale_id'] = $sale_id;
            $page_data['user_id'] = $param1;
            $page_data['page_name'] = "place_order";
            $page_data['page_title'] = "Place Order";
            //$this->email_temp($sale_code);
            //$this->crud_model->sms_place_order_send($sale_code);
            if ($this->cart->get_coupon() != null)
                $this->crud_model->coupon_limit_count($this->cart->get_coupon(), true);
            $this->session->set_userdata('refresh_hash', $refresh_hash);
            $this->load->view('front/index', $page_data);
        } else {

            $carted = $this->cart->contents();
            $product_details = json_encode($carted);
            $data['buyer'] = $this->session->userdata('user_id');
            $data['product_details'] = $product_details;
            $name = $this->db->get_where('user', array('user_id' => $param1))->row()->username;
            $add = $this->db->get_where('user', array('user_id' => $param1))->row()->address1;
            $city = $this->db->get_where('user', array('user_id' => $param1))->row()->city;
            $state = $this->db->get_where('user', array('user_id' => $param1))->row()->state;
            $zip = $this->db->get_where('user', array('user_id' => $param1))->row()->zip;
            $data['shipping_address'] = $name . "," . $add . "," . $city . "," . $state . "," . $zip;
            $payment = $this->input->post('pay');
            $data['payment_type'] = $payment;
            $data['payment_status'] = '[]';
            $data['delivery_note'] = $this->session->userdata('delivery_note');
            $data['delivery_date'] = $this->session->userdata('delivery_date');
            $shipping_address = array();
            $shipping_address['firstname'] = $this->db->get_where('user', array('user_id' => $data['buyer']))->row()->username;
            $shipping_address['lastname'] = $this->db->get_where('user', array('user_id' => $data['buyer']))->row()->surname;
            $shipping_address['email'] = $this->db->get_where('user', array('user_id' => $data['buyer']))->row()->email;
            $shipping_address['phone'] = $this->db->get_where('user', array('user_id' => $data['buyer']))->row()->phone;
            $shipping_address['address1'] = $this->db->get_where('user', array('user_id' => $data['buyer']))->row()->address1;
            $shipping_address['address2'] = $this->db->get_where('user', array('user_id' => $data['buyer']))->row()->address2;
            $shipping_address['city'] = $this->db->get_where('user', array('user_id' => $data['buyer']))->row()->city;
            $shipping_address['state'] = $this->db->get_where('user', array('user_id' => $data['buyer']))->row()->state;
            $shipping_address['zip'] = $this->db->get_where('user', array('user_id' => $data['buyer']))->row()->zip;
            $payment = $this->input->post('pay');
            $shipping_address['payment_type'] = $payment;
            $data['shipping_address'] = json_encode($shipping_address);
            if ($this->crud_model->get_total() < 300) {
                $data['grand_total'] = $this->crud_model->shipping_total();
            } else {
                $data['grand_total'] = $this->crud_model->get_total();
            }
            if ($this->crud_model->get_total() < 300) {
                $data['shipping'] = 20;
            } else {
                $data['shipping'] = "FREE";
            }
            $data['sale_datetime'] = time();
            $this->db->insert('sale', $data);
            $sale_id = $this->db->insert_id();
            if ($this->crud_model->is_admin_in_sale($sale_id)) {
                $delivery_status[] = array('admin' => '', 'status' => 'pending', 'delivery_time' => '');
                $payment_status[] = array('admin' => '', 'status' => 'due');
                $order_status[] = array('admin' => '', 'status' => 'not confirmed');
            }
            $data['sale_code'] = date('Ym', $data['sale_datetime']) . $sale_id;
            $this->session->set_userdata('sale_code', $data['sale_code']);  // sale code saved to cookie

            $data['delivery_status'] = json_encode($delivery_status);
            $data['payment_status'] = json_encode($payment_status);
            $data['order_status'] = json_encode($order_status);
            $data['coupon_id'] = $this->cart->get_coupon();
            $this->db->where('sale_id', $sale_id);
            $this->db->update('sale', $data);

            $page_data['sale_id'] = $sale_id;
            $page_data['user_id'] = $param1;
            if ($this->cart->get_coupon() != null)
                $this->crud_model->coupon_limit_count($this->cart->get_coupon(), true);
            $this->session->set_userdata('refresh_hash', $refresh_hash);
            redirect(base_url() . 'index.php/home/pay_now/' . $param1, 'refresh');
        }
    }

    /**
     * @param string $param1
     */
    function pay_now($param1 = '') {


        $carted = $this->cart->contents();
        //$merchant_id = '127148';  // Merchant id(also User_Id)
        //= $_POST['Amount'];            // your script should substitute the amount here in the quotes provided here
        //$order_id = '234567';
        if ($this->crud_model->get_total() < 300) {
            $amount = $this->crud_model->shipping_total();
        } else {
            $amount = $this->crud_model->get_total();
        }//your script should substitute the order description here in the quotes provided here
        $url = 'http://www.rawsqueezed.com';         //your redirect URL where your customer will be redirected after authorisation from CCAvenue
        $billing_cust_name = $this->db->get_where('user', array('user_id' => $param1))->row()->username;
        $billing_cust_address = $this->db->get_where('user', array('user_id' => $param1))->row()->address1;
        $billing_cust_country = 'india';
        $billing_cust_state = $this->db->get_where('user', array('user_id' => $param1))->row()->state;
        $billing_city = $this->db->get_where('user', array('user_id' => $param1))->row()->city;
        $billing_zip = $this->db->get_where('user', array('user_id' => $param1))->row()->zip;
        $billing_cust_tel = $this->db->get_where('user', array('user_id' => $param1))->row()->phone;
        $billing_cust_email = $this->db->get_where('user', array('user_id' => $param1))->row()->email;
        $delivery_cust_name = $this->db->get_where('user', array('user_id' => $param1))->row()->username;
        $delivery_cust_address = $this->db->get_where('user', array('user_id' => $param1))->row()->address1;
        $delivery_cust_country = 'India';
        $delivery_cust_state = $_POST['delivery_cust_state'];
        $delivery_city = $this->db->get_where('user', array('user_id' => $param1))->row()->city;
        $delivery_zip = $this->db->get_where('user', array('user_id' => $param1))->row()->zip;
        $delivery_cust_tel = $this->db->get_where('user', array('user_id' => $param1))->row()->phone;
        $delivery_cust_notes = 'sgfhj';
        //$this->email_temp($sale_code,$this->session->userdata('email'),$this->session->userdata('username'),$this->session->userdata('phone'),$this->session->userdata('address1'));
//        $working_key = '8E3352696228048C6C06F5B10BAB09AB';    //Put in the 32 bit alphanumeric key in the quotes provided here.
//        $checksum = getchecksum($merchant_id, $amount, $order_id, $url, $working_key); // Method to generate checksum

        $merchant_data = $this->payment_model->pay_data($amount, $billing_cust_name, $billing_cust_address, $billing_city, $billing_cust_state, $delivery_zip, $delivery_cust_country, $delivery_cust_tel, $billing_cust_email);
        //echo $merchant_data;
//        $encrypted_data = encrypt($merchant_data, $working_key); // Method for encrypting the data.
        $page_data['page_name'] = 'ccavRequestHandler';
        $page_data['merchant_data'] = $merchant_data;
        //$access_code = 'AVKP69EC67BC03PKCB';
        //$page_data['access_code']=$access_code;
        $this->load->view('front/index', $page_data);
    }

    function place_order_guest() {

        $rad = $this->input->post('pay');
        $refresh_hash = $this->input->post('refresh_hash');
        if ($this->session->userdata('refresh_hash') == $refresh_hash) {
            redirect(base_url(), 'refresh');
        }
        if ($rad == "cash on delivery") {
            $carted = $this->cart->contents();
            $product_details = json_encode($carted);

            //$data['buyer'] = $this->session->userdata('user_id');
            $data['product_details'] = $product_details;
            $username = $this->input->post('username');
            $surname = $this->input->post('surname');
            $add = $this->input->post('address1');
            $city = $this->input->post('city');
            $state = $this->input->post('state');
            $zip = $this->input->post('zip');
            $phone = $this->input->post('phone');
            $email = $this->input->post('email');
            $shipping_address = array();
            $shipping_address['firstname'] = $this->input->post('username');
            $shipping_address['lastname'] = $this->input->post('surname');
            $shipping_address['email'] = $this->input->post('email');
            $shipping_address['phone'] = $this->input->post('phone');
            $shipping_address['address1'] = $this->input->post('address1');
            $shipping_address['address2'] = '';

            $shipping_address['city'] = $this->input->post('city');
            $shipping_address['state'] = $this->input->post('state');
            $shipping_address['zip'] = $this->input->post('zip');
            $payment = $this->input->post('pay');
            $shipping_address['payment_type'] = $payment;
            $data['shipping_address'] = json_encode($shipping_address);
            //$payment = $this->input->post('pay');
            $data['payment_type'] = $payment;
//            $data['payment_status'] = array('admin' => '', 'status' => 'due');
//        $data['grand_total'] = $grand_total;
            $data['delivery_note'] = $this->session->userdata('delivery_note');
            $data['delivery_date'] = $this->session->userdata('delivery_date');
//        $data['delivery_date'] = '';
            if ($this->crud_model->get_total() < 300) {
                $data['grand_total'] = $this->crud_model->shipping_total();
            } else {
                $data['grand_total'] = $this->crud_model->get_total();
            }

            if ($this->crud_model->get_total() < 300) {
                $data['shipping'] = 20;
            } else {
                $data['shipping'] = "FREE";
            }
//        $data['shipping'] = $shipping;

            $data['sale_datetime'] = time();
            $this->db->insert('sale', $data);
            $sale_id = $this->db->insert_id();
//            $delivery_status[] = $payment_status[] = array();
            if ($this->crud_model->is_admin_in_sale($sale_id)) {
                $delivery_status[] = array('admin' => '', 'status' => 'pending', 'delivery_time' => '');
                $payment_status[] = array('admin' => '', 'status' => 'due');
                $order_status[] = array('admin' => '', 'status' => 'not confirmed');
            }
            $data['sale_code'] = $sale_code = date('Ym', $data['sale_datetime']) . $sale_id;

            $data['delivery_status'] = json_encode($delivery_status);
            $data['payment_status'] = json_encode($payment_status);
            $data['order_status'] = json_encode($order_status);
            $data['coupon_id'] = $this->cart->get_coupon();
            $this->db->where('sale_id', $sale_id);
            $this->db->update('sale', $data);

            $data['sale_id'] = $sale_id;
            $data['address1'] = $add;
            $data['city'] = $city;
            $data['state'] = $state;
            $data['zip'] = $zip;
            $data['username'] = $username;
            $data['surname'] = $surname;
            $data['phone'] = $phone;
            $data['email'] = $email;

            // Storing datas to cookie
//        $data['user_id'] = $param1;
            $data['page_name'] = "place_order_guest";
            $this->email_temp($sale_code);
            $this->crud_model->sms_place_order_send($sale_code);
//            $this->cart->destroy();
//            $this->crud_model->sms_place_order_send($sale_code);
            //$page_data['asset_page'] = "about_us";
            if ($this->cart->get_coupon() != null)
                $this->crud_model->coupon_limit_count($this->cart->get_coupon(), true);
            $this->session->set_userdata('refresh_hash', $refresh_hash);
            $this->load->view('front/index', $data);
        } else {

            $carted = $this->cart->contents();
            $product_details = json_encode($carted);

            $data['buyer'] = $this->session->userdata('user_id');
            $data['product_details'] = $product_details;
            $username = $this->input->post('username');
            $surname = $this->input->post('surname');
            $add = $this->input->post('address1');
            $city = $this->input->post('city');
            $state = $this->input->post('state');
            $zip = $this->input->post('zip');
            $phone = $this->input->post('phone');
            $email = $this->input->post('email');
            //$data['shipping_address'] = $username . "," . $surname . "," . $add . "," . $city . "," . $state . "," . $zip . "," . $phone . "," . $email;
            $payment = $this->input->post('pay');
            $shipping_address = array();
            $shipping_address['firstname'] = $this->input->post('username');
            $shipping_address['lastname'] = $this->input->post('surname');
            $shipping_address['email'] = $this->input->post('email');
            $shipping_address['phone'] = $this->input->post('phone');
            $shipping_address['address1'] = $this->input->post('address1');
            $shipping_address['address2'] = '';

            $shipping_address['city'] = $this->input->post('city');
            $shipping_address['state'] = $this->input->post('state');
            $shipping_address['zip'] = $this->input->post('zip');
            $payment = $this->input->post('pay');
            $shipping_address['payment_type'] = $payment;
            $data['shipping_address'] = json_encode($shipping_address);
            $data['payment_type'] = $payment;
            $data['payment_status'] = '[]';
//        $data['grand_total'] = $grand_total;
            $data['delivery_note'] = $this->session->userdata('delivery_note');
            $data['delivery_date'] = $this->session->userdata('delivery_date');
//        $data['delivery_date'] = '';
            if ($this->crud_model->get_total() < 300) {
                $data['grand_total'] = $this->crud_model->shipping_total();
            } else {
                $data['grand_total'] = $this->crud_model->get_total();
            }

            if ($this->crud_model->get_total() < 300) {
                $data['shipping'] = 20;
            } else {
                $data['shipping'] = "FREE";
            }
//        $data['shipping'] = $shipping;

            $data['sale_datetime'] = time();
            $this->db->insert('sale', $data);
            $sale_id = $this->db->insert_id();
            if ($this->crud_model->is_admin_in_sale($sale_id)) {
                $delivery_status[] = array('admin' => '', 'status' => 'pending', 'delivery_time' => '');
                $payment_status[] = array('admin' => '', 'status' => 'due');
                $order_status[] = array('admin' => '', 'status' => 'not confirmed');
            }
            $data['sale_code'] = date('Ym', $data['sale_datetime']) . $sale_id;

            $data['delivery_status'] = json_encode($delivery_status);
            $data['payment_status'] = json_encode($payment_status);
            $data['order_status'] = json_encode($order_status);
            $data['coupon_id'] = $this->cart->get_coupon();
            $this->db->where('sale_id', $sale_id);
            $this->db->update('sale', $data);

            $data['sale_id'] = $sale_id;
            $data['address1'] = $add;
            $data['city'] = $city;
            $data['state'] = $state;
            $data['zip'] = $zip;
            $data['username'] = $username;
            $data['surname'] = $surname;
            $data['phone'] = $phone;
            $data['email'] = $email;

            $this->session->set_userdata('sale_code', $data['sale_code']);  // sale code saved to cookie
            $this->session->set_userdata('sale_id', $sale_id);
            $this->session->set_userdata('address1', $add);
            $this->session->set_userdata('city', $city);
            $this->session->set_userdata('state', $state);
            $this->session->set_userdata('zip', $zip);
            $this->session->set_userdata('username', $username);
            $this->session->set_userdata('surname', $surname);
            $this->session->set_userdata('phone', $phone);
            $this->session->set_userdata('email', $email);
            //$this->email_temp($data['sale_code'],$email,$username.' '.$surname,$phone,$add);
            if ($this->cart->get_coupon() != null)
                $this->crud_model->coupon_limit_count($this->cart->get_coupon(), true);
            $this->session->set_userdata('refresh_hash', $refresh_hash);
            redirect(base_url() . 'index.php/home/pay_now_guest/', 'refresh');
        }
    }

    /**
     * GUEST PAYMENT
     * @param string $param1
     * @param string $param2
     * @param string $param3
     * @param string $param4
     * @param string $param5
     * @param string $param6
     * @param string $param7
     * @param string $param8
     */
    function pay_now_guest() {


        $carted = $this->cart->contents();
        $merchant_id = '127148';  // Merchant id(also User_Id)
        //= $_POST['Amount'];            // your script should substitute the amount here in the quotes provided here
        $order_id = '234567';
        if ($this->crud_model->get_total() < 300) {
            $amount = $this->crud_model->shipping_total();
        } else {
            $amount = $this->crud_model->get_total();
        }//your script should substitute the order description here in the quotes provided here
        $url = 'http://www.rawsqueezed.com';         //your redirect URL where your customer will be redirected after authorisation from CCAvenue
        $billing_cust_name = $this->session->userdata('username') . ' ' . $this->session->userdata('surname');
        $billing_cust_address = $this->session->userdata('address1');
        $billing_cust_country = 'India';
        $billing_cust_state = $this->session->userdata('state');
        $billing_city = $this->session->userdata('city');
        $billing_zip = $this->session->userdata('zip');
        //$billing_cust_tel = $param7;
        $billing_cust_email = $this->session->userdata('email');
        //$delivery_cust_name = $param6;
        //$delivery_cust_address = $param2;
        $delivery_cust_country = 'India';
//        $delivery_cust_state = $param4;
//        $delivery_city = $param3;
        $delivery_zip = $this->session->userdata('zip');
        $delivery_cust_tel = $this->session->userdata('phone');
//        $delivery_cust_notes = 'sgfhj';
//        $working_key = '8E3352696228048C6C06F5B10BAB09AB';    //Put in the 32 bit alphanumeric key in the quotes provided here.
//        $checksum = getchecksum($merchant_id, $amount, $order_id, $url, $working_key); // Method to generate checksum

        $merchant_data = $this->payment_model->pay_data($amount, $billing_cust_name, $billing_cust_address, $billing_city, $billing_cust_state, $delivery_zip, $delivery_cust_country, $delivery_cust_tel, $billing_cust_email);
//        $encrypted_data = encrypt($merchant_data, $working_key); // Method for encrypting the data.
        $page_data['page_name'] = 'ccavRequestHandler';
        $page_data['merchant_data'] = $merchant_data;
        //echo $merchant_data;
        //$access_code = 'AVKP69EC67BC03PKCB';
        //$page_data['access_code']=$access_code;
        $this->load->view('front/index', $page_data);
    }

    function response_handler() {
        //error_reporting(0);
        if ($this->session->userdata('refresh_hash') == 'yes') {
            redirect(base_url(), 'refresh');
        }
        $workingKey = $this->crud_model->getWorkingKey();        //Working Key should be provided here.
        $encResponse = $this->input->post('encResp');            //This is the response sent by the CCAvenue Server
        $rcvdString = $this->crud_model->decrypt($encResponse, $workingKey);        //Crypto Decryption used as per the specified working key.
        //echo $rcvdString;
        $order_status = "";
        $decryptValues = explode('&', $rcvdString);
        $dataSize = sizeof($decryptValues);
        $sale_code = '';
        for ($i = 0; $i < $dataSize; $i++) {
            $information = explode('=', $decryptValues[$i]);
            if ($i == 3)
                $order_status = $information[1];
            if ($i == 0)
                $sale_code = $information[1];
        }

        //echo $order_status;
        if ($order_status == "Success") {
            //echo 'haai';
            $data[] = array('admin' => '', 'status' => "paid");
            //echo 'done';
            // $data = array('admin' => '', 'status' => 'failed');
            $status['payment_status'] = json_encode($data);
            $this->db->where('sale_code', $sale_code);
            $this->db->update('sale', $status);
            $this->crud_model->sms_place_order_send($sale_code);
        }
        $page_data['page_name'] = 'ccavResponseHandler';
        $page_data['order_status'] = $order_status;
        $page_data['sale_code'] = $sale_code;
        $page_data['decryptValues'] = $decryptValues;
        $page_data['dataSize'] = $dataSize;
        $this->email_temp($sale_code, $order_status);
        $this->session->set_userdata('refresh_hash', 'yes');
        $this->load->view('front/index', $page_data);
    }

    function user_signup($para1 = '', $para2 = '') {
        $code = $this->input->post('code');
        $user_id = $this->input->post('user_id');
        $data['username'] = $this->input->post('firstname');
        $data['surname'] = $this->input->post('surname');
        $data['phone'] = $this->input->post('phone');
        $data['email'] = $this->input->post('email');
        $data['address1'] = $this->input->post('address');
        $data['city'] = $this->input->post('city');
        $data['state'] = $this->input->post('state');
        $data['country'] = $this->input->post('country');
        $data['zip'] = $this->input->post('zip');
        $data['password'] = $this->input->post('password');
        $pass = $this->input->post('password');
        $re_password = $this->input->post('re_password');
        if ($pass == $re_password) {
            $data['last_login'] = time();
            $data['password'] = sha1($pass);
            $this->db->insert('user', $data);
            $id = $this->db->insert_id();
            // echo $pass  .'  '.$id;

            $data['page_name'] = "proceed_checkout";
            if ($code != '' && $user_id != '') {
                $this->crud_model->referral($code, $user_id, $id);
            }
            $code = $this->crud_model->email_verification('generate', $id);
            $link = 'user_login/' . $id . '/' . $code;
            $this->email_model->send_email($data['email'], 'Verify Your email', $this->crud_model->email_template($data['username'], $link));
            $this->session->set_userdata('user_login', '1');
            $this->session->set_userdata('user_name', $data['username']);
            $this->session->set_userdata('user_id', $id);
            $this->load->view('front/index', $data);
        } else {
            $data['result'] = "The Password you re-entered is incorrect.";
            $data['page_name'] = "proceed_checkout";
            $this->load->view('front/index', $data);
        }

//        $page_data['page_name'] = "";
        //$page_data['asset_page'] = "about_us";
//        $this->load->view('front/index', $page_data);
    }

    function forgot_pswd() {


        $page_data['page_name'] = "forgot_password";
        //$page_data['asset_page'] = "about_us";
        $this->load->view('front/index', $page_data);
    }

    function recover_password() {
        $email = $this->input->post('email');
        $id = $this->db->get_where('user', array('email' => $email))->row()->user_id;
        $username = $this->db->get_where('user', array('email' => $email))->row()->username;
        $query = $this->db->get_where('user', array('email' => $email));
        if ($query->num_rows() > 0) {
            $code = $this->crud_model->password_recovery($id);
            $link = 'reset_password/' . $id . '/' . $code;
            $this->email_model->send_email($email, 'Reset yor Password', $this->crud_model->email_template($username, $link, 'CHANGE YOUR PASSWORD'));
            echo "success";
        } else if ($email == '') {
            echo "email empty";
            //$page_data['asset_page'] = "about_us";
        } else {
            echo "user not found";
            //$page_data['asset_page'] = "about_us";
        }

//        $this->load->library('form_validation');
//        $this->form_validation->set_rules('email', 'Email', 'required');
//
//        if ($this->form_validation->run() == FALSE) {
//            echo validation_errors();
//        } else {
//            $query = $this->db->get_where('user', array(
//                'email' => $this->input->post('email')
//            ));
//            if ($query->num_rows() > 0) {
//                $user_id = $query->row()->user_id;
//                $password = substr(hash('sha512', rand()), 0, 12);
//                $data['password'] = sha1($password);
//                $this->db->where('user_id', $user_id);
//                $this->db->update('user', $data);
//                if ($this->email_model->password_reset_email('user', $user_id, $password)) {
//                    echo 'email_sent';
//                } else {
//                    echo 'email_not_sent';
//                }
//            } else {
//                echo 'email_nay';
//            }
//        }
//        $page_data['page_name'] = "forgot_password";
        //$page_data['asset_page'] = "about_us";
//        $this->load->view('front/index', $page_data);
    }

    function my_account_edit() {
        $page_data['username'] = $this->input->post('username');
        $page_data['surname'] = $this->input->post('surname');
        $page_data['email'] = $this->input->post('email');
        $page_data['phone'] = $this->input->post('phone');
        $page_data['address1'] = $this->input->post('address1');
        $page_data['city'] = $this->input->post('city');
        $page_data['zip'] = $this->input->post('zip');
        $page_data['country'] = "India";
        $page_data['state'] = $this->input->post('state');
        $this->db->where('user_id', $this->session->userdata('user_id'));
        $this->db->update('user', $page_data);
        $page_data['page_name'] = "my_account";
        $page_data['page_title'] = translate('My_Account');
        $this->load->view('front/index', $page_data);
    }

    function change_password() {
        if ($this->session->userdata('user_login') != 'yes')
            redirect(base_url() . 'index.php/home');
        $page_data['page_name'] = "change_password";
        $page_data['page_title'] = "change_password";
        $this->load->view('front/index', $page_data);
    }

    function change_password1() {
        if ($this->session->userdata('user_login') != 'yes')
            redirect(base_url() . 'index.php/home');
        $current_pwd = $this->input->post('current_password');
        $new_pwd = $this->input->post('new_password');
        $re_pwd = $this->input->post('re_password');
        $pass = $this->db->get_where('user', array('user_id' => $this->session->userdata('user_id')))->row()->password;
        $current_pass = sha1($current_pwd);
        if ($new_pwd == $re_pwd && $current_pass == $pass) {
            $data['password'] = sha1($new_pwd);
            $this->db->where('user_id', $this->session->userdata('user_id'));
            $this->db->update('user', $data);

            $page_data['success_txt'] = "Password Updated Successfully!!";
            $page_data['page_name'] = "change_password";
            $page_data['page_title'] = "change_password";
            $this->load->view('front/index', $page_data);
        } else {
            $page_data['error_txt'] = "Error:Your password and confirmation password do not match";
            $page_data['page_name'] = "change_password";
            $page_data['page_title'] = "change_password";
            $this->load->view('front/index', $page_data);
        }
    }

    function order() {
        if ($this->session->userdata('user_login') != 'yes') {
            redirect(base_url() . 'index.php/home');
        }
        $page_data['page_name'] = "order";
        $page_data['page_title'] = "order";
        $this->load->view('front/index', $page_data);
    }

    function my_account() {
        if ($this->session->userdata('user_login') != 'yes') {
            redirect(base_url() . 'index.php');
        }
        $page_data['page_name'] = "my_account";
        $page_data['page_title'] = "my_account";
        $this->load->view('front/index', $page_data);
    }

    function search_blog() {

        $keyword = $this->input->post('serch');
        $page_data['results'] = $this->mymodel->search($keyword);
        //$this->twig->display('result_view.php',$data);
        //$page_data['cate_id'] = $param1;
        $page_data['page_name'] = "blog";
        //$page_data['asset_page'] = "about_us";
        $this->load->view('front/index', $page_data);
    }

    function search_cate() {
        $a = $this->input->post('search');
        $cate = $this->db->get_where('category', array('category_name' => $a))->row()->category_id;
        $page_data['page_name'] = "shop";
        $this->load->view('front/index', $page_data);
    }

    function all_brands() {
        if ($this->crud_model->get_settings_value('general_settings', 'vendor_system') !== 'ok') {
            redirect(base_url());
        }
        $page_data['page_name'] = "others/all_brands";
        $page_data['asset_page'] = "all_brands";
        $page_data['page_title'] = translate('all_brands');
        $this->load->view('front/index', $page_data);
    }

    function faq() {
        $page_data['page_name'] = "others/faq";
        $page_data['asset_page'] = "all_category";
        $page_data['page_title'] = translate('frequently_asked_questions');
        $page_data['faqs'] = json_decode($this->crud_model->get_type_name_by_id('business_settings', '11', 'value'), true);
        $this->load->view('front/index', $page_data);
    }

    /* FUNCTION: Search Products */

    function home_search($param = '') {
        $category = $this->input->post('category');
        $this->session->set_userdata('searched_cat', $category);
        if ($param !== 'top') {
            $sub_category = $this->input->post('sub_category');
            $range = $this->input->post('price');
            $brand = $this->input->post('brand');
            $query = $this->input->post('query');
            $p = explode(';', $range);
            redirect(base_url() . 'index.php/home/category/' . $category . '/' . $sub_category . '-' . $brand . '/' . $p[0] . '/' . $p[1] . '/' . $query, 'refresh');
        } else if ($param == 'top') {
            redirect(base_url() . 'index.php/home/category/' . $category, 'refresh');
        }
    }

    function text_search() {
        if ($this->crud_model->get_settings_value('general_settings', 'vendor_system') !== 'ok') {
            $search = $this->input->post('query');
            $category = $this->input->post('category');
            redirect(base_url() . 'index.php/home/category/' . $category . '/0-0/0/0/' . $search, 'refresh');
        } else {
            $type = $this->input->post('type');
            $search = $this->input->post('query');
            $category = $this->input->post('category');
            if ($type == 'vendor') {
                redirect(base_url() . 'index.php/home/store_locator/' . $search, 'refresh');
            } else if ($type == 'product') {
                redirect(base_url() . 'index.php/home/category/' . $category . '/0-0/0/0/' . $search, 'refresh');
            }
        }
    }

    /* FUNCTION: Check if user logged in */

    function is_logged() {
        if ($this->session->userdata('user_login') == 'yes') {
            echo 'yah!good';
        } else {
            echo 'nope!bad';
        }
    }

    function ajax_others_product($para1 = "") {
        $physical_product_activation = $this->db->get_where('general_settings', array('type' => 'physical_product_activation'))->row()->value;
        $digital_product_activation = $this->db->get_where('general_settings', array('type' => 'digital_product_activation'))->row()->value;
        $vendor_system = $this->db->get_where('general_settings', array('type' => 'vendor_system'))->row()->value;

        $this->load->library('Ajax_pagination');
        $type = $this->input->post('type');
        if ($type == 'featured') {
            $this->db->where('featured', 'ok');
        } elseif ($type == 'todays_deal') {
            $this->db->where('deal', 'ok');
        }
        $this->db->where('status', 'ok');

        if ($physical_product_activation == 'ok' && $digital_product_activation !== 'ok') {
            $this->db->where('download', NULL);
        } else if ($physical_product_activation !== 'ok' && $digital_product_activation == 'ok') {
            $this->db->where('download', 'ok');
        } else if ($physical_product_activation !== 'ok' && $digital_product_activation !== 'ok') {
            $this->db->where('product_id', '');
        }

        if ($vendor_system !== 'ok') {
            $this->db->like('added_by', '{"type":"admin"', 'both');
        }

        // pagination
        $config['total_rows'] = $this->db->count_all_results('product');
        $config['base_url'] = base_url() . 'index.php?home/listed/';
        $config['per_page'] = 9;
        $config['uri_segment'] = 5;
        $config['cur_page_giv'] = $para1;

        $function = "filter_others('0')";
        $config['first_link'] = '&laquo;';
        $config['first_tag_open'] = '<li><a onClick="' . $function . '">';
        $config['first_tag_close'] = '</a></li>';

        $rr = ($config['total_rows'] - 1) / $config['per_page'];
        $last_start = floor($rr) * $config['per_page'];
        $function = "filter_others('" . $last_start . "')";
        $config['last_link'] = '&raquo;';
        $config['last_tag_open'] = '<li><a onClick="' . $function . '">';
        $config['last_tag_close'] = '</a></li>';

        $function = "filter_others('" . ($para1 - $config['per_page']) . "')";
        $config['prev_tag_open'] = '<li><a onClick="' . $function . '">';
        $config['prev_tag_close'] = '</a></li>';

        $function = "filter_others('" . ($para1 + $config['per_page']) . "')";
        $config['next_link'] = '&rsaquo;';
        $config['next_tag_open'] = '<li><a onClick="' . $function . '">';
        $config['next_tag_close'] = '</a></li>';

        $config['full_tag_open'] = '<ul class="pagination">';
        $config['full_tag_close'] = '</ul>';

        $config['cur_tag_open'] = '<li class="active"><a>';
        $config['cur_tag_close'] = '<span class="sr-only">(current)</span></a></li>';

        $function = "filter_others(((this.innerHTML-1)*" . $config['per_page'] . "))";
        $config['num_tag_open'] = '<li><a onClick="' . $function . '">';
        $config['num_tag_close'] = '</a></li>';
        $this->ajax_pagination->initialize($config);


        $this->db->order_by('product_id', 'desc');
        $this->db->where('status', 'ok');
        if ($type == 'featured') {
            $this->db->where('featured', 'ok');
        } elseif ($type == 'todays_deal') {
            $this->db->where('deal', 'ok');
        }

        if ($physical_product_activation == 'ok' && $digital_product_activation !== 'ok') {
            $this->db->where('download', NULL);
        } else if ($physical_product_activation !== 'ok' && $digital_product_activation == 'ok') {
            $this->db->where('download', 'ok');
        } else if ($physical_product_activation !== 'ok' && $digital_product_activation !== 'ok') {
            $this->db->where('product_id', '');
        }

        if ($vendor_system !== 'ok') {
            $this->db->like('added_by', '{"type":"admin"', 'both');
        }

        $page_data['products'] = $this->db->get('product', $config['per_page'], $para1)->result_array();
        $page_data['count'] = $config['total_rows'];
        $page_data['page_type'] = $type;

        $this->load->view('front/others_list/listed', $page_data);
    }

    /* FUNCTION: Loads Product List */

    function listed($para1 = "", $para2 = "", $para3 = "") {
        $this->load->library('Ajax_pagination');
        if ($para1 == "click") {
            $physical_product_activation = $this->db->get_where('general_settings', array('type' => 'physical_product_activation'))->row()->value;
            $digital_product_activation = $this->db->get_where('general_settings', array('type' => 'digital_product_activation'))->row()->value;
            $vendor_system = $this->db->get_where('general_settings', array('type' => 'vendor_system'))->row()->value;
            if ($this->input->post('range')) {
                $range = $this->input->post('range');
            }
            if ($this->input->post('text')) {
                $text = $this->input->post('text');
            }
            $category = $this->input->post('category');
            $category = explode(',', $category);
            $sub_category = $this->input->post('sub_category');
            $sub_category = explode(',', $sub_category);
            $featured = $this->input->post('featured');
            $brand = $this->input->post('brand');
            $name = '';
            $cat = '';
            $setter = '';
            $vendors = array();
            $approved_users = $this->db->get_where('vendor', array('status' => 'approved'))->result_array();
            foreach ($approved_users as $row) {
                $vendors[] = $row['vendor_id'];
            }

            if ($vendor_system !== 'ok') {
                $this->db->like('added_by', '{"type":"admin"', 'both');
            }

            if ($physical_product_activation == 'ok' && $digital_product_activation !== 'ok') {
                $this->db->where('download', NULL);
            } else if ($physical_product_activation !== 'ok' && $digital_product_activation == 'ok') {
                $this->db->where('download', 'ok');
            } else if ($physical_product_activation !== 'ok' && $digital_product_activation !== 'ok') {
                $this->db->where('product_id', '');
            }

            if (isset($text)) {
                if ($text !== '') {
                    $this->db->like('title', $text, 'both');
                }
            }

            if ($vendor = $this->input->post('vendor')) {
                if (in_array($vendor, $vendors)) {
                    $this->db->where('added_by', '{"type":"vendor","id":"' . $vendor . '"}');
                } else {
                    $this->db->where('product_id', '');
                }
            }


            $this->db->where('status', 'ok');
            if ($featured == 'ok') {
                $this->db->where('featured', 'ok');
            }

            if ($brand !== '0' && $brand !== '') {
                $this->db->where('brand', $brand);
            }

            if (isset($range)) {
                $p = explode(';', $range);
                $this->db->where('sale_price >=', $p[0]);
                $this->db->where('sale_price <=', $p[1]);
            }

            $query = array();
            if (count($sub_category) > 0) {
                $i = 0;
                foreach ($sub_category as $row) {
                    $i++;
                    if ($row !== "") {
                        if ($row !== "0") {
                            $query[] = $row;
                            $setter = 'get';
                        } else {
                            $this->db->where('sub_category !=', '0');
                        }
                    }
                }
                if ($setter == 'get') {
                    $this->db->where_in('sub_category', $query);
                }
            }

            if (count($category) > 0 && $setter !== 'get') {
                $i = 0;
                foreach ($category as $row) {
                    $i++;
                    if ($row !== "") {
                        if ($row !== "0") {
                            if ($i == 1) {
                                $this->db->where('category', $row);
                            } else {
                                $this->db->or_where('category', $row);
                            }
                        } else {
                            $this->db->where('category !=', '0');
                        }
                    }
                }
            }
            $this->db->order_by('product_id', 'desc');

            // pagination
            $config['total_rows'] = $this->db->count_all_results('product');
            $config['base_url'] = base_url() . 'index.php?home/listed/';
            if ($featured !== 'ok') {
                $config['per_page'] = 9;
            } else if ($featured == 'ok') {
                $config['per_page'] = 9;
            }
            $config['uri_segment'] = 5;
            $config['cur_page_giv'] = $para2;

            $function = "do_product_search('0')";
            $config['first_link'] = '&laquo;';
            $config['first_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
            $config['first_tag_close'] = '</a></li>';

            $rr = ($config['total_rows'] - 1) / $config['per_page'];
            $last_start = floor($rr) * $config['per_page'];
            $function = "do_product_search('" . $last_start . "')";
            $config['last_link'] = '&raquo;';
            $config['last_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
            $config['last_tag_close'] = '</a></li>';

            $function = "do_product_search('" . ($para2 - $config['per_page']) . "')";
            $config['prev_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
            $config['prev_tag_close'] = '</a></li>';

            $function = "do_product_search('" . ($para2 + $config['per_page']) . "')";
            $config['next_link'] = '&rsaquo;';
            $config['next_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
            $config['next_tag_close'] = '</a></li>';

            $config['full_tag_open'] = '<ul class="pagination pagination-v2">';
            $config['full_tag_close'] = '</ul>';

            $config['cur_tag_open'] = '<li class="active"><a rel="grow" class="btn-u btn-u-red grow" class="active">';
            $config['cur_tag_close'] = '</a></li>';

            $function = "do_product_search(((this.innerHTML-1)*" . $config['per_page'] . "))";
            $config['num_tag_open'] = '<li><a rel="grow" class="btn-u btn-u-sea grow" onClick="' . $function . '">';
            $config['num_tag_close'] = '</a></li>';
            $this->ajax_pagination->initialize($config);


            $this->db->where('status', 'ok');
            if ($featured == 'ok') {
                $this->db->where('featured', 'ok');
                $grid_items_per_row = 3;
                $name = 'Featured';
            } else {
                $grid_items_per_row = 3;
            }

            if (isset($text)) {
                if ($text !== '') {
                    $this->db->like('title', $text, 'both');
                }
            }

            if ($physical_product_activation == 'ok' && $digital_product_activation !== 'ok') {
                $this->db->where('download', NULL);
            } else if ($physical_product_activation !== 'ok' && $digital_product_activation == 'ok') {
                $this->db->where('download', 'ok');
            } else if ($physical_product_activation !== 'ok' && $digital_product_activation !== 'ok') {
                $this->db->where('product_id', '');
            }

            if ($vendor_system !== 'ok') {
                $this->db->like('added_by', '{"type":"admin"', 'both');
            }

            if ($vendor = $this->input->post('vendor')) {
                if (in_array($vendor, $vendors)) {
                    $this->db->where('added_by', '{"type":"vendor","id":"' . $vendor . '"}');
                } else {
                    $this->db->where('product_id', '');
                }
            }


            if ($brand !== '0' && $brand !== '') {
                $this->db->where('brand', $brand);
            }

            if (isset($range)) {
                $p = explode(';', $range);
                $this->db->where('sale_price >=', $p[0]);
                $this->db->where('sale_price <=', $p[1]);
            }

            $query = array();
            if (count($sub_category) > 0) {
                $i = 0;
                foreach ($sub_category as $row) {
                    $i++;
                    if ($row !== "") {
                        if ($row !== "0") {
                            $query[] = $row;
                            $setter = 'get';
                        } else {
                            $this->db->where('sub_category !=', '0');
                        }
                    }
                }
                if ($setter == 'get') {
                    $this->db->where_in('sub_category', $query);
                }
            }

            if (count($category) > 0 && $setter !== 'get') {
                $i = 0;
                foreach ($category as $rowc) {
                    $i++;
                    if ($rowc !== "") {
                        if ($rowc !== "0") {
                            if ($i == 1) {
                                $this->db->where('category', $rowc);
                            } else {
                                $this->db->or_where('category', $rowc);
                            }
                        } else {
                            $this->db->where('category !=', '0');
                        }
                    }
                }
            }

            $sort = $this->input->post('sort');

            if ($sort == 'most_viewed') {
                $this->db->order_by('number_of_view', 'desc');
            }
            if ($sort == 'condition_old') {
                $this->db->order_by('product_id', 'asc');
            }
            if ($sort == 'condition_new') {
                $this->db->order_by('product_id', 'desc');
            }
            if ($sort == 'price_low') {
                $this->db->order_by('sale_price', 'asc');
            }
            if ($sort == 'price_high') {
                $this->db->order_by('sale_price', 'desc');
            } else {
                $this->db->order_by('product_id', 'desc');
            }

            $page_data['all_products'] = $this->db->get('product', $config['per_page'], $para2)->result_array();

            if ($name != '') {
                $name .= ' : ';
            }
            if (isset($rowc)) {
                $cat = $rowc;
            } else {
                if ($setter == 'get') {
                    $cat = $this->crud_model->get_type_name_by_id('sub_category', $sub_category[0], 'category');
                }
            }
            if ($cat !== '') {
                if ($cat !== '0') {
                    $name .= $this->crud_model->get_type_name_by_id('category', $cat, 'category_name');
                } else {
                    $name = 'All Products';
                }
            } else {
                $name = 'All Products';
            }
        } elseif ($para1 == "load") {
            $page_data['all_products'] = $this->db->get('product')->result_array();
        }
        $page_data['vendor_system'] = $this->db->get_where('general_settings', array('type' => 'vendor_system'))->row()->value;
        $page_data['category_data'] = $category;
        $page_data['viewtype'] = $this->input->post('view_type');
        $page_data['name'] = $name;
        $page_data['count'] = $config['total_rows'];
        $page_data['grid_items_per_row'] = $grid_items_per_row;
        $this->load->view('front/product_list/other/listed', $page_data);
    }

    /* FUNCTION: Loads Custom Pages */

    function store_locator($parmalink = '') {
        if ($this->crud_model->get_settings_value('general_settings', 'vendor_system') !== 'ok') {
            redirect(base_url() . 'index.php/home');
        }
        $page_data['page_name'] = "others/store_locator";
        $page_data['asset_page'] = "store_locator";
        $page_data['page_title'] = translate('store_locator');
        $page_data['vendors'] = $this->db->get_where('vendor', array('status' => 'approved'))->result_array();
        $page_data['text'] = $parmalink;
        $this->load->view('front/index', $page_data);
    }

    /* FUNCTION: Loads Custom Pages */

    function page($parmalink = '') {
        $pagef = $this->db->get_where('page', array(
            'parmalink' => $parmalink
        ));
        if ($pagef->num_rows() > 0) {
            $page_data['page_name'] = "others/custom_page";
            $page_data['asset_page'] = "page";
            $page_data['tags'] = $pagef->row()->tag;
            $page_data['page_title'] = $parmalink;
            $page_data['page_items'] = $pagef->result_array();
            if ($this->session->userdata('admin_login') !== 'yes' && $pagef->row()->status !== 'ok') {
                redirect(base_url() . 'index.php/home/', 'refresh');
            }
        } else {
            redirect(base_url() . 'index.php/home/', 'refresh');
        }
        $this->load->view('front/index', $page_data);
    }

    /* FUNCTION: Loads Product View Page */

    function product_view($para1 = "", $para2 = "") {
        $product_data = $this->db->get_where('product', array('product_id' => $para1, 'status' => 'ok'));

        $this->db->where('product_id', $para1);
        $this->db->update('product', array(
            'number_of_view' => $product_data->row()->number_of_view + 1,
            'last_viewed' => time()
        ));

        if ($product_data->row()->download == 'ok') {
            $type = 'digital';
        } else {
            $type = 'other';
        }
        $page_data['product_details'] = $this->db->get_where('product', array('product_id' => $para1, 'status' => 'ok'))->result_array();
        $page_data['page_name'] = "product_view/" . $type . "/page_view";
        $page_data['asset_page'] = "product_view_" . $type;
        $page_data['product_data'] = $product_data->result_array();
        $page_data['page_title'] = $product_data->row()->title;
        $page_data['product_tags'] = $product_data->row()->tag;

        $this->load->view('front/index', $page_data);
    }

    /* FUNCTION: Loads Product View Page */

    function quick_view($para1 = "") {
        $product_data = $this->db->get_where('product', array(
            'product_id' => $para1,
            'status' => 'ok'
        ));

        if ($product_data->row()->download == 'ok') {
            $type = 'digital';
        } else {
            $type = 'other';
        }
        $page_data['product_details'] = $product_data->result_array();
        $page_data['page_title'] = $product_data->row()->title;
        $page_data['product_tags'] = $product_data->row()->tag;

        $this->load->view('front/product_view/' . $type . '/quick_view/index', $page_data);
    }

    /* FUNCTION: Setting Frontend Language */

    function set_language($lang) {
        $this->session->set_userdata('language', $lang);
        $page_data['page_name'] = "home";
        recache();
    }

    /* FUNCTION: Setting Frontend Language */

    function set_currency($currency) {
        $this->session->set_userdata('currency', $currency);
        recache();
    }

    /* FUNCTION: Loads Contact Page */

    function contact($para1 = "") {
        if ($this->crud_model->get_settings_value('general_settings', 'captcha_status', 'value') == 'ok') {
            $this->load->library('recaptcha');
        }
        $this->load->library('form_validation');
        if ($para1 == 'send') {
            $safe = 'yes';
            $char = '';
            foreach ($_POST as $row) {
                if (preg_match('/[\'^":()}{#~><>|=+Â¬]/', $row, $match)) {
                    $safe = 'no';
                    $char = $match[0];
                }
            }

            $this->form_validation->set_rules('name', 'Name', 'required');
            $this->form_validation->set_rules('subject', 'Subject', 'required');
            $this->form_validation->set_rules('message', 'Message', 'required');
            $this->form_validation->set_rules('email', 'Email', 'required');

            if ($this->form_validation->run() == FALSE) {
                echo validation_errors();
            } else {
                if ($safe == 'yes') {
                    if ($this->crud_model->get_settings_value('general_settings', 'captcha_status', 'value') == 'ok') {
                        $captcha_answer = $this->input->post('g-recaptcha-response');
                        $response = $this->recaptcha->verifyResponse($captcha_answer);
                        if ($response['success']) {
                            $data['name'] = $this->input->post('name', true);
                            $data['subject'] = $this->input->post('subject');
                            $data['email'] = $this->input->post('email');
                            $data['message'] = $this->security->xss_clean(($this->input->post('message')));
                            $data['view'] = 'no';
                            $data['timestamp'] = time();
                            $this->db->insert('contact_message', $data);
                            echo 'sent';
                        } else {
                            echo translate('captcha_incorrect');
                        }
                    } else {
                        $data['name'] = $this->input->post('name', true);
                        $data['subject'] = $this->input->post('subject');
                        $data['email'] = $this->input->post('email');
                        $data['message'] = $this->security->xss_clean(($this->input->post('message')));
                        $data['view'] = 'no';
                        $data['timestamp'] = time();
                        $this->db->insert('contact_message', $data);
                        echo 'sent';
                    }
                } else {
                    echo 'Disallowed charecter : " ' . $char . ' " in the POST';
                }
            }
        } else {
            if ($this->crud_model->get_settings_value('general_settings', 'captcha_status', 'value') == 'ok') {
                $page_data['recaptcha_html'] = $this->recaptcha->render();
            }
            $page_data['page_name'] = "others/contact";
            $page_data['asset_page'] = "contact";
            $page_data['page_title'] = translate('contact');
            $this->load->view('front/index', $page_data);
        }
    }

    /* FUNCTION: Concerning Login */

    function vendor_logup($para1 = "", $para2 = "") {
        if ($this->crud_model->get_settings_value('general_settings', 'captcha_status', 'value') == 'ok') {
            $this->load->library('recaptcha');
        }
        $this->load->library('form_validation');
        if ($para1 == "add_info") {
            $msg = '';
            $this->load->library('form_validation');
            $safe = 'yes';
            $char = '';
            foreach ($_POST as $k => $row) {
                if (preg_match('/[\'^":()}{#~><>|=Â¬]/', $row, $match)) {
                    if ($k !== 'password1' && $k !== 'password2') {
                        $safe = 'no';
                        $char = $match[0];
                    }
                }
            }

            $this->form_validation->set_rules('name', 'Your First Name', 'required');
            $this->form_validation->set_rules('email', 'Email', 'valid_email|required|is_unique[vendor.email]', array('required' => 'You have not provided %s.', 'is_unique' => 'This %s already exists.'));
            $this->form_validation->set_rules('password1', 'Password', 'required|matches[password2]');
            $this->form_validation->set_rules('password2', 'Confirm Password', 'required');
            $this->form_validation->set_rules('address1', 'Address Line 1', 'required');
            $this->form_validation->set_rules('address2', 'Address Line 2', 'required');
            $this->form_validation->set_rules('display_name', 'Your Display Name', 'required');
            $this->form_validation->set_rules('state', 'State', 'required');
            $this->form_validation->set_rules('country', 'Country', 'required');
            $this->form_validation->set_rules('city', 'City', 'required');
            $this->form_validation->set_rules('zip', 'Zip', 'required');
            $this->form_validation->set_rules('terms_check', 'Terms & Conditions', 'required', array('required' => translate('you_must_agree_with_terms_&_conditions')));
            if ($this->form_validation->run() == FALSE) {
                echo validation_errors();
            } else {
                if ($safe == 'yes') {
                    if ($this->crud_model->get_settings_value('general_settings', 'captcha_status', 'value') == 'ok') {
                        $captcha_answer = $this->input->post('g-recaptcha-response');
                        $response = $this->recaptcha->verifyResponse($captcha_answer);
                        if ($response['success']) {
                            $data['name'] = $this->input->post('name');
                            $data['email'] = $this->input->post('email');
                            $data['address1'] = $this->input->post('address1');
                            $data['address2'] = $this->input->post('address2');
                            $data['company'] = $this->input->post('company');
                            $data['display_name'] = $this->input->post('display_name');
                            $data['state'] = $this->input->post('state');
                            $data['country'] = $this->input->post('country');
                            $data['city'] = $this->input->post('city');
                            $data['zip'] = $this->input->post('zip');
                            $data['create_timestamp'] = time();
                            $data['approve_timestamp'] = 0;
                            $data['approve_timestamp'] = 0;
                            $data['membership'] = 0;
                            $data['status'] = 'pending';

                            if ($this->input->post('password1') == $this->input->post('password2')) {
                                $password = $this->input->post('password1');
                                $data['password'] = sha1($password);
                                $this->db->insert('vendor', $data);
                                $msg = 'done';
                                if ($this->email_model->account_opening('vendor', $data['email'], $password) == false) {
                                    $msg = 'done_but_not_sent';
                                } else {
                                    $msg = 'done_and_sent';
                                }
                            }
                            echo $msg;
                        } else {
                            echo translate('please_fill_the_captcha');
                        }
                    } else {
                        $data['name'] = $this->input->post('name');
                        $data['email'] = $this->input->post('email');
                        $data['address1'] = $this->input->post('address1');
                        $data['address2'] = $this->input->post('address2');
                        $data['company'] = $this->input->post('company');
                        $data['display_name'] = $this->input->post('display_name');
                        $data['state'] = $this->input->post('state');
                        $data['country'] = $this->input->post('country');
                        $data['city'] = $this->input->post('city');
                        $data['zip'] = $this->input->post('zip');
                        $data['create_timestamp'] = time();
                        $data['approve_timestamp'] = 0;
                        $data['approve_timestamp'] = 0;
                        $data['membership'] = 0;
                        $data['status'] = 'pending';

                        if ($this->input->post('password1') == $this->input->post('password2')) {
                            $password = $this->input->post('password1');
                            $data['password'] = sha1($password);
                            $this->db->insert('vendor', $data);
                            $msg = 'done';
                            if ($this->email_model->account_opening('vendor', $data['email'], $password) == false) {
                                $msg = 'done_but_not_sent';
                            } else {
                                $msg = 'done_and_sent';
                            }
                        }
                        echo $msg;
                    }
                } else {
                    echo 'Disallowed charecter : " ' . $char . ' " in the POST';
                }
            }
        } else if ($para1 == 'registration') {
            if ($this->crud_model->get_settings_value('general_settings', 'vendor_system') !== 'ok') {
                redirect(base_url());
            }
            if ($this->crud_model->get_settings_value('general_settings', 'captcha_status', 'value') == 'ok') {
                $page_data['recaptcha_html'] = $this->recaptcha->render();
            }
            $page_data['page_name'] = "vendor/register";
            $page_data['asset_page'] = "register";
            $page_data['page_title'] = translate('registration');
            $this->load->view('front/index', $page_data);
        }
    }

    function vendor_login_msg() {
        $page_data['page_name'] = "vendor/register/login_msg";
        $page_data['asset_page'] = "register";
        $page_data['page_title'] = translate('registration');
        $this->load->view('front/index', $page_data);
    }

    /* FUNCTION: Concerning Login */

    function login($para1 = "", $para2 = "") {


        $page_data['page_name'] = "login";

        $this->load->library('form_validation');
        if ($para1 == "do_login") {
            $this->form_validation->set_rules('email', 'Email', 'required');
            $this->form_validation->set_rules('password', 'Password', 'required');

            if ($this->form_validation->run() == FALSE) {
                echo validation_errors();
            } else {
                $signin_data = $this->db->get_where('user', array(
                    'email' => $this->input->post('email'),
                    'password' => sha1($this->input->post('password'))
                ));
                if ($signin_data->num_rows() > 0) {
                    foreach ($signin_data->result_array() as $row) {
                        $this->session->set_userdata('user_login', 'yes');
                        $this->session->set_userdata('user_id', $row['user_id']);
                        $this->session->set_userdata('user_name', $row['username']);
                        $this->session->set_flashdata('alert', 'successful_signin');
                        $this->db->where('user_id', $row['user_id']);
                        $this->db->update('user', array(
                            'last_login' => time()
                        ));
                        echo 'done';
                    }
                } else {
                    echo 'failed';
                }
            }
        } else if ($para1 == 'forget') {
            $this->load->library('form_validation');
            $this->form_validation->set_rules('email', 'Email', 'required');

            if ($this->form_validation->run() == FALSE) {
                echo validation_errors();
            } else {
                $query = $this->db->get_where('user', array(
                    'email' => $this->input->post('email')
                ));
                if ($query->num_rows() > 0) {
                    $user_id = $query->row()->user_id;
                    $password = substr(hash('sha512', rand()), 0, 12);
                    $data['password'] = sha1($password);
                    $this->db->where('user_id', $user_id);
                    $this->db->update('user', $data);
                    if ($this->email_model->password_reset_email('user', $user_id, $password)) {
                        echo 'email_sent';
                    } else {
                        echo 'email_not_sent';
                    }
                } else {
                    echo 'email_nay';
                }
            }
        }
        //$this->load->view('front/index', $page_data);
    }

    /* FUNCTION: Setting login page with facebook and google */

    function login_set($para1 = '', $para2 = '', $para3 = '') {
        if ($this->session->userdata('user_login') == "yes") {
            redirect(base_url() . 'index.php/home/profile', 'refresh');
        }
        if ($this->crud_model->get_settings_value('general_settings', 'captcha_status', 'value') == 'ok') {
            $this->load->library('recaptcha');
        }
        $this->load->library('form_validation');

        $fb_login_set = $this->crud_model->get_settings_value('general_settings', 'fb_login_set');
        $g_login_set = $this->crud_model->get_settings_value('general_settings', 'g_login_set');
        $page_data = array();
        $appid = $this->db->get_where('general_settings', array(
                    'type' => 'fb_appid'
                ))->row()->value;
        $secret = $this->db->get_where('general_settings', array(
                    'type' => 'fb_secret'
                ))->row()->value;
        $config = array(
            'appId' => $appid,
            'secret' => $secret
        );
        $this->load->library('Facebook', $config);

        if ($fb_login_set == 'ok') {
            // Try to get the user's id on Facebook
            $userId = $this->facebook->getUser();

            // If user is not yet authenticated, the id will be zero
            if ($userId == 0) {
                // Generate a login url
                //$page_data['url'] = $this->facebook->getLoginUrl(array('scope'=>'email'));
                $page_data['url'] = $this->facebook->getLoginUrl(array(
                    'redirect_uri' => site_url('home/login_set/back/' . $para2),
                    'scope' => array(
                        "email", "public_profile"
                    ) // permissions here
                ));
                //redirect($data['url']);
            } else {
                // Get user's data and print it
                $page_data['user'] = $this->facebook->api('/me');
                $page_data['url'] = site_url('home/login_set/back/' . $para2); // Logs off application
                //print_r($user);
            }
            if ($para1 == 'back') {
                $user = $this->facebook->api('/me');
                if ($user_id = $this->crud_model->exists_in_table('user', 'fb_id', $user['id'])) {
                    
                } else {
                    $data['username'] = $user['first_name'];
                    $data['surname'] = $user['last_name'];
                    $data['email'] = $user['email'];
                    $data['fb_id'] = $user['id'];
                    $data['wishlist'] = '[]';
                    $data['creation_date'] = time();
                    $data['password'] = substr(hash('sha512', rand()), 0, 12);

                    $this->db->insert('user', $data);
                    $user_id = $this->db->insert_id();
                }
                $this->session->set_userdata('user_login', 'yes');
                $this->session->set_userdata('user_id', $user_id);
                $this->session->set_userdata('user_name', $this->db->get_where('user', array(
                            'user_id' => $user_id
                        ))->row()->username);
                $this->session->set_flashdata('alert', 'successful_signin');

                $this->db->where('user_id', $user_id);
                $this->db->update('user', array(
                    'last_login' => time()
                ));

                if ($para2 == 'cart') {
                    redirect(base_url() . 'index.php/home/cart_checkout', 'refresh');
                } else {
                    redirect(base_url() . 'index.php/home', 'refresh');
                }
            }
        }


        if ($g_login_set == 'ok') {
            $this->load->library('googleplus');
            if (isset($_GET['code'])) { //just_logged in
                $this->googleplus->client->authenticate();
                $_SESSION['token'] = $this->googleplus->client->getAccessToken();
                $g_user = $this->googleplus->people->get('me');
                if ($user_id = $this->crud_model->exists_in_table('user', 'g_id', $g_user['id'])) {
                    
                } else {
                    $data['username'] = $g_user['displayName'];
                    $data['email'] = 'required';
                    $data['wishlist'] = '[]';
                    $data['g_id'] = $g_user['id'];

                    $data['g_photo'] = $g_user['image']['url'];
                    $data['creation_date'] = time();
                    $data['password'] = substr(hash('sha512', rand()), 0, 12);
                    $this->db->insert('user', $data);
                    $user_id = $this->db->insert_id();
                }
                $this->session->set_userdata('user_login', 'yes');
                $this->session->set_userdata('user_id', $user_id);
                $this->session->set_userdata('user_name', $this->db->get_where('user', array(
                            'user_id' => $user_id
                        ))->row()->username);
                $this->session->set_flashdata('alert', 'successful_signin');

                $this->db->where('user_id', $user_id);
                $this->db->update('user', array(
                    'last_login' => time()
                ));

                if ($para2 == 'cart') {
                    redirect(base_url() . 'index.php/home/cart_checkout', 'refresh');
                } else {
                    redirect(base_url() . 'index.php/home', 'refresh');
                }
            }
            if (@$_SESSION['token']) {
                $this->googleplus->client->setAccessToken($_SESSION['token']);
            }
            if ($this->googleplus->client->getAccessToken()) { //already_logged_in
                $page_data['g_user'] = $this->googleplus->people->get('me');
                $page_data['g_url'] = $this->googleplus->client->createAuthUrl();
                $_SESSION['token'] = $this->googleplus->client->getAccessToken();
            } else {
                $page_data['g_url'] = $this->googleplus->client->createAuthUrl();
            }
        }

        if ($para1 == 'login') {
            $page_data['page_name'] = "user/login";
            $page_data['asset_page'] = "login";
            $page_data['page_title'] = translate('login');
            if ($para2 == 'modal') {
                $this->load->view('front/user/login/quick_modal', $page_data);
            } else {
                $this->load->view('front/index', $page_data);
            }
        } elseif ($para1 == 'registration') {
            if ($this->crud_model->get_settings_value('general_settings', 'captcha_status', 'value') == 'ok') {
                $page_data['recaptcha_html'] = $this->recaptcha->render();
            }
            $page_data['page_name'] = "user/register";
            $page_data['asset_page'] = "register";
            $page_data['page_title'] = translate('registration');
            if ($para2 == 'modal') {
                $this->load->view('front/user/register/index', $page_data);
            } else {
                $this->load->view('front/index', $page_data);
            }
        }
    }

    /* FUNCTION: Logout set */

    function logout() {
        $appid = $this->db->get_where('general_settings', array(
                    'type' => 'fb_appid'
                ))->row()->value;
        $secret = $this->db->get_where('general_settings', array(
                    'type' => 'fb_secret'
                ))->row()->value;
        $config = array(
            'appId' => $appid,
            'secret' => $secret
        );
        $this->load->library('Facebook', $config);

        $this->facebook->destroySession();
        $this->session->sess_destroy();
        redirect(base_url() . 'index.php/home/logged_out', 'refresh');
    }

    /* FUNCTION: Logout */

    function logged_out() {
        $this->session->set_flashdata('alert', 'successful_signout');
        redirect(base_url() . 'index.php/home/', 'refresh');
    }

    /* FUNCTION: Check if Email user exists */

    function exists() {
        $email = $this->input->post('email');
        $user = $this->db->get('user')->result_array();
        $exists = 'no';
        foreach ($user as $row) {
            if ($row['email'] == $email) {
                $exists = 'yes';
            }
        }
        echo $exists;
    }

    function subscribe() {
        $safe = 'yes';
        $exists = 'no';

        if (preg_match('/[\'^":()}{#~><>|=+Â¬]/', $_POST['subscribe'])) {
            $safe = 'no';
            $this->session->set_userdata(array(
                'sub_message' => "Disallowed Characters appear in submitted Email ID",
                'message_type' => "error"
            ));
        }

        if ($safe == 'yes') {
            $subscriber = $this->db->get('subscribe')->result_array();
            foreach ($subscriber as $row) {
                if ($row['email'] == $_POST['subscribe']) {
                    $exists = 'yes';
                }
            }
            if ($exists == 'yes') {
                $this->session->set_userdata(array(
                    'sub_message' => "Email ID Already Registered",
                    'message_type' => "error"
                ));
            } else {
                $this->db->set('email', $_POST['subscribe']);
                $result = $this->db->insert('subscribe');
                if ($result) {
                    $this->session->set_userdata(array(
                        'sub_message' => "Email ID added successfully",
                        'message_type' => "success"
                    ));
                } else {
                    $this->session->set_userdata(array(
                        'sub_message' => "Error on adding Email ID",
                        'message_type' => "error"
                    ));
                }
            }
        }
        redirect(base_url() . 'index.php', 'refresh');
    }

    function appointment() {


        if ($_POST) {
            $name = $_POST['name'];
            $phone = $_POST['phone'];
            $email = $_POST['email'];
            $date = $_POST['date'];
            $msg = $_POST['msg'];
            $to = 'deepthygupta@gmail.com';
            $subject = 'ONLINE APPOINTMENT';
            $headers = "MIME-Version: 1.0\n";
            $headers .= "Content-type: text/plain; charset=iso-8859-1\n";
            $headers .= "To: <$to>\r\n";
            $headers .= "From: Uranus Unani Hospital\r\n";


            $message = '<table cellspacing="0" cellpadding="1" border="1">
            <tbody>
			<tr><th colspan="2">ONLINE APPOINTMENT FORM</th></tr>
                <tr>
                    <td style="padding: 5px 10px;" width="150">Name </td>
                    <td style="padding: 5px 10px;">$name</td>
                </tr>
				<tr>
                    <td style="padding: 5px 10px;" width="150">Phone </td>
                    <td style="padding: 5px 10px;">$phone</td>
                </tr>
                <tr>
                    <td style="padding: 5px 10px;" width="150">Email </td>
                    <td style="padding: 5px 10px;">$email</td>
                </tr>
				
				<tr>
                    <td style="padding: 5px 10px;" width="150">DATE </td>
                    <td style="padding: 5px 10px;">$date</td>
                </tr>
                <tr>
                    <td style="padding: 5px 10px;" width="150">Message </td>
                    <td style="padding: 5px 10px;">$msg</td>
                </tr>
            </tbody>
        </table>';

            if (!mail($to, $subject, $message, $headers, '-fmailing@qproinnovations.com')) {
                echo '<script language="javascript">';
                echo 'alert("Message could not be sent.");';
                echo "window.location = '" . base_url() . "'";
                echo '</script>';
            } else {
                echo '<script language="javascript">';
                echo 'alert("Message has been sent");';
                echo "window.location = '" . base_url() . "'";
                echo '</script>';
            }
        } else {
            redirect(base_url() . 'index.php', 'refresh');
        }
    }

    /* FUNCTION: Customer Registration */

    function registration($para1 = "", $para2 = "") {
        $safe = 'yes';
        $char = '';
        foreach ($_POST as $k => $row) {
            if (preg_match('/[\'^":()}{#~><>|=Â¬]/', $row, $match)) {
                if ($k !== 'password1' && $k !== 'password2') {
                    $safe = 'no';
                    $char = $match[0];
                }
            }
        }
        if ($this->crud_model->get_settings_value('general_settings', 'captcha_status', 'value') == 'ok') {
            $this->load->library('recaptcha');
        }
        $this->load->library('form_validation');
        $page_data['page_name'] = "registration";
        if ($para1 == "add_info") {
            $msg = '';
            $this->form_validation->set_rules('username', 'Your First Name', 'required');
            $this->form_validation->set_rules('email', 'Email', 'required|is_unique[user.email]|valid_email', array('required' => 'You have not provided %s.', 'is_unique' => 'This %s already exists.'));
            $this->form_validation->set_rules('password1', 'Password', 'required|matches[password2]');
            $this->form_validation->set_rules('password2', 'Confirm Password', 'required');
            $this->form_validation->set_rules('address1', 'Address Line 1', 'required');
            $this->form_validation->set_rules('address2', 'Address Line 2', 'required');
            $this->form_validation->set_rules('phone', 'Phone', 'required');
            $this->form_validation->set_rules('surname', 'Your Last Name', 'required');
            $this->form_validation->set_rules('zip', 'ZIP', 'required');
            $this->form_validation->set_rules('city', 'City', 'required');
            $this->form_validation->set_rules('state', 'State', 'required');
            $this->form_validation->set_rules('country', 'Country', 'required');
            $this->form_validation->set_rules('terms_check', 'Terms & Conditions', 'required', array('required' => translate('you_must_agree_with_terms_&_conditions')));

            if ($this->form_validation->run() == FALSE) {
                echo validation_errors();
            } else {
                if ($safe == 'yes') {
                    if ($this->crud_model->get_settings_value('general_settings', 'captcha_status', 'value') == 'ok') {
                        $captcha_answer = $this->input->post('g-recaptcha-response');
                        $response = $this->recaptcha->verifyResponse($captcha_answer);
                        if ($response['success']) {
                            $data['username'] = $this->input->post('username');
                            $data['email'] = $this->input->post('email');
                            $data['address1'] = $this->input->post('address1');
                            $data['address2'] = $this->input->post('address2');
                            $data['phone'] = $this->input->post('phone');
                            $data['surname'] = $this->input->post('surname');
                            $data['zip'] = $this->input->post('zip');
                            $data['city'] = $this->input->post('city');
                            $data['state'] = $this->input->post('state');
                            $data['country'] = $this->input->post('country');
                            $data['langlat'] = '';
                            $data['wishlist'] = '[]';
                            $data['creation_date'] = time();

                            if ($this->input->post('password1') == $this->input->post('password2')) {
                                $password = $this->input->post('password1');
                                $data['password'] = sha1($password);
                                $this->db->insert('user', $data);
                                $msg = 'done';
                                if ($this->email_model->account_opening('user', $data['email'], $password) == false) {
                                    $msg = 'done_but_not_sent';
                                } else {
                                    $msg = 'done_and_sent';
                                }
                            }
                            echo $msg;
                        } else {
                            echo translate('please_fill_the_captcha');
                        }
                    } else {
                        $data['username'] = $this->input->post('username');
                        $data['email'] = $this->input->post('email');
                        $data['address1'] = $this->input->post('address1');
                        $data['address2'] = $this->input->post('address2');
                        $data['phone'] = $this->input->post('phone');
                        $data['surname'] = $this->input->post('surname');
                        $data['zip'] = $this->input->post('zip');
                        $data['city'] = $this->input->post('city');
                        $data['state'] = $this->input->post('state');
                        $data['country'] = $this->input->post('country');
                        $data['langlat'] = '';
                        $data['wishlist'] = '[]';
                        $data['creation_date'] = time();

                        if ($this->input->post('password1') == $this->input->post('password2')) {
                            $password = $this->input->post('password1');
                            $data['password'] = sha1($password);
                            $this->db->insert('user', $data);
                            $msg = 'done';
                            if ($this->email_model->account_opening('user', $data['email'], $password) == false) {
                                $msg = 'done_but_not_sent';
                            } else {
                                $msg = 'done_and_sent';
                            }
                        }
                        echo $msg;
                    }
                } else {
                    echo 'Disallowed charecter : " ' . $char . ' " in the POST';
                }
            }
        } else if ($para1 == "update_info") {
            $id = $this->session->userdata('user_id');
            $data['username'] = $this->input->post('username');
            $data['surname'] = $this->input->post('surname');
            $data['address1'] = $this->input->post('address1');
            $data['address2'] = $this->input->post('address2');
            $data['phone'] = $this->input->post('phone');
            $data['city'] = $this->input->post('city');
            $data['state'] = $this->input->post('state');
            $data['country'] = $this->input->post('country');
            $data['skype'] = $this->input->post('skype');
            $data['google_plus'] = $this->input->post('google_plus');
            $data['facebook'] = $this->input->post('facebook');
            $data['zip'] = $this->input->post('zip');

            $this->db->where('user_id', $id);
            $this->db->update('user', $data);
            echo "done";
        } else if ($para1 == "update_password") {
            $user_data['password'] = $this->input->post('password');
            $account_data = $this->db->get_where('user', array(
                        'user_id' => $this->session->userdata('user_id')
                    ))->result_array();
            foreach ($account_data as $row) {
                if (sha1($user_data['password']) == $row['password']) {
                    if ($this->input->post('password1') == $this->input->post('password2')) {
                        $data['password'] = sha1($this->input->post('password1'));
                        $this->db->where('user_id', $this->session->userdata('user_id'));
                        $this->db->update('user', $data);
                        echo "done";
                    } else {
                        echo translate('passwords_did_not_match!');
                    }
                } else {
                    echo translate('wrong_old_password!');
                }
            }
        } else if ($para1 == "change_picture") {
            $id = $this->session->userdata('user_id');
            $this->crud_model->file_up('img', 'user', $id, '', '', '.jpg');
            echo 'done';
        } else {
            $this->load->view('front/registration', $page_data);
        }
    }

    function error() {
        $this->load->view('front/others/404_error');
    }

    /* FUNCTION: Product rating */

    function rating($product_id, $rating) {
        if ($this->session->userdata('user_login') != "yes") {
            redirect(base_url() . 'index.php/home/login/', 'refresh');
        }
        if ($rating <= 5) {
            if ($this->crud_model->set_rating($product_id, $rating) == 'yes') {
                echo 'success';
            } else if ($this->crud_model->set_rating($product_id, $rating) == 'no') {
                echo 'already';
            }
        } else {
            echo 'failure';
        }
    }

    /* FUNCTION: Concerning Compare */

    function compare($para1 = "", $para2 = "") {
        if ($para1 == 'add') {
            $this->crud_model->add_compare($para2);
        } else if ($para1 == 'remove') {
            $this->crud_model->remove_compare($para2);
        } else if ($para1 == 'num') {
            echo $this->crud_model->compared_num();
        } else if ($para1 == 'clear') {
            $this->session->set_userdata('compare', '');
            redirect(base_url() . 'index.php/home', 'refresh');
        } else if ($para1 == 'get_detail') {
            $product = $this->db->get_where('product', array('product_id' => $para2));
            $return = array();
            $return += array('image' => '<img src="' . $this->crud_model->file_view('product', $para2, '', '', 'thumb', 'src', 'multi', 'one') . '" width="100" />');
            $return += array('price' => currency() . $product->row()->sale_price);
            $return += array('description' => $product->row()->description);
            if ($product->row()->brand) {
                $return += array('brand' => $this->db->get_where('brand', array('brand_id' => $product->row()->brand))->row()->name);
            }
            if ($product->row()->sub_category) {
                $return += array('sub' => $this->db->get_where('sub_category', array('sub_category_id' => $product->row()->sub_category))->row()->sub_category_name);
            }
            echo json_encode($return);
        } else {
            if ($this->session->userdata('compare') == '[]') {
                redirect(base_url() . 'index.php/home/', 'refresh');
            }
            $page_data['page_name'] = "others/compare";
            $page_data['asset_page'] = "compare";
            $page_data['page_title'] = 'compare';
            $this->load->view('front/index', $page_data);
        }
    }

    function cancel_order() {
        $this->session->set_userdata('sale_id', '');
        $this->session->set_userdata('couponer', '');
        $this->cart->destroy();
        redirect(base_url(), 'refresh');
    }

    /* FUNCTION: Concering Add, Remove and Updating Cart Items */

    function cart($para1 = '', $para2 = '', $para3 = '', $para4 = '') {
        $this->cart->product_name_rules = '[:print:]';
        if ($para1 == "add") {

            $qty = $this->input->post('qty');
            if ($qty == '')
                $qty = 1;
            $color = $this->input->post('color');
            $option = array('color' => array('title' => 'Color', 'value' => $color));
            $all_op = json_decode($this->crud_model->get_type_name_by_id('product', $para2, 'options'), true);
            if ($all_op) {
                foreach ($all_op as $ro) {
                    $name = $ro['name'];
                    $title = $ro['title'];
                    $option[$name] = array('title' => $title, 'value' => $this->input->post($name));
                }
            }

            if ($para3 == 'pp') {
                $carted = $this->cart->contents();
                foreach ($carted as $items) {
                    if ($items['id'] == $para2) {
                        $data = array(
                            'rowid' => $items['rowid'],
                            'qty' => 0
                        );
                    } else {
                        $data = array(
                            'rowid' => $items['rowid'],
                            'qty' => $items['qty']
                        );
                    }
                    $this->cart->update($data);
                }
            }

            $data = array(
                'id' => $para2,
                'qty' => $qty,
                'option' => json_encode($option),
                'price' => $this->crud_model->get_product_price($para2),
                'name' => $this->crud_model->get_type_name_by_id('product', $para2, 'title'),
                'shipping' => $this->crud_model->get_shipping_cost($para2),
                'tax' => $this->crud_model->get_product_tax($para2),
                'image' => $this->crud_model->file_view('product', $para2, '', '', 'thumb', 'src', 'multi', 'one'),
                'coupon' => ''
            );

            $stock = $this->crud_model->get_type_name_by_id('product', $para2, 'current_stock');

            if (!$this->crud_model->is_added_to_cart($para2) || $para3 == 'pp') {
                if ($stock >= $qty || $this->crud_model->is_digital($para2)) {
                    $var = $this->cart->insert($data);
                    echo 'added';
                } else {
                    echo 'shortage';
                }
            } else {
                echo 'already';
            }
            //var_dump($this->cart->contents());
        }

        if ($para1 == "added_list") {
            $page_data['carted'] = $this->cart->contents();
            $this->load->view('front/added_list', $page_data);
        }

        if ($para1 == "empty") {
            $this->cart->destroy();
            $this->session->set_userdata('couponer', '');
        }

        if ($para1 == "quantity_update") {

            $carted = $this->cart->contents();
            foreach ($carted as $items) {
                if ($items['rowid'] == $para2) {
                    $product = $items['id'];
                }
            }
            $current_quantity = $this->crud_model->get_type_name_by_id('product', $product, 'current_stock');
            $msg = 'not_limit';
            $quantity = 1;
            foreach ($carted as $items) {
                if ($items['rowid'] == $para2) {
                    if ($current_quantity >= $para3) {
                        $data = array(
                            'rowid' => $items['rowid'],
                            'qty' => $para3
                        );
                        if ($para3 > 0)
                            $quantity = $para3;
                    } else {
                        $msg = $current_quantity;
                        $data = array(
                            'rowid' => $items['rowid'],
                            'qty' => $current_quantity
                        );
                    }
                } else {
                    $data = array(
                        'rowid' => $items['rowid'],
                        'qty' => $items['qty']
                    );
                }
                $this->cart->update($data);
            }
            $return = '';
            $carted = $this->cart->contents();
            foreach ($carted as $items) {
                if ($items['rowid'] == $para2) {
                    $return = currency($items['subtotal']);
                }
            }
            $return .= '---' . $msg . '---' . $quantity;
            echo $return;
        }

        if ($para1 == "remove_one") {
            $carted = $this->cart->contents();
            foreach ($carted as $items) {
                if ($items['rowid'] == $para2) {
                    $data = array(
                        'rowid' => $items['rowid'],
                        'qty' => 0
                    );
                } else {
                    $data = array(
                        'rowid' => $items['rowid'],
                        'qty' => $items['qty']
                    );
                }
                $this->cart->update($data);
            }

            $carted = $this->cart->contents();
            echo count($carted);
            if (count($carted) == 0) {
                $this->cart('empty');
            }
        }


        if ($para1 == "whole_list") {
            echo json_encode($this->cart->contents());
        }

        if ($para1 == 'calcs') {
            $total = $this->cart->total();
            if ($this->crud_model->get_type_name_by_id('business_settings', '3', 'value') == 'product_wise') {
                $shipping = $this->crud_model->cart_total_it('shipping');
            } elseif ($this->crud_model->get_type_name_by_id('business_settings', '3', 'value') == 'fixed') {
                $ship_val = $this->crud_model->get_type_name_by_id('business_settings', '2', 'value');
                $filter_val = explode('-', $ship_val); /// created by qpro
                if ($total < $filter_val[1]) {
                    $shipping = $filter_val[0];
                } else
                    $shipping = 0;
            }
            $tax = $this->crud_model->cart_total_it('tax');

            $grand = $total + $shipping + $tax;
            if ($para2 == 'full') {
                $ship = $shipping;
                $count = count($this->cart->contents());

                if ($total == '') {
                    $total = 0;
                }
                if ($ship == '') {
                    $ship = 0;
                }
                if ($tax == '') {
                    $tax = 0;
                }
                if ($grand == '') {
                    $grand = 0;
                }
                if ($ship == '') {
                    $ship = 0;
                }

                $total = $total;
                $ship = $ship;
                $tax = $tax;
                $grand = $grand;

                echo $total . '-' . $ship . '-' . $tax . '-' . $grand . '-' . $count;
            }

            if ($para2 == 'prices') {
                $carted = $this->cart->contents();
                $return = array();
                foreach ($carted as $row) {
                    $return[] = array('id' => $row['rowid'], 'price' => currency($row['price']), 'subtotal' => currency($row['subtotal']));
                }
                echo json_encode($return);
            }
        }
    }

    function cart_checkout($para1 = "", $para2 = "") {
        $this->session->unset_userdata('refresh_hash');
        $carted = $this->cart->contents();
        if (count($carted) <= 0) {
            redirect(base_url() . 'index.php', 'refresh');
        }
        if ($para1 == "orders") {
            $this->load->view('front/shopping_cart/order_set');
        } elseif ($para1 == "delivery_address") {
            $this->load->view('front/shopping_cart/delivery_address');
        } elseif ($para1 == "payments_options") {
            $this->load->view('front/shopping_cart/payments_options');
        }
        if ($para1 == 'delete') {
            $this->db->get_where($this->cart->contents()->row_id(), $para2);
            $this->db->delete($this->cart->contents());
            $this->session->set_flashdata('flash_message', get_phrase('data_deleted'));
            redirect(base_url() . 'index.php?home/cart_checkout/', 'refresh');
        } else {
            $page_data['logger'] = $para1;
            $page_data['page_name'] = "view_cart";
            $page_data['asset_page'] = "shopping_cart";
            $page_data['page_title'] = translate('my_cart');
            $page_data['carted'] = $this->cart->contents();
            $this->load->view('front/index', $page_data);
        }
    }

    /* FUNCTION: Loads Cart Checkout Page */

    function coupon_check() {
        $para1 = $this->input->post('code');
        $carted = $this->cart->contents();
        if ($this->crud_model->check_coupon_status($para1) == 'ok' && $this->crud_model->coupon_limit_count($para1) != 0) {
            if (count($carted) > 0) {
                $p = $this->session->userdata('coupon_apply') + 1;
                $this->session->set_userdata('coupon_apply', $p);
                $p = $this->session->userdata('coupon_apply');
                if ($p < 10) {
                    $c = $this->db->get_where('discount', array('code' => $para1));
                    $coupon = $c->result_array();
                    //echo $c->num_rows();
                    //,'till <= '=>date('Y-m-d')
                    if ($c->num_rows() > 0) {
                        foreach ($coupon as $row) {
                            $spec = json_decode($row['spec'], true);
                            $discount_id = $row['discount_id'];
                            $till = strtotime($row['till']);
                        }
                        if ($till > time()) {
                            $ro = $spec;
                            $type = $ro['discount_type'];
                            $value = $ro['discount_value'];
                            $set_type = $ro['set_type'];
                            $set = json_decode($ro['set']);
                            if ($set_type !== 'total_amount') {
                                $dis_pro = array();
                                $set_ra = array();
                                if ($set_type == 'all_products') {
                                    $set_ra[] = $this->db->get('product')->result_array();
                                } else {
                                    foreach ($set as $p) {
                                        if ($set_type == 'product') {
                                            $set_ra[] = $this->db->get_where('product', array('product_id' => $p))->result_array();
                                        } else {
                                            $set_ra[] = $this->db->get_where('product', array($set_type => $p))->result_array();
                                        }
                                    }
                                }
                                foreach ($set_ra as $set) {
                                    foreach ($set as $n) {
                                        $dis_pro[] = $n['product_id'];
                                    }
                                }
                                foreach ($carted as $items) {
                                    if (in_array($items['id'], $dis_pro)) {
                                        $base_price = $this->crud_model->get_product_price($items['id']);
                                        if ($type == 'percent') {
                                            $discount = $base_price * $value / 100;
                                        } else if ($type == 'amount') {
                                            $discount = $value;
                                        }
                                        $data = array(
                                            'rowid' => $items['rowid'],
                                            'price' => $base_price - $discount,
                                            'coupon' => $discount_id
                                        );
                                    } else {
                                        $data = array(
                                            'rowid' => $items['rowid'],
                                            'price' => $items['price'],
                                            'coupon' => $items['coupon']
                                        );
                                    }
                                    $this->cart->update($data);
                                }
                                echo 'wise:-:-:' . translate('coupon_discount_activated');
                            } else {
                                $this->cart->set_discount($value);
                                echo 'total:-:-:' . translate('coupon_discount_activated') . ':-:-:' . currency() . $value;
                            }
                            $this->cart->set_coupon($discount_id);
                            $this->session->set_userdata('couponer', 'done');
                            $this->session->set_userdata('coupon_apply', 0);
                        } else {
                            echo 'nope';
                        }
                    } else {
                        echo 'nope';
                    }
                } else {
                    echo 'Too many coupon request!';
                }
            }
        } else
            echo 'unavailable';
    }

    /* FUNCTION: Finalising Purchase */

    function cart_finish($para1 = "", $para2 = "") {
        $carted = $this->cart->contents();
        if (count($carted) <= 0) {
            redirect(base_url() . 'index.php/home/', 'refresh');
        }
        if ($this->session->userdata('user_login') == 'yes') {
            $carted = $this->cart->contents();
            $total = $this->cart->total();
            $exchange = exchange('usd');
            $vat_per = '';
            $vat = $this->crud_model->cart_total_it('tax');
            if ($this->crud_model->get_type_name_by_id('business_settings', '3', 'value') == 'product_wise') {
                $shipping = $this->crud_model->cart_total_it('shipping');
            } else {
                $shipping = $this->crud_model->get_type_name_by_id('business_settings', '2', 'value');
            }
            $grand_total = $total + $vat + $shipping;
            $product_details = json_encode($carted);

            $this->db->where('user_id', $this->session->userdata('user_id'));
            $this->db->update('user', array(
                'langlat' => $this->input->post('langlat')
            ));

            if ($this->input->post('payment_type') == 'paypal') {
                if ($para1 == 'go') {

                    $data['buyer'] = $this->session->userdata('user_id');
                    $data['product_details'] = $product_details;
                    $data['shipping_address'] = json_encode($_POST);
                    $data['vat'] = $vat;
                    $data['vat_percent'] = $vat_per;
                    $data['shipping'] = $shipping;
                    $data['delivery_status'] = '[]';
                    $data['payment_type'] = $para1;
                    $data['payment_status'] = '[]';
                    $data['payment_details'] = 'none';
                    $data['grand_total'] = $grand_total;
                    $data['sale_datetime'] = time();
                    $data['delivary_datetime'] = '';
                    $paypal_email = $this->crud_model->get_type_name_by_id('business_settings', '1', 'value');

                    $this->db->insert('sale', $data);
                    $sale_id = $this->db->insert_id();
                    $vendors = $this->crud_model->vendors_in_sale($sale_id);
                    $delivery_status = array();
                    $payment_status = array();
                    foreach ($vendors as $p) {
                        $delivery_status[] = array('vendor' => $p, 'status' => 'pending', 'delivery_time' => '');
                        $payment_status[] = array('vendor' => $p, 'status' => 'due');
                    }
                    if ($this->crud_model->is_admin_in_sale($sale_id)) {
                        $delivery_status[] = array('admin' => '', 'status' => 'pending', 'delivery_time' => '');
                        $payment_status[] = array('admin' => '', 'status' => 'due');
                    }
                    $data['sale_code'] = date('Ym', $data['sale_datetime']) . $sale_id;
                    $data['delivery_status'] = json_encode($delivery_status);
                    $data['payment_status'] = json_encode($payment_status);
                    $this->db->where('sale_id', $sale_id);
                    $this->db->update('sale', $data);

                    $this->session->set_userdata('sale_id', $sale_id);

                    /*                     * **TRANSFERRING USER TO PAYPAL TERMINAL*** */
                    $this->paypal->add_field('rm', 2);
                    $this->paypal->add_field('no_note', 0);
                    $this->paypal->add_field('cmd', '_cart');
                    $this->paypal->add_field('upload', '1');
                    $i = 1;

                    foreach ($carted as $val) {
                        $this->paypal->add_field('item_number_' . $i, $i);
                        $this->paypal->add_field('item_name_' . $i, $val['name']);
                        $this->paypal->add_field('amount_' . $i, $this->cart->format_number(($val['price'] / $exchange)));
                        if ($this->crud_model->get_type_name_by_id('business_settings', '3', 'value') == 'product_wise') {
                            $this->paypal->add_field('shipping_' . $i, $this->cart->format_number((($val['shipping'] / $exchange) * $val['qty'])));
                        }
                        $this->paypal->add_field('tax_' . $i, $this->cart->format_number(($val['tax'] / $exchange)));
                        $this->paypal->add_field('quantity_' . $i, $val['qty']);
                        $i++;
                    }
                    if ($this->crud_model->get_type_name_by_id('business_settings', '3', 'value') == 'fixed') {
                        $this->paypal->add_field('shipping_1', $this->cart->format_number(($this->crud_model->get_type_name_by_id('business_settings', '2', 'value') / $exchange)));
                    }
                    //$this->paypal->add_field('amount', $grand_total);
                    //$this->paypal->add_field('currency_code', currency_code());
                    $this->paypal->add_field('custom', $sale_id);
                    $this->paypal->add_field('business', $paypal_email);
                    $this->paypal->add_field('notify_url', base_url() . 'index.php/home/paypal_ipn');
                    $this->paypal->add_field('cancel_return', base_url() . 'index.php/home/paypal_cancel');
                    $this->paypal->add_field('return', base_url() . 'index.php/home/paypal_success');

                    $this->paypal->submit_paypal_post();
                    // submit the fields to paypal
                }
            } else if ($this->input->post('payment_type') == 'c2') {
                if ($para1 == 'go') {

                    $data['buyer'] = $this->session->userdata('user_id');
                    $data['product_details'] = $product_details;
                    $data['shipping_address'] = json_encode($_POST);
                    $data['vat'] = $vat;
                    $data['vat_percent'] = $vat_per;
                    $data['shipping'] = $shipping;
                    $data['delivery_status'] = '[]';
                    $data['payment_type'] = $para1;
                    $data['payment_status'] = '[]';
                    $data['payment_details'] = 'none';
                    $data['grand_total'] = $grand_total;
                    $data['sale_datetime'] = time();
                    $data['delivary_datetime'] = '';
                    $c2_user = $this->db->get_where('business_settings', array('type' => 'c2_user'))->row()->value;
                    $c2_secret = $this->db->get_where('business_settings', array('type' => 'c2_secret'))->row()->value;

                    $this->db->insert('sale', $data);
                    $sale_id = $this->db->insert_id();
                    $vendors = $this->crud_model->vendors_in_sale($sale_id);
                    $delivery_status = array();
                    $payment_status = array();
                    foreach ($vendors as $p) {
                        $delivery_status[] = array('vendor' => $p, 'status' => 'pending', 'delivery_time' => '');
                        $payment_status[] = array('vendor' => $p, 'status' => 'due');
                    }
                    if ($this->crud_model->is_admin_in_sale($sale_id)) {
                        $delivery_status[] = array('admin' => '', 'status' => 'pending', 'delivery_time' => '');
                        $payment_status[] = array('admin' => '', 'status' => 'due');
                    }
                    $data['sale_code'] = date('Ym', $data['sale_datetime']) . $sale_id;
                    $data['delivery_status'] = json_encode($delivery_status);
                    $data['payment_status'] = json_encode($payment_status);
                    $this->db->where('sale_id', $sale_id);
                    $this->db->update('sale', $data);

                    $this->session->set_userdata('sale_id', $sale_id);

                    $this->twocheckout_lib->set_acct_info($c2_user, $c2_secret, 'Y');
                    $this->twocheckout_lib->add_field('sid', $this->twocheckout_lib->sid);                //Required - 2Checkout account number
                    $this->twocheckout_lib->add_field('cart_order_id', $sale_id);    //Required - Cart ID

                    $this->twocheckout_lib->add_field('total', $this->cart->format_number(($grand_total / $exchange)));

                    $this->twocheckout_lib->add_field('x_receipt_link_url', base_url() . 'index.php/home/twocheckout_success');
                    $this->twocheckout_lib->add_field('demo', $this->twocheckout_lib->demo);                    //Either Y or N


                    $this->twocheckout_lib->submit_form();
                    // submit the fields to paypal
                }
            } else if ($this->input->post('payment_type') == 'vp') {
                if ($para1 == 'go') {
                    if ($this->session->userdata('user_login') != 'yes') {
                        $data['buyer'] = 'guest';
                    } else {
                        $data['buyer'] = $this->session->userdata('user_id');
                    }
                    $data['product_details'] = $product_details;
                    $data['shipping_address'] = json_encode($_POST);
                    $data['vat'] = $vat;
                    $data['vat_percent'] = $vat_per;
                    $data['shipping'] = $shipping;
                    $data['delivery_status'] = '[]';
                    $data['payment_type'] = $para1;
                    $data['payment_status'] = '[]';
                    $data['payment_details'] = 'none';
                    $data['grand_total'] = $grand_total;
                    $data['sale_datetime'] = time();
                    $data['delivary_datetime'] = '';
                    //$vouguepay_id              = $this->crud_model->get_type_name_by_id('business_settings', '1', 'value');

                    $this->db->insert('sale', $data);
                    $sale_id = $this->db->insert_id();
                    $vendors = $this->crud_model->vendors_in_sale($sale_id);
                    $delivery_status = array();
                    $payment_status = array();

                    $system_title = $this->crud_model->get_settings_value('general_settings', 'system_title', 'value');
                    $vouguepay_id = $this->crud_model->get_settings_value('business_settings', 'vp_merchant_id', 'value');
                    ;
                    $merchant_ref = $sale_id;


                    foreach ($vendors as $p) {
                        $delivery_status[] = array('vendor' => $p, 'status' => 'pending', 'delivery_time' => '');
                        $payment_status[] = array('vendor' => $p, 'status' => 'due');
                    }
                    if ($this->crud_model->is_admin_in_sale($sale_id)) {
                        $delivery_status[] = array('admin' => '', 'status' => 'pending', 'delivery_time' => '');
                        $payment_status[] = array('admin' => '', 'status' => 'due');
                    }
                    $data['sale_code'] = date('Ym', $data['sale_datetime']) . $sale_id;
                    $data['delivery_status'] = json_encode($delivery_status);
                    $data['payment_status'] = json_encode($payment_status);
                    $this->db->where('sale_id', $sale_id);
                    $this->db->update('sale', $data);

                    $this->session->set_userdata('sale_id', $sale_id);

                    /*
                      <input type='hidden' name='v_merchant_id' value='qa331322179752' />
                      <input type='hidden' name='merchant_ref' value='234-567-890' />
                      <input type='hidden' name='memo' value='Bulk order from McAckney Web Shop' />

                      <input type='hidden' name='notify_url' value='http://www.mydomain.com/notification.php' />
                      <input type='hidden' name='success_url' value='http://www.mydomain.com/thank_you.html' />
                      <input type='hidden' name='fail_url' value='http://www.mydomain.com/failed.html' />

                      <input type='hidden' name='item_1' value='Face Cap' />
                      <input type='hidden' name='description_1' value='Blue Zizi facecap' />
                      <input type='hidden' name='price_1' value='2000' />

                      <input type='hidden' name='developer_code' value='pq7778ehh9YbZ' />
                      <input type='hidden' name='store_id' value='25' />

                      <input type='hidden' name='total' value='13000' />

                      <input type='image' src='http://voguepay.com/images/buttons/buynow_blue.png' alt='Submit' />

                      </form>
                     */

                    /*                     * **TRANSFERRING USER TO vouguepay TERMINAL*** */
                    $this->vouguepay->add_field('v_merchant_id', $vouguepay_id);
                    $this->vouguepay->add_field('merchant_ref', $merchant_ref);
                    $this->vouguepay->add_field('memo', 'Order from ' . $system_title);
                    //$this->vouguepay->add_field('developer_code', $developer_code);
                    //$this->vouguepay->add_field('store_id', $store_id);

                    $i = 1;
                    $tax = 0;
                    $shipping = 0;
                    $total = 0;

                    /* foreach ($carted as $val) {
                      $this->vouguepay->add_field('item_' . $i, $val['name']);
                      $this->vouguepay->add_field('description_' . $i, ' X '.$val['qty']);
                      $total += $this->cart->format_number($val['price'] * $val['qty']);
                      $this->vouguepay->add_field('price_' . $i, $this->cart->format_number(($val['price'] * $val['qty']/$exchange)));
                      if ($this->crud_model->get_type_name_by_id('business_settings', '3', 'value') == 'product_wise') {
                      $shipping += $this->cart->format_number((($val['shipping']) * $val['qty']/$exchange));
                      }
                      $tax += $this->cart->format_number(($val['tax']/$exchange));
                      $i++;
                      }
                      $this->vouguepay->add_field('item_'.($i+1), 'Shipping');

                      if ($this->crud_model->get_type_name_by_id('business_settings', '3', 'value') == 'fixed') {
                      if($this->session->userdata('loc_cost') == ''){
                      $this->vouguepay->add_field('price_'.($i+1), $this->cart->format_number(($this->crud_model->get_type_name_by_id('business_settings', '2', 'value') / $exchange)));
                      } else {
                      $this->vouguepay->add_field('price_'.($i+1), $this->cart->format_number(($this->session->userdata('loc_cost') / $exchange)));
                      }
                      } else {
                      $this->vouguepay->add_field('price_'.($i+1), $shipping/$exchange);
                      }

                      $this->vouguepay->add_field('item_'.($i+2), 'Tax');
                      $this->vouguepay->add_field('price_'.($i+2), $tax);

                      $total = $shipping+$tax+$total;
                     */
                    $this->vouguepay->add_field('total', ($grand_total / $exchange));

                    //$this->vouguepay->add_field('amount', $grand_total);
                    //$this->vouguepay->add_field('custom', $sale_id);
                    //$this->vouguepay->add_field('business', $vouguepay_email);

                    $this->vouguepay->add_field('notify_url', base_url() . 'index.php/home/vouguepay_ipn');
                    $this->vouguepay->add_field('fail_url', base_url() . 'index.php/home/vouguepay_cancel');
                    $this->vouguepay->add_field('success_url', base_url() . 'index.php/home/vouguepay_success');

                    $this->vouguepay->submit_vouguepay_post();
                    // submit the fields to vouguepay
                }
            } else if ($this->input->post('payment_type') == 'cash_on_delivery') {
                if ($para1 == 'go') {
                    $data['buyer'] = $this->session->userdata('user_id');
                    $data['product_details'] = $product_details;
                    $data['shipping_address'] = json_encode($_POST);
                    $data['vat'] = $vat;
                    $data['vat_percent'] = $vat_per;
                    $data['shipping'] = $shipping;
                    $data['delivery_status'] = '[]';
                    $data['payment_type'] = 'cash_on_delivery';
                    $data['payment_status'] = '[]';
                    $data['payment_details'] = '';
                    $data['grand_total'] = $grand_total;
                    $data['sale_datetime'] = time();
                    $data['delivary_datetime'] = '';

                    $this->db->insert('sale', $data);
                    $sale_id = $this->db->insert_id();
                    $vendors = $this->crud_model->vendors_in_sale($sale_id);
                    $delivery_status = array();
                    $payment_status = array();
                    foreach ($vendors as $p) {
                        $delivery_status[] = array('vendor' => $p, 'status' => 'pending', 'delivery_time' => '');
                        $payment_status[] = array('vendor' => $p, 'status' => 'due');
                    }
                    if ($this->crud_model->is_admin_in_sale($sale_id)) {
                        $delivery_status[] = array('admin' => '', 'status' => 'pending', 'delivery_time' => '');
                        $payment_status[] = array('admin' => '', 'status' => 'due');
                    }
                    $data['sale_code'] = date('Ym', $data['sale_datetime']) . $sale_id;
                    $data['delivery_status'] = json_encode($delivery_status);
                    $data['payment_status'] = json_encode($payment_status);
                    $this->db->where('sale_id', $sale_id);
                    $this->db->update('sale', $data);

                    foreach ($carted as $value) {
                        $this->crud_model->decrease_quantity($value['id'], $value['qty']);
                        $data1['type'] = 'destroy';
                        $data1['category'] = $this->db->get_where('product', array(
                                    'product_id' => $value['id']
                                ))->row()->category;
                        $data1['sub_category'] = $this->db->get_where('product', array(
                                    'product_id' => $value['id']
                                ))->row()->sub_category;
                        $data1['product'] = $value['id'];
                        $data1['quantity'] = $value['qty'];
                        $data1['total'] = 0;
                        $data1['reason_note'] = 'sale';
                        $data1['sale_id'] = $sale_id;
                        $data1['datetime'] = time();
                        $this->db->insert('stock', $data1);
                    }
                    $this->crud_model->digital_to_customer($sale_id);
                    $this->crud_model->email_invoice($sale_id);
                    $this->cart->destroy();
                    $this->session->set_userdata('couponer', '');
                    $username = "rawsqueezed@gmail.com";
                    $hash = "b79963b67812301343c2162bef40c94a622cb97afa3ec15fded9865183842c20";
                    // Config variables. Consult http://api.txtlocal.com/docs for more info.
                    $test = "0";

                    // Data for text message. This is the text message data.
                    $sender = "API Test"; // This is who the message appears to be from.
                    $numbers = "919895891943"; // A single number or a comma-seperated list of numbers
                    $message = "This is a test message from the PHP API script.";
                    // 612 chars or less
                    // A single number or a comma-seperated list of numbers
                    $message = urlencode($message);
                    $data = "username=" . $username . "&hash=" . $hash . "&message=" . $message . "&sender=" . $sender . "&numbers=" . $numbers . "&test=" . $test;
                    $ch = curl_init('http://api.txtlocal.com/send/?');
                    curl_setopt($ch, CURLOPT_POST, true);
                    curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
                    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                    $result = curl_exec($ch); // This is the result from the API
                    curl_close($ch);
                    redirect(base_url() . 'index.php/home/invoice/' . $sale_id, 'refresh');
                }
            } else if ($this->input->post('payment_type') == 'stripe') {
                if ($para1 == 'go') {
                    if (isset($_POST['stripeToken'])) {

                        require_once(APPPATH . 'libraries/stripe-php/init.php');
                        $stripe_api_key = $this->db->get_where('business_settings', array('type' => 'stripe_secret'))->row()->value;
                        \Stripe\Stripe::setApiKey($stripe_api_key); //system payment settings
                        $customer_email = $this->db->get_where('user', array('user_id' => $this->session->userdata('user_id')))->row()->email;

                        $customer = \Stripe\Customer::create(array(
                                    'email' => $customer_email, // customer email id
                                    'card' => $_POST['stripeToken']
                        ));

                        $charge = \Stripe\Charge::create(array(
                                    'customer' => $customer->id,
                                    'amount' => ceil($grand_total * 100 / $exchange),
                                    'currency' => 'USD'
                        ));

                        if ($charge->paid == true) {
                            $customer = (array) $customer;
                            $charge = (array) $charge;

                            $data['buyer'] = $this->session->userdata('user_id');
                            $data['product_details'] = $product_details;
                            $data['shipping_address'] = json_encode($_POST);
                            $data['vat'] = $vat;
                            $data['vat_percent'] = $vat_per;
                            $data['shipping'] = $shipping;
                            $data['delivery_status'] = 'pending';
                            $data['payment_type'] = 'stripe';
                            $data['payment_status'] = 'paid';
                            $data['payment_details'] = "Customer Info: \n" . json_encode($customer, true) . "\n \n Charge Info: \n" . json_encode($charge, true);
                            $data['grand_total'] = $grand_total;
                            $data['sale_datetime'] = time();
                            $data['delivary_datetime'] = '';

                            $this->db->insert('sale', $data);
                            $sale_id = $this->db->insert_id();
                            $vendors = $this->crud_model->vendors_in_sale($sale_id);
                            $delivery_status = array();
                            $payment_status = array();
                            foreach ($vendors as $p) {
                                $delivery_status[] = array('vendor' => $p, 'status' => 'pending', 'delivery_time' => '');
                                $payment_status[] = array('vendor' => $p, 'status' => 'paid');
                            }
                            if ($this->crud_model->is_admin_in_sale($sale_id)) {
                                $delivery_status[] = array('admin' => '', 'status' => 'pending', 'delivery_time' => '');
                                $payment_status[] = array('admin' => '', 'status' => 'paid');
                            }
                            $data['sale_code'] = date('Ym', $data['sale_datetime']) . $sale_id;
                            $data['delivery_status'] = json_encode($delivery_status);
                            $data['payment_status'] = json_encode($payment_status);
                            $this->db->where('sale_id', $sale_id);
                            $this->db->update('sale', $data);

                            foreach ($carted as $value) {
                                $this->crud_model->decrease_quantity($value['id'], $value['qty']);
                                $data1['type'] = 'destroy';
                                $data1['category'] = $this->db->get_where('product', array(
                                            'product_id' => $value['id']
                                        ))->row()->category;
                                $data1['sub_category'] = $this->db->get_where('product', array(
                                            'product_id' => $value['id']
                                        ))->row()->sub_category;
                                $data1['product'] = $value['id'];
                                $data1['quantity'] = $value['qty'];
                                $data1['total'] = 0;
                                $data1['reason_note'] = 'sale';
                                $data1['sale_id'] = $sale_id;
                                $data1['datetime'] = time();
                                $this->db->insert('stock', $data1);
                            }
                            $this->crud_model->digital_to_customer($sale_id);
                            $this->crud_model->email_invoice($sale_id);
                            $this->cart->destroy();
                            $this->session->set_userdata('couponer', '');
                            redirect(base_url() . 'index.php/home/invoice/' . $sale_id, 'refresh');
                        } else {
                            $this->session->set_flashdata('alert', 'unsuccessful_stripe');
                            redirect(base_url() . 'index.php/home/cart_checkout/', 'refresh');
                        }
                    } else {
                        $this->session->set_flashdata('alert', 'unsuccessful_stripe');
                        redirect(base_url() . 'index.php/home/cart_checkout/', 'refresh');
                    }
                }
            } else if ($this->input->post('payment_type') == 'ccavenue') {
                if ($para1 == 'go') {
                    //CCAvenue Access code : AVDR05CG72BR76RDRB
                    //Working Key :  CF939418BB6847E03D0D4DEAD5CBC19B
                    require_once(APPPATH . 'libraries/ccavenue/adler32.php');
                    require_once(APPPATH . 'libraries/ccavenue/Aes.php');

                    error_reporting(0);

                    $merchant_id = $_POST['Merchant_Id'];  // Merchant id(also User_Id)
                    $amount = $_POST['Amount'];            // your script should substitute the amount here in the quotes provided here
                    $order_id = $_POST['Order_Id'];        //your script should substitute the order description here in the quotes provided here
                    $url = $_POST['Redirect_Url'];         //your redirect URL where your customer will be redirected after authorisation from CCAvenue
                    $billing_cust_name = $_POST['billing_cust_name'];
                    $billing_cust_address = $_POST['billing_cust_address'];
                    $billing_cust_country = $_POST['billing_cust_country'];
                    $billing_cust_state = $_POST['billing_cust_state'];
                    $billing_city = $_POST['billing_city'];
                    $billing_zip = $_POST['billing_zip'];
                    $billing_cust_tel = $_POST['billing_cust_tel'];
                    $billing_cust_email = $_POST['billing_cust_email'];
                    $delivery_cust_name = $_POST['delivery_cust_name'];
                    $delivery_cust_address = $_POST['delivery_cust_address'];
                    $delivery_cust_country = $_POST['delivery_cust_country'];
                    $delivery_cust_state = $_POST['delivery_cust_state'];
                    $delivery_city = $_POST['delivery_city'];
                    $delivery_zip = $_POST['delivery_zip'];
                    $delivery_cust_tel = $_POST['delivery_cust_tel'];
                    $delivery_cust_notes = $_POST['delivery_cust_notes'];


                    $working_key = 'CF939418BB6847E03D0D4DEAD5CBC19B';    //Put in the 32 bit alphanumeric key in the quotes provided here.


                    $checksum = getchecksum($merchant_id, $amount, $order_id, $url, $working_key); // Method to generate checksum

                    $merchant_data = 'Merchant_Id=' . $merchant_id . '&Amount=' . $amount . '&Order_Id=' . $order_id . '&Redirect_Url=' . $url . '&billing_cust_name=' . $billing_cust_name . '&billing_cust_address=' . $billing_cust_address . '&billing_cust_country=' . $billing_cust_country . '&billing_cust_state=' . $billing_cust_state . '&billing_cust_city=' . $billing_city . '&billing_zip_code=' . $billing_zip . '&billing_cust_tel=' . $billing_cust_tel . '&billing_cust_email=' . $billing_cust_email . '&delivery_cust_name=' . $delivery_cust_name . '&delivery_cust_address=' . $delivery_cust_address . '&delivery_cust_country=' . $delivery_cust_country . '&delivery_cust_state=' . $delivery_cust_state . '&delivery_cust_city=' . $delivery_city . '&delivery_zip_code=' . $delivery_zip . '&delivery_cust_tel=' . $delivery_cust_tel . '&billing_cust_notes=' . $delivery_cust_notes . '&Checksum=' . $checksum;

                    $encrypted_data = encrypt($merchant_data, $working_key); // Method for encrypting the data.
                }
            } else if ($this->input->post('payment_type') == 'skrill') {
                if ($para1 == 'go') {
                    $config ['detail1_text'] = ''; //Text about your services
                    $config ['amount'] = '200'; // get post values
                    $this->load->library('skrill', $config);
                    $this->skrill->pay();
                }
            }
        } else {
            //echo 'nope';
            redirect(base_url() . 'index.php/home/cart_checkout/need_login', 'refresh');
        }
    }

    function availability_check() {
        $pin_code = $this->input->post('pin_code');
        if ($this->db->where('pin_code', $pin_code) != NULL) {
            echo "available";
        } else {
            echo "unavailable";
        }
    }

    function get_zip() {
        $latitude = $_POST['latitude'];
        $longitude = $_POST['longitude'];
        $url = 'http://api.geonames.org/findNearbyPostalCodesJSON?lat=' . $latitude . '&lng=' . $longitude . '&username=kiran123';
        $obj = json_decode(file_get_contents($url), true);
        $arr = $obj['postalCodes'];
        $qwe = $arr[0];
        // echo $qwe['postalCode'];
//        if ($this->db->where('pin_code', $qwe['postalCode']) != NULL) {
//            echo "available";
//        } else {
//            echo "unavailable";
//        }
        echo $qwe['postalCode'];
    }

    /* FUNCTION: Verify paypal payment by IPN */

    function paypal_ipn() {
        if ($this->paypal->validate_ipn() == true) {

            $data['payment_details'] = json_encode($_POST);
            $data['payment_timestamp'] = strtotime(date("m/d/Y"));
            $data['payment_type'] = 'paypal';
            $sale_id = $_POST['custom'];
            $vendors = $this->crud_model->vendors_in_sale($sale_id);
            $payment_status = array();
            foreach ($vendors as $p) {
                $payment_status[] = array('vendor' => $p, 'status' => 'paid');
            }
            if ($this->crud_model->is_admin_in_sale($sale_id)) {
                $payment_status[] = array('admin' => '', 'status' => 'paid');
            }
            $data['payment_status'] = json_encode($payment_status);
            $this->db->where('sale_id', $sale_id);
            $this->db->update('sale', $data);
        }
    }

    /* FUNCTION: Loads after cancelling paypal */

    function paypal_cancel() {
        $sale_id = $this->session->userdata('sale_id');
        $this->db->where('sale_id', $sale_id);
        $this->db->delete('sale');
        $this->session->set_userdata('sale_id', '');
        $this->session->set_flashdata('alert', 'payment_cancel');
        redirect(base_url() . 'index.php/home/cart_checkout/', 'refresh');
    }

    /* FUNCTION: Loads after successful paypal payment */

    function paypal_success() {
        $carted = $this->cart->contents();
        $sale_id = $this->session->userdata('sale_id');
        foreach ($carted as $value) {
            $this->crud_model->decrease_quantity($value['id'], $value['qty']);
            $data1['type'] = 'destroy';
            $data1['category'] = $this->db->get_where('product', array(
                        'product_id' => $value['id']
                    ))->row()->category;
            $data1['sub_category'] = $this->db->get_where('product', array(
                        'product_id' => $value['id']
                    ))->row()->sub_category;
            $data1['product'] = $value['id'];
            $data1['quantity'] = $value['qty'];
            $data1['total'] = 0;
            $data1['reason_note'] = 'sale';
            $data1['sale_id'] = $sale_id;
            $data1['datetime'] = time();
            $this->db->insert('stock', $data1);
        }
        $this->crud_model->digital_to_customer($sale_id);
        $this->cart->destroy();
        $this->session->set_userdata('couponer', '');
        $this->crud_model->email_invoice($sale_id);
        $this->session->set_userdata('sale_id', '');
        redirect(base_url() . 'index.php/home/invoice/' . $sale_id, 'refresh');
    }

    function twocheckout_success() {
        //$this->twocheckout_lib->set_acct_info('532001', 'tango', 'Y');
        $c2_user = $this->db->get_where('business_settings', array('type' => 'c2_user'))->row()->value;
        $c2_secret = $this->db->get_where('business_settings', array('type' => 'c2_secret'))->row()->value;

        $this->twocheckout_lib->set_acct_info($c2_user, $c2_secret, 'Y');
        $data2['response'] = $this->twocheckout_lib->validate_response();
        $status = $data2['response']['status'];
        if ($status == 'pass') {
            $sale_id = $this->session->userdata('sale_id');
            $data1['payment_details'] = json_encode($this->twocheckout_lib->validate_response());
            $data1['payment_timestamp'] = strtotime(date("m/d/Y"));
            $data1['payment_type'] = 'c2';
            $vendors = $this->crud_model->vendors_in_sale($sale_id);
            $payment_status = array();
            foreach ($vendors as $p) {
                $payment_status[] = array('vendor' => $p, 'status' => 'paid');
            }
            if ($this->crud_model->is_admin_in_sale($sale_id)) {
                $payment_status[] = array('admin' => '', 'status' => 'paid');
            }
            $data1['payment_status'] = json_encode($payment_status);
            $this->db->where('sale_id', $sale_id);
            $this->db->update('sale', $data1);


            $carted = $this->cart->contents();
            $sale_id = $this->session->userdata('sale_id');
            foreach ($carted as $value) {
                $this->crud_model->decrease_quantity($value['id'], $value['qty']);
                $data1['type'] = 'destroy';
                $data1['category'] = $this->db->get_where('product', array(
                            'product_id' => $value['id']
                        ))->row()->category;
                $data1['sub_category'] = $this->db->get_where('product', array(
                            'product_id' => $value['id']
                        ))->row()->sub_category;
                $data1['product'] = $value['id'];
                $data1['quantity'] = $value['qty'];
                $data1['total'] = 0;
                $data1['reason_note'] = 'sale';
                $data1['sale_id'] = $sale_id;
                $data1['datetime'] = time();
                $this->db->insert('stock', $data1);
            }
            $this->crud_model->digital_to_customer($sale_id);
            $this->cart->destroy();
            $this->session->set_userdata('couponer', '');
            $this->crud_model->email_invoice($sale_id);
            $this->session->set_userdata('sale_id', '');
            redirect(base_url() . 'index.php/home/invoice/' . $sale_id, 'refresh');
        } else {
            //var_dump($data2['response']);
            $sale_id = $this->session->userdata('sale_id');
            $this->db->where('sale_id', $sale_id);
            $this->db->delete('sale');
            $this->session->set_userdata('sale_id', '');
            $this->session->set_flashdata('alert', 'payment_cancel');
            redirect(base_url() . 'index.php/home/cart_checkout/', 'refresh');
        }
    }

    /* FUNCTION: Verify vouguepay payment by IPN */

    function vouguepay_ipn() {
        $res = $this->vouguepay->validate_ipn();
        $sale_id = $res['merchant_ref'];
        $merchant_id = 'demo';
        if ($res['total'] !== 0 && $res['status'] == 'Approved' && $res['merchant_id'] == $merchant_id) {
            $data['payment_details'] = json_encode($res);
            $data['payment_timestamp'] = strtotime(date("m/d/Y"));
            $data['payment_type'] = 'vouguepay';

            $vendors = $this->crud_model->vendors_in_sale($sale_id);
            $payment_status = array();
            foreach ($vendors as $p) {
                $payment_status[] = array('vendor' => $p, 'status' => 'paid');
            }
            if ($this->crud_model->is_admin_in_sale($sale_id)) {
                $payment_status[] = array('admin' => '', 'status' => 'paid');
            }
            $data['payment_status'] = json_encode($payment_status);
            $this->db->where('sale_id', $sale_id);
            $this->db->update('sale', $data);
        }
    }

    /* FUNCTION: Loads after cancelling vouguepay */

    function vouguepay_cancel() {
        $sale_id = $this->session->userdata('sale_id');
        $this->db->where('sale_id', $sale_id);
        $this->db->delete('sale');
        $this->session->set_userdata('sale_id', '');
        $this->session->set_flashdata('alert', 'payment_cancel');
        redirect(base_url() . 'index.php/home/cart_checkout/', 'refresh');
    }

    /* FUNCTION: Loads after successful vouguepay payment */

    function vouguepay_success() {
        $carted = $this->cart->contents();
        $sale_id = $this->session->userdata('sale_id');
        foreach ($carted as $value) {
            $size = $this->crud_model->is_added_to_cart($value['id'], 'option', 'choice_0');
            $this->crud_model->decrease_quantity($value['id'], $value['qty'], $size);
            $data1['type'] = 'destroy';
            $data1['category'] = $this->db->get_where('product', array(
                        'product_id' => $value['id']
                    ))->row()->category;
            $data1['sub_category'] = $this->db->get_where('product', array(
                        'product_id' => $value['id']
                    ))->row()->sub_category;
            $data1['product'] = $value['id'];
            $data1['quantity'] = $value['qty'];
            $data1['total'] = 0;
            $data1['reason_note'] = 'sale';
            $data1['size'] = $size;
            $data1['sale_id'] = $sale_id;
            $data1['datetime'] = time();
            $this->db->insert('stock', $data1);
        }
        $this->crud_model->digital_to_customer($sale_id);
        $this->cart->destroy();
        $this->session->set_userdata('couponer', '');
        $this->crud_model->email_invoice($sale_id);
        $this->session->set_userdata('sale_id', '');
        redirect(base_url() . 'index.php/home/invoice/' . $sale_id, 'refresh');
    }

    /* FUNCTION: Concerning wishlist */

    function wishlist($para1 = "", $para2 = "") {
        if ($para1 == 'add') {
            $this->crud_model->add_wish($para2);
        } else if ($para1 == 'remove') {
            $this->crud_model->remove_wish($para2);
        } else if ($para1 == 'num') {
            echo $this->crud_model->wished_num();
        }
    }

    function blog() {
        //$page_data['category'] = $para1;
        $page_data['page_name'] = 'blog';
        // $page_data['asset_page'] = 'blog';
        $page_data['asset_page'] = "shopping_cart";
        $page_data['page_title'] = translate('blog');
        $this->load->view('front/index', $page_data);
    }

    function event() {
        $page_data['page_name'] = 'event';
        //$page_data['asset_page'] = "shopping_cart";
        $page_data['page_title'] = translate('events');
        $this->load->view('front/index', $page_data);
    }

    function our_team() {
        $page_data['page_name'] = 'our_team';
        $page_data['page_title'] = translate('Our Team');
        $this->load->view('front/index', $page_data);
    }

    function blog_by_cat($para1 = "") {
        $page_data['category'] = $para1;
        $this->load->view('front/blog/blog_list', $page_data);
    }

    function ajax_blog_list($para1 = "") {
        $this->load->library('Ajax_pagination');

        $category_id = $this->input->post('blog_category');
        if ($category_id !== '' && $category_id !== 'all') {
            $this->db->where('blog_category', $category_id);
        }

        // pagination
        $config['total_rows'] = $this->db->count_all_results('blog');
        $config['base_url'] = base_url() . 'index.php?home/listed/';
        $config['per_page'] = 3;
        $config['uri_segment'] = 5;
        $config['cur_page_giv'] = $para1;

        $function = "filter_blog('0')";
        $config['first_link'] = '&laquo;';
        $config['first_tag_open'] = '<li><a onClick="' . $function . '">';
        $config['first_tag_close'] = '</a></li>';

        $rr = ($config['total_rows'] - 1) / $config['per_page'];
        $last_start = floor($rr) * $config['per_page'];
        $function = "filter_blog('" . $last_start . "')";
        $config['last_link'] = '&raquo;';
        $config['last_tag_open'] = '<li><a onClick="' . $function . '">';
        $config['last_tag_close'] = '</a></li>';

        $function = "filter_blog('" . ($para1 - $config['per_page']) . "')";
        $config['prev_tag_open'] = '<li><a onClick="' . $function . '">';
        $config['prev_tag_close'] = '</a></li>';

        $function = "filter_blog('" . ($para1 + $config['per_page']) . "')";
        $config['next_link'] = '&rsaquo;';
        $config['next_tag_open'] = '<li><a onClick="' . $function . '">';
        $config['next_tag_close'] = '</a></li>';

        $config['full_tag_open'] = '<ul class="pagination">';
        $config['full_tag_close'] = '</ul>';

        $config['cur_tag_open'] = '<li class="active"><a>';
        $config['cur_tag_close'] = '<span class="sr-only">(current)</span></a></li>';

        $function = "filter_blog(((this.innerHTML-1)*" . $config['per_page'] . "))";
        $config['num_tag_open'] = '<li><a onClick="' . $function . '">';
        $config['num_tag_close'] = '</a></li>';
        $this->ajax_pagination->initialize($config);

        $this->db->order_by('blog_id', 'desc');
        if ($category_id !== '' && $category_id !== 'all') {
            $this->db->where('blog_category', $category_id);
        }

        $page_data['blogs'] = $this->db->get('blog', $config['per_page'], $para1)->result_array();
        if ($category_id !== '' && $category_id !== 'all') {
            $category = $this->crud_model->get_type_name_by_id('blog_category', $category_id, 'name');
        } else {
            $category = translate('all_blogs');
        }
        $page_data['category_name'] = $category;
        $page_data['count'] = $config['total_rows'];

        $this->load->view('front/blog/ajax_list', $page_data);
    }

    /* FUNCTION: Loads Contact Page */

    function blog_view($para1 = "") {
        $page_data['blog'] = $this->db->get_where('blog', array('blog_id' => $para1))->result_array();
        $page_data['categories'] = $this->db->get('blog_category')->result_array();

        $this->db->where('blog_id', $para1);
        $this->db->update('blog', array(
            'number_of_view' => 'number_of_view' + 1
        ));
        $page_data['page_name'] = 'blog/blog_view';
        $page_data['asset_page'] = 'blog_view';
        $page_data['page_title'] = $this->db->get_where('blog', array('blog_id' => $para1))->row()->title;
        $this->load->view('front/index.php', $page_data);
    }

    function others_product($para1 = "") {
        $page_data['product_type'] = $para1;
        $page_data['page_name'] = 'others_list';
        $page_data['asset_page'] = 'product_list_other';
        $page_data['page_title'] = translate($para1);
        $this->load->view('front/index', $page_data);
    }

    function product_by_type($para1 = "") {
        $page_data['product_type'] = $para1;
        $this->load->view('front/others_list/view', $page_data);
    }

    /* FUNCTION: Concerning wishlist */

    function chat($para1 = "", $para2 = "") {
        
    }

    /* FUNCTION: Check if Customer is logged in */

    function check_login($para1 = "") {
        if ($para1 == 'state') {
            if ($this->session->userdata('user_login') == 'yes') {
                echo 'hypass';
            }
            if ($this->session->userdata('user_login') !== 'yes') {
                echo 'nypose';
            }
        } else if ($para1 == 'id') {
            echo $this->session->userdata('user_id');
        } else {
            echo $this->crud_model->get_type_name_by_id('user', $this->session->userdata('user_id'), $para1);
        }
    }

    /* FUNCTION: Invoice showing */

    function invoice($para1 = "", $para2 = "") {
        if ($this->session->userdata('user_login') != "yes" || $this->crud_model->get_type_name_by_id('sale', $para1, 'buyer') !== $this->session->userdata('user_id')
        ) {
            redirect(base_url(), 'refresh');
        }

        $page_data['sale_id'] = $para1;
        $page_data['asset_page'] = "invoice";
        $page_data['page_name'] = "shopping_cart/invoice";
        $page_data['page_title'] = translate('invoice');
        if ($para2 == 'email') {
            $this->load->view('front/shopping_cart/invoice_email', $page_data);
        } else {
            $this->load->view('front/index', $page_data);
        }
    }

    /* FUNCTION: Legal pages load - terms & conditions / privacy policy */

    function legal($type = "") {
        $page_data['type'] = $type;
        $page_data['page_name'] = "others/legal";
        $page_data['asset_page'] = "legal";
        $page_data['page_title'] = translate($type);
        $this->load->view('front/index', $page_data);
    }

    /* FUNCTION: Price Range Load by AJAX */

    function get_ranger($by = "", $id = "", $start = '', $end = '') {
        $min = $this->get_range_lvl($by, $id, "min");
        $max = $this->get_range_lvl($by, $id, "max");
        if ($start == '') {
            $start = $min;
        }
        if ($end == '') {
            $end = $max;
        }

        $return = '' . '<input type="text" id="rangelvl" value="" name="range" />' . '<script>' . '	$("#rangelvl").ionRangeSlider({' . '		hide_min_max: false,' . '		keyboard: true,' . '		min:' . $min . ',' . '		max:' . $max . ',' . '		from:' . $start . ',' . '		to:' . $end . ',' . '		type: "double",' . '		step: 1,' . '		prefix: "' . currency() . '",' . '		grid: true,' . '		onFinish: function (data) {' . "			filter('click','none','none','0');" . '		}' . '	});' . '</script>';
        return $return;
    }

    /* FUNCTION: Price Range Load by AJAX */

    function get_range_lvl($by = "", $id = "", $type = "") {
        if ($type == "min") {
            $set = 'asc';
        } elseif ($type == "max") {
            $set = 'desc';
        }
        $this->db->limit(1);
        $this->db->order_by('sale_price', $set);
        if (count($a = $this->db->get_where('product', array(
                            $by => $id
                        ))->result_array()) > 0
        ) {
            foreach ($a as $r) {
                return $r['sale_price'];
            }
        } else {
            return 0;
        }
    }

    /* FUNCTION: AJAX loadable scripts */

    function others($para1 = "", $para2 = "", $para3 = "", $para4 = "") {
        if ($para1 == "get_sub_by_cat") {
            $return = '';
            $subs = $this->db->get_where('sub_category', array(
                        'category' => $para2
                    ))->result_array();
            foreach ($subs as $row) {
                $return .= '<option  value="' . $row['sub_category_id'] . '">' . ucfirst($row['sub_category_name']) . '</option>' . "\n\r";
            }
            echo $return;
        } else if ($para1 == "get_range_by_cat") {
            if ($para2 == 0) {
                echo $this->get_ranger("product_id !=", "", $para3, $para4);
            } else {
                echo $this->get_ranger("category", $para2, $para3, $para4);
            }
        } else if ($para1 == "get_range_by_sub") {
            echo $this->get_ranger("sub_category", $para2);
        } else if ($para1 == 'text_db') {
            echo $this->db->set_update('front/index', $para2);
        } else if ($para1 == "get_home_range_by_cat") {
            echo round($this->get_range_lvl("category", $para2, "min"));
            echo '-';
            echo round($this->get_range_lvl("category", $para2, "max"));
        } else if ($para1 == "get_home_range_by_sub") {
            echo round($this->get_range_lvl("sub_category", $para2, "min"));
            echo '-';
            echo round($this->get_range_lvl("sub_category", $para2, "max"));
        }
    }

    //SITEMAP
    function sitemap() {
        header("Content-type: text/xml");
        $otherurls = array(
            base_url() . 'index.php/home/contact/',
            base_url() . 'index.php/home/legal/terms_conditions',
            base_url() . 'index.php/home/legal/privacy_policy'
        );
        $producturls = array();
        $products = $this->db->get_where('product', array('status' => 'ok'))->result_array();
        foreach ($products as $row) {
            $producturls[] = $this->crud_model->product_link($row['product_id']);
        }
        $vendorurls = array();
        $vendors = $this->db->get_where('vendor', array('status' => 'approved'))->result_array();
        foreach ($vendors as $row) {
            $vendorurls[] = $this->crud_model->vendor_link($row['vendor_id']);
        }
        $page_data['otherurls'] = $otherurls;
        $page_data['producturls'] = $producturls;
        $page_data['vendorurls'] = $vendorurls;
        $this->load->view('front/others/sitemap', $page_data);
    }

    function sendmsg() {
        // Authorisation details.
//        $username = "rawsqueezed@gmail.com";
//        $hash = "9ec013d03166ab4baa2b1719107add1cdfc51370c82f50c6dec8759228dd6613";
//
//        // Config variables. Consult http://api.textlocal.in/docs for more info.
//        $test = "0";
//
//        // Data for text message. This is the text message data.
//        $sender = "TXTLCL"; // This is who the message appears to be from.
//        $numbers = "918893763078"; // A single number or a comma-seperated list of numbers
//        $message = "This is a test message from the PHP API script.";
//        // 612 chars or less
//        // A single number or a comma-seperated list of numbers
//        $message = urlencode($message);
//        $data = "username=" . $username . "&hash=" . $hash . "&message=" . $message . "&sender=" . $sender . "&numbers=" . $numbers . "&test=" . $test;
//        $ch = curl_init('http://api.textlocal.in/send/?');
//        curl_setopt($ch, CURLOPT_POST, true);
//        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
//        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
//        $result = curl_exec($ch); // This is the result from the API
//
//        if (curl_error($ch)) {
//            echo 'error:' . curl_error($ch);
//        } else {
//            echo $result;
//        }
//        curl_close($ch);
        //print_r($res);
        /* $apiKey = urlencode('tUhL7rCMd3Q-PNDC0m00uVT5kak3WkUvw8tCXLFI2R');

          // Message details
          $numbers = urlencode('919495401456,918893763078');
          $sender = urlencode('Jims Autos');
          $message = rawurlencode('This is your message');

          // Prepare data for POST request
          $data = 'apikey=' . $apiKey . '&numbers=' . $numbers . "&sender=" . $sender . "&message=" . $message;

          // Send the GET request with cURL
          $ch = curl_init('https://api.txtlocal.in/send/?' . $data);
          curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
          $response = curl_exec($ch);
          curl_close($ch);

          // Process your response here
          echo $response; */
    }

    function email_verify($user_id, $code) {
        echo $this->crud_model->email_verification($code, $user_id);
    }

    function refer($user_id, $do, $aid) {
        echo $this->crud_model->referral($do, $user_id, $aid);
    }

    function email($sub = '', $msg = '') {
        $to = 'rawsqueezed@gmail.com';
        $this->email_model->send_email($to, $sub, $msg);
    }

    function send_sms() {
        $numb = array(9495401456, 9895891943);
        $this->sms_model->send_sms($numb, 'success');
    }

    function email_temp($sale_code, $order_status = '') {
        $sale = $this->db->get_where('sale', array('sale_code' => $sale_code))->row();
        $shipping_address = json_decode($sale->shipping_address, true);
        //$product
        $product = json_decode($sale->product_details, true);
        //print_r($sale);
        //echo $shipping_address['firstname'];

        $dat = '';
        $total = 0;
        $total = $sale->grand_total;
        $shipping_charge = $sale->shipping;
        //echo 'sale codeem:'.$sale_code;
        // print_r($shipping_address);

        $name = $shipping_address['firstname'] . ' ' . $shipping_address['lastname'];
        $email_id = $shipping_address['email'];
        $phone = $shipping_address['phone'];
        $address = $shipping_address['address1'];
        $city = $shipping_address['city'];
        $state = $shipping_address['state'];
        $zip = $shipping_address['zip'];
        $country = $shipping_address['country'];
        $payment = $shipping_address['payment_type'];
        //$sale_code=$row['sale_code'];
        //$total += $row['subtotal'];
        /* $dat .= '<tr>
          <td>' . $row['name'] . '</td>
          <td>' . $row['qty'] . '</td>
          <td>' . $row['subtotal'] . '</td>
          '; */

        //echo $name;
        $product = json_decode($sale->product_details, true);
        foreach ($product as $row) {
            //$sale_code=$row['sale_code'];
            //$total += $row['subtotal'];
            $dat .= '<tr>
                    <td>' . $row['name'] . '</td>
                    <td>' . $row['qty'] . '</td>
                    <td>' . $row['subtotal'] . '</td>
                    ';
        }
        $sale_code = $sale->sale_code;
        //echo 'order:'.$order_status;
//        $mass = $this->crud_model->get_email_template($dat, $sale_code, $name, date('m/d/Y h:i:s a', time()), $phone, $sale->delivery_date, $sale->delivery_note, $email_id, $address, $total, $shipping_charge, $city, $state, $zip, $payment, $order_status);
//        //$this->crud_model->clear_all();
//        $this->email_model->send_email($email_id, 'Order #' . $sale_code . ' Placed by ' . $name, $mass);
//        $this->crud_model->clear_all();
        $this->crud_model->send_order_placed_email($sale_code, $name, $phone, $sale, $email_id, $address, $total, $shipping_charge, $city, $state, $zip, $payment, $order_status);

        //echo $shipping_address['firstname']."gaaa";
    }

    function appointment_old_mail() {


        if ($_POST) {
            $name = $_POST['name'];
            $phone = $_POST['phone'];
            $email = $_POST['email'];
            $date = $_POST['date'];
            $msg = $_POST['msg'];
            $to = 'deepthygupta@gmail.com';
            $mail = new PHPMailer();

            $mail->isSMTP();
            $mail->Host = 'md-in-26.webhostbox.net';
            $mail->SMTPAuth = true;
            $mail->Username = 'mailing@qproinnovations.com';
            $mail->Password = 'VTC9ZE)GvLcM';
            $mail->SMTPSecure = 'ssl';
            $mail->Port = 465;
            $mail->setFrom('mailing@qproinnovations.com', $name);
            $mail->addAddress($to, $name);
            $mail->Subject = 'ONLINE APPOINTMENT';
            $mail->Body = <<<EOD
        
        <table cellspacing="0" cellpadding="1" border="1">
            <tbody>
			<tr><th colspan="2">ONLINE APPOINTMENT FORM</th></tr>
                <tr>
                    <td style="padding: 5px 10px;" width="150">Name </td>
                    <td style="padding: 5px 10px;">$name</td>
                </tr>
				<tr>
                    <td style="padding: 5px 10px;" width="150">Phone </td>
                    <td style="padding: 5px 10px;">$phone</td>
                </tr>
                <tr>
                    <td style="padding: 5px 10px;" width="150">Email </td>
                    <td style="padding: 5px 10px;">$email</td>
                </tr>
				
				<tr>
                    <td style="padding: 5px 10px;" width="150">DATE </td>
                    <td style="padding: 5px 10px;">$date</td>
                </tr>
                <tr>
                    <td style="padding: 5px 10px;" width="150">Message </td>
                    <td style="padding: 5px 10px;">$msg</td>
                </tr>
            </tbody>
        </table>
        
EOD;

            echo $mail->ErrorInfo;
            die();

            if (!$mail->send()) {
                echo '<script language="javascript">';
                echo 'alert("Message could not be sent.");';

                echo "window.location = './'";
                echo '</script>';

                echo 'Mailer Error: ' . $mail->ErrorInfo;
            } else {
                echo '<script language="javascript">';
                echo 'alert("Message has been sent");';
                echo "window.location = './'";
                echo '</script>';
            }
        } else {
            redirect(base_url() . 'index.php', 'refresh');
        }
    }

}

/* End of file home.php */
/* Location: ./application/controllers/home.php */
