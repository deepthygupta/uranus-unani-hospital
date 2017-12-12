<div class="panel-body" id="demo_s">
    <table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true" data-ignorecol="0,6" data-show-toggle="true" data-show-columns="false" data-search="true" >
        <thead>
            <tr>
                <th><?php echo translate('testimonial_id');?></th>
                <th><?php echo translate('image');?></th>
                <th><?php echo translate('author');?></th>
				<th><?php echo translate('description');?></th>
                <th><?php echo translate('des_and_compnay');?></th>
                <th class="text-right"><?php echo translate('options');?></th>
            </tr>
        </thead>

        <tbody >
        <?php
            $i=0;
            foreach($all_testimonials as $row){
                $i++;
        ?>
        <tr>
            <td><?php echo $row['testimonial_id']; ?></td>
            <td>

                    <img class="img-md" src="../../../uploads/testimonial_image/testimonial_<?php echo $row['testimonial_id']; ?>.jpg" height="100px" />

            </td>
            <td><?php echo $row['author']; ?></td>

            <td><?php echo $row['description']; ?></td>

            <td><?php echo $row['des_and_company']; ?></td>
            <td class="text-right">
<!--                <a class="btn btn-success btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip"  href="--><?php //echo base_url(); ?><!--index.php/admin/testimonial_edit/--><?php //echo $row['testimonial_id']; ?><!--">-->
<!---->
<!---->
<!--                --><?php //echo translate('edit');?>
<!--                </a>-->
                <a onclick="delete_confirm('<?php echo $row['testimonial_id']; ?>','<?php echo translate('really_want_to_delete_this?'); ?>')" 
                    class="btn btn-danger btn-xs btn-labeled fa fa-trash" data-toggle="tooltip" data-original-title="Delete" data-container="body">
                        <?php echo translate('delete');?>
                </a>
            </td>
        </tr>
        <?php
            }
        ?>
        </tbody>
    </table>
</div>


