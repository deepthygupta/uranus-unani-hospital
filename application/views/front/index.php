<!DOCTYPE html>
<html lang="en">
    <head>
    	<?php
			$vendor_system   =  $this->crud_model->get_settings_value('general_settings','vendor_system');
			$physical_system =  $this->crud_model->get_settings_value('general_settings','physical_product_activation');
			$digital_system  =  $this->crud_model->get_settings_value('general_settings','digital_product_activation');
            $description     =  $this->crud_model->get_settings_value('general_settings','meta_description');
            $keywords        =  $this->crud_model->get_settings_value('general_settings','meta_keywords');
            $author          =  $this->crud_model->get_settings_value('general_settings','meta_author');
            $system_name     =  $this->crud_model->get_settings_value('general_settings','system_name');
            $system_title    =  $this->crud_model->get_settings_value('general_settings','system_title');
            $map_api_key     =  $this->crud_model->get_settings_value('general_settings','google_api_key');
            $revisit_after   =  $this->crud_model->get_settings_value('general_settings','revisit_after');
			
            $page_title      =  ucfirst(str_replace('_',' ',$page_title));
            $this->crud_model->check_vendor_mambership();
            if($this->router->fetch_method() == 'product_view'){
                $keywords    .= ','.$product_tags;
            }
            if($this->router->fetch_method() == 'vendor_profile'){
                $keywords    .= ','.$vendor_tags;
            }
		?>
    	<title><?php echo $page_title; ?> || <?php echo $system_title; ?></title>
    	<?php
//        	include 'includes/top/index.php';
//        include 'top.php';
        include 'components/cart_modal.php';
		?>
    </head>
    <body id="home" class="wide">
        <!-- PRELOADER -->
    	<?php
			$preloader = '1';
        	//include 'preloader/preloader_'.$preloader.'.php';
//			include 'preloader.php';
		?>
        <!-- /PRELOADER -->

        <!-- WRAPPER -->
        <div class="wrapper">

            <!-- Popup: Shopping cart items -->
			<?php
         include 'components/cart_modal.php';
            ?>            
            <!-- /Popup: Shopping cart items -->

            <!-- HEADER -->
			      
            <!-- /HEADER -->

            <!-- CONTENT AREA -->
            <div class="content-area">
				<?php
                    include $page_name.'/'.$page_name.'.php';
                ?>                
            </div>
            <!-- /CONTENT AREA -->

            <!-- FOOTER -->
		
            <!-- /FOOTER -->

           <!-- <div id="to-top" class="to-top"><i class="fa fa-angle-up"></i></div>-->

        </div>
        <!-- /WRAPPER -->
        <?php
            include 'script_texts.php';
        ?>
    	<?php
//        	include 'includes/bottom/index.php';
		?>
        <script>
            var base_url = "<?php echo base_url(); ?>";
        </script>
        <script src="<?php echo base_url(); ?>template/front/js/ajax_method.js"></script>
        <script src="<?php echo base_url(); ?>template/front/js/bootstrap-notify.min.js"></script>
        <script src="<?php echo base_url(); ?>template/front/plugins/jquery-ui/jquery-ui.min.js"></script>
        <script src="<?php echo base_url(); ?>template/front/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="<?php echo base_url(); ?>template/front/plugins/bootstrap-select/js/bootstrap-select.min.js"></script>
        <!-- JS Global -->
        <script src="<?php echo base_url(); ?>template/front/plugins/superfish/js/superfish.min.js"></script>
        <script src="<?php echo base_url(); ?>template/front/plugins/jquery.sticky.min.js"></script>
        <script src="<?php echo base_url(); ?>template/front/plugins/jquery.easing.min.js"></script>
        <script src="<?php echo base_url(); ?>template/front/plugins/jquery.smoothscroll.min.js"></script>
        <script src="<?php echo base_url(); ?>template/front/plugins/smooth-scrollbar.min.js"></script>
        <script src="<?php echo base_url(); ?>template/front/plugins/jquery.cookie.js"></script>

        <script src="<?php echo base_url(); ?>template/front/plugins/modernizr.custom.js"></script>
<!--        <script src="--><?php //echo base_url(); ?><!--template/front/modal/js/jquery.active-modals.js"></script>-->
        <script src="<?php echo base_url(); ?>template/front/js/theme.js"></script>




        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=false&key="></script>
        <script src="<?php echo base_url(); ?>template/front/js/cart.js"></script>


    </body>
</html>