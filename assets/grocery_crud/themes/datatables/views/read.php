<?php
	//$this->set_css($this->default_theme_path.'/flexigrid/css/flexigrid.css');
	$this->set_js_lib($this->default_theme_path.'/flexigrid/js/jquery.form.js');
	$this->set_js_config($this->default_theme_path.'/flexigrid/js/flexigrid-edit.js');

	//$this->set_js_lib($this->default_javascript_path.'/jquery_plugins/jquery.noty.js');
	$this->set_js_lib($this->default_javascript_path.'/jquery_plugins/config/jquery.noty.config.js');
	$qty_finish=0;
	$qty_order=0;
	
?>
<div class="flexigrid crud-form box" style='width: 100%;' data-unique-hash="<?php echo $unique_hash; ?>">
	<div class="box-header with-border">
		<h3 class="box-title"><i class="fa fa-list fa-fw"></i> <?php echo $this->l('list_record'); ?> <?php echo $subject?></h3>
	</div>
	<div id='main-table-box' class="box-body">
	<?php echo form_open( $read_url, 'method="post" class="form-horizontal" id="crudForm" autocomplete="off" enctype="multipart/form-data"'); ?>
	<?php if($subject != 'Proses Produksi'){?>
		<?php foreach($fields as $field) { ?>
		<div class='row' id="<?php echo $field->field_name; ?>_field_box">
			<div class='form-display-as-box col-lg-3' id="<?php echo $field->field_name; ?>_display_as_box">
				<label style="width:90%">
				<?php echo $input_fields[$field->field_name]->display_as?><?php echo ($input_fields[$field->field_name]->required)? "<span class='required'>*</span> " : ""?>
				</label>
				<strong>:</strong>
			</div>
			<div class='form-input-box col-lg-9' id="<?php echo $field->field_name; ?>_input_box">
				<?php echo $input_fields[$field->field_name]->input?>
			</div>
		</div>
		<br>
		<?php }?>

		<?php if(!empty($hidden_fields)){?>
		<!-- Start of hidden inputs -->
			<?php
				foreach($hidden_fields as $hidden_field){
					echo $hidden_field->input;
				}
			?>
		<!-- End of hidden inputs -->
		<?php }?>
	<?php }else{ ?>
		<div class='row' id="progress_field_box">
			<div class='form-display-as-box col-lg-3' id="progress_display_as_box">
				<label style="width:90%">
					Progress
				</label>
				<strong>:</strong>
			</div>
			<div class='form-input-box col-lg-9' id="progress_input_box">
				<div class="progress">
					<div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
				</div>
			</div>
		</div>
		<?php foreach($fields as $field) {?>
		<div class='row' id="<?php echo $field->field_name; ?>_field_box">
			<div class='form-display-as-box col-lg-3' id="<?php echo $field->field_name; ?>_display_as_box">
				<label style="width:90%">
				<?php echo $input_fields[$field->field_name]->display_as?><?php echo ($input_fields[$field->field_name]->required)? "<span class='required'>*</span> " : ""?>
				</label>
				<strong>:</strong>
			</div>
			<div class='form-input-box col-lg-9' id="<?php echo $field->field_name; ?>_input_box">
				<?php echo $input_fields[$field->field_name]->input?>
			</div>
		</div>
		<br>
		<?php }?>

		<?php if(!empty($hidden_fields)){?>
		<!-- Start of hidden inputs -->
			<?php
				foreach($hidden_fields as $hidden_field){
					echo $hidden_field->input;
				}
			?>
		<!-- End of hidden inputs -->
		<?php }?>
	<?php } ?> 
		<?php if ($is_ajax) { ?><input type="hidden" name="is_ajax" value="true" /><?php }?>
		<div id='report-error' class='report-div error alert alert-danger' role="alert"></div>
		<div id='report-success' class='report-div success alert alert-success'></div>
	     
		<button type="button" id="cancel-button" class="btn btn-default back-to-list"><?php echo $this->l('form_back_to_list'); ?></button>

		<span class='small-loading' id='FormLoading'><?php echo $this->l('form_update_loading'); ?></span>
	<?php echo form_close(); ?>
	</div>
</div>
<script>
	var validation_url = '<?php echo $validation_url?>';
	var list_url = '<?php echo $list_url?>';

	var message_alert_edit_form = "<?php echo $this->l('alert_edit_form')?>";
	var message_update_error = "<?php echo $this->l('update_error')?>";
</script>