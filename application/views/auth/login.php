
<body class="login">


<div class="logo">
	<a href="index.html">
	<img src="<?php echo base_url('assets/img/logo_big.png'); ?>" />
	</a>
</div>

 <div class="content"> 
	<!-- BEGIN LOGIN FORM -->
	<form class="login-form" action="<?php echo site_url('auth/ajax_login')?>" method="post">
		<center><h4 class="form-title">Sign in to start your session</h3></center>
		
		<div class="message"></div>
		<div class="alert alert-danger display-hide">
			<button class="close" data-close="alert"></button>
			<span>
			Enter any username and password. </span>
		</div>
		<div class="form-group">
			<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
			<label class="control-label visible-ie8 visible-ie9">Username</label>
			<input class="form-control form-control-solid placeholder-no-fix" type="text" placeholder="Username" name="identity" autofocus/>
		</div>
		<div class="form-group">
			<label class="control-label visible-ie8 visible-ie9">Password</label>
			<input class="form-control form-control-solid placeholder-no-fix" type="password" autocomplete="off" placeholder="Password" name="password"/>
		</div>
		<div class="form-actions">
		
			<button type="submit" class="btn btn-success uppercase"><span id="btnLoading" ></span><?php echo lang('login_submit_btn')?></button>
			<label class="rememberme check">
			<?php echo lang('login_remember_label');?><input type="checkbox" name="" value="1"> </label>
			
		</div>
	</form>
	<!-- END LOGIN FORM -->
	
</div>
</body>


<script>
$(function(){
  redirect = '<?php echo $redirect ?>';
  base_url = '<?php echo base_url() ?>';
  $('input').iCheck({ checkboxClass: 'icheckbox_square-blue' });

  $('form').on('submit',function(event){
    event.preventDefault();
    $("#btnLoading").addClass('disabled');
    $("#btnLoading").html('<img src="' + base_url + 'assets/svg/loading-spin.svg" alt=""> ');

    $.ajax({
        url      : $(this).attr('action'),
        type     : 'POST',
        data     : $(this).serialize(),
        success  : function(data) {
            if (data == "false") {
              $('.message').html('<div class="alert alert-danger">Invalid login</div>').hide().slideDown();
              $('input').val('');
              $('input[name="identity"]').focus();
            }else{
              window.location.href = redirect;
            }
            $("#btnLoading").html('');
        }
    });
  });
});
</script>