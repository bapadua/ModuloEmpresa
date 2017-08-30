<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Insert de Fornecedor 0.1 by Solu��o L�gica
Vers�o inicial do CRUD. 0.0.0.1

Pagina desenvolvida com fins did�ticos para o trabalho com controle de vers�o github.
Compartilhado com os alunos da UNIVERSIDADE MOGI DAS CRUZES:

Autor Bruno Alves de P�dua - Bacharelando em Sistemas de Informa��o.
Endere�o GitHub: https://github.com/solucaologica
Email: solucaoelogica@gmail.com

Ferramentas utilizadas:

SDK: Eclipse Oxygen - dispon�vel em https://www.eclipse.org/downloads/?
WampServer(Mysql) dispin�vel em http://www.wampserver.com/en/
MysqlWorkBench dispon�vel em https://dev.mysql.com/downloads/workbench/
 -->

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>::WebEmpresa</title>
<link href="main.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="jquery-2.1.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function (){		
		$("#txtCnpj").focus();
		
		$("#txtCnpj").keyup(function(){
			if( $(this).val().length == 3){
				$(this).val($(this).val()+".");
			}else if( $(this).val().length == 7){
				$(this).val($(this).val()+".");
			}else if( $(this).val().length == 11){
				$(this).val($(this).val()+"/");
			}else if( $(this).val().length == 16){
				$(this).val($(this).val()+"-");
			}
		});
		
		$("#txtCpf").keyup(function(){
			if( $(this).val().length == 3){
				$(this).val($(this).val()+".");
			}else if($(this).val().length == 7){
				$(this).val($(this).val()+".");
			}else if($(this).val().length == 11){
				$(this).val($(this).val()+"-");
			}
		});
		
		$("#txtTelefone").keyup(function(){
			if( $(this).val().length == 2){
				$(this).val("("+$(this).val()+")");
			}else if( $(this).val().length == 9){
				$(this).val($(this).val()+"-");
			}
		});
		
		$("#txtFundacao").keyup(function(){
			if( $(this).val().length == 2){
				$(this).val($(this).val()+"/");
			}else if($(this).val().length == 5){
				$(this).val($(this).val()+"/");
			}else if($(this).val().length == 10){
				var inverter = $(this).val();
				inverter = inverter.split();
				normal = inverter.reverse().join("");
				$(this).val(normal);
			}			
		});
		
		$("#txtWebsite").click(function(){
			if( $(this).val().length == 0){
				$(this).val("http://www.");
			}
		});
		
	});
</script>
</head>
<body>
<fieldset id="cadastro">
	<legend>CADASTRO:</legend>
	<form method="post" action="Empresa?do=novo">
		<label>CNPJ:</label> 
		<br/> 
		<input type="text" name="txtCnpj" id="txtCnpj" /> 
		<br/> 
		<label>CPF:</label>
		<br/>
		<input type="text" name="txtCpf" id="txtCpf" /> 
		<br /> 
		<label>INSCRI��O ESTADUAL:</label> 
		<br /> 
		<input type="text" name="txtInscricaoEstadual" id="inscricaoEstadual" /> 
		<br />
		<label>INSCRI��O MUNICIPAL:</label>
		<br/>
		<input type="text" name="txtInscricaoMunicipal" id="inscricaoMunicipal"/>
		<br/>
		<label>NOME FANTASIA:</label>
		<br/>
		<input type="text" name="txtNomeFantasia" />
		<br/>
		<label>RAZ�O SOCIAL</label>
		<br/>
		<input type="text" name="txtRazaoSocial" />
		<br/>
		<label>FUNDA��O(AAAA/MM/DD):</label>
		<br/>
		<input type="text" name="txtFundacao" id="txtFundacao" /> 
		<br/>
		<label>CONTATO PRINCIPAL:</label>
		<br/>
		<input type="text" name="txtContatoPrincipal" />
		<br/>
		<label>EMAIL:</label>
		<br/>
		<input type="text" name="txtEmail" /> 
		<br/>
		<label>WEBSITE:</label>
		<br/>
		<input type="text" name="txtWebsite" id="txtWebsite"/>
		<br/>
		<label>TELEFONE:</label>
		<br/>
		<input type="text" name="txtTelefone" id="txtTelefone" />
		<br/>
		<br/>
		<label>RAMO ATIVIDADE:</label>
		<select name="txtRamoAtividade">
			<option value="0">----</option>
		</select>
		<!-- O insert da empresa nessa vers�o � feita at� o contato principal 
		Decidi colocar o endere�o da empresa em uma tabela diferente afim de controlar
		Filiais de uma mesma empresa e tamb�m hist�rico caso haja alguma mudan�a de endere�o
		 -->
		<br/>
		<br/>
		<label>CEP:</label><input type="text" name="txtCEP" id="txtCEP" />
		<br/>
		<br/>
		<label>LOGRADOURO:</label><input type="text" name="txtEnderecoLogradouro" /><label>NUMERO:</label>
		<input type="text" name="txtEnderecoNumero" />
		<br/>
		<br/>
		<label>CIDADE:</label>
		<select name="txtCidade">
			<option value="0">----</option>
		</select> 
		
		<label>BAIRRO</label>
		<select name="txtBairro">
			<option value="0">----</option>
		</select> 
		<br/>
		<br/>
		<label>ESTADO</label> 
		<select name="txtEstado">
			<option value="0">----</option>
		</select> 
		<br/>
		<br/>
		<input type="submit" value="SALVAR">
	</form>
</fieldset>
</body>
</html>