<!DOCTYPE html>
<html>
<title>Accueil SQY-Réseau</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}

</style>
<body>

<!-- Sidebar (hidden by default) -->
<nav class="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left" style="display:none;z-index:2;width:40%;min-width:300px" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()"
  class="w3-bar-item w3-button">Fermer le Menu</a>
  <a href="#food" onclick="w3_close()" class="w3-bar-item w3-button">SQY-Réseau</a>
  <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button">Contacter WebMaster</a>
</nav>

<!-- Top menu -->
<div class="w3-top">
  <div class="w3-white w3-xlarge" style="max-width:1200px;margin:auto">
    <div class="w3-button w3-padding-16 w3-left" onclick="w3_open()">☰</div>
    
    <div class="w3-center w3-padding-16">Qui êtes-vous ?</div>
  </div>
</div>
  
<!-- !PAGE CONTENT! -->
<div class="w3-main w3-content w3-padding" style="max-width:1200px;margin-top:100px">

  <!-- First Photo Grid-->
  <div class="w3-row-padding w3-padding-16 w3-center" id="food">
    <div class="w3-quarter">
	<a href="admin/index.php"><img src="images/admin.jpg" alt="admin" height="180px" width="250px" style="width:100%" border="0"/></a>
      <h3>Vous etes administrateur/ Technicien</h3>
      
    </div>
    <div class="w3-quarter">
	<a href="commercial/index.php"><img src="images/commercial.jpg" alt="commercial" height="180px" width="250px" style="width:100%" border="0"/></a>
      <h3>Vous etes commercial</h3>

    </div>
    <div class="w3-quarter">
      <a href="index.php"><img src="images/client.jpg" alt="client" height="180px" width="250px" style="width:100%" border="0"/></a>
	  <h3>Vous etes client</h3>
      
      
    </div>
    <div class="w3-quarter">
		<a href="ceo/index.php"><img src="images/ceo.jpg" alt="Ceo" height="180px" width="250px" style="width:100%" border="0"/></a>
      <h3>Vous etes Patron</h3>
      
    </div>
  </div>