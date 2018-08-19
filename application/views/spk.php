<div class="row">
	<div class="col-xs-12">
		<div>
			<div class="flexigrid crud-form box" style="width: 100%">
				<div class="box-header no-border">
					<div class="col-xs-8">
					<a class="btn btn-xs blue hidden-print margin-bottom-5 text-right" onclick="javascript:window.print();">
						Print <i class="fa fa-print"></i></a>
					</div>
					<div class="col-xs-4 text-right">
						<label class="table-bordered"> FM-LSA-PR-007</label>
					</div>
				</div>
				<div class="box-body">
					<form action="#" method="post" class="form-horizontal" autocomplete="off" enctype="multipart/form-data" accept-charset="utf-8">
						<div class="row">
							<div class="form-display-as-box col-xs-4">
								<label style="width: 90%;">NO. SPK</label>
								<strong>:</strong>
							</div>
							<div class="form-input-box col-xs-8">
								<div class="readonly_label"><?php echo $data->spk_induk_id;?></div>
							</div>
						</div>
						<div class="row">
							<div class="form-display-as-box col-xs-4">
								<label style="width: 90%;">NAMA PRODUK</label>
								<strong>:</strong>
							</div>
							<div class="form-input-box col-xs-8">
								<div class="readonly_label"><?php echo $data->product_name;?></div>
							</div>
						</div>
						<?php if($param!='8' || $param!='2'){?>
						<div class="row">
							<div class="form-display-as-box col-xs-4">
								<label style="width: 90%;">QTY ORDER</label>
								<strong>:</strong>
							</div>
							<div class="form-input-box col-xs-8">
								<div class="readonly_label">@<?php echo $data->qty_order;?> PCS</div>
							</div>
						</div>
						<?php } ?>
						<?php if($param=='1' || $param=='5'){?>
						<div class="row">
							<div class="form-display-as-box col-xs-4">
								<label style="width: 90%;">NAMA KERTAS</label>
								<strong>:</strong>
							</div>
							<div class="form-input-box col-xs-8">
								<div class="readonly_label"><?php echo $data->nama_kertas; ?></div>
							</div>
						</div>
						<?php } ?>
						<?php if($param=='1'){?>
						<div class="row">
							<div class="form-display-as-box col-xs-4">
								<label style="width: 90%;">UKURAN KERTAS CETAK</label>
								<strong>:</strong>
							</div>
							<div class="form-input-box col-xs-8">
								<div class="readonly_label"><?php echo $data->ukuran_kertas;?></div>
							</div>
						</div>
						<?php } ?>
						<?php if($param=='5'){?>
						<div class="row">
							<div class="form-display-as-box col-xs-4">
								<label style="width: 90%;">UKURAN KERTAS PLANO</label>
								<strong>:</strong>
							</div>
							<div class="form-input-box col-xs-8">
								<div class="readonly_label"><?php echo $data->ukuran_kertas;?></div>
							</div>
						</div>
						<div class="row">
							<div class="form-display-as-box col-xs-4">
								<label style="width: 90%;">UKURAN KERTAS POTONG</label>
								<strong>:</strong>
							</div>
							<div class="form-input-box col-xs-8">
								<div class="readonly_label"><?php echo $data->ukuran_kertas_potong;?></div>
							</div>
						</div>
						<?php } ?>
						<?php if($param!='7'){?>
						<div class="row">
							<div class="form-display-as-box col-xs-4">
								<label style="width: 90%;">JUMLAH</label>
								<strong>:</strong>
							</div>
							<div class="form-input-box col-xs-8">
								<div class="readonly_label"><?php echo $data->jumlah;?> LBR</div>
							</div>
						</div>
						<?php } ?>
						<?php if($param=='6'){?>
						<div class="row">
							<div class="form-display-as-box col-xs-4">
								<label style="width: 90%;">LEM TYPE</label>
								<strong>:</strong>
							</div>
							<div class="form-input-box col-xs-8">
								<div class="readonly_label"><?php echo $data->lem_type;?></div>
							</div>
						</div>
						<?php }?>
						<?php if($param=='2'){?>
						<div class="row">
							<div class="form-display-as-box col-xs-4">
								<label style="width: 90%;">JERNIS VARNISH</label>
								<strong>:</strong>
							</div>
							<div class="form-input-box col-xs-8">
								<div class="readonly_label"><?php echo $data->varnish_type;?></div>
							</div>
						</div>
						<?php }?>
						<?php if($param=='5'){?>
						<div class="row">
							<div class="form-display-as-box col-xs-4">
								<label style="width: 90%;">PROSES KE MESIN</label>
								<strong>:</strong>
							</div>
							<div class="form-input-box col-xs-8">
								<div class="readonly_label"><?php echo $data->proses_ke_mesin;?></div>
							</div>
						</div>
						<?php } ?>
						<?php if($param=='1'){?>
						<div class="row">
							<div class="form-display-as-box col-xs-4">
								<label style="width: 90%;">WARNA</label>
								<strong>:</strong>
							</div>
							<div class="form-input-box col-xs-8">
								<div class="readonly_label"><?php echo $data->warna;?></div>
							</div>
						</div>
						<?php } ?>
						<div class="row">
							<div class="col-xs-12 text-center" style="height: 250px;"></div>
						</div>
						<div class="row footer">
							<div class="row">
								<div class="form-display-as-box col-xs-4">
									<label style="width: 90%;">CATATAN KHUSUS</label>
									<strong>:</strong>
								</div>
								<div class="form-input-box col-xs-8">
									<div class="readonly_label" style="height: 75px;"><?php echo $data->catatan_khusus;?></div>
								</div>
							</div>
							<div class="row">
								<div class="form-display-as-box col-xs-4">
									<?php echo date("d/m/Y");?>
								</div>
							</div>
							<div class="row">
								<div class="form-display-as-box col-xs-4 text-center">
									DIBUAT OLEH,
									<div class="box" style="height: 75px; border: none; box-shadow: none;">
									</div>
									<hr>
								</div>
								<div class="form-display-as-box col-xs-5 text-center">
									MENGETAHUI,
									<div class="box" style="height: 75px; border: none; box-shadow: none;">
									</div>
									<hr>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
