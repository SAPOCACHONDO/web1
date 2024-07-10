<?php
   
   
   include('includes/header.php');
   

   if(!isset($_SESSION["usuario"])){
   	header("Location:index.php");
   }
      $id_url = $_GET['id'];
      //$id_usuario = $_SESSION['usuario'];
      $pagina = $_SERVER['PHP_SELF'];
      
      $sql ="SELECT * FROM login WHERE id = '$id_url'";
      $resultado = $base->prepare($sql);
      $resultado->execute();
      
      

      /*$sql_post = "SELECT distinct categoria FROM post WHERE id_usuario = '$id_url'";   
      $resultado_post = $base->prepare($sql_post);
      $resultado_post->execute();
      $registro = $resultado_post->rowCount();*/
      
   
?>
    <div class="container mt-5 mb-5">
    <div class="main-body">
   
          <!-- Breadcrumb -->
          <!--<nav aria-label="breadcrumb" class="main-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.html">Home</a></li>
              <li class="breadcrumb-item"><a href="javascript:void(0)">User</a></li>
              <li class="breadcrumb-item active" aria-current="page">User Profile</li>
            </ol>
          </nav>-->
          <!-- /Breadcrumb -->
    <br>
          <div class="row gutters-sm">
            <div class="col-md-12 mb-4">
              <div class="card" >
                <div class="card-body">
                  <?php foreach($resultado as $datos):?>

                  <div class="d-flex flex-column align-items-center text-center" >
                      
                    <img src="uploads/<?php echo $datos['imagen'];?>" alt="Admin" class="rounded-circle" width="150" height="150">
                    <div class="mt-3">
                      <h4><?php echo $datos['usuario']?></h4>
                      <p class="text-muted font-size-sm">Correo: <?php echo $datos["email"]?></p>
                      <?php endforeach; ?>
                      <?php 
                       $sql_post = "SELECT categoria FROM post WHERE id_usuario = '$id_url'";
                       $resultado_post = $base->prepare($sql_post);
                       $resultado_post->execute();
                       foreach($resultado_post as $datos):
                      
                       ?>
                      <p class="text-muted font-size-sm">Post: <?php echo $datos['categoria']?></p>
                        <?php endforeach;?>
                      <?php if($_SESSION['id']==$id_url):?>
                      <button class="btn btn-primary"><a class="text-decoration-none link-light" href="editar_perfil.php?pag=<?php echo $pagina?>&id=<?php echo $_SESSION['id']?>">Editar Perfil</a></button>
                        <a class="text-decoration-none btn btn-outline-primary" href="cerrar_sesion.php">Cerrar Sesion</a>
                          <?php endif;?>
                    </div>
                  </div>
                </div>
              </div>
            
              
                           
                             
            </div>
           
          </div>
           
        </div>
    </div>

     