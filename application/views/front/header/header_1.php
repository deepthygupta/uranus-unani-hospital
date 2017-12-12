<!-- Header top bar -->
<div class="top-bar">
    <div class="container">
        <div class="top-bar-left">
            <h5 style="color:#fff;">Monday - Saturday Working Days, <b>* Sunday off</b></h5>
        </div>
        <div class="top-bar-right">
            ----- ----- -----
        </div>
    </div>
</div>
<!-- /Header top bar -->

<!-- HEADER -->
<header class="header header-logo-left">
    <div class="header-wrapper">
        <div class="container">
		
            <!-- Logo -->
            <div class="logo hidden-xs">
            	<?php
					$home_top_logo = $this->db->get_where('ui_settings',array('type' => 'home_top_logo'))->row()->value;
				?>
                <a href="<?php echo base_url();?>">
                	<img src="<?php echo base_url(); ?>uploads/logo_image/logo_<?php echo $home_top_logo; ?>.png" alt="SuperShop"/>
             	</a>
            </div>
		
            <!-- /Logo -->
            <!-- Header search -->
            <div class="header-search">                            
                <?php
                    echo form_open(base_url() . 'index.php/home/text_search/', array(
                        'method' => 'post'
                    ));
                ?>
                    <input class="form-control" type="text" name="query" placeholder="<?php echo translate('what_are_you_looking_for');?>?"/>
                    <select
                        class="selectpicker header-search-select cat_select hidden-xs" data-live-search="true" name="category"
                        data-toggle="tooltip" title="<?php echo translate('select');?>">
                        <option value="0"><?php echo translate('all_categories');?></option>
                        <?php 
                            $categories = $this->db->get('category')->result_array();
                            foreach ($categories as $row1) {
								if($this->crud_model->if_publishable_category($row1['category_id'])){
                        ?>
                        <option value="<?php echo $row1['category_id']; ?>"><?php echo $row1['category_name']; ?></option>
                        <?php 
								}
                            }
                        ?>
                    </select>
                    <?php
                    	if ($this->crud_model->get_type_name_by_id('general_settings','58','value') == 'ok') {
					?>
                    <select
                        class="selectpicker header-search-select" data-live-search="true" name="type" onchange="header_search_set(this.value);"
                        data-toggle="tooltip" title="<?php echo translate('select');?>">
                        <option value="product"><?php echo translate('product');?></option>
                                         
                    </select>
                    <?php
						}
					?>
                    <button class="shrc_btn"><i class="fa fa-search"></i></button>
                </form>
            </div>
            <!-- /Header search -->

            <!-- Header shopping cart -->
            <div class="header-cart">
                <div class="cart-wrapper">
                    
                    <a href="#" class="btn btn-theme-transparent" data-toggle="modal" data-target="#popup-cart">
                        <i class="fa fa-shopping-cart"></i> 
                        <span class="hidden-xs"> 
                            <span class="cart_num"></span> 
                            <?php echo translate('item(s)'); ?>
                        
                        </span>  
                        <i class="fa fa-angle-down"></i>
                    </a>
                    <!-- Mobile menu toggle button -->
                    <a href="#" class="menu-toggle btn btn-theme-transparent"><i class="fa fa-bars"></i></a>
                    <!-- /Mobile menu toggle button -->
                </div>
            </div>
            <!-- Header shopping cart -->

        </div>
    </div>
    <div class="navigation-wrapper">
        <div class="container">
            <!-- Navigation -->
            <?php
            	$others_list=$this->uri->segment(3);
			?>
            <nav class="navigation closed clearfix">
                <a href="#" class="menu-toggle-close btn"><i class="fa fa-times"></i></a>
                <ul class="nav sf-menu">
                    <li <?php if($asset_page=='home'){ ?>class="active"<?php } ?>>
                        <a href="<?php echo base_url(); ?>index.php/home">
                            <?php echo translate('home');?>
                        </a>
                    </li>
					
					<li <?php if($asset_page=='about'){ ?>class="active"<?php } ?>>
                        <a href="<?php echo base_url(); ?>index.php/home/about">
                            <?php echo translate('about us');?>
                        </a>
                    </li>
					
					
                    <li class="hidden-sm hidden-xs <?php if($asset_page=='all_category'){ echo 'active'; } ?>">
                        <a href="<?php echo base_url(); ?>index.php/home/all_category">
							<?php echo translate('all_categories');?>
                        </a>
                        <ul>
                        	<?php
								$all_category = $this->db->get('category')->result_array();
								foreach($all_category as $row)
								{
									if($this->crud_model->if_publishable_category($row['category_id'])){
							?>
                            <li>
                                <a href="<?php echo base_url(); ?>index.php/home/category/<?php echo $row['category_id']; ?>">
                                    <?php echo $row['category_name']; ?>
                                </a>
                            </li>
                            <?php
									}
								}
							?>
                        </ul>
                    </li>
                    <li class="hidden-lg hidden-md <?php if($asset_page=='all_category'){ echo 'active'; } ?>">
                        <a href="#">
							<?php echo translate('categories');?>
                        </a>
                        <ul>
                        	<?php
								$all_category = $this->db->get('category')->result_array();
								foreach($all_category as $row)
								{
									if($this->crud_model->if_publishable_category($row['category_id'])){
							?>
                            <li>
                                <a href="<?php echo base_url(); ?>index.php/home/category/<?php echo $row['category_id']; ?>">
                                    <?php echo $row['category_name']; ?>
                                </a>
                            </li>
                            <?php
									}
								}
							?>
                        </ul>
                    </li>
                    <li class="hidden-lg hidden-md <?php if($asset_page=='all_category'){ echo 'active'; } ?>">
                        <a href="<?php echo base_url(); ?>index.php/home/all_category">
                            <?php echo translate('all_sub_categories');?>
                        </a>
                    </li>
					
					
					
                    <li class="<?php if($others_list=='0-0'){ echo 'active'; } ?>">
                        <a href="<?php echo base_url(); ?>index.php/home/category/0/0-0">
                            <?php echo translate('drinks');?>
                        </a>
                    </li>
					
					
					
					
                    <li class="<?php if($others_list=='todays_deal'){ echo 'active'; } ?>">
                        <a href="<?php echo base_url(); ?>index.php/home/others_product/todays_deal">
                            <?php echo translate('offers!');?>
                        </a>
                    </li>
                    <?php
                    	if ($this->crud_model->get_type_name_by_id('general_settings','58','value') !== 'ok') {
					?>
                    
                    <?php
						}
					?>
                    
                    <?php
                    	if ($this->crud_model->get_type_name_by_id('general_settings','58','value') == 'ok') {
					?>
                    
                    <?php
						}
					?>
                    <li class="hidden-sm hidden-xs <?php if($asset_page=='blog'){ echo 'active'; } ?>">
                        <a href="<?php echo base_url(); ?>index.php/home/blog">
                            <?php echo translate('news_&_blogs');?>
                        </a>
                        <ul>
                        	<?php
								$blogs=$this->db->get('blog_category')->result_array();
								foreach($blogs as $row){
							?>
                            <li>
                                <a href="<?php echo base_url(); ?>index.php/home/blog/<?php echo $row['blog_category_id']; ?>">
                                    <?php echo $row['name']; ?>
                                </a>
                            </li>
                            <?php
								}
							?>
                        </ul>
                    </li>
					
                    <li class="hidden-lg hidden-md <?php if($asset_page=='blog'){ echo 'active'; } ?>">
                        <a href="#">
                            <?php echo translate('blogs');?>
                        </a>
                        <ul>
                        	<?php
								$blogs=$this->db->get('blog_category')->result_array();
								foreach($blogs as $row){
							?>
                            <li>
                                <a href="<?php echo base_url(); ?>index.php/home/blog/<?php echo $row['blog_category_id']; ?>">
                                    <?php echo $row['name']; ?>
                                </a>
                            </li>
                            <?php
								}
							?>
                        </ul>
                    </li>
					
					
					
					
					
                    <?php
                    	if ($this->crud_model->get_type_name_by_id('general_settings','58','value') == 'ok') {
					?>
                    
                    <?php
						}
					?>
                    <li <?php if($asset_page=='contact'){ ?>class="active"<?php } ?>>
                        <a href="<?php echo base_url(); ?>index.php/home/contact">
                            <?php echo translate('contact_us');?>
                        </a>
                    </li>
					
					
                    
                </ul>
            </nav>
            <!-- /Navigation -->
        </div>
    </div>
</header>
<!-- /HEADER -->
<script type="text/javascript">
    $(document).ready(function(){
        $('.set_langs').on('click',function(){
            var lang_url = $(this).data('href');                                    
            $.ajax({url: lang_url, success: function(result){
                location.reload();
            }});
        });
        $('.top-bar-right').load('<?php echo base_url(); ?>index.php/home/top_bar_right');
    });
</script>
<style>
    .dropdown-menu .active a{
        color: #fff !important;
    }
    .dropdown-menu li a{
        cursor: pointer;
    }
    .header-search select {
        display: none !important;
    }
	.cat_select button{
		right:170px !important;
	}
	@media (max-width: 768px) {
		.cat_select button{
			right:80px !important;
		}
	}
</style>
<?php
if ($this->crud_model->get_type_name_by_id('general_settings','58','value') !== 'ok') {
?>
<style>
.header.header-logo-left .header-search .header-search-select .dropdown-toggle {
    right: 40px !important;
}
</style>
<?php
}
?>