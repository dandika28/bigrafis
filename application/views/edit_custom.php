<link rel="stylesheet" href="http://localhost/bigrafis/assets/grocery_crud/css/jquery_plugins/chosen/chosen.css" />
<link rel="stylesheet" href="http://localhost/bigrafis/assets/grocery_crud/css/ui/simple/jquery-ui-1.10.1.custom.min.css" />


<div class="row">
	<div class="col-lg-12">
		<script type="text/javascript">
			var ajax_relation_url = 'http://localhost/bigrafis/Purchase/purchase_order/ajax_relation';
		</script>
		<script type="text/javascript">
			var ajax_relation_url = 'http://localhost/bigrafis/Purchase/purchase_order/ajax_relation';
		</script>
		<div class="flexigrid crud-form box" data-unique-hash="557498587ea6b8410b019e39815af033">
			<div class="box-header with-border">
				<h3 class="box-title"><i class="fa fa-plus-circle fa-fw"></i> Edit PurchaseOrder </h3>
			</div>

			<div id='main-table-box' class="box-body">
				<form action="<?php echo site_url($url) ?>" method="post" class="form-horizontal" autocomplete="off" enctype="multipart/form-data" accept-charset="utf-8">

					<div class="row" id="no_po_field_box">
						<div class="form-display-as-box col-lg-2 control-label" id="no_po_display_as_box">
							<label>
								Nomer Purchase Order<span class="required">*</span></label>
						</div>
						<div class="col-lg-10" id="no_po_input_box">
							<input id="field-no_po" class="form-control" name="no_po" type="text" value="<?php echo $value->no_po; ?>" maxlength="50">				
						</div>
					</div>
					<br>
					<div class="row" id="customer_id_field_box">
						<div class="form-display-as-box col-lg-2 control-label" id="customer_id_display_as_box">
							<label>Customer</label>
						</div>
						<div class="col-lg-10" id="customer_id_input_box">
							<select id="field-customer_id" name="customer_id" class="chosen-select" data-placeholder="Select Customer" style="width: 300px; "><option value="<?php echo $value->customer_id; ?>"><?php echo $value->customer_name;?></option>
							<?php foreach ($customer as $key => $valuecustomer) {?>
								<option value="<?php echo $valuecustomer->id; ?>"><?php echo $valuecustomer->customer_name;?></option>
							<?php } ?>
							</select>
						</div>
					</div>
					<br>
					<div class="row" id="tanggal_po_field_box">
						<div class="form-display-as-box col-lg-2 control-label" id="tanggal_po_display_as_box">
							<label>Tanggal Purchase Order<span class="required">*</span></label>
						</div>
						<div class="col-lg-10" id="tanggal_po_input_box">
							<input id="field-tanggal_po" name="tanggal_po" type="text" value="<?php echo $value->tanggal_po;?>" maxlength="10" class="datepicker-input form-control">
							<a class="datepicker-input-clear" tabindex="-1">Clear</a> (dd/mm/yyyy)				
						</div>
					</div>
					<br>
					<div class="row" id="mata_uang_field_box">
						<div class="form-display-as-box col-lg-2 control-label" id="mata_uang_display_as_box">
							<label>Mata uang</label>
						</div>
						<div class="col-lg-10" id="mata_uang_input_box">
							<input id="field-mata_uang" class="form-control" name="mata_uang" type="text" value="<?php echo $value->mata_uang;?>" maxlength="50">				
						</div>
					</div>
					<br>
					<div class="row" id="tanggal_kirim_field_box">
						<div class="form-display-as-box col-lg-2 control-label" id="tanggal_kirim_display_as_box">
							<label>Tanggal kirim<span class="required">*</span></label>
						</div>
						<div class="col-lg-10" id="tanggal_kirim_input_box">
							<input id="field-tanggal_kirim" name="tanggal_kirim" type="text" value="<?php echo $value->tanggal_kirim;?>" maxlength="10" class="datepicker-input form-control">
							<a class="datepicker-input-clear" tabindex="-1">Clear</a> (dd/mm/yyyy)				
						</div>
					</div>
					<br>
					<div class="row" id="gudang_id_field_box">
						<div class="form-display-as-box col-lg-2 control-label" id="gudang_id_display_as_box">
							<label>Gudang</label>
						</div>
						<div class="col-lg-10" id="gudang_id_input_box">
							<select id="field-gudang_id" name="gudang_id" class="chosen-select" data-placeholder="Select Gudang" style="width: 300px;"><option value="<?php echo $value->gudang_id;?>"><?php echo $value->gudang_name;?></option>
							<?php foreach ($gudang as $key => $gudangvalue) {?>
								<option value="<?php echo $gudangvalue->gudang_id;?>"><?php echo $gudangvalue->gudang_name;?></option>
							<?php } ?>
							</select>
						</div>
					</div>
					<br>
					<div class="row" id="harga_total_field_box">
						<div class="form-display-as-box col-lg-2 control-label" id="harga_total_display_as_box">
							<label>Harga total</label>
						</div>
						<div class="col-lg-10" id="harga_total_input_box">
							<input id="field-harga_total" class="form-control" name="harga_total" type="text" value="<?php echo $value->harga_total; ?>" maxlength="20">				
						</div>
					</div>
					<br>
					<div class="row" id="discount_field_box">
						<div class="form-display-as-box col-lg-2 control-label" id="discount_display_as_box">
							<label>Discount</label>
						</div>
						<div class="col-lg-10" id="discount_input_box">
							<input id="field-discount" class="form-control" name="discount" type="text" value="<?php echo $value->discount;?>" maxlength="5">
						</div>
					</div>
					<br>
					<div class="row" id="pajak_field_box">
						<div class="form-display-as-box col-lg-2 control-label" id="pajak_display_as_box">
							<label>Pajak</label>
						</div>
						<div class="col-lg-1" id="pajak_input_box">
							<input id="field-pajak" class="form-control" name="pajak" type="text" value="<?php echo $value->pajak;?>" maxlength="2">				
						</div>
						<div class="form-display-as-box col-lg-1" style="padding-top: 7px; margin-bottom: 0; text-align: left;">
							<label>%</label>
						</div>
					</div>
					<br>
					<div class="row" id="biaya_delivery_field_box">
						<div class="form-display-as-box col-lg-2 control-label" id="biaya_delivery_display_as_box">
							<label>Biaya delivery</label>
						</div>
						<div class="col-lg-10" id="biaya_delivery_input_box">
							<input id="field-biaya_delivery" class="form-control" name="biaya_delivery" type="text" value="<?php echo $value->biaya_delivery;?>" maxlength="10">
						</div>
					</div>
					<br>
					<div class="row" id="po_status_field_box">
						<div class="form-display-as-box col-lg-2 control-label" id="po_status_display_as_box">
							<label>Po status</label>
						</div>
						<div class="col-lg-10" id="po_status_input_box">
							<select id="field-po_status" name="po_status" class="chosen-select" data-placeholder="Select Po status"><option value="<?php echo $value->po_status;?>"><?php echo $value->po_status;?></option>
							<?php foreach ($po_status as $key => $value) {?>
								<option value="<?php echo $value;?>"><?php echo $value;?></option>
							<?php } ?>
							</select>	
						</div>
					</div>
					<br>
					<div class="row" id="product_field_box">
						<div class="col-lg-12" id="product_input_box">
							<div class="set-form">
								<table id="myTable" class="table table-bordered">
									<tr>
										<th>Product</th>
										<th>Jumlah Unit</th>
									</tr>
									<?php foreach ($product_history as $key => $variable) {?>
									<tr>
										<td class="col-lg-5">
											<select id="field-product" name="product[]" data-placeholder="Select Product" style="width: 100%; font-size: 14px; height: 34px; padding: 6px 12px; line-height: 1.42857143;">
												<option value="<?php echo $variable->product_id; ?>"><?php echo $variable->product_name;?></option>
												<?php foreach ($product as $key => $value) {
													if($value->product_id!=$variable->product_id){
													?>													
												<option value="<?php echo $value->product_id;?>"><?php echo $value->product_name;?></option>
												<?php }} ?>
											</select>
											<input type="" name="po_product_id[]" value="<?php echo $variable->po_product_id;?>" style="display: none;">
										</td>
										<td class="col-lg-5">
											<input id="field-jumlah_unit" class="form-control" name="jumlah_unit[]" type="text" value="<?php echo $variable->jumlah_unit;?>" maxlength="10">
										</td>
									</tr>
									<?php } ?>
								</table>
								<div class="set-formn text-center">
									<div class="col-lg-6">
										<button type="button" id="more_fields" onclick="add_fields();" class="btn btn-info">Add More</button>
									</div>
									<div class="col-lg-6">
										<button type="button" id="more_fields" onclick="delete_fields();" class="btn btn-info">Delete</button> 
									</div>
								</div>
							</div>
						</div>
					</div>
					<br>

					<!-- Start of hidden inputs -->
					<input id="field-created_by" type="hidden" name="created_by" value="1" />		<!-- End of hidden inputs -->
					<div id="report-error" class="report-div error alert alert-danger" role="alert"></div>
					<div id="report-success" class="report-div success alert alert-success"></div>


					<button type="submit" class="btn btn-primary">Update</button>

					<!--button type="button" id="save-and-go-back-button" class="btn btn-info">Save and go back to list</button-->
					<button type="button" id="cancel-button" class="btn btn-default">Cancel</button>
					<span class="small-loading" id="FormLoading"><img src="http://localhost/bigrafis/assets/svg/loading-spin-primary.svg" alt="loading..."> Loading, saving data...</span>
				</form>	
			</div>
		</div>
		<script>
			//var validation_url = 'http://localhost/bigrafis/Purchase/purchase_order/insert_validation';
			var list_url = 'http://localhost/bigrafis/Purchase/purchase_order';
			var focus = 'no_po';
			var message_alert_add_form = "The data you had insert may not be saved.\nAre you sure you want to go back to list?";
			var message_insert_error = "An error has occurred on insert.";
			var js_date_format = 'dd/mm/yy';
			var default_javascript_path = 'http://localhost/bigrafis/assets/grocery_crud/js';
			var default_css_path = 'http://localhost/bigrafis/assets/grocery_crud/css';
			var default_texteditor_path = 'http://localhost/bigrafis/assets/grocery_crud/texteditor';
			var default_theme_path = 'http://localhost/bigrafis/assets/grocery_crud/themes';
			var base_url = 'http://localhost/bigrafis/';

			function add_fields() {
				document.getElementById("myTable").insertRow(-1).innerHTML = '<tr><td><select id="field-product" name="product[]" data-placeholder="Select Product" style="width: 100%; font-size: 14px; height: 34px; padding: 6px 12px; line-height: 1.42857143;"><option value="">Pilih Produk</option><?php foreach ($product as $key => $value) {?><option value="<?php echo $value->product_id;?>"><?php echo $value->product_name;?></option><?php } ?></select></td><td><input id="field-jumlah_unit" class="form-control" name="jumlah_unit[]" type="text" value="" maxlength="10"></td></tr>';
			}

			function delete_fields() {
				var table = document.getElementById("myTable");
				var rowCount = table.rows.length;
				if(rowCount>2){
					table.deleteRow(rowCount -1);
				}
			}

			$('#more_fields').click(function(){
				$('')
			});
		</script>
	</div>
</div>

