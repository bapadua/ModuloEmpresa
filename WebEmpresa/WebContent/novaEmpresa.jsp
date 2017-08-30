<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Insert de Fornecedor 0.1 by Solução Lógica
Versão inicial do CRUD. 0.0.0.1

Pagina desenvolvida com fins didáticos para o trabalho com controle de versão github.
Compartilhado com os alunos da UNIVERSIDADE MOGI DAS CRUZES:

Autor Bruno Alves de Pádua - Bacharelando em Sistemas de Informação.
Endereço GitHub: https://github.com/solucaologica
Email: solucaoelogica@gmail.com

Ferramentas utilizadas:

SDK: Eclipse Oxygen - disponível em https://www.eclipse.org/downloads/?
WampServer(Mysql) dispinível em http://www.wampserver.com/en/
MysqlWorkBench disponível em https://dev.mysql.com/downloads/workbench/
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
		<label>INSCRIÇÃO ESTADUAL:</label> 
		<br /> 
		<input type="text" name="txtInscricaoEstadual" id="inscricaoEstadual" /> 
		<br />
		<label>INSCRIÇÃO MUNICIPAL:</label>
		<br/>
		<input type="text" name="txtInscricaoMunicipal" id="inscricaoMunicipal"/>
		<br/>
		<label>NOME FANTASIA:</label>
		<br/>
		<input type="text" name="txtNomeFantasia" />
		<br/>
		<label>RAZÃO SOCIAL</label>
		<br/>
		<input type="text" name="txtRazaoSocial" />
		<br/>
		<label>FUNDAÇÃO(AAAA/MM/DD):</label>
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
		<!-- O insert da empresa nessa versão é feita até o contato principal 
		Decidi colocar o endereço da empresa em uma tabela diferente afim de controlar
		Filiais de uma mesma empresa e também histórico caso haja alguma mudança de endereço
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