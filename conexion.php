<?php
  $server="localhost";
  $username="root";
  $password="";
  $bd='bdcarrito';
  $con=mysqli_connect($server,$username,$password)or die("no se conecto");
  $sdb=mysqli_select_db($con,$bd)or die("la bd no existe");
 ?>
