<div class="brand clearfix">
<h4 class="pull-left text-white text-uppercase" style="margin:20px 0px 0px 20px"><i class="fa fa-user"></i>&nbsp; <?php echo htmlentities($_SESSION['alogin']);?></h4>
		<span class="menu-btn"><i class="fa fa-bell"></i></span>
		<ul class="ts-profile-nav">
			
			<li class="ts-account">
				<a href="#"><img src="img/ts-avatar.jpg" class="ts-avatar hidden-side" alt=""> Compte Client <i class="fa fa-angle-down hidden-side"></i></a>
				<ul>
					<li><a href="change-password.php">Changer mot de passe</a></li>
					<li><a href="logout.php">Se deconnecter</a></li>
				</ul>
			</li>
		</ul>
	</div>
