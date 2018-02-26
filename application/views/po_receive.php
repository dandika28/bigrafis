<?php if ($param == 'nonprod') { 
	$pajak = 0;
	$biayapajak = 0;
	$subtotal = 0;
	$total = 0;
	$discount = 0;
	$deliveryCost = 0;
	$dibayar = 0;
	?>
<div class="row">
	<div class="col-xs-12">
		<div>
			<div class="flexigrid crud-form box" style="width: 100%;">
				<div class="box-header no-border">
					<a class="btn btn-xs blue hidden-print margin-bottom-5 text-right" onclick="javascript:window.print();">
									Print <i class="fa fa-print"></i></a>
				</div>
				<div class="box-body">
					<form action="#" method="post" class="form-horizontal" autocomplete="off" enctype="multipart/form-data" accept-charset="utf-8">
						<div class="row" id="projectname">
							<div class="form-display-as-box col-xs-2">
								<label style="width: 90%">
									Nomor PO
								</label><strong>:</strong>
							</div>
							<div class="form-input-box col-xs-4">
								<div class="readonly_label"><?php echo $no; ?></div>
							</div>
							<div class="form-display-as-box col-xs-2">
								<label style="width: 90%">
									Tanggal PO
								</label><strong>:</strong>
							</div>
							<div class="form-input-box col-xs-4">
								<div class="readonly_label"><?php echo $tgl; ?></div>
							</div>
						</div>
						
						<div class="row" id="ponumber">
							<div class="form-display-as-box col-xs-2">
								<label style="width: 90%">
									Kepada
								</label><strong>:</strong>
							</div>
							<div class="form-input-box col-xs-4">
								<div class="readonly_label"><?php echo $customername;?></div>
							</div>
							<div class="form-display-as-box col-xs-2">
								<label style="width: 90%">
									Mata Uang
								</label><strong>:</strong>
							</div>
							<div class="form-input-box col-xs-4">
								<div class="readonly_label"><?php echo $currency; ?></div>
							</div>
						</div>
						
						<div class="row" id="intrnumber">
							<div class="form-display-as-box col-xs-2">
								<label style="width: 90%">
									Up.
								</label><strong>:</strong>
							</div>							
							<div class="form-input-box col-xs-4">
								<div class="readonly_label"><?php echo $customercontact;?></div>
							</div>
			            	<div class="form-display-as-box col-xs-2">
								<label style="width: 90%">
									<b>TGL Kirim</b>
								</label><strong>:</strong>
							</div>
							<div class="form-input-box col-xs-4">
								<div class="readonly_label"><?php echo $send_date; ?></div>
							</div>
						</div>
						<div class="row" id="intrnumber">
							<div class="form-display-as-box col-xs-2">
								<label style="width: 90%">
									Alamat
								</label><strong>:</strong>
							</div>							
							<div class="form-input-box col-xs-4">
								<div class="readonly_label"><?php echo $customeraddress;?></div>
							</div>
			            	<div class="form-display-as-box col-xs-2">
								<label style="width: 90%">
									Gudang
								</label><strong>:</strong>
							</div>
							<div class="form-input-box col-xs-4">
								<div class="readonly_label"><?php echo $gudang; ?></div>
							</div>
						</div>
						
						<div class="bDiv">
							<div class="table-scrollable" style="border: none;">
								<table class="table table-bordered table-striped dataTable " id="example">
									<thead>
										<tr class="hDiv" >
											<th>No.</th>
											<th>Kode</th>
											<th>Nama Barang</th>
											<th>Jumlah</th>
											<th>Unit</th>
											<th>Harga</th>
											<th>Disc.</th>
											<th>Sub Total</th>
											<th>Pajak</th>
										</tr>
									</thead>
									<tbody>
										<?php $i = 1; foreach ($valuetable as $key => $value) { ?>
										<tr>
											<td><?= $i ?></td>
											<td><?php echo $value->product_kode;?></td>
											<td><?php echo $value->product_name;?></td>
											<td><?php echo $value->jumlah_unit;?></td>
											<td><?php echo $value->product_unit;?></td>
											<td><?php echo $value->product_price;?></td>
											<td><?php echo $discount=$discount+$value->discount;?></td>
											<td><?php echo $subtotal = $subtotal+$value->jumlah_unit * $value->product_price;?></td>
											<td><?php  echo $pajak = $pajak+$value->pajak; ?>%</td>
										</tr>
										<?php $i = $i+1; } ?>
									</tbody>
								</table>
							</div>
							<br>
						</div>
						<div class="col-xs-12 text-center" style="height: 150px;">
								
						</div>
						
						<hr width="100%">
						<div class="row">
							<div class="col-xs-1">
								Terbilang
							</div>
							<div class="col-xs-5">
								<textarea class="form-control font-italic" rows="3"></textarea>
							</div>
							<div class="col-xs-6">
								<div class="row" id="projectname">
									<div class="form-display-as-box col-xs-7">
										<label style="width: 80%">
											Discount Final
										</label><strong>:</strong>
									</div>
									<div class="form-input-box col-xs-5">
										<div class="readonly_label dt-right"><?php echo $discount; ?></div>
									</div>
								</div>
								<div class="row">
									<div class="form-display-as-box col-xs-7">
										<label style="width: 80%">
											Pajak
										</label><strong>:</strong>
									</div>
									<div class="form-input-box col-xs-5">
										<div class="readonly_label dt-right"><?php echo $biayapajak = $biayapajak + $pajak/100*$subtotal; ?></div>
									</div>
								</div>
								<div class="row">
									<div class="form-display-as-box col-xs-7">
										<label style="width: 80%">
											Biaya Pengantaran
										</label><strong>:</strong>
									</div>
									<div class="form-input-box col-xs-5">
										<div class="readonly_label dt-right"><?php echo $deliveryCost; ?></div>
									</div>
								</div>
								<div class="row">
									<div class="form-display-as-box col-xs-7">
										<label style="width: 80%">
											Total
										</label><strong>: Rp.</strong>
									</div>
									<div class="form-input-box col-xs-5">
										<div class="readonly_label dt-right"><?php echo $total = $total + $biayapajak + $deliveryCost + $discount + $subtotal;?></div>
									</div>
								</div>
								<div class="row">
									<div class="form-display-as-box col-xs-7">
										<label style="width: 80%">
											Dibayar
										</label><strong>:</strong>
									</div>
									<div class="form-input-box col-xs-5">
										<div class="readonly_label dt-right"><?php echo $dibayar; ?></div>
									</div>
								</div>
								<div class="row">
									<div class="form-display-as-box col-xs-7">
										<label style="width: 80%">
											Saldo
										</label><strong>: Rp.</strong>
									</div>
									
									<div class="form-input-box col-xs-5">
										<div class="readonly_label dt-right"><b><?php echo $total - $dibayar;?></b></div>
									</div>
									<hr style="border-top: 1px solid #000" width="95%">
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="col-xs-6 text-center">
								<?php echo $customername; ?>
								<div class="box" style="height: 75px; border: none; box-shadow: none;">
								</div>
								<?php echo $customercontact;?>
								<hr style="border-top: 1px solid #000" align="center" width="50%">
							</div>
							<div class="col-xs-6 text-center">
								LUBANA SUCCESS ABADI
								<div class="box" style="height: 75px; border: none; box-shadow: none;">
								</div>
								Abas
								<hr style="border-top: 1px solid #000" align="center" width="50%">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<?php } else if ($param =='prod') { ?>

<div class="row">
	<div class="col-xs-12">
		<div>
			<div class="flexigrid crud-form box" style="width: 100%;">
				<div class="box-header with-border">
					<h3 class="box-title"><i class="fa fa-pencil fa-fw"></i>PRODUKSI</h3>
					<a class="btn btn-xs blue hidden-print margin-bottom-5 text-right" onclick="javascript:window.print();">
									Print <i class="fa fa-print"></i></a>
				</div>
				<div class="box-body">
					<form action="#" method="post" class="form-horizontal" autocomplete="off" enctype="multipart/form-data" accept-charset="utf-8">
						<div class="row" id="projectname">
							<div class="form-display-as-box col-xs-2">
								<label style="width: 90%">
									Nomor PO
								</label><strong>:</strong>
							</div>
							<div class="form-input-box col-xs-4">
								<div class="readonly_label"><?php echo $no; ?></div>
							</div>
							<div class="form-display-as-box col-xs-2">
								<label style="width: 90%">
									Tanggal PO
								</label><strong>:</strong>
							</div>
							<div class="form-input-box col-xs-4">
								<div class="readonly_label"><?php echo $tgl; ?></div>
							</div>
						</div>
						
						<div class="row" id="ponumber">
							<div class="form-display-as-box col-xs-2">
								<label style="width: 90%">
									Kepada
								</label><strong>:</strong>
							</div>
							<div class="form-input-box col-xs-4">
								<div class="readonly_label"><?php echo $customername;?></div>
							</div>
							<div class="form-display-as-box col-xs-2">
								<label style="width: 90%">
									Mata Uang
								</label><strong>:</strong>
							</div>
							<div class="form-input-box col-xs-4">
								<div class="readonly_label"><?php echo $currency; ?></div>
							</div>
						</div>
						
						<div class="row" id="intrnumber">
							<div class="form-display-as-box col-xs-2">
								<label style="width: 90%">
									Up.
								</label><strong>:</strong>
							</div>							
							<div class="form-input-box col-xs-4">
								<div class="readonly_label"><?php echo $customercontact;?></div>
							</div>
			            	<div class="form-display-as-box col-xs-2">
								<label style="width: 90%">
									<b>TGL Kirim</b>
								</label><strong>:</strong>
							</div>
							<div class="form-input-box col-xs-4">
								<div class="readonly_label"><?php echo $send_date; ?></div>
							</div>
						</div>
						<div class="row" id="intrnumber">
							<div class="form-display-as-box col-xs-2">
								<label style="width: 90%">
									Alamat
								</label><strong>:</strong>
							</div>							
							<div class="form-input-box col-xs-4">
								<div class="readonly_label"><?php echo $customeraddress;?></div>
							</div>
			            	<div class="form-display-as-box col-xs-2">
								<label style="width: 90%">
									Gudang
								</label><strong>:</strong>
							</div>
							<div class="form-input-box col-xs-4">
								<div class="readonly_label"><?php echo $gudang; ?></div>
							</div>
						</div>
						
						<div class="bDiv">
							<div class="table-scrollable">
								<table class="table table-bordered table-striped dataTable " id="example">
									<thead>
										<tr class="hDiv" >
											<th>No.</th>
											<th>Kode</th>
											<th>Nama Barang</th>
											<th>Jumlah</th>
											<th>Unit</th>
										</tr>
									</thead>
									<tbody>
										<?php $i = 1; foreach ($valuetable as $key => $value) { ?>
										<tr>
											<td><?= $i ?></td>
											<td><?php echo $value->product_kode;?></td>
											<td><?php echo $value->product_name;?></td>
											<td><?php echo $value->jumlah_unit;?></td>
											<td><?php echo $value->product_unit;?></td>
										</tr>
										<?php $i = $i +1; } ?>
									</tbody>
								</table>
							</div>
							<br>
						</div>
						<div class="col-xs-12 text-center" style="height: 100px;">
								
						</div>
						
						<div class="col-xs-4">
							Delivery Konfirmasi 1
							<br>
							Tanggal:
							<div class="box" style="height: 100px; border: none; box-shadow: none;"></div>
						</div>
						<div class="col-xs-4">
							Delivery Konfirmasi 2
							<br>
							Tanggal:
							<div class="box" style="height: 100px; border: none; box-shadow: none;"></div>
						</div>
						<div class="col-xs-4">
							Delivery Konfirmasi 3
							<br>
							Tanggal:
							<div class="box" style="height: 100px; border: none; box-shadow: none;"></div>
						</div>

						<hr style="border-top: 1px solid #000" width="100%">
						
						<div class="row" style="margin-top: 125px;">
							<div class="col-xs-6 text-center">
								Diserahkan
								<div class="box" style="height: 75px; border: none; box-shadow: none;">
								</div>
								<hr style="border-top: 1px solid #000" align="center" width="50%">
								<p><i>Logistik admin</i></p>
							</div>
							<div class="col-xs-6 text-center">
								Diterima oleh
								<div class="box" style="height: 75px; border: none; box-shadow: none;">
								</div>
								<hr style="border-top: 1px solid #000" align="center" width="50%">
								<p><i>Produksi/Planning</i></p>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<?php } ?>