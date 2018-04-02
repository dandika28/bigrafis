<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="keyword" content="Codeigniter, bootstrap, Grocerycrud">
    <meta name="description" content="Custom Framework Codeigniter and bootstrap">
    <meta name="author" content="Deky Mulyana">
    <title><?php echo $title ?></title>
    <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url('assets/img/favicon-96x96.png') ?>">
   
    <!--GroceryCRUD CSS-->
    <?php if (isset($css_files)) : ?>
        <?php foreach($css_files as $file): ?>
            <link rel="stylesheet" href="<?php echo $file; ?>" />
        <?php endforeach; ?>
    <?php endif ?>
	
    <!--Bootstrap-->
    <link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap.min.css') ?>">
	
    <!--Font-->
    <link rel="stylesheet" href="<?php echo base_url('assets/css/font-awesome.min.css') ?>">
	
    <!--Metronic-->
    <link rel="stylesheet" href="<?php echo base_url('assets/css/themes/'.$settings->skin.'.css') ?>">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/layout.css') ?>">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/plugins.css') ?>">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/components.css') ?>">	
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/css/custom.css') ?>">	
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/js/plugins/simple-line-icons/simple-line-icons.min.css') ?>">	
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/js/plugins/uniform/css/uniform.default.css') ?>">
	
	<!--Alertify-->
    <link rel="stylesheet" href="<?php echo base_url('assets/css/alertify.min.css') ?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/css/default.min.css') ?>">
	
    <!--CSS PLUGINS-->
    <?php if (isset($css_plugins)): ?>
        <?php foreach ($css_plugins as $url_plugin): ?>
            <link rel="stylesheet" href="<?php echo base_url("$url_plugin") ?>">
        <?php endforeach ?>
    <?php endif ?>
	 <!--AdminLTE-->
    <link rel="stylesheet" href="<?php echo base_url('assets/css/AdminLTE.min.css') ?>">
    <!--Custom CSS-->
    <link rel="stylesheet" href="<?php echo base_url('assets/css/a-design.css') ?>">

    <!-- CUSTOM METRONIC-->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url('assets/metronic/css/font-awesome.min.css') ?>" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url('assets/metronic/css/simple-line-icons.min.css') ?>" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url('assets/metronic/css/bootstrap.min.css') ?>" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url('assets/metronic/css/uniform.default.css') ?>" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url('assets/metronic/css/bootstrap-switch.min.css') ?>" rel="stylesheet" type="text/css">
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL PLUGIN STYLES -->
    <link href="<?php echo base_url('assets/metronic/css/daterangepicker-bs3.css') ?>" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url('assets/metronic/css/fullcalendar.min.css') ?>" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url('assets/metronic/css/jqvmap.css') ?>" rel="stylesheet" type="text/css">
    <!-- END PAGE LEVEL PLUGIN STYLES -->
    <!-- BEGIN PAGE STYLES -->
    <link href="<?php echo base_url('assets/metronic/css/tasks.css') ?>" rel="stylesheet" type="text/css">
    <!-- END PAGE STYLES -->
    <!-- BEGIN THEME STYLES -->
    <!--link href="<?php echo base_url('assets/metronic/css/components.css') ?>" id="style_components" rel="stylesheet" type="text/css"-->
    <link href="<?php echo base_url('assets/metronic/css/plugins.css') ?>" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url('assets/metronic/css/layout.css') ?>" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url('assets/metronic/css/darkblue.css') ?>" rel="stylesheet" type="text/css" id="style_color">

    <link rel="stylesheet" href="<?php echo base_url('assets/css/themes/'.$settings->skin.'.css') ?>">

    <link href="<?php echo base_url('assets/metronic/css/custom.css') ?>" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url('assets/metronic/css/simplegrid.css') ?>" rel="stylesheet" type="text/css">

    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- END CUSTOM METRONIC-->

    <style type="text/css" media="print">
    @page 
    {
        size:  auto;   /* auto is the initial value */
        margin: 0mm;  /* this affects the margin in the printer settings */
    }

    html
    {
        background-color: #FFFFFF; 
        margin: 0px;  /* this affects the margin on the html before sending to printer */
    }

    body
    {
        border: solid 1px blue ;
        margin: 10mm 15mm 10mm 15mm; /* margin you want for the content */
    }
    </style>
	
