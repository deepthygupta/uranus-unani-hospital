<div class="panel-body" id="demo_s">
    <table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true"  data-show-toggle="true" data-show-columns="true" data-search="true" >

        <thead>
        <tr>
            <th style="width:4ex"><?php echo translate('ID');?></th>
            <th><?php echo translate('sale_code');?></th>

            <th><?php echo translate('buyer');?></th>
            <th><?php echo translate('date');?></th>
            <th><?php echo translate('delivery');?></th>
            <th><?php echo translate('delivery_note');?></th>
            <th><?php echo translate('total');?></th>
            <th><?php echo translate('order_status');?></th>
            <th><?php echo translate('delivery_status');?></th>
            <th><?php echo translate('payment_status');?></th>
            <th class="text-right"><?php echo translate('options');?></th>
        </tr>
        </thead>

        <tbody>
        <?php
        $i = 0;
        foreach($all_sales as $row){
            $i++;
            ?>
            <tr class="<?php if($row['viewed'] !== 'ok'){ echo 'pending'; } ?>" >
                <td><?php echo $i; ?></td>
                <td>#<?php echo $row['sale_code']; ?></td>
                <?php
                $sale = $this->db->get_where('sale', array('sale_code' =>$row['sale_code']))->row();
                $shipping_address= json_decode($sale->shipping_address, true);

                $name=$shipping_address['firstname'].' '.$shipping_address['lastname'];
                ?>
                <td><?php echo $name; ?></td>

                <!-- <td><?php echo $row['shipping_address']; ?></td>-->


                <td><?php echo date('d-m-Y',$row['sale_datetime']); ?></td>
                <td><?php echo $row['delivery_date']; ?></td>
                <td><?php echo $row['delivery_note']; ?></td>
                <td class="pull-right"><?php echo currency('','def').$this->cart->format_number($row['grand_total']); ?></td>

                <td>
                    <?php

                    $order_status = json_decode($row['order_status'],true);
                    foreach ($order_status as $dev) {
                        ?>

                        <div class="label label-<?php if($dev['status'] == 'accepted'){ ?>purple<?php } else { ?>danger<?php } ?>">
                            <?php
                            if(isset($dev['vendor'])){
                                echo $this->crud_model->get_type_name_by_id('vendor', $dev['vendor'], 'display_name').' ('.translate('vendor').') : '.$dev['status'];
                            } else if(isset($dev['admin'])) {
                                echo translate('admin').' : '.$dev['status'];
                            }
                            ?>
                        </div>
                        <br>
                        <?php
                    }
                    ?>
                </td>

                <td>
                    <?php
                    $this->benchmark->mark_time();
                    $delivery_status = json_decode($row['delivery_status'],true);
                    foreach ($delivery_status as $dev) {
                        ?>

                        <div class="label label-<?php if($dev['status'] == 'delivered'){ ?>purple<?php } else { ?>danger<?php } ?>">
                            <?php
                            if(isset($dev['vendor'])){
                                echo $this->crud_model->get_type_name_by_id('vendor', $dev['vendor'], 'display_name').' ('.translate('vendor').') : '.$dev['status'];
                            } else if(isset($dev['admin'])) {
                                echo translate('admin').' : '.$dev['status'];
                            }
                            ?>
                        </div>
                        <br>
                        <?php
                    }
                    ?>
                </td>
                <td>

                    <?php
                    $payment_status = json_decode($row['payment_status'],true);
                    foreach ($payment_status as $dev) {
                        ?>

                        <div class="label label-<?php if($dev['status'] == 'paid'){ ?>purple<?php } else { ?>danger<?php } ?>">
                            <?php
                            if(isset($dev['vendor'])){
                                echo $this->crud_model->get_type_name_by_id('vendor', $dev['vendor'], 'display_name').' ('.translate('vendor').') : '.$dev['status'];
                            } else if(isset($dev['admin'])) {
                                echo translate('admin').' : '.$dev['status'];
                            }
                            ?>
                        </div>
                        <br>
                        <?php
                    }
                    ?>
                </td>
                <td class="text-right">

                    <a class="btn btn-info btn-xs btn-labeled fa fa-file-text" data-toggle="tooltip"
                       onclick="ajax_set_full('view','<?php echo translate('title'); ?>','<?php echo translate('successfully_edited!'); ?>','sales_view','<?php echo $row['sale_id']; ?>')"
                       data-original-title="Edit" data-container="body"><?php echo translate('full_invoice'); ?>
                    </a>

                    <a class="btn btn-success btn-xs btn-labeled fa fa-usd" data-toggle="tooltip"
                       onclick="ajax_modal('delivery_payment','<?php echo translate('delivery_payment'); ?>','<?php echo translate('successfully_edited!'); ?>','delivery_payment','<?php echo $row['sale_id']; ?>')"
                       data-original-title="Edit" data-container="body">
                        <?php echo translate('delivery_status'); ?>
                    </a>

                    <a onclick="delete_confirm('<?php echo $row['sale_id']; ?>','<?php echo translate('really_want_to_delete_this?'); ?>')"
                       class="btn btn-danger btn-xs btn-labeled fa fa-trash" data-toggle="tooltip"
                       data-original-title="Delete" data-container="body"><?php echo translate('delete'); ?>
                    </a>
                </td>
            </tr>
            <?php
        }
        ?>
        </tbody>
    </table>
</div>
<div id='export-div' style="padding:40px;">
    <h1 id ='export-title' style="display:none;"><?php echo translate('sales'); ?></h1>
    <table id="export-table" class="table" data-name='sales' data-orientation='l' data-width='2000' style="display:none;">
        <colgroup>
            <col width="50">
            <col width="200">
            <col width="150">
            <col width="400">
            <col width="300">
            <col width="300">
            <col width="150">
            <col width="150">
        </colgroup>
        <thead>
        <tr>
            <th>#</th>
            <th>Sale Code</th>
            <th>Buyer</th>
            <th>Address</th>
            <th>Product</th>
            <th>Date</th>
            <th>Total</th>
        </tr>
        </thead>

        <tbody >
        <?php
        $i = 0;
        foreach($all_sales as $row){
            $i++;
            ?>
            <tr>
                <td><?php echo $i; ?></td>
                <td>#<?php echo $row['sale_code']; ?></td>
                <?php
                $sale = $this->db->get_where('sale', array('sale_code' =>$row['sale_code']))->row();
                $shipping_address= json_decode($sale->shipping_address, true);

                $name=$shipping_address['firstname'].' '.$shipping_address['lastname'];
                $address=$shipping_address['address1'].','. $shipping_address['city'];
                $email=$shipping_address['email'];
                $phone=$shipping_address['phone'];



                ?>
                <td><?php echo $name; ?></td>
                <td><?php echo $address; ?></td>
                <?php
                $product = json_decode($sale->product_details, true);
                //                print_r($product);
                foreach ($product as $rows) {
                    $data .=  $rows['name'].'-'.$rows['qty']." ,\n";

                }
                ?>
                <td><?php echo $data;  $data='';?></td>

                <td><?php echo date('d-m-Y',$row['sale_datetime']); ?></td>
                <td><?php echo currency('','def').$this->cart->format_number($row['grand_total']); ?></td>
            </tr>
            <?php
        }
        ?>
        </tbody>
    </table>
</div>

<style type="text/css">
    .pending{
        background: #D2F3FF  !important;
    }
    .pending:hover{
        background: #9BD8F7 !important;
    }
</style>



           