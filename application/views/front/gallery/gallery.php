<section class="sub-banner animate fadeInUp" data-wow-delay="0.4s">
    <div class="container">
        <h4>GALLERY</h4>                        
        <ol class="breadcrumb">
            <li><a href="<?php echo base_url(); ?>index.php">Home</a></li>
            <li class="active">GALLERY</li>
        </ol>
    </div>
</section>
<section class="section-p-30px pages-in">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 animate fadeInUp" data-wow-delay="0.2s">
                <div id="clean">
                    <div class="popurlar_product our-gallery">                                    
                        <ul class="row">
                            <?php
                            $this->db->order_by("id", "desc");
                            $images = $this->db->get('gallery')->result_array();
                            foreach ($images as $row) {
                                ?>
                                <li class="col-sm-4 animate fadeIn" data-wow-delay="0.4s">
                                    <div class="items-in">
                                        <a href="">
                                            <img  src="<?php echo $this->crud_model->file_view('gallery', $row['id'], '', '', 'thumb', 'src', '', ''); ?>" alt=""/>
                                        </a>    
                                    </div>
                                </li>
                            <?php }
                            ?>  
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
