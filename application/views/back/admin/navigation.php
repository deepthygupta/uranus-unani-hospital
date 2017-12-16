<?php
$physical_check = $this->crud_model->get_type_name_by_id('general_settings', '68', 'value');
$digital_check = $this->crud_model->get_type_name_by_id('general_settings', '69', 'value');
?>
<nav id="mainnav-container">
    <div id="mainnav">
        <!--Menu-->
        <div id="mainnav-menu-wrap">
            <div class="nano">
                <div class="nano-content" style="overflow-x:auto;">
                    <ul id="mainnav-menu" class="list-group">
                        <!--Category name-->
                        <li class="list-header"></li>
                        <!--Menu list item-->
                        <li <?php if ($page_name == "dashboard") { ?> class="active-link" <?php } ?> 
                                                                      style="border-top:1px solid rgba(69, 74, 84, 0.7);">
                            <a href="<?php echo base_url(); ?>index.php/admin/">
                                <i class="fa fa-tachometer"></i>
                                <span class="menu-title">
                                    <?php echo translate('dashboard'); ?>
                                </span>
                            </a>
                        </li>
                        <?php
                        if ($physical_check == 'ok' && $digital_check == 'ok') {
                            if ($this->crud_model->admin_permission('category') ||
                                    $this->crud_model->admin_permission('sub_category') ||
                                    $this->crud_model->admin_permission('brand') ||
                                    $this->crud_model->admin_permission('product') ||
                                    $this->crud_model->admin_permission('stock') ||
                                    $this->crud_model->admin_permission('category_digital') ||
                                    $this->crud_model->admin_permission('sub_category_digital') ||
                                    $this->crud_model->admin_permission('digital')) {
                                ?>
                                <li <?php
                                if ($page_name == "category" ||
                                        $page_name == "sub_category" ||
                                        $page_name == "product" ||
                                        $page_name == "stock" ||
                                        $page_name == "category_digital" ||
                                        $page_name == "sub_category_digital" ||
                                        $page_name == "digital") {
                                    ?>
                                        class="active-sub" 
                                    <?php } ?> >
                                    <a href="#">
                                        <i class="fa fa-shopping-cart"></i>
                                        <span class="menu-title">
                                            <?php echo translate('products'); ?>
                                        </span>
                                        <i class="fa arrow"></i>
                                    </a>

                                    <!--PRODUCT------------------>
                                    <ul class="collapse <?php
                                    if ($page_name == "category" ||
                                            $page_name == "sub_category" ||
                                            $page_name == "product" ||
                                            $page_name == "brand" ||
                                            $page_name == "stock" ||
                                            $page_name == "category_digital" ||
                                            $page_name == "sub_category_digital" ||
                                            $page_name == "digital") {
                                        ?>
                                            in
                                        <?php } ?> >" >
                                        <?php
                                        if ($this->crud_model->admin_permission('category') ||
                                                $this->crud_model->admin_permission('sub_category') ||
                                                $this->crud_model->admin_permission('brand') ||
                                                $this->crud_model->admin_permission('product') ||
                                                $this->crud_model->admin_permission('stock')) {
                                            ?>
                                            <!--Menu list item-->
                                            <li <?php
                                            if ($page_name == "category" ||
                                                    $page_name == "sub_category" ||
                                                    $page_name == "brand" ||
                                                    $page_name == "product" ||
                                                    $page_name == "stock") {
                                                ?>
                                                    class="active-sub" 
                                                <?php } ?> >
                                                <a href="#">
                                                    <i class="fa fa-list"></i>
                                                    <span class="menu-title">
                                                        <?php echo translate('physical_products'); ?>
                                                    </span>
                                                    <i class="fa arrow"></i>
                                                </a>

                                                <!--PRODUCT------------------>
                                                <ul class="collapse <?php
                                                if ($page_name == "category" ||
                                                        $page_name == "sub_category" ||
                                                        $page_name == "product" ||
                                                        $page_name == "brand" ||
                                                        $page_name == "stock") {
                                                    ?>
                                                        in
                                                    <?php } ?> " >

                                                    <?php
                                                    if ($this->crud_model->admin_permission('category')) {
                                                        ?>                                            
                                                        <li <?php if ($page_name == "category") { ?> class="active-link" <?php } ?> >
                                                            <a href="<?php echo base_url(); ?>index.php/admin/category">
                                                                <i class="fa fa-circle fs_i"></i>
                                                                <?php echo translate('category'); ?>
                                                            </a>
                                                        </li>
                                                        <?php
                                                    } if ($this->crud_model->admin_permission('brand')) {
                                                        ?>
                                                        <li <?php if ($page_name == "brand") { ?> class="active-link" <?php } ?> >
                                                            <a href="<?php echo base_url(); ?>index.php/admin/brand">
                                                                <i class="fa fa-circle fs_i"></i>
                                                                <?php echo translate('brands'); ?>
                                                            </a>
                                                        </li>
                                                        <?php
                                                    } if ($this->crud_model->admin_permission('sub_category')) {
                                                        ?>
                                                        <li <?php if ($page_name == "sub_category") { ?> class="active-link" <?php } ?> >
                                                            <a href="<?php echo base_url(); ?>index.php/admin/sub_category">
                                                                <i class="fa fa-circle fs_i"></i>
                                                                <?php echo translate('sub-category'); ?>
                                                            </a>
                                                        </li>
                                                        <?php
                                                    } if ($this->crud_model->admin_permission('product')) {
                                                        ?>
                                                        <li <?php if ($page_name == "product") { ?> class="active-link" <?php } ?> >
                                                            <a href="<?php echo base_url(); ?>index.php/admin/product">
                                                                <i class="fa fa-circle fs_i"></i>
                                                                <?php echo translate('all_products'); ?>
                                                            </a>
                                                        </li>
                                                    <?php } ?>
                                                </ul>
                                            </li>

                                            <?php
                                        }
                                        ?>

                                        <?php
                                        if ($this->crud_model->admin_permission('category_digital') ||
                                                $this->crud_model->admin_permission('sub_category_digital') ||
                                                $this->crud_model->admin_permission('digital')) {
                                            ?>
                                            <!--Menu list item-->
                                            <li <?php
                                            if ($page_name == "category_digital" ||
                                                    $page_name == "sub_category_digital" ||
                                                    $page_name == "digital") {
                                                ?>
                                                    class="active-sub" 
                                                <?php } ?> >
                                                <a href="#">
                                                    <i class="fa fa-list-ul"></i>
                                                    <span class="menu-title">
                                                        <?php echo translate('digital_products'); ?>
                                                    </span>
                                                    <i class="fa arrow"></i>
                                                </a>
                                                <!--digital------------------>
                                                <ul class="collapse <?php
                                                if ($page_name == "category_digital" ||
                                                        $page_name == "sub_category_digital" ||
                                                        $page_name == "digital") {
                                                    ?>
                                                        in
                                                    <?php } ?> >" >

                                                    <?php
                                                    if ($this->crud_model->admin_permission('category')) {
                                                        ?>                                            
                                                        <li <?php if ($page_name == "category_digital") { ?> class="active-link" <?php } ?> >
                                                            <a href="<?php echo base_url(); ?>index.php/admin/category_digital">
                                                                <i class="fa fa-circle fs_i"></i>
                                                                <?php echo translate('category'); ?>
                                                            </a>
                                                        </li>
                                                        <?php
                                                    } if ($this->crud_model->admin_permission('sub_category')) {
                                                        ?>
                                                        <li <?php if ($page_name == "sub_category_digital") { ?> class="active-link" <?php } ?> >
                                                            <a href="<?php echo base_url(); ?>index.php/admin/sub_category_digital">
                                                                <i class="fa fa-circle fs_i"></i>
                                                                <?php echo translate('sub-category'); ?>
                                                            </a>
                                                        </li>
                                                        <?php
                                                    } if ($this->crud_model->admin_permission('digital')) {
                                                        ?>
                                                        <li <?php if ($page_name == "digital") { ?> class="active-link" <?php } ?> >
                                                            <a href="<?php echo base_url(); ?>index.php/admin/digital">
                                                                <i class="fa fa-circle fs_i"></i>
                                                                <?php echo translate('all_digitals'); ?>
                                                            </a>
                                                        </li>
                                                        <?php
                                                    }
                                                    ?>
                                                </ul>
                                            </li>

                                            <?php
                                        }
                                        ?>  
                                    </ul>
                                </li>
                                <?php
                            }
                        }
                        ?>
                        <?php
                        if ($physical_check == 'ok' && $digital_check !== 'ok') {
                            if ($this->crud_model->admin_permission('category') ||
                                    $this->crud_model->admin_permission('sub_category') ||
                                    $this->crud_model->admin_permission('brand') ||
                                    $this->crud_model->admin_permission('product') ||
                                    $this->crud_model->admin_permission('stock')) {
                                ?>
                                <!--Menu list item-->
                                <li <?php
                                if ($page_name == "category" ||
                                        $page_name == "sub_category" ||
                                        $page_name == "brand" ||
                                        $page_name == "product" ||
                                        $page_name == "stock") {
                                    ?>
                                        class="active-sub" 
                                    <?php } ?> >
                                    <a href="#">
                                        <i class="fa fa-list"></i>
                                        <span class="menu-title">
                                            <?php echo translate('products'); ?>
                                        </span>
                                        <i class="fa arrow"></i>
                                    </a>

                                    <!--PRODUCT------------------>
                                    <ul class="collapse <?php
                                    if ($page_name == "category" ||
                                            $page_name == "sub_category" ||
                                            $page_name == "product" ||
                                            $page_name == "brand" ||
                                            $page_name == "stock") {
                                        ?>
                                            in
                                        <?php } ?> " >

                                        <?php
                                        if ($this->crud_model->admin_permission('category')) {
                                            ?>                                            
                                            <li <?php if ($page_name == "category") { ?> class="active-link" <?php } ?> >
                                                <a href="<?php echo base_url(); ?>index.php/admin/category">
                                                    <i class="fa fa-circle fs_i"></i>
                                                    <?php echo translate('category'); ?>
                                                </a>
                                            </li>

                                            <?php
                                        } if ($this->crud_model->admin_permission('product')) {
                                            ?>
                                            <li <?php if ($page_name == "product") { ?> class="active-link" <?php } ?> >
                                                <a href="<?php echo base_url(); ?>index.php/admin/product">
                                                    <i class="fa fa-circle fs_i"></i>
                                                    <?php echo translate('all_products'); ?>
                                                </a>
                                            </li>
                                        <?php } ?>
                                    </ul>
                                </li>

                                <?php
                            }
                        }
                        ?>
                        <?php
                        if ($physical_check !== 'ok' && $digital_check == 'ok') {
                            if ($this->crud_model->admin_permission('category_digital') ||
                                    $this->crud_model->admin_permission('sub_category_digital') ||
                                    $this->crud_model->admin_permission('digital')) {
                                ?>
                                <!--Menu list item-->
                                <li <?php
                                if ($page_name == "category_digital" ||
                                        $page_name == "sub_category_digital" ||
                                        $page_name == "digital") {
                                    ?>
                                        class="active-sub" 
                                    <?php } ?> >
                                    <a href="#">
                                        <i class="fa fa-list-ul"></i>
                                        <span class="menu-title">
                                            <?php echo translate('products'); ?>
                                        </span>
                                        <i class="fa arrow"></i>
                                    </a>
                                    <!--digital------------------>
                                    <ul class="collapse <?php
                                    if ($page_name == "category_digital" ||
                                            $page_name == "sub_category_digital" ||
                                            $page_name == "digital") {
                                        ?>
                                            in
                                        <?php } ?> >" >

                                        <?php
                                        if ($this->crud_model->admin_permission('category')) {
                                            ?>                                            
                                            <li <?php if ($page_name == "category_digital") { ?> class="active-link" <?php } ?> >
                                                <a href="<?php echo base_url(); ?>index.php/admin/category_digital">
                                                    <i class="fa fa-circle fs_i"></i>
                                                    <?php echo translate('category'); ?>
                                                </a>
                                            </li>
                                            <?php
                                        } if ($this->crud_model->admin_permission('sub_category')) {
                                            ?>
                                            <li <?php if ($page_name == "sub_category_digital") { ?> class="active-link" <?php } ?> >
                                                <a href="<?php echo base_url(); ?>index.php/admin/sub_category_digital">
                                                    <i class="fa fa-circle fs_i"></i>
                                                    <?php echo translate('sub-category'); ?>
                                                </a>
                                            </li>
                                            <?php
                                        } if ($this->crud_model->admin_permission('digital')) {
                                            ?>
                                            <li <?php if ($page_name == "digital") { ?> class="active-link" <?php } ?> >
                                                <a href="<?php echo base_url(); ?>index.php/admin/digital">
                                                    <i class="fa fa-circle fs_i"></i>
                                                    <?php echo translate('all_products'); ?>
                                                </a>
                                            </li>
                                            <?php
                                        }
                                        ?>
                                    </ul>
                                </li>

                                <?php
                            }
                        }
                        ?>

                        <?php
                        if ($this->crud_model->admin_permission('sale')) {
                            ?>
                            <li <?php if ($page_name == "sales") { ?> class="active-link" <?php } ?>>
                                <a href="<?php echo base_url(); ?>index.php/admin/sales/">
                                    <i class="fa fa-check-square-o"></i>
                                    <span class="menu-title">
                                        <?php echo translate('Orders'); ?>
                                    </span>
                                </a>
                            </li>
                            <?php
                        }
                        ?>
                        <?php
                        if ($this->crud_model->admin_permission('coupon')) {
                            ?>
                            <li <?php if ($page_name == "coupon") { ?> class="active-link" <?php } ?> >
                                <a href="<?php echo base_url(); ?>index.php/admin/coupon/">
                                    <i class="fa fa-tag"></i>
                                    <span class="menu-title">
                                        <?php echo translate('discount'); ?>
                                    </span>
                                </a>
                            </li>

                            <?php
                        }
                        ?>

                        <?php
                        if ($this->crud_model->get_type_name_by_id('general_settings', '58', 'value') == 'ok') {
                            if ($this->crud_model->admin_permission('vendor') ||
                                    $this->crud_model->admin_permission('membership_payment') ||
                                    $this->crud_model->admin_permission('membership')) {
                                ?>
                                <li <?php
                                if ($page_name == "vendor" ||
                                        $page_name == "membership_payment" ||
                                        $page_name == "slides_vendor" ||
                                        $page_name == "membership") {
                                    ?>
                                        class="active-sub" 
                                    <?php } ?>>
                                    <a href="#">
                                        <i class="fa fa-user-plus"></i>
                                        <span class="menu-title">
                                            <?php echo translate('vendors'); ?>
                                        </span>
                                        <i class="fa arrow"></i>
                                    </a>

                                    <!--REPORT-------------------->
                                    <ul class="collapse <?php
                                    if ($page_name == "vendor" ||
                                            $page_name == "membership_payment" ||
                                            $page_name == "pay_to_vendor" ||
                                            $page_name == "slides_vendor" ||
                                            $page_name == "membership") {
                                        ?>
                                            in
                                        <?php } ?> ">
                                        <li <?php if ($page_name == "vendor") { ?> class="active-link" <?php } ?> >
                                            <a href="<?php echo base_url(); ?>index.php/admin/vendor/">
                                                <i class="fa fa-circle fs_i"></i>
                                                <?php echo translate('vendor_list'); ?>
                                            </a>
                                        </li>
                                        <li <?php if ($page_name == "pay_to_vendor") { ?> class="active-link" <?php } ?> >
                                            <a href="<?php echo base_url(); ?>index.php/admin/pay_to_vendor/">
                                                <i class="fa fa-circle fs_i"></i>
                                                <?php echo translate('pay_to_vendor'); ?>
                                            </a>
                                        </li>
                                        <li <?php if ($page_name == "membership_payment") { ?> class="active-link" <?php } ?> >
                                            <a href="<?php echo base_url(); ?>index.php/admin/membership_payment/">
                                                <i class="fa fa-circle fs_i"></i>
                                                <?php echo translate('package_payments'); ?>
                                            </a>
                                        </li>
                                        <li <?php if ($page_name == "membership") { ?> class="active-link" <?php } ?> >
                                            <a href="<?php echo base_url(); ?>index.php/admin/membership/">
                                                <i class="fa fa-circle fs_i"></i>
                                                <?php echo translate('vendor_packages'); ?>
                                            </a>
                                        </li>
                                        <li <?php if ($page_name == "slides_vendor") { ?> class="active-link" <?php } ?> >
                                            <a href="<?php echo base_url(); ?>index.php/admin/slides/vendor">
                                                <i class="fa fa-circle fs_i"></i>
                                                <?php echo translate('vendor\'s_slides'); ?>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <?php
                            }
                        }
                        ?>
                        <?php
                        if ($this->crud_model->admin_permission('user')) {
                            ?>
                            <li <?php if ($page_name == "user") { ?> class="active-link" <?php } ?> >
                                <a href="<?php echo base_url(); ?>index.php/admin/user/">
                                    <i class="fa fa-users"></i>
                                    <span class="menu-title">
                                        <?php echo translate('customers'); ?>
                                    </span>
                                </a>
                            </li>
                            <?php
                        }
                        ?>
                        <?php
                        if ($this->crud_model->admin_permission('newsletter') ||
                                $this->crud_model->admin_permission('contact_message')) {
                            ?>
                            <li <?php
                            if ($page_name == "newsletter" ||
                                    $page_name == "contact_message") {
                                ?>
                                    class="active-sub" 
                                <?php } ?> >
                                <a href="#">
                                    <i class="fa fa-envelope"></i>
                                    <span class="menu-title">
                                        <?php echo translate('messaging'); ?>
                                    </span>
                                    <i class="fa arrow"></i>
                                </a>

                                <ul class="collapse <?php
                                if ($page_name == "newsletter" ||
                                        $page_name == "contact_message") {
                                    ?>
                                        in
                                    <?php } ?>" >

                                    <?php
                                    if ($this->crud_model->admin_permission('newsletter')) {
                                        ?>
                                        <li <?php if ($page_name == "newsletter") { ?> class="active-link" <?php } ?> >
                                            <a href="<?php echo base_url(); ?>index.php/admin/newsletter">
                                                <i class="fa fa-circle fs_i"></i>
                                                <?php echo translate('newsletters'); ?>
                                            </a>
                                        </li>
                                        <?php
                                    }
                                    ?>                                   
                                </ul>
                            </li>
                            <?php
                        }
                        ?>

                        <?php
                        if ($this->crud_model->admin_permission('testimonial')) {
                            ?>
                            <li <?php if ($page_name == "testimonial") { ?> class="active-link" <?php } ?> >
                                <a href="<?php echo base_url(); ?>index.php/admin/testimonial/">
                                    <i class="fa fa-comments-o"></i>
                                    <span class="menu-title">
                                        <?php echo translate('testimonial'); ?>
                                    </span>
                                </a>
                            </li>

                            <?php
                        }
                        ?>
                        <?php
                        if ($this->crud_model->admin_permission('coupon')) {
                            ?>
                            <li <?php if ($page_name == "coupon") { ?> class="active-link" <?php } ?> >
                                <a href="<?php echo base_url(); ?>index.php/admin/coupon_original/">
                                    <i class="fa fa-tag"></i>
                                    <span class="menu-title">
                                        <?php echo translate('coupon'); ?>
                                    </span>
                                </a>
                            </li>

                            <?php
                        }
                        ?>
                        <?php if ($this->crud_model->admin_permission('event')) { ?>
                            <li>
                                <a href="<?php echo base_url(); ?>index.php/admin/event">
                                    <i class="fa fa-forward"></i>
                                    <span class="menu-title">
                                        Events
                                    </span>
                                </a>
                            </li>
                        <?php } if ($this->crud_model->admin_permission('gallery')) { ?>                            
                            <li>
                                <a href="<?php echo base_url(); ?>index.php/admin/gallery">
                                    <i class="fa fa-image"></i>
                                    <span class="menu-title">
                                        Gallery
                                    </span>
                                </a>
                            </li>
                        <?php } if ($this->crud_model->admin_permission('team_members')) { ?>
                            <li>
                                <a href="<?php echo base_url(); ?>index.php/admin/team_members">
                                    <i class="fa fa-users"></i>
                                    <span class="menu-title">
                                        Team Members
                                    </span>
                                </a>
                            </li>
                        <?php } if ($this->crud_model->admin_permission('faq')) { ?>
                            <li>
                                <a href="<?php echo base_url(); ?>index.php/admin/faq">
                                    <i class="fa fa-question"></i>
                                    <span class="menu-title">
                                        FAQ
                                    </span>
                                </a>
                            </li>
                            <?php
                        }

                        if ($this->crud_model->admin_permission('blog')) {
                            ?>
                            <li <?php if ($page_name == "blog") { ?> class="active-link" <?php } ?> >
                                <a href="<?php echo base_url(); ?>index.php/admin/blog/">
                                    <i class="fa fa-tag"></i>
                                    <span class="menu-title">
                                        <?php echo translate('news_&_blogs'); ?>
                                    </span>
                                </a>
                            </li>
                            <?php
                        }

                        if ($this->crud_model->admin_permission('admin')) {
                            ?>
                            <li <?php if ($page_name == "admin") { ?> class="active-link" <?php } ?> >
                                <a href="<?php echo base_url(); ?>index.php/admin/admins/">
                                    <i class="fa fa-lock"></i>
                                    <span class="menu-title">
                                        <?php echo translate('manage_staffs'); ?>
                                    </span>
                                </a>
                            </li>
                            <?php
                        }
                        ?>                             
                    </ul>
                </div>
            </div>
        </div>
    </div>
</nav>
<style>
    .activate_bar{
        border-left: 3px solid #1ACFFC;	
        transition: all .6s ease-in-out;
    }
    .activate_bar:hover{
        border-bottom: 3px solid #1ACFFC;
        transition: all .6s ease-in-out;
        background:#1ACFFC !important;
        color:#000 !important;	
    }
    ul ul ul li a{
        padding-left:80px !important;
    }
    ul ul ul li a:hover{
        background:#2f343b !important;
    }
</style>