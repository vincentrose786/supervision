<?php
include('includes/config.php');
if(isset($_POST['submit']))
{
$titre= $_POST['titre'];
$date_ouverture= $_POST['date_ouverture'];
$statut=$_POST['statut'];
$derniere_modif=$_POST['derniere_modif'];
$priorite=$_POST['priorite'];
$iduser=$_POST['iduser'];

$notitype='Create ticket';
$reciver='Admin';


/*$sqlnoti="insert into notification (notiuser,notireciver,notitype) values (:notiuser,:notireciver,:notitype)";
$querynoti = $dbh->prepare($sqlnoti);
$querynoti-> bindParam(':notiuser', $sender, PDO::PARAM_STR);
$querynoti-> bindParam(':notireciver',$reciver, PDO::PARAM_STR);
$querynoti-> bindParam(':notitype', $notitype, PDO::PARAM_STR);
$querynoti->execute(); */   
    
$sql ="INSERT INTO ticket(titre, date_ouverture, statut, derniere_modif, priorite, iduser) VALUES(:titre, :date_ouverture, :statut, :derniere_modif :priorite, :iduser)";
$query= $dbh -> prepare($sql);
$query-> bindParam(':titre', $titre, PDO::PARAM_STR);
$query-> bindParam(':date_ouverture', $date_ouverture, PDO::PARAM_STR);
$query-> bindParam(':statut', $statut, PDO::PARAM_STR);
$query-> bindParam(':derniere_modif', $derniere_modif, PDO::PARAM_STR);
$query-> bindParam(':priorite', $priorite, PDO::PARAM_STR);
$query-> bindParam(':iduser', $iduser, PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
var_dump;
echo "<script type='text/javascript'>alert('Registration Sucessfull!');</script>";
echo "<script type='text/javascript'> document.location = 'index.php'; </script>";
}
else 
{
$error="Il y a une erreur, reessayez";
}

}
?>

<!doctype html>
<html lang="en" class="no-js">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">

	
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
    <script type="text/javascript">

	function validate()
        {
            var extensions = new Array("jpg","jpeg");
            var image_file = document.regform.image.value;
            var image_length = document.regform.image.value.length;
            var pos = image_file.lastIndexOf('.') + 1;
            var ext = image_file.substring(pos, image_length);
            var final_ext = ext.toLowerCase();
            for (i = 0; i < extensions.length; i++)
            {
                if(extensions[i] == final_ext)
                {
                return true;
                
                }
            }
            alert("Image Extension Not Valid (Use Jpg,jpeg)");
            return false;
        }
        
</script>
</head>

<body>
	<div class="login-page bk-img">
		<div class="form-content">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1 class="text-center text-bold mt-2x">Ajout d'un ticket incident</h1>
                        <div class="hr-dashed"></div>
						<div class="well row pt-2x pb-3x bk-light text-center">
                         <form method="post" class="form-horizontal" enctype="multipart/form-data" name="regform" onSubmit="return validate();">
                            <div class="form-group">
                            <label class="col-sm-1 control-label">titre<span style="color:red">*</span></label>
                            <div class="col-sm-5">
                            <input type="text" name="titre" class="form-control" required>
                            </div>
							<label class="col-sm-1 control-label">date ouverture<span style="color:red">*</span></label>
                            <div class="col-sm-5">
                            <input type="text" name="date_ouverture" class="form-control" required>
                            </div>
                            <label class="col-sm-1 control-label">statut<span style="color:red">*</span></label>
                            <div class="col-sm-5">
                            <input type="text" name="statut" class="form-control" required>
                            </div>
							<div class="form-group">
                            <label class="col-sm-1 control-label">derniere modif<span style="color:red">*</span></label>
                            <div class="col-sm-5">
                            <input type="text" name="derniere_modif" class="form-control" id="password" required >
                            </div>
                            <div class="form-group">
                            <label class="col-sm-1 control-label">priorite<span style="color:red">*</span></label>
                            <div class="col-sm-5">
                            <input type="text" name="priorite" class="form-control" id="password" required >
                            </div>
							<div class="form-group">
                            <label class="col-sm-1 control-label">iduser<span style="color:red">*</span></label>
                            <div class="col-sm-5">
                            <input type="text" name="iduser" class="form-control" id="password" required >
                            </div>

                            

								<br>
								<button class="btn btn-primary" name="submit" type="submit"><a href="ticket.php" >Ajouter</a></p></button>
								
								
                                
                                </form>
                                <br>
                                <br>
								
							</div>
						</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Loading Scripts -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>

</body>
</html>