</head>
<body class="page-header-fixed page-container-bg-solid ">
	<!-- BEGIN HEADER -->
	<div class="page-header navbar navbar-fixed-top">
		<!-- BEGIN HEADER INNER -->
		<div class="page-header-inner">
			<!-- BEGIN LOGO -->
			<div class="page-logo">
				<a href="<?php echo site_url('crud/index') ?>">
				<img src="<?php echo base_url('assets/img/logo_big_new.png'); ?>" alt="logo" class="logo-default" />
				</a>
			</div>
			<!-- END LOGO -->
			<!-- BEGIN RESPONSIVE MENU TOGGLER -->
			<a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
			</a>
			<!-- END RESPONSIVE MENU TOGGLER -->
			<!-- BEGIN TOP NAVIGATION MENU -->
			<div class="top-menu">
				<ul class="nav navbar-nav pull-right ">

                    <!--Behin Notif -->
                <?php
                    $this->load->model('Notification_model');
                    $this->load->model('User_groups_model');
                    $userid = $this->ion_auth->user()->row()->id;
                    if($userid!=1){
                        $group_id = $this->User_groups_model->get_group($userid);
                        $notif = $this->Notification_model->listnotif($group_id); ?>
                <li class="dropdown dropdown-extended dropdown-notification" id="header_notification_bar">
                    <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                    <i class="icon-bell"></i>
                    <span class="badge badge-default" id="notification" data-value="<?php echo $group_id;?>">
                    <?php
                        echo $this->db->get_where('notification', array('status' => 'N','group_id' => $group_id), '10')->num_rows(); ?>
                    </span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="external">
                            <h3><span class="bold"><?php echo $this->db->get_where('notification', array('status' => 'N','group_id' => $group_id), '10')->num_rows(); ?> 
                            notifications</h3>
                            <!--a href="extra_profile.html">view all</a-->
                        </li>
                        <li>
                            <ul class="dropdown-menu-list scroller" style="height: 250px;"> 
                            <?php foreach($notif as $keye => $valuee): ?> 
                                <?php //foreach($valuee as $key_iteme => $iteme):?>
                                <li>                                    
                                    <a href="#">                                    
                                    <span class="label label-sm label-icon label-success">
                                    <i class="fa fa-plus"></i>
                                    </span><span class="details">
                                    <?php echo $valuee['subject']; ?>
                                    </span>
                                    <!--span class="time"> <?php //echo $valuee['date'];?> </span-->
                                    </a>                                    
                                </li>
                                    <?php //endforeach;?>
                                    <?php endforeach;?>
                            </ul>                       
                        </li>
                    </ul>
                </li>
                <?php } ?>
					<!-- BEGIN USER LOGIN DROPDOWN -->
					<li class="dropdown dropdown-user">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
							<img src="<?php echo base_url('assets/img/avatar04.png') ?>" class="user-image" alt="User Image"/>
							<span class="username""><?php echo $this->ion_auth->user()->row()->username ?></span>
							<i class="fa fa-angle-down"></i>
						</a>
						
						<ul class="dropdown-menu dropdown-menu-default">
							<li class="divider">
							</li>
							<li>
								<center>
								<img src="<?php echo base_url('assets/img/avatar04.png') ?>" class="img-circle" alt="User Image" height="70" width="70" />
								<p>
                                 <?php echo $this->ion_auth->user()->row()->first_name ?> <?php echo $this->ion_auth->user()->row()->last_name ?>
                                 <br>
								 <?php echo date('d-F-Y') ?>
                                </p>
								</center>
							</li>
							<li>
								<center>
								<a href="<?php echo  site_url('auth/logout')?>">
								<i class="icon-key"></i> Log Out </a>
								</center>
							</li>
						</ul>
					</li>
					<!-- END USER LOGIN DROPDOWN -->
				</ul>
			</div>
			<!-- END TOP NAVIGATION MENU -->
			
		</div>
		<!-- END HEADER INNER -->
	</div>
	<!-- END HEADER -->
	
	<div class="clearfix"> </div>	

