<?php 
    session_start();

    ?>
<!DOCTYPE html>
<html>
<?php $title="Bloodbank | About page"; ?>
<?php require 'head.php'; ?>
<head>
  <title></title>
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  
</head>
<body>

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Blood Bank</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="main.php">Home <span class="sr-only">(current)</span></a>
       
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="about.php">About</a>
       
      </li>
      <li class="nav-item">
        <a class="nav-link" href="contact.php">Contact</a>
       
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="index.php">Login/Register<span class="sr-only">(current)</span></a>
       
      </li>
     
    </ul>
 
  </div>
</nav>

<div class="jumbotron">
  <h1>Anytime!</h1>
  <p>Wherever you are, We are always here to help you!</p>
  <div class="col-lg-6 col-md-6 col-12">
	<img src="image/IMG_1658.jpg" style="width:70px;height:70px;" class="img-fluid aboutimg"> <img src="image/Akshay.PNG" style="width:70px;height:70px;" class="img-fluid aboutimg"> <img src="image/Pooja.PNG" style="width:70px;height:70px;" class="img-fluid aboutimg"> <img src="image/ram.PNG" style="width:70px;height:70px;" class="img-fluid aboutimg"> <img src="image/Chandu.PNG" style="width:70px;height:70px;" class="img-fluid aboutimg"> 
	</div>
</div>

<section class="my-6">
  <div class="py-6">
  <h2 class="text-center">Contact Us</h2>
  </div>

  <div>
  <p class="text-center bg-dark text-white">Arun Kumar Bashetty - (469)426-5989, arunkumar.bashett@sus.edu<br>Akshay Surya - (475)298-8147, akshay.surya@sus.edu<br>Lakshmi pooja Boddireddy - (904)240-9968, lakshmipooja.Boddireddy@sus.edu <br>Chandrakanth Konduru - (551)328-9107, chandrakanth.Konduru@sus.edu <br>Ram Middidoddi  - (334)895-1068, ram.Middidoddi@sus.edu <br>Sindhu Rangineni - (318)518-7410, sindhu.Rangineni @sus.edu 
  </p>
  <a href=".php"> </a>
</div>
</section>
<?php require 'footer.php'; ?>
</body>
</html>