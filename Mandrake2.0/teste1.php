<?php
$conexao=mysqli_connect("localhost","root","","formulario_visita")
            	or die ("sem conexão");
mysqli_set_charset($conexao, "utf8");
$nome=$_POST['nome'];
$email=$_POST['email'];
$cnpj=$_POST['cnpj'];
$telefone=$_POST['telefone'];
$comentario=$_POST['comentario'];
$gravar="INSERT INTO tabelacnpj (nome,email,cnpj,telefone,comentario) VALUES ('$nome','$email','$cnpj','$telefone','$comentario')"; 
$resultado=mysqli_query($conexao, $gravar);
if ($resultado) {
	echo "<script language ='javascript' type= 'text/javascript'>alert (' Comentário registrado!'); window.location.href='Mandrake1.html';</script>";
} else {
	echo "Error: "  ;
}
mysqli_close($conexao);

            	?>