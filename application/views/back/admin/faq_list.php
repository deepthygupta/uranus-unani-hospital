<div class="panel-body" id="demo_s">
    <table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true" data-ignorecol="0,6" data-show-toggle="true" data-show-columns="false" data-search="true" >
        <thead>
            <tr>
                <th><?php echo translate('question'); ?></th>
                <th><?php echo translate('answer'); ?></th>
                <th><?php echo translate('added_date'); ?></th>
                <th class="text-right"><?php echo translate('options'); ?></th>
            </tr>
        </thead>

        <tbody >
            <?php
            foreach ($all_faq as $row) {               
                ?>
                <tr>
                    <td><?php echo $row['question']; ?></td>			
                    <td style="word-wrap: break-word; width: 500px;"><?php echo $row['answer']; ?></td>			
                    <td><?php echo $row['added_date']; ?></td>	
                    <td class="text-right">
                        <a class="btn btn-success btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip" 
                           onclick="ajax_set_full('edit', '<?php echo translate('edit_faq'); ?>', '<?php echo translate('successfully_edited!'); ?>', 'faq_edit', '<?php echo $row['id']; ?>'); proceed('to_list');" data-original-title="Edit" data-container="body"> <?php echo translate('edit'); ?>  </a>
                        
                        <a onclick="delete_confirm('<?php echo $row['id']; ?>', '<?php echo translate('really_want_to_delete_this?'); ?>')" 
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