<!-- BEGIN CONTAINER -->
<div class="page-container">
	<!-- BEGIN SIDEBAR -->
	<div class="page-sidebar-wrapper">
   <div class="page-sidebar navbar-collapse collapse">
  

            <!--form action="#" method="get" class="sidebar-form">
                <center>
				<div class="input-group">
                    <input type="text" class="form-control searchlist" id="searchSidebar" placeholder="Search..." autocomplete="off"/>
                </div>
				</center>
			</form-->
            
            <ul class="page-sidebar-menu " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">

            	<li class="sidebar-toggler-wrapper">
					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
					<div class="sidebar-toggler">
					</div>
					<!-- END SIDEBAR TOGGLER BUTTON -->
				</li>
			
                <?php foreach ($header_menu->result() as $header): ?>
					<li class="heading">
					<h3 class="uppercase"><?php echo $header->header ?></h3></li>
                    <?php foreach ($menu->result() as $key => $menu_item): ?>
                        <?php if ($header->id_header_menu == $menu_item->id_header_menu): ?>
                            <?php if ($menu_item->url == "#" && $menu_item->level_one == "0") { ?>
                                <li>
                                    <a href="#">
									<i class="fa fa-<?php echo $menu_item->icon ?>"></i>
									<span class="title"><?php echo $menu_item->label ?></span> 
									<span class="arrow "></span></a>
                                    <ul class="sub-menu">
                                        <?php foreach ($menu_lvlOne->result() as $lvlOne): ?>
                                            <?php if ($menu_item->id_menu == $lvlOne->level_one): ?>                                        
                                                <?php if ($lvlOne->url == "#") { ?>
                                                    <li>
                                                        <a href="#"><i class="fa fa-<?php echo $lvlOne->icon ?>"></i>
														<span><?php echo $lvlOne->label ?></span> 
														<span class="arrow "></span></a>
                                                        <ul class="sub-menu">
                                                            <?php foreach ($menu_lvlTwo->result() as $lvlTwo): ?>
                                                                <?php if ($lvlOne->id_menu == $lvlTwo->level_two): ?>
                                                                    <li id="<?php echo $lvlTwo->menu_id ?>">
																	<a href="<?php echo site_url($lvlTwo->url) ?>" class="name">
																	<i class="fa fa-<?php echo $lvlTwo->icon ?>" class="name"></i> <?php echo $lvlTwo->label ?></a></li>
                                                                <?php endif ?>                                    
                                                            <?php endforeach ?>
                                                        </ul>
                                                    </li>
                                                <?php }else{ ?>
                                                    <li id="<?php echo $lvlOne->menu_id ?>">
													<a href="<?php echo site_url($lvlOne->url) ?>" class="name">
													<i class="fa fa-<?php echo $lvlOne->icon ?>" class="name"></i> <?php echo $lvlOne->label ?></a></li>
                                                <?php } ?>
                                            <?php endif ?>
                                        <?php endforeach ?>
                                    </ul>
                                </li>
                            <?php }else{ ?>
                                <li id="<?php echo $menu_item->menu_id ?>">
								<a href="<?php echo site_url($menu_item->url) ?>" class="name">
								<i class="fa fa-<?php echo $menu_item->icon ?>"></i> 
								<span class="title"><?php echo $menu_item->label ?></span></a></li>
                            <?php } ?>
                        <?php endif ?>
						
                    <?php endforeach ?>
                <?php endforeach ?>
            </ul>
        
    	</div>
	</div>
	<!-- END SIDEBAR -->
</div>
<!-- END CONTAINER -->	

<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
	
			<!-- BEGIN PAGE HEADER-->
			<div class="page-bar">
				
				
				 <ul class="page-breadcrumb">
            <?php if (!isset($crumb)){ ?>
                <li>
                    <i class="fa fa-dashboard"></i> Dashboard
                </li>            
            <?php }else{ ?>
                <li>
                    <a href="<?php echo site_url('crud/index') ?>"><i class="fa fa-dashboard"></i> Dashboard</a>
					<i class="fa fa-angle-right"></i>
                </li>            
                <?php foreach ($crumb as $label => $link): ?>
                    <?php if ($link == ''){ ?>
                        <?php 
                            $add_crumb = strpos(current_url(), '/add');
                            $edit_crumb = strpos(current_url(), '/edit');
                            $read_crumb = strpos(current_url(), '/read');
                            if ($add_crumb || $edit_crumb || $read_crumb) {
                        ?>
                            <li>
                                <?php 
                                    if ($add_crumb) {
                                        $part_link = str_replace('/add', '', current_url());
                                        $label_new = 'Add';
                                    }
                                    if ($edit_crumb) {
                                        $part_link = strstr(current_url(), '/edit', true);
                                        $label_new = 'Edit';
                                    }
                                    if ($read_crumb) {
                                        $part_link = strstr(current_url(), '/read', true);
                                        $label_new = 'Read';
                                    }
                                ?>
                                <a href="<?php echo $part_link ?>"><?php echo $label ?></a>
								
                            </li>
                            <li>
                                <?php echo $label_new ?>
								
                            </li>
                        <?php }else{ ?>
                            <li>
                                <?php echo $label ?>
                            </li>
                        <?php } ?>
                    <?php }else{ ?>
                        <li>
                            <a href="<?php echo site_url($link) ?>"> <?php echo $label ?></a>
							<i class="fa fa-angle-right"></i>
                        </li>            
                    <?php } ?>
                <?php endforeach ?>
            <?php } ?>
          </ul>
			</div>
            <?php if(isset($param1)){?>
    			<h3 class="page-title <?php echo $param1; ?>" style="text-decoration: underline; margin-bottom: 0px;">
    			<?php echo $judul ?>
    			</h3>
                <p class="<?php echo $param1; ?> page-sub-title"><?php echo $subjudul ?></p>
			<?php } else { ?>
                <h3 class="page-title">
                <?php echo $judul ?>
                </h3>
            <?php } ?>
		<?php echo $page ?>
		</div>
	</div>

