<?php
  session_start();
  include 'conexion.php';

  if (isset($_SESSION['carrito'])) {
      if (isset($_GET['id'])) {
          $arreglo=$_SESSION['carrito'];
          $encontro=false;
          $num=0;
          for ($i=0; $i <count($arreglo) ; $i++) {
              if ($arreglo[$i]['Id']==$_GET['id']) {
                $encontro=true;
                $numero=$i;
              }
          }
          if ($encontro==true) {
            $arreglo[$numero]['Cantidad']=$arreglo[$numero]['Cantidad']+1;
            $_SESSION['carrito']=$arreglo;
          }else {
            $nombre="";
            $precio=0;
            $imagen="";
            $re=mysqli_query($con,"select * from celulares where id=".$_GET['id']);
            while ($f=mysqli_fetch_array($re)) {
              $nombre=$f['nombre'];
              $descripcion=$f['descripcion'];
              $imagen=$f['imagen'];
              $precio=$f['precio'];
            }
            $nuevodatos=array('Id'=>$_GET['id'],
                            'Nombre'=>$nombre,
                            'Descripcion'=>$descripcion,
                            'Imagen'=>$imagen,
                            'Precio'=>$precio,
                            'Cantidad'=>1);
            array_push($arreglo,$nuevodatos);
            $_SESSION['carrito']=$arreglo;
          }
    }

  } else {
    if (isset($_GET['id'])) {
      $nombre="";
      $precio=0;
      $imagen="";
      $re=mysqli_query($con,"select * from celulares where id=".$_GET['id']);
      while ($f=mysqli_fetch_array($re)) {
        $nombre=$f['nombre'];
        $descripcion=$f['descripcion'];
        $imagen=$f['imagen'];
        $precio=$f['precio'];
      }
      $arreglo[]=array('Id'=>$_GET['id'],
                      'Nombre'=>$nombre,
                      'Descripcion'=>$descripcion,
                      'Imagen'=>$imagen,
                      'Precio'=>$precio,
                      'Cantidad'=>1);
      $_SESSION['carrito']=$arreglo;
    }
  }

 ?>
<!DOCTYPE html>
<html lang="ES">
<head>
    <meta charset="Utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximun-scale=1,user-scalable=no">
    <title>ASUS</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false" class="navbar-toggle collapsed"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
          <a href="index.html" class="navbar-brand"><img src="img/logo-white.png" class="img-responsive"></a>
        </div>
        <div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">
          <ul class="nav navbar-nav nav-1">
              <li><a href="tabletas.php">Tabletas<span class="sr-only">(current)</span></a></li>
              <li><a href="sobremesa.php">Sobremesa</a></li>
              <li><a href="smartphone.php">Smartphones</a></li>
              <li><a href="gaming.php">Gaming</a></li>
              <li><a href="portatil.php">Portatiles</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
              <li>
                  <a href="carrito.php"><img src="img/icon-cart-w.png" class="img-responsive"></a>
              </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="container-fluid">
        <div class="row">
            <div class="tram"></div>
        </div>
    </div>

    <section class="carrito">
      <div class="container">
        <div class="row">
          <div class="well">
            <h1 class="text-center">Tu Carrito De Compras : </h1>
            <?php
              if (isset($_SESSION['carrito'])) {
                    $datos=$_SESSION['carrito'];
                    $total=0;
                    for ($i=0; $i <count($datos) ; $i++) {
            ?>
            <div class="list-group">
              <a href="#" class="list-group-item ">
               <div class="col-md-3">
                  <img class=" img-responsive img-rounded"  src="img/productos<?php echo $datos[$i]['Imagen']; ?>"  >
               </div>
               <div class="col-md-6">
                   <h2 class="list-group-item-heading"><?php echo $datos[$i]['Nombre']; ?></h2>
                   <p class="list-group-item-text"> <?php echo $datos[$i]['Descripcion']; ?>
                   </p>
               </div>
               <div class="col-md-3 text-center">
                   <h2><?php echo $datos[$i]['Precio']; ?><small> soles</small></h2>
                   <button type="button" class="btn btn-info btn-lg btn-block"> !Lleveloo! </button>
                   <div class="stars">
                      <p> <?php echo $datos[$i]['Cantidad']; ?> unidades </p>
                       <p>subtotal : <?php echo $datos[$i]['Cantidad']* $datos[$i]['Precio']; ?> soles</p>
                   </div>

               </div>
              </a>
            </div>
            <?php
                $total=($datos[$i]['Cantidad']* $datos[$i]['Precio'])+$total;
                    }
              }else {
                echo '<div class="list-group"><a class="list-group-item"><h1 class="text-center">El carrito de compras esta vacio</h1></a></div>';
              }
                echo '<h1 class="text-center">El Total es : '.$total.' soles</h1>'
             ?>



          </div>
        </div>
      </div>
    </section>

    <footer>
        <div class="fin container-fluid">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4 col-lg-push-4 col-md-push-4 col-sm-push-4 col-xs-12 columna-footer-centro">
                    <div class="contiene-redes"><span>Encuentranos en :</span>
                        <ul class="lista-redes">
                            <li><a href="https://web.facebook.com/asusperu/"><i aria-hidden="true" class="fa fa-facebook"></i></a></li>
                            <li><a href="https://twitter.com/asus_ib"><i aria-hidden="true" class="fa fa-twitter"></i></a></li>
                            <li><a href="https://www.youtube.com/user/asusiberica"><i aria-hidden="true" class="fa fa-youtube"></i></a></li>
                            <li><a href="https://www.instagram.com/asus_es/"><i aria-hidden="true" class="fa fa-instagram"></i></a></li>
                            <li><a href="location.html"><i aria-hidden="true" class="fa fa-map-marker"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-lg-pull-4 col-md-pull-4 col-sm-pull-4 col-xs-12 columna-footer-izquierda"><img src="img/logo-intel.png" class="logo-footer img-responsive"></div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 columna-footer-derecha"><img src="img/logo-nvidia.png" class="logo-footer img-responsive"></div>
            </div>
        </div>
    </footer>
    <div class="linea-negra">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 columna-terminos"><a href="#">Términos y condiciones</a></div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 columna-copy">&copy; ASUS Computer Inc. Derechos reservados.</div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/code.js"></script>
</body>

</html>
