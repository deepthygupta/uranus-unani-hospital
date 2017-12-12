<div class="panel-body" id="demo_s">
    <table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true" data-ignorecol="0,6" data-show-toggle="true" data-show-columns="false" data-search="true" >
        <thead>
            <tr>
                <th><?php echo translate('title'); ?></th>
                <th><?php echo translate('event_details'); ?></th>
                <th><?php echo translate('image'); ?></th>
                <th><?php echo translate('date'); ?></th>
                <th class="text-right"><?php echo translate('options'); ?></th>
            </tr>
        </thead>

        <tbody >
            <?php
            $i = 0;
            foreach ($all_event as $row) {
                $i++;
                ?>
                <tr>
                    <td style="word-wrap: break-word;width: 100px;"><?php echo $row['title']; ?></td>			
                    <td style="word-wrap: break-word;width: 500px;"><?php echo $row['body']; ?></td>			
                    <td> <img class="img-responsive" width="100" src="<?php echo $this->crud_model->file_view('event',$row['event_id'],'','','thumb','src','',''); ?>" alt="User_Image" ></td>			
                    <td><?php echo $row['event_date']; ?></td>
                    <td class="text-right">
                        <a class="btn btn-success btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip" 
                           onclick="ajax_set_full('edit', '<?php echo translate('edit_event'); ?>', '<?php echo translate('successfully_edited!'); ?>', 'event_edit', '<?php echo $row['event_id']; ?>');
                                proceed('to_list');" data-original-title="Edit" data-container="body">
                               <?php echo translate('edit'); ?>
                        </a>
                        <a onclick="delete_confirm('<?php echo $row['event_id']; ?>', '<?php echo translate('really_want_to_delete_this?'); ?>')" 
                           class="btn btn-danger btn-xs btn-labeled fa fa-trash" data-toggle="tooltip" data-original-title="Delete" data-container="body">
                            <?php echo translate('delete'); ?>
                        </a>
                    </td>
                </tr>
                <?php
            }
            ?>
        </tbody>
    </table>
</div>


