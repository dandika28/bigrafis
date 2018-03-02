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
	
    <!--CSS PLUGINS-->
    <?php if (isset($css_plugins)): ?>
        <?php foreach ($css_plugins as $url_plugin): ?>
            <link rel="stylesheet" href="<?php echo base_url("$url_plugin") ?>">
        <?php endforeach ?>
    <?php endif ?>
	

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
    <link href="<?php echo base_url('assets/metronic/css/components.css') ?>" id="style_components" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url('assets/metronic/css/plugins.css') ?>" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url('assets/metronic/css/layout.css') ?>" rel="stylesheet" type="text/css">
    <!--link href="<?php echo base_url('assets/metronic/css/darkblue.css') ?>" rel="stylesheet" type="text/css" id="style_color"/-->

    <link rel="stylesheet" href="<?php echo base_url('assets/css/themes/'.$settings->skin.'.css') ?>">

    <link href="<?php echo base_url('assets/metronic/css/custom.css') ?>" rel="stylesheet" type="text/css">
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- END CUSTOM METRONIC-->

	
</head>
<body class="page-header-fixed page-quick-sidebar-over-content ">
	<!-- BEGIN HEADER -->
	<div class="page-header navbar navbar-fixed-top">
		<!-- BEGIN HEADER INNER -->
		<div class="page-header-inner">
			<!-- BEGIN LOGO -->
			<div class="page-logo">
				<a href="<?php echo site_url('crud/index') ?>">
				<img src="<?php echo base_url('assets/img/logo_big_new.png'); ?>" alt="logo" class="logo-default" />
				</a>
                <div class="menu-toggler sidebar-toggler hide">
                </div>
			</div>
			<!-- END LOGO -->
		
            <!-- BEGIN RESPONSIVE MENU TOGGLER -->
            <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
            </a>
            <!-- END RESPONSIVE MENU TOGGLER -->

			<!-- BEGIN TOP NAVIGATION MENU -->
			<div class="top-menu">
				<ul class="nav navbar-nav pull-right ">
					<!-- BEGIN USER LOGIN DROPDOWN -->
					<li class="dropdown dropdown-user">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
							<img src="<?php echo base_url('assets/img/avatar04.png') ?>" class="img-circle" alt=""/>
							<span class="username username-hide-on-mobile"><?php echo $this->ion_auth->user()->row()->username ?></span>
							<i class="fa fa-angle-down"></i>
						</a>
						
						<ul class="dropdown-menu dropdown-menu-default">
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

                <li class="sidebar-search-wrapper">
                    <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
                    <!-- DOC: Apply "sidebar-search-bordered" class the below search form to have bordered search box -->
                    <!-- DOC: Apply "sidebar-search-bordered sidebar-search-solid" class the below search form to have bordered & solid search box -->
                    <form class="sidebar-search " action="extra_search.html" method="POST">
                        <a href="javascript:;" class="remove">
                        <i class="icon-close"></i>
                        </a>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                            <a href="javascript:;" class="btn submit"><i class="icon-magnifier"></i></a>
                            </span>
                        </div>
                    </form>
                    <!-- END RESPONSIVE QUICK SEARCH FORM -->
                </li>

            <!--ul class="sidebar-menu list" id="menuSub"-->
			
                <?php foreach ($header_menu->result() as $header): ?>
                    <center>
					<li class="header"><?php echo $header->header ?></li>
					</center>
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
														<?php echo $lvlOne->label ?> 
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
								<span><?php echo $menu_item->label ?></span></a></li>
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
	       <h3 class="page-title">
             <?php echo $judul ?>
            </h3>
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
<?php endforeach; $this->load->view('template/spkmesinjs'); } else { ?>
    <script src="<?php echo base_url('assets/js/plugins/jQuery/jQuery-2.1.4.min.js') ?>"></script>             
<?php } ?>       

<!--JS Plugins-->
<?php if (isset($js_plugins)): ?>
    <?php foreach ($js_plugins as $url_plugin): ?>
        <script src="<?php echo base_url($url_plugin) ?>"></script>                
    <?php endforeach ?>
<?php endif ?>
<!--Bootstrap JS-->
<script src="<?php echo base_url('assets/metronic/js/bootstrap.min.js') ?>"></script>

<script src="<?php echo base_url('assets/metronic/js/bootstrap-hover-dropdown.min.js') ?>"></script>

<script src="<?php echo base_url('assets/metronic/js/bootstrap-switch.min.js') ?>"></script>
<script src="<?php echo base_url('assets/metronic/js/demo.js') ?>"></script>
<script src="<?php echo base_url('assets/metronic/js/ecommerce-index.js') ?>"></script>


<!--AdminLTE JS-->
<script src="<?php echo base_url('assets/js/plugins/slimScroll/jquery.slimScroll.min.js') ?>"></script>
<script src="<?php echo base_url('assets/js/plugins/fastclick/fastclick.min.js') ?>"></script>
<script src="<?php echo base_url('assets/js/app.min.js') ?>"></script>
<script>
    site         = '<?php echo site_url(); ?>';
    ur_class     = '<?php echo $this->uri->segment(1); ?>';
    url_function = '<?php echo $this->uri->segment(2); ?>';
    <?php echo isset($script) ? $script : '' ?>
    function datatablesOptions() { var option = { "orderClasses": false, <?php echo isset($data['script_datatables']) ? $data['script_datatables'] : ''  ?> }; return option; }
    function afterDatatables() { <?php echo isset($data['script_grocery']) ? $data['script_grocery']: '' ?> }
</script>
<script src="<?php echo base_url('assets/js/list.min.js') ?>"></script>
<?php echo isset($scriptView) ? $scriptView : ''; ?>
<!--Custom JS-->
<script src="<?php echo base_url('assets/js/plugins/jquery-easypiechart/jquery.easypiechart.min.js') ?>"></script>
<script src="<?php echo base_url('assets/js/metronic.js') ?>"></script>
<script src="<?php echo base_url('assets/js/layout.js') ?>"></script>
<script src="<?php echo base_url('assets/js/demo.js') ?>"></script>
<script src="<?php echo base_url('assets/js/a-design.js') ?>"></script>
<script src="<?php echo base_url('assets/js/index.js') ?>"></script>
<script>
jQuery(document).ready(function() {    
   Metronic.init(); // init metronic core componets
   Layout.init(); // init layout
   //QuickSidebar.init(); // init quick sidebar
Demo.init(); // init demo features
   Index.init();   
   //Index.initDashboardDaterange();
   //Index.initJQVMAP(); // init index page's custom scripts
   //Index.initCalendar(); // init index page's custom scripts
   //Index.initCharts(); // init index page's custom scripts
   //Index.initChat();
   Index.initMiniCharts();
   //Tasks.initDashboardWidget();
});
</script>
</body>
</html>