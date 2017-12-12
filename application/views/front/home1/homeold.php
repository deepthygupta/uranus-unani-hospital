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

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>rawsqueezed || Home</title>
<meta name="keywords" content="HTML5,CSS3,HTML,Template,Multi-Purpose,M_Adnan,Corporate Theme,SEBIAN Multi Purpose Care,eCommerce,SEBIAN - Multi Purpose eCommerce HTML5 Template">
<meta name="description" content="SEBIAN - Multi Purpose eCommerce HTML5 Template">
<meta name="author" content="M_Adnan">

<!-- FONTS ONLINE -->
<link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,900,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

<!--MAIN STYLE-->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/main.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/responsive.css" rel="stylesheet" type="text/css">
<link href="css/animate.css" rel="stylesheet" type="text/css">
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">

<!-- ADD YOUR OWN STYLING HERE. AVOID TO USE STYLE.CSS AND MAIN.CSS. IT WILL BE HELPFUL FOR YOU IN FUTURE UPDATES -->
<link href="css/custom.css" rel="stylesheet" type="text/css">

<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
<link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.css" media="screen" />

<!-- JavaScripts -->
<script src="js/modernizr.js"></script>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

</head>
<body>
<!-- LOADER ===========================================-->
<div id="loader">
  <div class="loader">
    <div class="position-center-center"> <img src="images/logo-dark.png" alt="">
      <p class="font-playfair text-center">Please Wait...</p>
      <div class="loading">
        <div class="ball"></div>
        <div class="ball"></div>
        <div class="ball"></div>
      </div>
    </div>
  </div>
</div>

