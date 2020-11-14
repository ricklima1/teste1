<?php
$conexao=mysqli_connect("localhost","root","","formulario_visita")
            	or die ("sem conexão");
mysqli_set_charset($conexao, "utf8");
$casa=$_POST['casa'];
$nome=$_POST['nome'];
$email=$_POST['email'];
$dtvisit=$_POST['datavisita'];
$horario=$_POST['horario'];
$corretors=$_POST['corretores'];
$gravar="INSERT INTO clientes (nome,casa,email,data,hora,corretores) VALUES ('$nome','$casa','$email','$dtvisit','$horario','$corretors')"; 
$resultado=mysqli_query($conexao, $gravar);
if ($resultado) {
	echo "<script language ='javascript' type= 'text/javascript'>alert (' Cadastrado com sucesso'); window.location.href='Mandrake1.html';</script>";
} else {
	echo "Error: "  ;
}
mysqli_close($conexao);
            	?>

