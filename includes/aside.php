<div class="col-lg-4">
                    <?php if(isset($_SESSION['id'])): ?>
                        
                    <a class="btn btn-primary mb-2" href="crear_post.php?id=<?php echo $_SESSION['id'] ?>"> Crear Post</a>
                    <?php endif;?>
                    <!-- Search widget-->
                    <div class="card mb-4">
                        <div class="card-body">
                            <div class="input-group">
                                <form action="buscar.php" method="post" class="input-group">
                                <input class="form-control" type="text" placeholder="Buscador/Escriba algo..." aria-label="Buscador/Escribe algo..." aria-describedby="button-search" name="buscar"  />
                                <button class="btn btn-primary" id="button-search"  type="submit">Buscar</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <?php
                        $sql = "SELECT distinct categoria FROM post";
                        $resultado = $base->prepare($sql); 
                        $resultado->execute();



                    ?>
                    
                    <!-- Categories widget-->
                    <div class="card mb-4">
                        <div class="card-header">Categorias</div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6">
                                    <?php foreach($resultado as $datos):  ?>
                                    <ul class="list-unstyled mb-0">
                                        <li><a href="categoria.php?id=<?php echo $datos['categoria']?>"><?php echo $datos['categoria'] ?></a></li>
                                        
                                    </ul>
                                    <?php endforeach; ?>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    <!-- Side widget-->
                    <div class="card mb-4">
                        <?php 
                         $sql = "SELECT id,usuario,imagen FROM login";
                         $resultado = $base->prepare($sql);
                         $resultado->execute();
                         $registro = $resultado->rowCount();
                          
                         ?>
                        <div class="card-header">Informacion</div>
                        <div class="card-body">Usuarios registrados: <?php echo $registro . "<br>";
                         
                         foreach($resultado as $datos):
                            $id_user = $datos['id'];
                         ?> 
                         <a href="perfil.php?id=<?php echo$id_user;?>">
                         <img class="card-body"><img width="40px" height="40px" class="rounded-circle" src="uploads/<?Php echo $datos['imagen']?>" alt="..." /></a>       
                        <?php endforeach;?></div>
                    </div>
                </div>