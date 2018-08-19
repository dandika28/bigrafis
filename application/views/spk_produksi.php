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
						<label class="table-bordered"> FM-LSA-PR-007</label>
					</div>
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
						<div class="row" id="proyek">
							<div class="form-display-as-box col-xs-2">
								<label class="lbl-spk-induk" style="width: 90%">Proyek</label>
								<strong>:</strong>
							</div>
							<div class="form-input-box col-xs-4 ">
								<div class="readonly_label"></div>
							</div>
						</div>
						<br>
						<div class="bDiv">
							<div class="table-scrollable" style="border: 1px solid #ddd;">
								<table class="table table-bordered table-striped dataTable ">
									<thead>
										<tr class="hDiv" >
											<th>Kode</th>
											<th>Nama</th>
											<th>Jumlah</th>
											<th>Satuan</th>
											<th>Gudang</th>
										</tr>
										<tr>
											<td colspan="5"><b>Hasil Produksi</b></td>
										</tr>
									</thead>
									<tbody>
										<?php $i=1; foreach ($spkdata as $key => $value) { ?>
										<tr class="dataMaterial">
											<td><?php echo $value->kode;?></td>
											<td><?php echo $value->material_name;?></td>
											<td class="dt-right"><?php echo $value->jumlah_material;?></td>
											<td><?php echo $value->satuan;?></td>
											<td><?php echo $value->gudang_name;?></td>
										</tr>
										<?php $i=$i+1; }?>
									</tbody>
									<tfoot>
										
									</tfoot>
								</table>
							</div>
							<br><br><br>
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