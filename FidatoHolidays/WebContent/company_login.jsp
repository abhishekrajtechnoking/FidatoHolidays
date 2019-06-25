
<!DOCTYPE html>
<html lang="en">
	
<head>
		<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<title>Holiday- Packages, Itinerary and more</title>
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="Technoking Infotech Pvt. Ltd."/>
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="favicon.ico">
		<link rel="icon" href="dms/favicon.ico" type="image/x-icon">
		
		<!-- vector map CSS -->
		<link href="dms/dist/theme/css/jasny-bootstrap.min.css" rel="stylesheet" type="text/css"/>
		
		
		
		<!-- Custom CSS -->
		<link href="dms/dist/css/style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<!--Preloader-->
		<div class="preloader-it">
			<div class="la-anim-1"></div>
		</div>
		<!--/Preloader-->
		
		<div class="wrapper pa-0">
		<?php 
		$response=$_GET['id'];
	
		?>
			<!-- Main Content -->
			<div class="page-wrapper pa-0 ma-0">
				<div class="container-fluid">
					<!-- Row -->
					<div class="table-struct full-width full-height">
						<div class="table-cell vertical-align-middle">
						    <div class="auth-form  ml-auto mr-auto no-float">
						        <img src="dms/dist/img/logo.png" alt="brand" style="height:50px; margin-left:40%;">
							
								<div class="panel panel-default card-view mb-0">
									<div class="panel-heading">
										<div class="pull-left">
											<h6 class="panel-title txt-dark">Login for Admin/Employee</h6>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="panel-wrapper collapse in">
										<div class="panel-body">
											<div class="row">
												<div class="col-sm-12 col-xs-12">
													<div class="form-wrap">
														<form action="auth.php" method="POST">
															<div class="form-group">
																<label class="control-label mb-10" for="username">User ID</label>
																<div class="input-group">
																	<input type="text" class="form-control" required="" name="userid" placeholder="Enter UserID">
																	<div class="input-group-addon"><i class="icon-envelope-open"></i></div>
																</div>
															</div>
															<div class="form-group ">
																<label class="control-label mb-10" for="Password">Password</label>
																<div class="input-group">
																	<input type="password" class="form-control" required="" name="password" placeholder="Enter password">
																	<div class="input-group-addon"><i class="icon-lock"></i></div>
																</div>
															</div>
															
															<div class="form-group">
																
																<a class="capitalize-font txt-danger block pt-5 pull-right" href="forgot_password.php">Forgot Password?</a>
																<div class="clearfix"></div>
															</div>
															<div class="form-group">
																<button type="submit" value="login" name="login" class="btn btn-success btn-block">Sign in</button>
															</div>
														
														</form>
														<?php
															if($response==1){
		    echo "Using wrong Credential or INACTIVE...";
		} 
														?>
													</div>
												</div>	
											</div>
										</div>
									</div>
								</div>
								<p>&nbsp;</p>
								<p> &copy; 2019 Fidato Holidays, All rights reserved.</p>
							</div>
						</div>
					</div>
					<!-- /Row -->	
				</div>
				
			</div>
			<!-- /Main Content -->
		
		</div>
		<!-- /#wrapper -->
		
		<!-- JavaScript -->
		
		<!-- jQuery -->
		<script src="dms/dist/theme/js/jquery.min.js"></script>
		
		<!-- Bootstrap Core JavaScript -->
		<script src="dms/dist/theme/js/bootstrap.min.js"></script>
		<script src="dms/dist/theme/js/jasny-bootstrap.min.js"></script>
		
		<!-- Slimscroll JavaScript -->
		<script src="dms/dist/js/jquery.slimscroll.js"></script>
	
	<!-- Fancy Dropdown JS -->
	<script src="dms/dist/js/dropdown-bootstrap-extended.js"></script>
		
		<!-- Init JavaScript -->
		<script src="dms/dist/js/init.js"></script>
	</body>

</html>
