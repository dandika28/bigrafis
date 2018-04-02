<div class="row">
	<div class="col-lg-12">
		<div><div class="flexigrid crud-form box" style="width: 100%;" data-unique-hash="482b7d9e7db86f908bf2e632474044cd">
			<div class="box-header with-border">
				<h3 class="box-title"><i class="fa fa-list fa-fw"></i> Record PurchaseOrder</h3>
			</div>
			<div id="main-table-box" class="box-body">
				<form action="" method="post" class="form-horizontal" id="crudForm" autocomplete="off" enctype="multipart/form-data" accept-charset="utf-8">
					<div class="row" id="no_po_field_box">
						<div class="form-display-as-box col-lg-3" id="no_po_display_as_box">
							<label style="width:90%">Nomer Purchase Order</label>
							<strong>:</strong>
						</div>
						<div class="form-input-box col-lg-9" id="no_po_input_box">
							<div id="field-no_po" class="readonly_label"><?php echo $value->no_po;?></div>			
						</div>
					</div>
					<br>
					<div class="row" id="customer_id_field_box">
						<div class="form-display-as-box col-lg-3" id="customer_id_display_as_box">
							<label style="width:90%">Customer</label>
							<strong>:</strong>
						</div>
						<div class="form-input-box col-lg-9" id="customer_id_input_box">
							<div id="field-customer_id" class="readonly_label"><?php echo $value->customer_name;?></div>			
						</div>
					</div>
					<br>
					<div class="row" id="tanggal_po_field_box">
						<div class="form-display-as-box col-lg-3" id="tanggal_po_display_as_box">
							<label style="width:90%">Tanggal Purchase Order</label>
							<strong>:</strong>
						</div>
						<div class="form-input-box col-lg-9" id="tanggal_po_input_box">
							<div id="field-tanggal_po" class="readonly_label"><?php echo $value->tanggal_po;?></div>			
						</div>
					</div>
					<br>
					<div class="row" id="mata_uang_field_box">
						<div class="form-display-as-box col-lg-3" id="mata_uang_display_as_box">
							<label style="width:90%">Mata uang</label>
							<strong>:</strong>
						</div>
						<div class="form-input-box col-lg-9" id="mata_uang_input_box">
							<div id="field-mata_uang" class="readonly_label"><?php echo $value->mata_uang;?></div>			
						</div>
					</div>
					<br>
					<div class="row" id="tanggal_kirim_field_box">
						<div class="form-display-as-box col-lg-3" id="tanggal_kirim_display_as_box">
							<label style="width:90%">Tanggal kirim</label>
							<strong>:</strong>
						</div>
						<div class="form-input-box col-lg-9" id="tanggal_kirim_input_box">
							<div id="field-tanggal_kirim" class="readonly_label"><?php echo $value->tanggal_kirim;?></div>			
						</div>
					</div>
					<br>
					<div class="row" id="gudang_id_field_box">
						<div class="form-display-as-box col-lg-3" id="gudang_id_display_as_box">
							<label style="width:90%">Gudang</label>
							<strong>:</strong>
						</div>
						<div class="form-input-box col-lg-9" id="gudang_id_input_box">
							<div id="field-gudang_id" class="readonly_label"><?php echo $value->gudang_name;?></div>			
						</div>
					</div>
					<br>
					<div class="row" id="harga_total_field_box">
						<div class="form-display-as-box col-lg-3" id="harga_total_display_as_box">
							<label style="width:90%">Harga total</label>
							<strong>:</strong>
						</div>
						<div class="form-input-box col-lg-9" id="harga_total_input_box">
							<div id="field-harga_total" class="readonly_label"><?php echo $value->harga_total;?></div>			
						</div>
					</div>
					<br>
					<div class="row" id="discount_field_box">
						<div class="form-display-as-box col-lg-3" id="discount_display_as_box">
							<label style="width:90%">Discount</label>
							<strong>:</strong>
						</div>
						<div class="form-input-box col-lg-9" id="discount_input_box">
							<div id="field-discount" class="readonly_label"><?php echo $value->discount;?></div>			
						</div>
					</div>
					<br>
					<div class="row" id="pajak_field_box">
						<div class="form-display-as-box col-lg-3" id="pajak_display_as_box">
							<label style="width:90%">Pajak</label>
							<strong>:</strong>
						</div>
						<div class="form-input-box col-lg-9" id="pajak_input_box">
							<div id="field-pajak" class="readonly_label"><?php echo $value->pajak;?></div>			
						</div>
					</div>
					<br>
					<div class="row" id="biaya_delivery_field_box">
						<div class="form-display-as-box col-lg-3" id="biaya_delivery_display_as_box">
							<label style="width:90%">Biaya delivery</label>
							<strong>:</strong>
						</div>
						<div class="form-input-box col-lg-9" id="biaya_delivery_input_box">
							<div id="field-biaya_delivery" class="readonly_label"><?php echo $value->biaya_delivery;?></div>			
						</div>
					</div>
					<br>
					<?php foreach ($product as $key => $value) {?>					
					<div class="row" id="product_id_field_box">
						<div class="form-display-as-box col-lg-3" id="product_id_display_as_box">
							<label style="width:90%">Product</label>
							<strong>:</strong>
						</div>
						<div class="form-input-box col-lg-5" id="product_id_input_box">
							<div id="field-product_id" class="readonly_label"><?php echo $value->product_name;?></div>			
						</div>
						<div class="form-display-as-box col-lg-2" id="jumlah_unit_display_as_box">
							<label style="width:90%">Jumlah unit</label>
							<strong>:</strong>
						</div>
						<div class="form-input-box col-lg-2" id="jumlah_unit_input_box">
							<div id="field-jumlah_unit" class="readonly_label"><?php echo $value->jumlah_unit;?></div>			
						</div>
					</div>
					<br>
					<?php } ?>
					<div class="row" id="po_status_field_box">
						<div class="form-display-as-box col-lg-3" id="po_status_display_as_box">
							<label style="width:90%">Po status</label>
							<strong>:</strong>
						</div>
						<div class="form-input-box col-lg-9" id="po_status_input_box">
							<div id="field-po_status" class="readonly_label"><?php echo $value->po_status;?></div>			
						</div>
					</div>
					<br>
					<div id="report-error" class="report-div error alert alert-danger" role="alert"></div>
					<div id="report-success" class="report-div success alert alert-success"></div>

					<a href="<?php echo site_url('Purchase/purchase_order') ?>" type="button" id="cancel-button" class="btn btn-default back-to-list">Back to list</a>

					<span class="small-loading" id="FormLoading">Loading, updating changes...</span>
				</form>	</div>
			</div>
			<script>
				var validation_url = 'http://localhost/bigrafis/purchase/purchase_order/update_validation/4';
				var list_url = 'http://localhost/bigrafis/purchase/purchase_order';

				var message_alert_edit_form = "The data you had change may not be saved.\nAre you sure you want to go back to list?";
				var message_update_error = "An error has occurred on saving.";
			</script><script type="text/javascript">
				var js_date_format = 'dd/mm/yy';
			</script>
			<script type="text/javascript">
				var default_javascript_path = 'http://localhost/bigrafis/assets/grocery_crud/js';
				var default_css_path = 'http://localhost/bigrafis/assets/grocery_crud/css';
				var default_texteditor_path = 'http://localhost/bigrafis/assets/grocery_crud/texteditor';
				var default_theme_path = 'http://localhost/bigrafis/assets/grocery_crud/themes';
				var base_url = 'http://localhost/bigrafis/';
			</script>
		</div>
	</div>
</div>