<!-- Page Wrap -->
<div id="wrap"> 
  
  <!-- Header -->

  <!-- Header End --> 
  
  <!--======= HOME MAIN SLIDER =========-->
  <section class="home-slider">
    <div class="tp-banner-container">
      <div class="tp-banner" >
        <ul>
          
          <!-- Slider 1 -->
          <li data-transition="fade" data-slotamount="7"> <img src="images/slides/slide-1.jpg" data-bgposition="center top" alt="" />
            <div class="overlay"></div>
            <!-- Layer -->
            <div class="tp-caption sft tp-resizeme rs-parallaxlevel-5" 
                  data-x="center" 
                  data-y="235" 
                  data-speed="700" 
                  data-start="1700" 
                  data-easing="easeOutBack"
                  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-elementdelay="0.1" 
                  data-endelementdelay="0.1" 
                  data-endspeed="300" 
                  data-captionhidden="on"> <img src="images/logo-deer.png" alt="" /> </div>
            
            <!-- Layer -->
            <div class="tp-caption sft font-montserrat tp-resizeme rs-parallaxlevel-4" 
                  data-x="center" 
                  data-y="330" 
                  data-speed="700" 
                  data-start="2700" 
                  data-easing="easeOutBack"
                  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-elementdelay="0.1" 
                  data-endelementdelay="0.1" 
                  data-endspeed="300" 
                  data-captionhidden="on"
                  style="color: #fff; font-size: 36px; text-transform: uppercase;"> CELINE PARIS </div>
            
            <!-- Layer -->
            <div class="tp-caption customin font-playfair tp-resizeme rs-parallaxlevel-4" 
                  data-x="center" 
                  data-y="360" 
                  data-speed="720" 
                  data-start="3200" 
                  data-easing="easeOutBack"
                  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-elementdelay="0.1" 
                  data-endelementdelay="0.1" 
                  data-endspeed="300" 
                  data-captionhidden="on" 
                  style="color: #fff; text-transform: uppercase; font-size: 130px; font-style:italic;"> UP to 70% </div>
            
            <!-- Layer -->
            <div class="tp-caption sfb  font-playfair text-center tp-resizeme rs-parallaxlevel-4" 
                  data-x="center" 
                  data-y="540" 
                  data-speed="1500" 
                  data-start="3200" 
                  data-easing="easeOutBack"
                  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-elementdelay="0.1" 
                  data-endelementdelay="0.1" 
                  data-endspeed="300" 
                  data-captionhidden="on" 
                  style="color: #fff; font-size: 16px; text-transform: uppercase;"> BY DONIA R., DUTCH BLOGGER AT WWW.DONIAZ.NL FROM LONDON, UNITED KINGDOM </div>
            
            <!-- Layer -->
            <div class="tp-caption sfb tp-resizeme rs-parallaxlevel-4" 
                  data-x="center" 
                  data-y="570" 
                  data-speed="700" 
                  data-start="4000" 
                  data-easing="easeOutBack"
                  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-elementdelay="0.1" 
                  data-endelementdelay="0.1" 
                  data-endspeed="300" 
                  data-captionhidden="on"> <a href="#." class="btn">Shop Now</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="#" class="btn btn-1">Discover</a> </div>
          </li>
          
          <!-- Slider 2 -->
          <li data-transition="random" data-slotamount="7"> <img src="images/slides/slide-2.jpg" data-bgposition="center center" alt="" />
            <div class="overlay"></div>
            
            <!-- Layer -->
            <div class="tp-caption sft font-montserrat  tp-resizeme rs-parallaxlevel-4" 
                  data-x="center" 
                  data-y="285" 
                  data-speed="700" 
                  data-start="1000" 
                  data-easing="easeOutBack"
                  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-elementdelay="0.1" 
                  data-endelementdelay="0.1" 
                  data-endspeed="300" 
                  data-captionhidden="on"
                  style="color: #fff; font-size: 120px; text-transform: uppercase; font-weight: bold;"> HUGE SALE </div>
            
            <!-- Layer -->
            <div class="tp-caption sft tp-resizeme font-montserrat rs-parallaxlevel-4" 
                  data-x="center" 
                  data-y="450" 
                  data-speed="700" 
                  data-start="1700" 
                  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" 
                  data-easing="Back.easeOut" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-elementdelay="0.1" 
                  data-endelementdelay="0.1" 
                  data-endspeed="300" 
                  data-captionhidden="on"
                  style="color: #fff; font-size: 18px; text-transform: uppercase; font-weight: bold;  letter-spacing:3px;"> ASOS T-shirt With Stripe Sleeve </div>
            
            <!-- Layer -->
            <div class="tp-caption sft tp-resizeme rs-parallaxlevel-4" 
                  data-x="center" 
                  data-y="500" 
                  data-speed="700" 
                  data-start="2400"
                  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" 
                  data-easing="Back.easeOut" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-elementdelay="0.1" 
                  data-endelementdelay="0.1" 
                  data-endspeed="300" 
                  data-captionhidden="on"> <a href="#." class="btn btn-1">SHOPPING NOW</a> </div>
          </li>
          
          <!-- Slider 3 -->
          <li data-transition="random" data-slotamount="7"> <img src="images/slides/slide-3.jpg" data-bgposition="center center" alt="" />
            <div class="overlay"></div>
            
            <!-- SLIDER LAYERS -->
            <div class="tp-caption white-line-box sft tp-resizeme rs-parallaxlevel-4" 
                  data-x="center" data-y="332"
                  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" 
                  data-speed="700" 
                  data-start="1000" 
                  data-easing="Back.easeOut" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-elementdelay="0.1" 
                  data-endelementdelay="0.1" 
                  data-endspeed="300" 
                  data-captionhidden="on" 
       
                  style="z-index: 10;"> </div>
            
            <!-- Layer -->
            <div class="tp-caption white-line-box sfb tp-resizeme rs-parallaxlevel-4" 
                  data-x="center" 
                  data-y="420"
                  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" 
                  data-speed="700" 
                  data-start="1000" 
                  data-easing="Back.easeOut" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-elementdelay="0.1" 
                  data-endelementdelay="0.1" 
                  data-endspeed="300" 
                  data-captionhidden="on" 
                  style="z-index: 10;"> </div>
            
            <!-- Layer -->
            <div class="tp-caption font-montserrat customin tp-resizeme rs-parallaxlevel-4" 
                  data-x="center" 
                  data-y="335" 
                  data-speed="700" 
                  data-start="1000" 
                  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" 
                  data-easing="Back.easeOut" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-elementdelay="0.1" 
                  data-endelementdelay="0.1" 
                  data-endspeed="300" 
                  data-captionhidden="on"
                  style="color: #fff; font-size: 60px; text-transform: uppercase; font-weight: bold; letter-spacing:3px;"> NEW ARRIVAL </div>
            
            <!-- Layer -->
            <div class="tp-caption sfb tp-resizeme  font-playfair text-center rs-parallaxlevel-4" 
                  data-x="center" 
                  data-y="450" 
                  data-speed="700" 
                  data-start="1700" 
                  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" 
                  data-easing="Back.easeOut" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-elementdelay="0.1" 
                  data-endelementdelay="0.1" 
                  data-endspeed="300" 
                  data-captionhidden="on"
                  style="color: #fff; font-size: 18px; font-weight: normal; font-style:italic; letter-spacing:0px;"> Gumbo beet greens corn soko endive gumbo gourd. Parsley shallot courgette tatsoi pea sprouts fava<br>
              bean collard greens danadelion. </div>
            
            <!-- Layer -->
            <div class="tp-caption sfb tp-resizeme rs-parallaxlevel-4" 
                  data-x="center" 
                  data-y="520" 
                  data-speed="700" 
                  data-start="2400"
                  data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" 
                  data-easing="Back.easeOut" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-elementdelay="0.1" 
                  data-endelementdelay="0.1" 
                  data-endspeed="300" 
                  data-captionhidden="on"
                  style="z-index: 10;"> <a href="#." class="btn">Shop Now</a> &nbsp; &nbsp; &nbsp; &nbsp; <a href="#" class="btn btn-1">Discover</a> </div>
          </li>
        </ul>
      </div>
    </div>
  </section>
  
  <!-- CONTENT START -->
  <div class="content"> 
    
    <!--======= COLLECRION =========-->
    <section class="section-p-30px collection-adds">
      <div class="container">
        <ul class="row">
          
          <!-- Collection Add -->
          <li class="col-sm-3 animate fadeInLeft" data-wow-delay="0.4s">
            <div class="inn-sec"> <a href="#."> <img class="img-responsive" src="images/collection-img-1.jpg" alt=""> <span>MEN’</span> </a> </div>
          </li>
          
          <!-- Collection Add -->
          <li class="col-sm-3 animate fadeInLeft" data-wow-delay="0.6s">
            <div class="inn-sec"> <a href="#."> <img class="img-responsive" src="images/collection-img-2.jpg" alt=""> <span>SHOES</span> </a> </div>
          </li>
          
          <!-- Collection Add -->
          <li class="col-sm-3 animate fadeInRight" data-wow-delay="0.4s">
            <div class="inn-sec"> <a href="#."> <img class="img-responsive" src="images/collection-img-3.jpg" alt=""> <span>WOMAN</span> </a> </div>
          </li>
          
          <!-- Collection Add -->
          <li class="col-sm-3 animate fadeInRight" data-wow-delay="0.6s">
            <div class="inn-sec"> <a href="#."> <img class="img-responsive" src="images/collection-img-4.jpg" alt=""> <span>KID’S</span> </a> </div>
          </li>
        </ul>
      </div>
    </section>
    
    <!--======= Popurlar Product =========-->
      <section class="section-p-30px popurlar_product">
          <div class="container">
              <div class="row">
					<div class="tittle">
                          <h5>LATEST FEATURED PRODUCT</h5>
                          
                      </div>
                  <!-- Popurlar Product 1 -->
                  <div class="col-md-4  animate fadeInUp" data-wow-delay="0.4s">
                      <!-- Popurlar Tittke -->
                      
                      <!-- Popurlar Slider -->
                      <div class="product-slides">
                          <!-- Slide 1 -->
                          <div class="items-in">
                              <!-- Image -->
                              <?php
                              $this->db->limit(1,0);
                              $this->db->order_by("product_id", "desc");
                              $this->db->where("featured","ok");
                              $latest=$this->db->get('product')->result_array();
                              foreach($latest as $row){
                                  ?>
                                  <div>
                                      <a href="<?php echo $this->crud_model->blog_link($row['product_id']); ?>">
                                          <img  src="<?php echo $this->crud_model->file_view1('product',$row['product_id'],$row['category'],'','','thumb','src','',''); ?>" height="300" width="500" alt=""/>

                                      </a>

                                  </div>

                              <!-- Hover Details -->
                              <div class="over-item">
                                  <ul class="animated fadeIn">
                                      <li> <a href="<?php echo $this->crud_model->file_view1('product',$row['product_id'],$row['category'],'','','thumb','src','',''); ?>" data-lighter><i class="ion-search"></i></a></li>
                                      <li> <a href="#."><i class="ion-shuffle"></i></a></li>
                                      <li> <a href="#."><i class="fa fa-heart-o"></i></a></li>
                                      <li class="full-w"> <a href="#." class="btn">ADD TO CART</a></li>
                                  </ul>
                              </div>
                              <!-- Item Name -->
                              <div class="details-sec"> <a href="#."><?php echo $row['title'] ?></a> <span class="font-montserrat"><?php echo $row['sale_price'] ?></span> </div>
                              <?php
                              }
                              ?>
                          </div>


                      </div>
                  </div>

                  <!-- Popurlar Product 2 -->
                  <div class="col-md-4  animate fadeInUp" data-wow-delay="0.4s">
                      <!-- Popurlar Tittke -->
                      
                      <!-- Popurlar Slider -->
                      <div class="product-slides">
                          <!-- Slide 1 -->
                          <div class="items-in">
                              <!-- Image -->
                              <?php
                              $this->db->limit(1,1);
                              $this->db->order_by("product_id", "desc");
                              $this->db->where("featured","ok");
                              $latest=$this->db->get('product')->result_array();
                              foreach($latest as $row){
                                  ?>
                                  <div>
                                      <a href="<?php echo $this->crud_model->blog_link($row['product_id']); ?>">
                                          <img  src="<?php echo $this->crud_model->file_view1('product',$row['product_id'],$row['category'],'','','thumb','src','',''); ?>" height="300" width="500" alt=""/>

                                      </a>

                                  </div>

                              <!-- Hover Details -->
                              <div class="over-item">
                                  <ul class="animated fadeIn">
                                      <li> <a href="<?php echo $this->crud_model->file_view1('product',$row['product_id'],$row['category'],'','','thumb','src','',''); ?>" data-lighter><i class="ion-search"></i></a></li>
                                      <li> <a href="#."><i class="ion-shuffle"></i></a></li>
                                      <li> <a href="#."><i class="fa fa-heart-o"></i></a></li>
                                      <li class="full-w"> <a href="#." class="btn">ADD TO CART</a></li>
                                  </ul>
                              </div>
                              <!-- Item Name -->

                              <div class="details-sec"> <a href="#."><?php echo $row['title'] ?></a> <span class="font-montserrat"><?php echo $row['sale_price'] ?></span> </div>
                                  <?php
                              }
                              ?>
                          </div>


                      </div>
                  </div>

                  <!-- Popurlar Product 1 -->
                  <div class="col-md-4  animate fadeInUp" data-wow-delay="0.4s">
                      <!-- Popurlar Tittke -->
                     
                      <!-- Popurlar Slider -->
                      <div class="product-slides">
                          <!-- Slide 1 -->
                          <div class="items-in">
                              <!-- Image -->
                              <?php
                              $this->db->limit(1,2);
                              $this->db->order_by("product_id", "desc");
                              $this->db->where("featured","ok");
                              $latest=$this->db->get('product')->result_array();
                              foreach($latest as $row){
                                  ?>
                                  <div>
                                      <a href="<?php echo $this->crud_model->blog_link($row['product_id']); ?>">
                                          <img  src="<?php echo $this->crud_model->file_view1('product',$row['product_id'],$row['category'],'','','thumb','src','',''); ?>" height="300" width="500" alt=""/>

                                      </a>

                                  </div>

                              <!-- Hover Details -->
                              <div class="over-item">
                                  <ul class="animated fadeIn">
                                      <li> <a href="<?php echo $this->crud_model->file_view1('product',$row['product_id'],$row['category'],'','','thumb','src','',''); ?>" data-lighter><i class="ion-search"></i></a></li>
                                      <li> <a href="#."><i class="ion-shuffle"></i></a></li>
                                      <li> <a href="#."><i class="fa fa-heart-o"></i></a></li>
                                      <li class="full-w"> <a href="#." class="btn">ADD TO CART</a></li>
                                  </ul>
                              </div>
                              <!-- Item Name -->
                              <div class="details-sec"> <a href="#."><?php echo $row['title'] ?></a> <span class="font-montserrat"><?php echo $row['sale_price'] ?></span> </div>
                                  <?php
                              }
                              ?>
                          </div>


                      </div>
                  </div>

              </div>
          </div>
      </section>
    
    <!--======= Add Blocks =========-->
    <section class="section-p-30px add_block_2">
      <div class="container">
        <ul class="row">
          <li class="col-sm-6 animate fadeInLeft" data-wow-delay="0.4s"> <a href="#."><img src="images/add_block_1.jpg" alt=""></a> </li>
          <li class="col-sm-6 animate fadeInRight" data-wow-delay="0.4s"> <a href="#."><img src="images/add_block_2.jpg" alt=""></a> </li>
        </ul>
      </div>
    </section>
    
    <!--======= New Arrival =========-->
    <section class="section-p-30px new-arrival">
      <div class="container"> 
        
        <!--  Tittle -->
        <div class="tittle animate fadeInUp" data-wow-delay="0.4s">
          <h5>NEW ARRIVAL</h5>

        </div>
        
        <!-- Nav tabs -->

        <ul class="nav nav-tabs animate fadeInUp" data-wow-delay="0.4s" role="tablist">
          <li role="presentation" class="active"><a href="#heal" aria-controls="men" role="tab" data-toggle="tab">HEAL YOUR GUT</a></li>
          <li role="presentation"><a href="#energy" aria-controls="women" role="tab" data-toggle="tab">ENERGY</a></li>
          <li role="presentation"><a href="#glow" aria-controls="access" role="tab" data-toggle="tab">GLOW</a></li>
          <li role="presentation"><a href="#clean" aria-controls="shoes" role="tab" data-toggle="tab">CLEAN</a></li>
        </ul>

        
        <!-- Tab panes -->
        <div class="tab-content animate fadeInUp" data-wow-delay="0.4s"> 
          <!-- MEN’S  -->
          <div role="tabpanel" class="tab-pane fade in active" id="heal">

            <!--  New Arrival Tabs Products  -->
            <div class="popurlar_product">

              <ul class="row">
                  <?php
                  $this->db->limit(4);
                  $this->db->order_by("product_id", "desc");
                  $this->db->where("category","4");
                  $latest=$this->db->get('product')->result_array();
                  foreach($latest as $row){
                      ?>
                <!--  New Arrival  -->
                <li class="col-sm-3">
                  <div class="items-in"> 
                    <!-- Image -->
                      <img  src="<?php echo $this->crud_model->file_view1('product',$row['product_id'],$row['category'],'','','thumb','src','',''); ?>" height="250" alt=""/>
                    <!-- Hover Details -->
                    <div class="over-item">
                      <ul class="animated fadeIn">
                        <li> <a href="images/new-item-1.jpg" data-lighter><i class="ion-search"></i></a></li>
                        <li> <a href="#."><i class="ion-shuffle"></i></a></li>
                        <li> <a href="#."><i class="fa fa-heart-o"></i></a></li>
                        <li class="full-w"> <a href="#." class="btn">ADD TO CART</a></li>
                        <!-- Rating Stars -->
                        <li class="stars"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i></li>
                      </ul>
                    </div>
                    <!-- Item Name -->
                      <div class="details-sec"> <a href="#."><?php echo $row['title']; ?></a> <span class="font-montserrat"><?php echo $row['sale_price']; ?></span> </div>
                  </div>
                </li>

                  <?php } ?>
              </ul>

            </div>

          </div>
          
          <!-- WOMAN  -->

          <div role="tabpanel" class="tab-pane fade" id="energy">


            <!--  New Arrival Tabs Products  -->
            <div class="popurlar_product">

              <ul class="row">
                
                <!--  New Arrival  -->
                  <?php
                  $this->db->limit(4);
                  $this->db->order_by("product_id", "desc");
                  $this->db->where("category","3");
                  $latest=$this->db->get('product')->result_array();
                  foreach($latest as $row){
                      ?>
                <li class="col-sm-3">
                  <div class="items-in"> 
                    <!-- Image -->
                      <img  src="<?php echo $this->crud_model->file_view1('product',$row['product_id'],$row['category'],'','','thumb','src','',''); ?>" height="250" alt=""/>
                    <!-- Hover Details -->
                    <div class="over-item">
                      <ul class="animated fadeIn">
                        <li> <a href="images/new-item-1.jpg" data-lighter><i class="ion-search"></i></a></li>
                        <li> <a href="#."><i class="ion-shuffle"></i></a></li>
                        <li> <a href="#."><i class="fa fa-heart-o"></i></a></li>
                        <li class="full-w"> <a href="#." class="btn">ADD TO CART</a></li>
                        <!-- Rating Stars -->
                        <li class="stars"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i></li>

                      </ul>
                    </div>
                    <!-- Item Name -->
                      <div class="details-sec"> <a href="#."><?php echo $row['title']; ?></a> <span class="font-montserrat"><?php echo $row['sale_price']; ?></span> </div>
                  </div>
                </li>
                  <?php } ?>
              </ul>

            </div>

          </div>
          
          <!-- ACCESSORIES  -->
            <div role="tabpanel" class="tab-pane fade" id="glow">

                <!--  New Arrival Tabs Products  -->
                <div class="popurlar_product">

                    <ul class="row">

                        <!--  New Arrival  -->
                        <?php
                        $this->db->limit(4);
                        $this->db->order_by("product_id", "desc");
                        $this->db->where("category","2");
                        $latest=$this->db->get('product')->result_array();
                        foreach($latest as $row){
                        ?>
                        <li class="col-sm-3">
                            <div class="items-in">
                                <!-- Image -->
                                <img  src="<?php echo $this->crud_model->file_view1('product',$row['product_id'],$row['category'],'','','thumb','src','',''); ?>" height="250" alt=""/>
                                <!-- Hover Details -->
                                <div class="over-item">
                                    <ul class="animated fadeIn">
                                        <li> <a href="images/new-item-1.jpg" data-lighter><i class="ion-search"></i></a></li>
                                        <li> <a href="#."><i class="ion-shuffle"></i></a></li>
                                        <li> <a href="#."><i class="fa fa-heart-o"></i></a></li>
                                        <li class="full-w"> <a href="#." class="btn">ADD TO CART</a></li>
                                        <!-- Rating Stars -->
                                        <li class="stars"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i></li>

                                    </ul>
                                </div>
                                <!-- Item Name -->
                                <div class="details-sec"> <a href="#."><?php echo $row['title']; ?></a> <span class="font-montserrat"><?php echo $row['sale_price']; ?></span> </div>
                            </div>
                        </li>
                        <?php } ?>
                    </ul>

                </div>
            </div>
          
          <!-- SHOES  -->

            <div role="tabpanel" class="tab-pane fade" id="clean">

                <!--  New Arrival Tabs Products  -->
                <div class="popurlar_product">

                    <ul class="row">

                        <!--  New Arrival  -->
                        <?php
                        $this->db->limit(4);
                        $this->db->order_by("product_id", "desc");
                        $this->db->where("category","1");
                        $latest=$this->db->get('product')->result_array();
                        foreach($latest as $row){
                        ?>
                        <li class="col-sm-3">

                            <div class="items-in">

                                <!-- Image -->
                                <img  src="<?php echo $this->crud_model->file_view1('product',$row['product_id'],$row['category'],'','','thumb','src','',''); ?>" height="250" alt=""/>
                                <!-- Hover Details -->
                                <div class="over-item">
                                    <ul class="animated fadeIn">
                                        <li> <a href="images/new-item-1.jpg" data-lighter><i class="ion-search"></i></a></li>
                                        <li> <a href="#."><i class="ion-shuffle"></i></a></li>
                                        <li> <a href="#."><i class="fa fa-heart-o"></i></a></li>
                                        <li class="full-w"> <a href="#." class="btn">ADD TO CART</a></li>
                                        <!-- Rating Stars -->
                                        <li class="stars"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-half-o"></i></li>

                                    </ul>
                                </div>
                                <!-- Item Name -->
                                <div class="details-sec"> <a href="#."><?php echo $row['title']; ?></a> <span class="font-montserrat"><?php echo $row['sale_price']; ?></span> </div>

                            </div>
                        </li>
                        <?php } ?>
                    </ul>

                </div>

            </div>

          <!-- BAGS  -->

        </div>
      </div>
    </section>
    
    <!--======= Benefits =========-->
    <section class="benefits">
      <ul class="row">
        
        <!--  FREE SHIPPING -->
        <li class="col-md-3 no-padding animate fadeInLeft" data-wow-delay="0.4s">
          <div class="benefit-item odd"> <i class="fa fa-paper-plane-o"></i>
            <h5>FREE SHIPPING</h5>
            <span>All order over $85.00</span> </div>
        </li>
        
        <!--  Money Back -->
        <li class="col-md-3 no-padding animate fadeInLeft" data-wow-delay="0.6s">
          <div class="benefit-item even"> <i class="fa fa-usd"></i>
            <h5>Money Back</h5>
            <span>100% Money back - 30days</span> </div>
        </li>
        
        <!--  Best Support -->
        <li class="col-md-3 no-padding animate fadeInRight" data-wow-delay="0.4s">
          <div class="benefit-item odd"> <i class="fa fa-whatsapp"></i>
            <h5>Best Support</h5>
            <span>Fast &amp; pro 24/7</span> </div>
        </li>
        
        <!--  Gift Card -->
        <li class="col-md-3 no-padding animate fadeInRight" data-wow-delay="0.6s">
          <div class="benefit-item even"> <i class="fa fa-gift"></i>
            <h5>Gift Card</h5>
            <span>Promotion Event for customer</span> </div>
        </li>
      </ul>
    </section>
    
    <!--======= New Arrival =========-->
    <section class="about-sebian bg-1 animate fadeInUp" data-wow-delay="0.4s" data-stellar-background-ratio="0.4">
      <div class="section-p-60px overlay ">
        <div class="container"> 
          
          <!--  Tittle -->
          <div class="tittle white animate fadeInUp" data-wow-delay="0.4s">
            <h5>ABOUT SEBIAN</h5>
            <p>Treding fashion</p>
          </div>
          
          <!--  Intro Text  -->
          <div class="text-center animate fadeInUp" data-wow-delay="0.4s">
            <p class="intro-small text-center">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal as opposed to using 'Content here, </p>
            <a href="#." class="btn btn-small"> MORE STORIES</a> </div>
          <div class="clients-about-in"> 
            
            <!--  Tittle -->
            <div class="tittle white animate fadeInUp" data-wow-delay="0.4s">
              <h5>WHAT CLIENT SAY?</h5>
              <p>Our Stories</p>
            </div>
            
            <!--  What People Says -->
            <div class="clients-about-slider animate fadeInUp" data-wow-delay="0.4s"> 
              
              <!--  Slide 1 -->
              <div class="media">
                <div class="media-left"> 
                  <!--  Avatar -->
                  <div class="avatar"> <img class="media-object" src="images/avatar-1.jpg" alt=""> </div>
                </div>
                <!--  Text -->
                <div class="media-body">
                  <p>“Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                    labore et dolore magna aliqua.”</p>
                  <hr>
                  <h6>TYRION LANNISTER</h6>
                  <span>Founder-Ceo. Dell Corp</span> </div>
              </div>
              
              <!--  Slide 2 -->
              <div class="media">
                <div class="media-left"> 
                  <!--  Avatar -->
                  <div class="avatar"> <img class="media-object" src="images/avatar-2.jpg" alt=""> </div>
                </div>
                <!--  Text -->
                <div class="media-body">
                  <p>“Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                    labore et dolore magna aliqua.”</p>
                  <hr>
                  <h6>SANSA STARK</h6>
                  <span>Founder-Ceo. Dell Corp</span> </div>
              </div>
              
              <!--  Slide 3 -->
              <div class="media">
                <div class="media-left"> 
                  <!--  Avatar -->
                  <div class="avatar"> <img class="media-object" src="images/avatar-3.jpg" alt=""> </div>
                </div>
                <!--  Text -->
                <div class="media-body">
                  <p>“Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                    labore et dolore magna aliqua.”</p>
                  <hr>
                  <h6>john now</h6>
                  <span>Founder-Ceo. Dell Corp</span> </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!--======= Popurlar Product =========-->
    <section class="section-p-60px blog">
      <div class="container"> 
        <!--  Tittle -->
        <div class="tittle animate fadeInUp" data-wow-delay="0.4s">
          <h5>THE BLOG</h5>
          <p>Tell your Story</p>
        </div>
        
        <!--  Blog Posts -->
        <div class="blog-posts">
          <ul class="row">
            <!--  Posts 1 -->
            <li class="col-sm-6 animate fadeInLeft" data-wow-delay="0.4s"> 
              <!--  Image --> 
              <img class="img-responsive" src="images/blog-1.jpg" alt=""> <span class="tags">FASHION NEWS</span> <a href="#." class="tittle-post font-playfair">Mighty Healthy 2013 Spring/Summer</a>
              <p>Gumbo beet greens corn soko endive gumbo gourd. Parsley shallot courgette tatsoi pea sprouts fava bean collard greens danadelion.</p>
              <!--  Post Info -->
              <ul class="info">
                <li><i class="fa fa-user"></i> admin</li>
                <li><i class="fa fa-calendar-o"></i> 12 JULY</li>
                <li><i class="fa fa-eye"></i> 325</li>
              </ul>
            </li>
            
            <!--  Posts 2 -->
            <li class="col-sm-6 animate fadeInRight" data-wow-delay="0.4s"> 
              <!--  Image --> 
              <img class="img-responsive" src="images/blog-2.jpg" alt=""> <span class="tags">MOTION GRAPHIC</span> <a href="#." class="tittle-post font-playfair">Peter Mondavi Because Wine’s</a>
              <p>Gumbo beet greens corn soko endive gumbo gourd. Parsley shallot courgette tatsoi pea sprouts fava bean collard greens danadelion.</p>
              <!--  Post Info -->
              <ul class="info">
                <li><i class="fa fa-user"></i> admin</li>
                <li><i class="fa fa-calendar-o"></i> 12 JULY</li>
                <li><i class="fa fa-eye"></i> 325</li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </section>
    
    <!--======= Video Part =========-->
    <section class="video-part animate fadeInUp" data-wow-delay="0.4s" data-stellar-background-ratio="0.7">
      <div class="overlay">
        <h4>Through the Curtains of the Waterfall</h4>
        <a href="#pop-open" class="video-btn popup-vedio"><i class="ion-android-arrow-dropright-circle"></i></a> 
        
        <!--  Video Section --> 
        <a href="#pop-open" class="link popup-vedio video-btn"></a> 
        
        <!--======= POPUP VIDEO START =========-->
        <div id="pop-open" class="zoom-anim-dialog mfp-hide pop-open-style">
          <div class="pop_up">
            <div class="video"> 
              <!--  Video Link -->
              <iframe src="https://player.vimeo.com/video/7449107"></iframe>
            </div>
          </div>
        </div>
        <!--======= POPUP VIDEO END =========--> 
        
      </div>
    </section>
    
    <!--======= Core Feature =========-->
    <section class="section-p-60px core-feature no-padding-b">
      <div class="container"> 
        <!--  Tittle -->
        <div class="tittle animate fadeInUp" data-wow-delay="0.4s">
          <h5>CORE FEATURE</h5>
          <p>Tell your Story</p>
        </div>
      </div>
      
      <!--  Core Container Fluid -->
      <div class="container-fluid animate fadeInUp" data-wow-delay="0.4s">
        <ul class="row">
          <!--  Core Images -->
          <li class="col-md-6 no-padding"> <img class="img-responsive" src="images/core-img.jpg" alt=""> </li>
          
          <!--  Core Text -->
          <li class="col-md-6 no-padding">
            <div class="core-in"> 
              <!--  Feature -->
              <div class="media">
                <div class="media-left"> 
                  <!--  Avatar -->
                  <div class="icon-feature">
                    <div class="media-object"><i class="fa fa-diamond"></i> </div>
                  </div>
                </div>
                <!--  Text -->
                <div class="media-body">
                  <h6>UNIQUE DESIGN</h6>
                  <p>Gumbo beet greens corn soko endive gumbo gourd. Parsley shallot courgette tatsoi pea sprouts fava bean collard greens danadelion.</p>
                </div>
              </div>
              
              <!--  Feature -->
              <div class="media">
                <div class="media-left"> 
                  <!--  Avatar -->
                  <div class="icon-feature">
                    <div class="media-object"><i class="fa fa-mobile"></i> </div>
                  </div>
                </div>
                <!--  Text -->
                <div class="media-body">
                  <h6>FULLY RESPONSIVE</h6>
                  <p>It is a long established fact that a reader will be distracted by the readable content of a page</p>
                </div>
              </div>
              
              <!--  Feature -->
              <div class="media">
                <div class="media-left"> 
                  <!--  Avatar -->
                  <div class="icon-feature">
                    <div class="media-object"><i class="fa fa-whatsapp"></i> </div>
                  </div>
                </div>
                <!--  Text -->
                <div class="media-body">
                  <h6>SUPPORT 24/7</h6>
                  <p>There are many variations of passages of Lorem Ipsum available, but the majority </p>
                </div>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </section>
    
    <!--======= Core Feature =========-->
    <section class="section-p-60px our-clients">
      <div class="container"> 
        <!--  Tittle -->
        <div class="tittle animate fadeInUp" data-wow-delay="0.4s">
          <h5>OUR CLIENTS</h5>
          <p>Contact us if you have any question.</p>
        </div>
        
        <!--  Text Intro -->
        <p class="font-montserrat intro text-center animate fadeInUp" data-wow-delay="0.4s">Gumbo beet greens corn soko endive gumbo gourd. Parsley shallot courgette tatsoi pea sprouts fava bean collard greens danadelion.</p>
        <!--  Client Logo Slider -->
        <div class="client-slide animate fadeInUp" data-wow-delay="0.4s">
          <div class="slide"><a href="#."><img class="img-responsive" src="images/client-logo-1.png" alt=""></a></div>
          <div class="slide"><a href="#."><img class="img-responsive" src="images/client-logo-2.png" alt=""></a></div>
          <div class="slide"><a href="#."><img class="img-responsive" src="images/client-logo-3.png" alt=""></a></div>
          <div class="slide"><a href="#."><img class="img-responsive" src="images/client-logo-4.png" alt=""></a></div>
          <div class="slide"><a href="#."><img class="img-responsive" src="images/client-logo-2.png" alt=""></a></div>
          <div class="slide"><a href="#."><img class="img-responsive" src="images/client-logo-4.png" alt=""></a></div>
        </div>
      </div>
    </section>
    
    <!--======= Subcribe =========-->
    <section class="subcribe animate fadeInUp" data-wow-delay="0.4s" data-stellar-background-ratio="0.8">
      <div class="overlay">
        <div class="container">
          <h4>subcribe</h4>
          <!--  Subsribe Form -->
          <div class="col-md-7 no-padding pull-right">
            <div class="sub-mail">
              <form>
                <input type="search" placeholder="YOUR EMAIL ADDRESS..">
                <!--  Button -->
                <button type="submit">SUBSCRIBLE</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  
  <!--======= Footer =========-->
    <?php

    include 'footer/footer.php';
    ?>
    <!-- GO TO TOP -->
  <a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a> 
  <!-- GO TO TOP End --> 
</div>
<!-- Wrap End --> 
<script src="js/jquery-1.11.3.js"></script> 
<script src="js/wow.min.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/own-menu.js"></script> 
<script src="js/owl.carousel.min.js"></script> 
<script src="js/jquery.magnific-popup.min.js"></script> 
<script src="js/jquery.flexslider-min.js"></script> 
<script src="js/jquery.isotope.min.js"></script> 

<!-- SLIDER REVOLUTION 4.x SCRIPTS  --> 
<script type="text/javascript" src="rs-plugin/js/jquery.themepunch.tools.min.js"></script> 
<script type="text/javascript" src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script> 
<script src="js/main.js"></script>
<script>
    $(document).ready(function(){
        setTimeout( function(){
            set_featured_product_box_height();
        },1000 );
    });

    function set_featured_product_box_height(){
        var max_title=0;
        $('.featured-products .caption-title').each(function(){
            var current_height= parseInt($(this).css('height'));
            if(current_height >= max_title){
                max_title = current_height;
            }
        });
        $('.featured-products .caption-title').css('height',max_title);
    }
</script>
</body>
</html>