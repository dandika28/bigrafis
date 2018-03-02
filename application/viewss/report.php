<?php 
	$subtotal = 0;
	$subtotalsedia = 0;
	$totalsusunproduk = 0;
?>
<div class="row">
	<div class="col-xs-12">
		<div>
			<div class="flexigrid crud-form box" style="width: 100%;">
				<div class="box-header no-border">					
					<a class="btn btn-xs blue hidden-print margin-bottom-5 text-right" onclick="javascript:window.print();">
									Print <i class="fa fa-print"></i></a>
				</div>
				<div class="box-body lbl-spk-induk">
					<form action="#" method="post" class="form-horizontal" autocomplete="off" enctype="multipart/form-data" accept-charset="utf-8">
						<div class="row" id="projectname">
							<div class="form-display-as-box col-xs-2">
								<label class="lbl-spk-induk" style="width: 90%;">Nomor</label>
								<strong>:</strong>
							</div>
							<div class="form-input-box col-xs-4">
								<div class="readonly_label">SPK <?php echo $nomor;?></div>
							</div>
							<div class="form-display-as-box col-xs-3 ">
								<label class="lbl-spk-induk" style="width: 90%;">Gudang Asal</label>
								<strong>:</strong>
							</div>
							<div class="form-input-box col-xs-3">
								<div class="readonly_label"><?php echo $gdasal;?></div>
							</div>
						</div>
						<div class="row" id="ponumber">
							<div class="form-display-as-box col-xs-2">
								<label class="lbl-spk-induk" style="width: 90%;">Tanggal</label>
								<strong>:</strong>
							</div>
							<div class="form-input-box col-xs-4">
								<div class="readonly_label"><?php echo $tgl;?></div>
							</div>
							<div class="form-display-as-box col-xs-3">
								<label class="lbl-spk-induk" style="width: 90%;">Gudang Tujuan</label>
								<strong>:</strong>
							</div>							
							<div class="form-input-box col-xs-3">
								<div class="readonly_label"><?php echo $gdtujuan;?></div>
							</div>
						</div>
						<div class="row" id="intrnumber">
							<div class="form-display-as-box col-xs-2">
								<label class="lbl-spk-induk" style="width: 90%;">Keterangan</label>
								<strong>:</strong>
							</div>
							<div class="form-input-box col-xs-4 ">
								<div class="readonly_label"><?php echo $desc; ?></div>
							</div>
						</div>
						<br>
						<div class="bDiv">
							<div class="table-scrollable" style="border: none;">
								<table class="table table-bordered table-striped dataTable " id="example">
									<thead>
										<tr class="hDiv" >
											<th>Kode</th>
											<th>Nama</th>
											<th>Jumlah</th>
											<th>Satuan</th>
											<th>Harga Satuan</th>
											<th>Bobot</th>
											<th>Total</th>
											<th>Gudang</th>
										</tr>
										<tr>
											<td colspan="8">Penyusun Produk Persediaan</td>
										</tr>
									</thead>
									<tbody>
										<?php $i=1; foreach ($spkdata as $key => $value) { ?>
										<tr>
											<td><?= $i ?></td>
											<td><?php echo $value->material_name;?></td>
											<td><?php echo $value->jumlah_material;?></td>
											<td><?php echo $value->satuan;?></td>
											<td>5000</td>
											<td></td>
											<td><?php $subtotal=$subtotal+(-8750); ?>-8,750.00</td>
											<td><?php echo $value->gudang_name;?></td>
										</tr>
										<?php $i=$i+1; }?>
									</tbody>
									<tfoot>
										<tr>
											<td colspan="5" class="text-right">Subtotal</td>
											<td></td>
											<td><?php echo $subtotal; ?></td>
											<td></td>
										</tr>
										<tr>
											<td colspan="5" class="text-right dt-right"><b>Subtotal Persediaan</b></td>
											<td></td>
											<td><b><?php echo $subtotalsedia=$subtotalsedia+$subtotal;?></b></td>
											<td class="dt-right"></td>
										</tr>
										<tr>
											<td colspan="5" class="text-right dt-right"><b>Total Penyusun Produk</b></td>
											<td></td>
											<td><b><?php echo $totalsusunproduk=$totalsusunproduk+$subtotalsedia;?></b></td>
											<td class="dt-right"></td>
										</tr>
										<tr>
											<td colspan="8" class="text-left"><b>Hasil Produksi</b></td>
										</tr>
										<tr>
											<td>4003</td>
											<td>Lakban Coklat</td>
											<td class="dt-right">-10.00</td>
											<td>Pcs</td>
											<td class="dt-right">7,000.00</td>
											<td class="dt-right">1</td>
											<td class="dt-right">-70,000.00</td>
											<td>WIP</td>
										</tr>
										<tr>
											<td colspan="5" class="text-right">Subtotal</td>
											<td></td>
											<td class="dt-right">-70,000.00</td>
											<td></td>
										</tr>
										<tr>
											<td colspan="5" class="text-right dt-right"><b>Total Penyusun Produk</b></td>
											<td></td>
											<td class="dt-right"><b>-70,000.00</b></td>
											<td class="dt-right"></td>
										</tr>
									</tfoot>
								</table>
							</div>
							<br>
							<div class="col-xs-6 text-center">
								<div class="row">
									Mengetahui,
								<div class="box no-border" style="height: 125px; box-shadow: none;"></div>
								<hr width="50%" align="center" style="border-top: 1px solid #000;">
								<div class="box no-border" style="height: 25px; box-shadow: none;"></div>
								</div>
							</div>
							<div class="col-xs-6 text-center">
								Bagian Pembukuan,
								<div class="box no-border" style="height: 125px; box-shadow: none;"></div>
								<hr width="50%" align="center" style="border-top: 1px solid #000;">
								<div class="box no-border" style="height: 25px; box-shadow: none;"></div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>