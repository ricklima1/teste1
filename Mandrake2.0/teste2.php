<?php
$conexao=mysqli_connect("localhost","root","","formulario_visita")
            	or die ("sem conexão");
mysqli_set_charset($conexao, "utf8");
$nome=$_POST['nome'];
$email=$_POST['email'];
$cpf=$_POST['cpf'];
$telefone=$_POST['telefone'];
$comentario=$_POST['comentario'];
$gravar="INSERT INTO tabelacpf (nome,email,cpf,telefone,comentario) VALUES ('$nome','$email','$cpf','$telefone','$comentario')"; 
$resultado=mysqli_query($conexao, $gravar);
if ($resultado) {
	echo "<script language ='javascript' type= 'text/javascript'>alert (' Comentário registrado!'); window.location.href='Mandrake1.html';</script>";
} else {
	echo "Error: "  ;
}
mysqli_close($conexao);
            	?>