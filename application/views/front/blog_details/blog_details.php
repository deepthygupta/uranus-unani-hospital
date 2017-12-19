<section class="sub-banner">
    <div class="container">
        <h4>BLOG</h4>
        <ol class="breadcrumb">
            <li><a href="<?php echo base_url(); ?>index.php">Home</a></li>
            <li class="active">BLOG</li>
        </ol>
    </div>
</section>

<section class="section-p-30px blog-page">
    <div class="container">
        <div class="row"> 

            <div class="col-sm-9 animate fadeInRight" data-wow-delay="0.4s"> 
                <?php
                $edit_data = $this->db->get_where('blog', array('blog_id' => $blog_id))->result_array();
                foreach ($edit_data as $row):
                    ?>
                    <div class="blog-posts">
                        <ul>
                            <li class="animate fadeInUp" data-wow-delay="0.4s"> 
                                <img class="img-responsive" src="<?php echo $this->crud_model->file_view('blog', $row['blog_id'], '', '', 'thumb', 'src', '', ''); ?>" alt=""/>
                                <span class="tags"><?php echo $this->db->get_where('blog_category', array('blog_category_id' => $row['blog_category']))->row()->name; ?></span> <a href="#." class="tittle-post"><?php echo $row['title']; ?></a>
                                <p> <?php echo $row['description']; ?> </p>
                                <ul class="info">
                                    <li><i class="fa fa-user"></i> <?php echo $row['author'] ?></li>
                                    <li><i class="fa fa-calendar-o"></i><li> <?php echo $row['date']; ?></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                <?php endforeach ?>
            </div>
        </div>
    </div>
</section>