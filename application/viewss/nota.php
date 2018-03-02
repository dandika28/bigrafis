<?php if ($this->uri->segment(2)=='new') { ?>
<div class="row">
	<div class="col-xs-12">
		<div>
			<div class="flexigrid crud-form box" style="width: 100%;">
				<div class="box-header with-border">
					<h3 class="box-title"><i class="fa fa-pencil fa-fw"></i>Permintaan Barang (Internal)</h3>
					<a class="btn btn-xs blue hidden-print margin-bottom-5 text-right" onclick="javascript:window.print();">
									Print <i class="fa fa-print"></i></a>
				</div>
				<div class="box-body">
					<form action="#" method="post" class="form-horizontal" autocomplete="off" enctype="multipart/form-data" accept-charset="utf-8">
						<div class="row" id="projectname">
							<div class="form-display-as-box col-xs-2">
								<label style="width: 90%;">
									Project Name
								</label><strong>:</strong>
							</div>
							<div class="form-input-box col-xs-10" id="projectname_input_box">
								<div class="readonly_label"><?php echo $headervalue[0]->product_name;?></div>
							</div>
						</div>
						<br>
						<div class="row" id="ponumber">
							<div class="form-display-as-box col-xs-2">
								<label style="width: 90%;">
									PO Number
								</label><strong>:</strong>
							</div>
							<div class="form-input-box col-xs-10" id="ponumber_input_box">
								<div class="readonly_label"><?php echo $headervalue[0]->spk_induk_id;?></div>
							</div>
						</div>
						<br>
						<div class="row" id="intrnumber">
							<div class="form-display-as-box col-xs-2">
								<label style="width: 90%;">
									INTR Number
								</label><strong>:</strong>
							</div>
							<div class="form-input-box col-xs-10" id="intrnumber_input_box">
								<div class="readonly_label"></div>
							</div>
						</div>
						<div class="bDiv">
							<div class="table-scrollable">
								<table class="table table-bordered table-hover dataTable ">
									<thead>
										<tr class="hDiv">
											<th>No.</th>
											<th>TGL</th>
											<th>DESKRIPSI BARANG</th>
											<th>QTY</th>
											<th>SATUAN</th>
											<th>MESIN</th>
											<th>KETERANGAN</th>
										</tr>
									</thead>
									<tbody>
										<?php $i = 1; foreach ($test as $key => $value) {?>
										<tr>
											<td><?= $i ?></td>
											<td><?php echo date("d/m/Y");?></td>
											<td><?php echo $value->material_name;?></td>
											<td><?php echo $value->jumlah_material;?></td>
											<td><?php echo $value->satuan;?></td>
											<td></td>
											<td></td>
										</tr>
										<?php $i = $i+1; } ?>
									</tbody>
								</table>
							</div>
							<br>
							<div class="table-scrollable">
								<table class="table table-bordered table-hover dataTable ">
									<thead>
										<tr class="hDiv">
											<th class="text-center">Diminta oleh</th>
											<th class="text-center">Disetujui oleh</th>
											<th class="text-center">Disupply oleh</th>
											<th class="text-center">Diterima oleh</th>
										</tr>
									</thead>
									<tbody>
										<tr style="height: 120px; border-bottom: 0;">
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr class="noBorder">
											<td>Operator :</td>
											<td>Produksi :</td>
											<td>Logistik :</td>
											<td>Operator :</td>
										</tr>
									</tbody>
								</table>
							</div>							
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<?php } else if ($this->uri->segment(2)=='view') { ?>
<div class="row">
	<div class="col-md-12">
		<div>
			<div class="flexigrid crud-form box" style="width: 100%;">
				<div class="box-header with-border">
					<h3 class="box-title"><i class="fa fa-pencil fa-fw"></i>SPK ID : <?php echo $spk; ?></h3>					
				</div>
				<div class="box-body">
					<form action="#" method="post" class="form-horizontal" autocomplete="off" enctype="multipart/form-data" accept-charset="utf-8">
						<div class="row" id="field">
							<!--div class="form-display-as-box col-xs-2 control-label" id="projectname-display-as-box">
								<label>
									Project Name<span class="required">*</span>
								</label>
							</div-->
							<div class="form-input-box col-xs-6" id="projectname_input_box">
								<input id="projectname" class="form-control" name="projectname" type="text" value maxlength="100">
							</div>
						</div>
						<div class="bDiv">
							<div class="table-scrollable">
								<table class="table table-bordered table-hover dataTable ">
									<thead>
										<tr class="hDiv">
											<th>No.</th>
											<th>MATERIAL</th>
											<th style="width: 150px;">QTY</th>
											<th style="width: 150px;">QTY DELIVER</th>
										</tr>
									</thead>
									<tbody>
										<?php $i = 1; foreach ($test as $key => $value) {?>
										<tr>
											<td><?= $i ?></td>
											<td><?php echo $value->material_name;?></td>
											<td><?php echo $value->jumlah_material;?></td>
											<td><input id="qtydeliver" class="form-control" name="qtydeliver" type="text" value maxlength="50"></td>
										</tr>
										<?php $i = $i+1; } ?>
									</tbody>
								</table>
							</div>
						</div>
						<a href="<?php echo site_url($exporturl) ?>" title="Add Users" class="add-anchor add_button btn btn-primary">
			                <i class="fa fa-file-excel-o"></i> 
							<span class="add">Cetak Nota</span>
			            </a>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<?php } else { ?>
<div class="row">
	<div class="col-md-12">
		<div><?php echo $output; ?></div>
	</div>
</div>
<?php } ?>