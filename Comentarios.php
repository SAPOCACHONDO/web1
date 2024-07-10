<section class="mb-5">
                        <div class="card bg-light">
                            <div class="card-body">
                                <?php  if(!isset($_SESSION['id'])): ?>
                                    Para comentar debes acceder <a  href="login.php">accerder </a>
                                    <?php else:?> 
                                <!-- Comment form-->
                                 <?php 
                                 $id_user = $_SESSION['id'];
                                  $sql = "SELECT id,usuario FROM login WHERE id = '$id_user'";
                                  $resultado = $base->prepare($sql);
                                  $resultado->execute();
                                  ?>
                                <form class="mb-4" action="procesa_comentario.php" method="post">
                                    <input type="hidden" name="id_post" value="<?php echo $id_post?>">
                                <?php foreach($resultado as $datos):?>
                                    <input type="hidden" name="id_usuario" value="<?php echo $datos['id']?>"> 
                                    <input type="hidden" name="usuario" value="<?php echo $datos['usuario']?>"> 
                                <?php endforeach;?>  
                                <textarea class="form-control" rows="3" placeholder="Unete a la discucion y escribe tu coment!" name="comentario"></textarea>
                                    <button class= "btn btn-primary mt-2" type="submit" name="enviar">Comentar</button>
                                 </form>
                                <?Php endif;?>
                               
                              
                            </div>
                        </div>
                    </section>
                     <!-- Comment with nested comments-->
                     <h3 class="mb-2">COMENTARIOS </h3><hr>
                    <section class="mb-5">


                    <?php 
                        $sql ="SELECT * FROM comentarios WHERE id_post = '$id_post'";
                        $resultado = $base->prepare($sql);
                        $resultado->execute();
                    
                    
                     ?>
                        
                        <?php foreach($resultado as $datos):?>        
                                    
                                        <div class="fw-bold"><?php echo $datos['fecha']?> <?php echo $datos['usuario']?> :</div>
                                        <?php echo $datos['comentario']?>
                            <?php endforeach;?> 
                                    
                                



                    </section>