<!-- BEGIN FOOTER -->
<div class="page-footer">
	<div class="page-footer-inner">
		<strong>Copyright &copy; 2018 <a href="#">Bigrafis</a>.</strong> All rights reserved.
	</div>
</div>
<!-- END FOOTER -->

	
<!-- GroceryCRUD JS -->
<?php if (isset($js_files)) { foreach($js_files as $file): ?> 
    <script src="<?php echo $file; ?>"></script>
<?php endforeach; $this->load->view('template/spkmesinjs'); } 
    else if(isset($jsFiles)){?>
    
 
    <script src="http://localhost/bigrafis/assets/grocery_crud/js/jquery-1.11.1.min.js"></script>
 
    <script src="http://localhost/bigrafis/assets/grocery_crud/js/jquery_plugins/jquery.chosen.min.js"></script>
 
    <script src="http://localhost/bigrafis/assets/grocery_crud/js/jquery_plugins/config/jquery.chosen.config.js"></script>
 
    <script src="http://localhost/bigrafis/assets/grocery_crud/js/jquery_plugins/ui/jquery-ui-1.10.3.custom.min.js"></script>
 
    <script src="http://localhost/bigrafis/assets/grocery_crud/js/jquery_plugins/config/jquery.datepicker.config.js"></script>
 
    <script src="http://localhost/bigrafis/assets/grocery_crud/themes/datatables/js/jquery.form.js"></script>
 
    <script src="http://localhost/bigrafis/assets/grocery_crud/js/jquery_plugins/jquery.form.min.js"></script>
 
    <script src="http://localhost/bigrafis/assets/grocery_crud/themes/datatables/js/flexigrid-add.js"></script>
 
    <script src="http://localhost/bigrafis/assets/grocery_crud/js/jquery_plugins/config/jquery.noty.config.js"></script>

<?php } else { ?>
    <script src="<?php echo base_url('assets/js/plugins/jQuery/jQuery-2.1.4.min.js') ?>"></script>             
<?php } ?>       

<!--JS Plugins-->
<?php if (isset($js_plugins)): ?>
    <?php foreach ($js_plugins as $url_plugin): ?>
        <script src="<?php echo base_url($url_plugin) ?>"></script>                
    <?php endforeach ?>
<?php endif ?>
<!--Bootstrap JS-->
<script src="<?php echo base_url('assets/js/bootstrap.min.js') ?>"></script>

<!--Alertify JS-->
<script src="<?php echo base_url('assets/js/alertify.min.js') ?>"></script>

<!--AdminLTE JS-->
<script src="<?php echo base_url('assets/metronic/js/jquery.slimScroll.min.js') ?>"></script>
<script src="<?php echo base_url('assets/js/plugins/fastclick/fastclick.min.js') ?>"></script>
<script src="<?php echo base_url('assets/js/app.min.js') ?>"></script>

<script>
    site         = '<?php echo site_url(); ?>';
    ur_class     = '<?php echo $this->uri->segment(1); ?>';
    url_function = '<?php echo $this->uri->segment(2); ?>';
    <?php if(!isset($param)){?>
    <?php echo isset($script) ? $script : '' ?>
    function datatablesOptions() { var option = { "orderClasses": false, <?php echo isset($data['script_datatables']) ? $data['script_datatables'] : '';  ?> }; return option; }
    function afterDatatables() { <?php echo isset($data['script_grocery']) ? $data['script_grocery']: '' ?> }
    <?php }?>
</script>

