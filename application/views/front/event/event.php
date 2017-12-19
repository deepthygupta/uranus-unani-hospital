<section class="sub-banner">
    <div class="container">
        <h4>EVENTS</h4>
        <ol class="breadcrumb">
            <li><a href="<?php echo base_url(); ?>index.php">Home</a></li>
            <li class="active">EVENTS</li>
        </ol>
    </div>
</section>    

<section class="section-p-30px events-page">
    <div class="container">
        <div class="row">     
            <div class="col-sm-12 animate fadeInRight" data-wow-delay="0.4s"> 
                <?php
                $this->db->order_by("event_id", "desc");
                $events = $this->db->get('event')->result_array();
                foreach ($events as $row) {
                    ?>
                    <div class="blog-posts medium-images">
                        <ul>                                            
                            <li class="animate fadeInUp" data-wow-delay="0.4s">
                                <div class="row">
                                    <!--  Image -->
                                    <div class="col-sm-5"> <img class="img-responsive" src="<?php echo $this->crud_model->file_view('event', $row['event_id'], '', '', 'thumb', 'src', '', ''); ?>" alt=""/>
                                    </div>
                                    <div class="col-sm-7">  
                                        <a href="#." class="tittle-post"><?php echo $row['title'] ?>   </a>
                                        <p><?php echo substr($row['body'], 0, 500); ?></p>
                                        <ul class="info">
                                            <li><i class="fa fa-calendar-o"></i><?php echo $row['event_date']; ?></li>
                                        </ul>
                                        <a class="btn btn-small btn-dark" href="<?php echo base_url(); ?>index.php/home/event_details/<?php echo $row['event_id']; ?>">READ MORE</a>
                                    </div>
                                </div>
                            </li>       
                        </ul>
                    </div>
                <?php } ?>           
            </div>
        </div>
    </div>
</section>