<?php if ($this->uri->segment(3)=='read') { ?>
<div class="box box-info">
	
</div>
<div class="row">
				<div class="col-md-12 col-sm-12">
					<div class="portlet light ">
						<div class="portlet-title">
							<div class="caption">
								<i class="icon-cursor font-purple-intense hide"></i>
								<span class="caption-subject font-purple-intense bold uppercase">SPK Mesin Proses</span>
							</div>
							<div class="actions">
								<a href="javascript:;" class="btn btn-sm btn-circle btn-default easy-pie-chart-reload">
								<i class="fa fa-repeat"></i> Reload </a>
							</div>
						</div>
						<div class="portlet-body">
							<div class="row">
								<div class="col-md-2">
									<div class="easy-pie-chart">
										<div class="number transactions" data-percent="<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='1' and spk_induk='".$this->uri->segment(4)."'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?>">
											<span>
											<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='1' and spk_induk='".$this->uri->segment(4)."'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?> </span>
											%
										</div>
										<a class="title" href="javascript:;">
										Cetak <i class="icon-arrow-right"></i>
										</a>
									</div>
								</div>
								<div class="margin-bottom-10 visible-sm">
								</div>
								<div class="col-md-2">
									<div class="easy-pie-chart">
										<div class="number visits" data-percent="<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='2' and spk_induk='".$this->uri->segment(4)."'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?>">
											<span>
											<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='2' and spk_induk='".$this->uri->segment(4)."'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?> </span>
											%
										</div>
										<a class="title" href="javascript:;">
										Coating <i class="icon-arrow-right"></i>
										</a>
									</div>
								</div>
								<div class="margin-bottom-10 visible-sm">
								</div>
								<div class="col-md-2">
									<div class="easy-pie-chart">
										<div class="number bounce" data-percent="<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='5' and spk_induk='".$this->uri->segment(4)."'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?>">
											<span>
											<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='5' and spk_induk='".$this->uri->segment(4)."'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?> </span>
											%
										</div>
										<a class="title" href="javascript:;">
										Cutting <i class="icon-arrow-right"></i>
										</a>
									</div>
								</div>
								<div class="margin-bottom-10 visible-sm">
								</div>
																<div class="col-md-2">
									<div class="easy-pie-chart">
										<div class="number transactions" data-percent="<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='6' and spk_induk='".$this->uri->segment(4)."'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?>">
											<span>
											<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='6' and spk_induk='".$this->uri->segment(4)."'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?> </span>
											%
										</div>
										<a class="title" href="javascript:;">
										Gluing <i class="icon-arrow-right"></i>
										</a>
									</div>
								</div>
								<div class="margin-bottom-10 visible-sm">
								</div>
								<div class="col-md-2">
									<div class="easy-pie-chart">
										<div class="number visits" data-percent="<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='10' and spk_induk='".$this->uri->segment(4)."'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?>">
											<span>
											<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='10' and spk_induk='".$this->uri->segment(4)."'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?> </span>
											%
										</div>
										<a class="title" href="javascript:;">
										Packing <i class="icon-arrow-right"></i>
										</a>
									</div>
								</div>
								<div class="margin-bottom-10 visible-sm">
								</div>
								<div class="col-md-2">
									<div class="easy-pie-chart">
										<div class="number bounce" data-percent="<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='9' and spk_induk='".$this->uri->segment(4)."'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?>">
											<span>
											<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='9' and spk_induk='".$this->uri->segment(4)."'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?> </span>
											%
										</div>
										<a class="title" href="javascript:;">
										Sortir <i class="icon-arrow-right"></i>
										</a>
									</div>
								</div>
								<div class="col-md-2">
									<div class="easy-pie-chart">
										<div class="number bounce" data-percent="<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='8' and spk_induk='".$this->uri->segment(4)."'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?>">
											<span>
											<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='8' and spk_induk='".$this->uri->segment(4)."'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?> </span>
											%
										</div>
										<a class="title" href="javascript:;">
										Die-Cutting <i class="icon-arrow-right"></i>
										</a>
									</div>
								</div>
								<div class="col-md-2">
									<div class="easy-pie-chart">
										<div class="number bounce" data-percent="<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='7' and spk_induk='".$this->uri->segment(4)."'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?>">
											<span>
											<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='7' and spk_induk='".$this->uri->segment(4)."'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?> </span>
											%
										</div>
										<a class="title" href="javascript:;">
										Plate Maker <i class="icon-arrow-right"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
<?php } ?>
<div class="row">
	<div class="col-lg-12">
		<div><?php echo $output; ?></div>
	</div>
</div>