<?php if ($this->uri->segment(2)=='index') { ?>
<div class="box box-info">
	<!--div class="box-header with-border">
		<h3 class="box-title">Welcome</h3>
		<div class="box-tools pull-right">
		    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
		</div><!-- /.box-tools -->
	<!--/div><!-- /.box-header -->
	<!--div class="box-body">
		<p>Sample text welcome write here sample text welcome write here sample text welcome write here sample text welcome write here sample text welcome write here sample text welcome write here sample text welcome write here sample text welcome write here sample text welcome write here sample text welcome write here</p>
		<p>
			<a href="" class="btn btn-primary btn-lg"><i class="fa fa-download"></i> Download User Guide</a>&nbsp;
		</p>
	</div><!-- /.box-body -->
</div>
<div class="row">
    <div class="col-md-4">
        <!--div class="small-box bg-aqua-active">
		
            <div class="inner">
              <h3><?php //echo $this->db->get("movie")->num_rows();  ?></h3>
              <p>Purchase Order</p>
            </div>
            <div class="icon">
              <i class="fa fa-film"></i>
            </div>
            <a href="<?php //echo site_url("maipu/movie"); ?>" class="small-box-footer">
              More info <i class="fa fa-arrow-circle-right"></i>
            </a>
        </div-->
		<div class="dashboard-stat red-intense">
						<div class="visual">
							<i class="fa fa-bar-chart-o"></i>
						</div>
						<div class="details">
							<div class="number">
								  <?php echo $this->db->get("po")->num_rows();  ?>
							</div>
							<div class="desc">
								 Purchase Order
							</div>
						</div>
						<a class="more" href="javascript:;">
						View more <i class="m-icon-swapright m-icon-white"></i>
						</a>
		</div>
    </div>
    <div class="col-md-4">
		<div class="dashboard-stat blue-madison">
				<div class="visual">
					<i class="fa fa-comments"></i>
				</div>
						<div class="details">
							<div class="number">
								<?php echo $this->db->get("spk_induk")->num_rows();  ?> 
							</div>
							<div class="desc">
								 SPK Induk
							</div>
						</div>
						<a class="more" href="javascript:;">
						View more <i class="m-icon-swapright m-icon-white"></i>
						</a>
			</div>
    </div>
    <div class="col-md-4">
        <div class="dashboard-stat green-haze">
			<div class="visual">
				<i class="fa fa-shopping-cart"></i>
			</div>
			<div class="details">
				<div class="number">
					<?php echo $this->db->get("spk_material")->num_rows();  ?>
				</div>
				<div class="desc">
					Nota Transfer
				</div>
			</div>
				<a class="more" href="javascript:;">
				View more <i class="m-icon-swapright m-icon-white"></i>
				</a>
		</div>
    </div>    
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
								<div class="col-1-9">
									<div class="easy-pie-chart">
										<div class="number transactions" data-percent="<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='1'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?>">
											<span>
											<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='1'");
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
								<div class="col-1-9">
									<div class="easy-pie-chart">
										<div class="number visits" data-percent="<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='2'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?>">
											<span>
											<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='2'");
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
								<div class="col-1-9">
									<div class="easy-pie-chart">
										<div class="number visits" data-percent="<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='4'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?>">
											<span>
											<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='4'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?> </span>
											%
										</div>
										<a class="title" href="javascript:;">
										Hot-Stamping <i class="icon-arrow-right"></i>
										</a>
									</div>
								</div>
								<div class="margin-bottom-10 visible-sm">
								</div>
								<div class="col-1-9">
									<div class="easy-pie-chart">
										<div class="number bounce" data-percent="<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='5'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?>">
											<span>
											<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='5'");
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
																<div class="col-1-9">
									<div class="easy-pie-chart">
										<div class="number transactions" data-percent="<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='6'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?>">
											<span>
											<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='6'");
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
								<div class="col-1-9">
									<div class="easy-pie-chart">
										<div class="number visits" data-percent="<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='10'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?>">
											<span>
											<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='10'");
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
								<div class="col-1-9">
									<div class="easy-pie-chart">
										<div class="number bounce" data-percent="<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='9'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?>">
											<span>
											<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='9'");
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
								<div class="col-1-9">
									<div class="easy-pie-chart">
										<div class="number bounce" data-percent="<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='8'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?>">
											<span>
											<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='8'");
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
								<div class="col-1-9">
									<div class="easy-pie-chart">
										<div class="number bounce" data-percent="<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='7'");
											foreach ($query->result() as $row)
											{
												echo $row->persen;
											} ?>">
											<span>
											<?php $query = $this->db->query("select round(100/(sum(qty_order)) * sum(qty_finish),1) as persen from spk_proses_mesin where proses_type='7'");
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
