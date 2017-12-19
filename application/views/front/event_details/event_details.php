<section class="sub-banner">
    <div class="container">
        <h4>Events</h4>
        <ol class="breadcrumb">
            <li><a href="<?php echo base_url(); ?>index.php">Home</a></li>
            <li class="active">Events</li>
        </ol>
    </div>
</section>

<section class="section-p-30px blog-page">
    <div class="container">
        <div class="row"> 
            <div class="col-sm-9 animate fadeInRight" data-wow-delay="0.4s"> 
                <?php
                $data = $this->db->get_where('event', array('event_id' => $event_id))->result_array();
                foreach ($data as $row):
                    ?>
                    <div class="blog-posts">
                        <ul>
                            <li class="animate fadeInUp" data-wow-delay="0.4s"> 
                                <img class="img-responsive" src="<?php echo $this->crud_model->file_view('event', $row['event_id'], '', '', 'thumb', 'src', '', ''); ?>" alt=""/>
                                <a href="#." class="tittle-post"><?php echo $row['title']; ?></a>
                                <p> <?php echo $row['body']; ?> </p>
                                <ul class="info">
                                    <li><i class="fa fa-calendar-o"></i><li> <?php echo $row['event_date']; ?></li>
                                </ul>
                            </li>     
                        </ul>
                    </div>
                <?php endforeach ?>                               
            </div>
        </div>
    </div>
</section>