<script src="<?php echo base_url('assets/js/list.min.js') ?>"></script>
<?php echo isset($scriptView) ? $scriptView : ''; ?>
<!--Custom JS-->
<script src="<?php echo base_url('assets/metronic/js/jquery-easypiechart/jquery.easypiechart.min.js') ?>"></script>
<script src="<?php echo base_url('assets/metronic/js/metronic.js') ?>"></script>
<script src="<?php echo base_url('assets/metronic/js/layout.js') ?>"></script>
<script src="<?php echo base_url('assets/metronic/js/demo.js') ?>"></script>
<script src="<?php echo base_url('assets/js/a-design.js') ?>"></script>
<script src="<?php echo base_url('assets/js/index.js') ?>"></script>

<script src="<?php echo base_url('assets/metronic/js/quick-sidebar.js') ?>"></script>
<script src="<?php echo base_url('assets/metronic/js/jquery.uniform.min.js') ?>"></script>
<script src="<?php echo base_url('assets/metronic/js/flot/jquery.flot.resize.js') ?>"></script>
<script src="<?php echo base_url('assets/metronic/js/flot/jquery.flot.js') ?>"></script>
<script src="<?php echo base_url('assets/metronic/js/jquery.cokie.min.js') ?>"></script>
<script src="<?php echo base_url('assets/metronic/js/jquery.blockui.min.js') ?>"></script>
<script src="<?php echo base_url('assets/metronic/js/jquery-ui.min.js') ?>"></script>
<script src="<?php echo base_url('assets/metronic/js/jquery-migrate.min.js') ?>"></script>
<script src="<?php echo base_url('assets/metronic/js/ecommerce-index.js') ?>"></script>
<script src="<?php echo base_url('assets/metronic/js/bootstrap-switch.min.js') ?>"></script>
<script src="<?php echo base_url('assets/metronic/js/bootstrap-hover-dropdown.min.js') ?>"></script>

<script src="<?php echo base_url('assets/metronic/js/jquery.pulsate.min.js') ?>"></script>
<script src="<?php echo base_url('assets/metronic/js/jquery.sparkline.min.js') ?>"></script>
<script src="<?php echo base_url('assets/metronic/js/index.js') ?>"></script>
<script src="<?php echo base_url('assets/metronic/js/tasks.js') ?>"></script>

<script src="<?php echo base_url('assets/js/plugins/datatables/dataTables.bootstrap.min.js')?>"></script>
<script src="<?php echo base_url('assets/js/plugins/datatables/jquery.dataTables.min.js')?>"></script>

<script>
jQuery(document).ready(function() {    
   Metronic.init(); // init metronic core componets
   Layout.init(); // init layout
   QuickSidebar.init(); // init quick sidebar
Demo.init(); // init demo features
   Index.init();   
   Index.initDashboardDaterange();
   Index.initJQVMAP(); // init index page's custom scripts
   Index.initCalendar(); // init index page's custom scripts
   Index.initCharts(); // init index page's custom scripts
   Index.initChat();
   Index.initMiniCharts();
   Tasks.initDashboardWidget();

/*
    var result = $(".bDiv input").filter(function () {
    return $.trim($(this).val()).length == 0
      }).length == 0;

    console.log("result" + result);

   $('.sendButton').prop('disabled',true);
    var inputs=jQuery.grep(inputs, function(input){
        return input.length>0;
    });
    if(inputs.length>0) {
        //return true;
    
    //return false;
        //$("input[id='qtydeliver']").keyup(function(){
            //if($(this).val().length !=0){
                console.log('false')
                $('.sendButton').prop("disabled", false);            
            }
            else{
                console.log('true')
                $('.sendButton').prop("disabled",true);
            }
        //})*/
});
</script>

<?php if (isset($param) && $param == 'nonprod') { ?>
<script>
    $(document).ready( function () {
       // $('.dataTables_wrapper').addClass('table-scrollable');
      var table = $('#example').DataTable({
        "columnDefs": [
          { className: "dt-right", "targets": [2,4,6,7] }
        ],
        "bPaginate": false,
        "bLengthChange": false,
        "bFilter": false,
        "bInfo": false,
        "bAutoWidth": false,
      });
    });
</script>
<?php } ?>

<script>  
    $('#header_notification_bar').hover(function(){
            var id = $("#notification").attr('data-value');            
            $.ajax({
               type : "POST",
               url  : "<?php echo base_url(); ?>index.php/Purchase/updatenotif",
               data : "groupId=" + id,
               success: function(data){
                   console.log(data)
                   $('.badge').text('0');
               },error: function () {
                    console.log('error: '+data)
                },
            });
        });
</script>
</body>
</html>