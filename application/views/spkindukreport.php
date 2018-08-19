<?php if ($this->uri->segment(2)=='spkreport') { ?>
<div class="row">
	<div class="col-xs-12">
		<div>
			<div class="flexigrid crud-form box" style="width: 100%;">
				<div class="box-header no-border"></div>
				<div class="box-body">
					<form action="spkmesinreport" method="post" class="form-horizontal"
						autocomplete="off" enctype="multipart/form-data"
						accept-charset="utf-8">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label class="control-label col-md-3">STATUS SPK</label>
									<div class="col-md-9">
										<select class="select2_category form-control"
											data-placeholder="Choose a Category" tabindex="1"
											name="status_spk" id="status_spk">
											<option value="all">All</option>
											<option value="New">New</option>
											<option value="WIP">Work In Progress</option>
											<option value="finish">Finish</option>
											<option value="finish">Hold</option>
										</select>
									</div>
								</div>
								<div class="col-md-offset-3 col-md-9">
									<button type="submit" class="btn green">Submit</button>
									<button type="button" class="btn default">Cancel</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
<?php } else { ?>
<div class="row">
	<div class="col-md-12">
		<div class="box">
			<div class="box-header with-border">
				<h3 class="box-title">
					<i class="fa fa-table"></i>
				</h3>
				<div class="box-tools pull-right">
					<button class="btn btn-box-tool" data-widget="collapse">
						<i class="fa fa-minus"></i>
					</button>
					<button class="btn btn-box-tool" id="mini-refresh">
						<i class='fa fa-refresh'></i>
					</button>
				</div>
			</div>
			<div class="box-body">
				<div class="flexigrid">
					<div id='ajax_list' class="ajax_list">
						<div class="bDiv">
							<div class="table-scrollable"></div>
							<table
								class="table table-bordered table-striped dataTable table-hover"
								id="flex1">
								<thead>
									<tr class="hDiv">
										<th>SPK INDUK</th>
										<th>Description</th>
										<th>SPK DATE</th>
										<th>SPK STATUS</th>
									</tr>
								</thead>
								<tbody>
								<?php foreach ($valuespkinduk as $value) { ?>
									<tr>
										<td><?php echo $value['spk_induk'];?></td>
										<td><?php echo $value['description'];?></td>
										<td><?php echo $value['spk_date'];?></td>
										<td><?php echo $value['spk_status'];?></td>
									</tr>
									<?php } ?>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-md-12">
		<div class="box">
			<div class="box-header with-border">
				<h3 class="box-title">
					<i class="fa fa-table"></i>
				</h3>
				<div class="box-tools pull-right">
					<button class="btn btn-box-tool" data-widget="collapse">
						<i class="fa fa-minus"></i>
					</button>
					<button class="btn btn-box-tool" id="mini-refresh">
						<i class='fa fa-refresh'></i>
					</button>
				</div>
			</div>
			<div class="box-body">
				<div class="flexigrid">
					<div id='ajax_list' class="ajax_list">
						<div class="bDiv">
							<div class="table-scrollable">
							<table
								class="table table-bordered table-striped dataTable table-hover"
								id="flex1">
								<thead>
									<tr class="hDiv">
										<th>SPK INDUK</th>
										<th>SPK PROSES MESIN</th>
										<th>PROSES MESIN</th>
										<th>QTY ORDER</th>
										<th>QTY FINISH</th>
										<th>QTY REJECT</th>
										<th>QTY GOOD</th>
										<th>PERSEN COMPLETE</th>
										<th>NAMA MESIN</th>
										<th>OPERATOR</th>
										<th>STATUS</th>
									</tr>
								</thead>
								<tbody>
									<?php foreach ($valuespkmesin as $value) { ?>
									<tr>
										<td><?php echo $value['spk_induk'];?></td>
										<td><?php echo $value['spk_proses_id'];?></td>
										<td><?php echo $value['proses'];?></td>
										<td><?php echo $value['qty_order'];?></td>
										<td><?php echo $value['qty_finish'];?></td>
										<td><?php echo $value['qty_reject'];?></td>
										<td><?php echo $value['qty_good'];?></td>
										<td><?php echo $value['persen'];?></td>
										<td><?php echo $value['mesin_name'];?></td>
										<td><?php echo $value['operatorname'];?></td>
										<td><?php echo $value['status_spk'];?></td>
									</tr>
									<?php } ?>
								</tbody>
							</table>
							<?php 
								echo $this->pagination->create_links();
							?>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php }  ?>
