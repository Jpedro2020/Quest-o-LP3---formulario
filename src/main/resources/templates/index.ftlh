<!DOCTYPE html>
<html lang="pt-br">
<!-- Compiled and minified CSS -->
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<head>
    <meta charset="UTF-8">
    <title>TELA CADASTRO</title>
 </head>
 
 <script>
 
$( document ).ready(function() {
    console.log( "ready!" );
    
    $('#enviarBTN').click(chama);
    
    
    function chama(){

	var nome=$('#nome').val();

	var dia=$('#dia').val();

	var mes=$('#mes').val();
	
	var ano=$('#ano').val();

	var passado= new Date(ano,mes-1,dia)
	var agora = new Date();
	
	if(nome==""||nome==null){
	  M.toast({html: ' NOME INVÁLIDO!'})
	}
	
if(passado > agora){
   M.toast({html: 'DATA DE NASCIMENTO INVÁLIDO!'})
   $('#dia').val("");
   $('#mes').val("");
   $('#ano').val("");
}

    
    }
    
    
    
});



 </script>
 
 
<body>



<form action="#">

    <p>

     <nav>
    <div class="nav-wrapper">
      <a id="#" class="card-panel teal lighten-2">EFETUE SEU CADASTRO</a>

    </div>

  </nav>
	 
	 <label>
       <span>NOME: (OBRIGATÓRIO) </span>
        <input placeholder="Joselia Silva "id="nome" name="nome" type="text"/>
       </label>
    
    
    <h3>Informações de Nascimento:</h3>
      <label>
       <span>DIGITE SEU DIA DE NASCIMENTO</span>
        <input placeholder="00" id="dia" name="dia" type="text"/>
       </label>
       </p>
       <p>
       <label>
       <span>DIGITE SEU MES DE NASCIMENTO</span>
        <input placeholder="00" id="mes" name="mes" type="text"/>
       </label>
    </p>
      <p>
       <label>
       <span>DIGITE SEU ANO DE NASCIMENTO</span>
        <input placeholder="00" id="ano" name="ano" type="text"/>
       </label>
	   <label>
       <span>PARA FINALIZAR DIGITE SEU CPF (OPCIONAL) </span>
        <input placeholder="000.000.000-00" id="cpf" name="cpf" type="text"/>
       </label>
    </p>
     <a id="enviarBTN" class="waves-effect waves-light btn center">CLIQUE AQUI PARA ENVIAR</a>
       
  </form>

        



</body>
</html>