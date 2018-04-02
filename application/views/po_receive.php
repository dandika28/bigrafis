<?php if ($param == 'nprod') { 
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
					<div class="col-xs-8">
					<a class="btn btn-xs blue hidden-print margin-bottom-5 text-right" onclick="javascript:window.print();">
						Print <i class="fa fa-print"></i></a>
					</div>
					<div class="col-xs-4 text-right">
						<label class="table-bordered"> FM-LSA-LOG-011</label>
					</div>
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
											<td><?php echo number_format($po_product[$i-1]->jumlah_unit,0,",",".");?></td>
											<td><?php echo $value->product_unit;?></td>
											<td><?php echo number_format($value->product_price,2,",",".");?></td>
											<td><?php $discount=$discount+$value->discount; echo $value->discount;?></td>
											<td><?php echo  number_format(((float) $subtotal1 = $value->jumlah_unit * $value->product_price),2,",",".");?></td>
											<td><?php $pajak = $value->pajak; echo $value->pajak;?>%</td>
										</tr>
										<?php $i = $i+1; 
												$subtotal = $subtotal + $subtotal1;
												$biayapajak = $biayapajak + $pajak/100*$subtotal;			} ?>
									</tbody>
								</table>
							</div>
							<br>
						
						<div class="col-xs-12 text-center" style="height: 150px;">
							<?php
								$total = $total + $biayapajak + $deliveryCost + $discount + $subtotal;
								$saldo = $total - $dibayar;
							?>	
						</div>
						<div class="col-xs-12">
						<hr style="border-top: 1px solid #000" align="center" width="100%">
						</div>
						<div class="row">
							<div class="form-display-as-box col-xs-1">
								<label>Terbilang
								</label>
							</div>
							<div class="form-display-as-box col-xs-5">
								<label class="form-control" style="height: 100px;"><i>
									<?php 
										function penyebut($nilai) {
									        $nilai = abs($nilai);
									        $huruf = array("", "satu", "dua", "tiga", "empat", "lima", "enam", "tujuh", "delapan", "sembilan", "sepuluh", "sebelas");
									        $temp = "";
									        if ($nilai < 12) {
									            $temp = " ". $huruf[$nilai];
									        } else if ($nilai <20) {
									            $temp = penyebut($nilai - 10). " belas";
									        } else if ($nilai < 100) {
									            $temp = penyebut($nilai/10)." puluh". penyebut($nilai % 10);
									        } else if ($nilai < 200) {
									            $temp = " seratus" . penyebut($nilai - 100);
									        } else if ($nilai < 1000) {
									            $temp = penyebut($nilai/100) . " ratus" . penyebut($nilai % 100);
									        } else if ($nilai < 2000) {
									            $temp = " seribu" . penyebut($nilai - 1000);
									        } else if ($nilai < 1000000) {
									            $temp = penyebut($nilai/1000) . " ribu" . penyebut($nilai % 1000);
									        } else if ($nilai < 1000000000) {
									            $temp = penyebut($nilai/1000000) . " juta" . penyebut($nilai % 1000000);
									        } else if ($nilai < 1000000000000) {
									            $temp = penyebut($nilai/1000000000) . " milyar" . penyebut(fmod($nilai,1000000000));
									        } else if ($nilai < 1000000000000000) {
									            $temp = penyebut($nilai/1000000000000) . " trilyun" . penyebut(fmod($nilai,1000000000000));
									        }     
									        return $temp;
									    }

									    function terbilang($nilai) {
											if($nilai<0) {
												$hasil = "minus ". trim(penyebut($nilai));
											} else {
												$hasil = trim(penyebut($nilai));
											}     		
											return $hasil;
										}

										$angka = $total - $dibayar;
										echo terbilang($angka);
									?></i>
								</label>
							</div>
							<div class="col-xs-6">
								<div class="row" id="projectname">
									<div class="form-display-as-box col-xs-7">
										<label style="width: 80%">
											Discount Final
										</label><strong>:</strong>
									</div>
									<div class="form-input-box col-xs-5">
										<div class="readonly_label dt-right"><?php echo number_format($discount,2,",","."); ?></div>
									</div>
								</div>
								<div class="row">
									<div class="form-display-as-box col-xs-7">
										<label style="width: 80%">
											Pajak
										</label><strong>:</strong>
									</div>
									<div class="form-input-box col-xs-5">
										<div class="readonly_label dt-right"><?php echo number_format($biayapajak,2,",","."); ?></div>
									</div>
								</div>
								<div class="row">
									<div class="form-display-as-box col-xs-7">
										<label style="width: 80%">
											Biaya Pengantaran
										</label><strong>:</strong>
									</div>
									<div class="form-input-box col-xs-5">
										<div class="readonly_label dt-right"><?php echo number_format($deliveryCost,2,",","."); ?></div>
									</div>
								</div>
								<div class="row">
									<div class="form-display-as-box col-xs-7">
										<label style="width: 80%">
											Total
										</label><strong>: Rp.</strong>
									</div>
									<div class="form-input-box col-xs-5">
										<div class="readonly_label dt-right"><?php echo number_format($total,2,",",".");?></div>
									</div>
								</div>
								<div class="row">
									<div class="form-display-as-box col-xs-7">
										<label style="width: 80%">
											Dibayar
										</label><strong>:</strong>
									</div>
									<div class="form-input-box col-xs-5">
										<div class="readonly_label dt-right"><?php echo number_format($dibayar,2,",","."); ?></div>
									</div>
								</div>
								<div class="row">
									<div class="form-display-as-box col-xs-7">
										<label style="width: 80%">
											Saldo
										</label><strong>: Rp.</strong>
									</div>
									
									<div class="form-input-box col-xs-5">
										<div class="readonly_label dt-right"><b><?php echo number_format($saldo,2,",",".");?></b><hr style="border-top: 1px solid black"></div>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-xs-6 text-center">
								<?php echo $customername; ?>
								<div class="box" style="height: 75px; border: none; box-shadow: none;">
								</div>
								<hr style="border-top: 1px solid #000" align="center" width="50%">
							</div>
							<div class="col-xs-6 text-center">
								PT Lubana Sukses Abadi
								<div class="box" style="height: 75px; border: none; box-shadow: none;">
								</div>
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
					<div class="col-xs-8">
						<h3 class="box-title"><i class="fa fa-pencil fa-fw"></i>PRODUKSI</h3>
						<a class="btn btn-xs blue hidden-print margin-bottom-5 text-right" onclick="javascript:window.print();">
										Print <i class="fa fa-print"></i></a>
					</div>
					<div class="col-xs-4 text-right">
						<label class="table-bordered"> FM-LSA-LOG-011</label>
					</div>
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
											<td><?php echo number_format($po_product[$i-1]->jumlah_unit,0,",",".");?></td>
											<td><?php echo $value->product_unit;?></td>
										</tr>
										<?php $i = $i +1; } ?>
									</tbody>
								</table>
							</div>
							<br>
						<div class="col-xs-12 text-center" style="height: 150px;">
								
						</div>
						<div class="row">
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
						</div>
						
						<hr style="border-top: 1px solid #000" width="100%">
						
						</div>

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