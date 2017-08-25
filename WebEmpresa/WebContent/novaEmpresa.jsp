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
</head>
<body>
	<form method="post" action="Empresa?do=novo">
		<table>
			<tr>
				<td>CNPJ</td>
				<td><input type="text" name="txtCnpj"></td>
			</tr>
			<tr>
				<td>CPF</td>
				<td><input type="text" name="txtCpf"></td>
			</tr>
			<tr>
				<td>INSCRI��O ESTADUAL</td>
				<td><input type="text" name="txtInscricaoEstadual"></td>
			</tr>
						<tr>
				<td>INSCRI��O MUNICIPAL</td>
				<td><input type="text" name="txtInscricaoMunicipal"></td>
			</tr>
			<tr>
				<td>NOME FANTASIA</td>
				<td><input type="text" name="txtNomeFantasia"></td>
			</tr>
				<tr>
				<td>RAZ�O SOCIAL</td>
				<td><input type="text" name="txtRazaoSocial"></td>
			</tr>
			<tr>
				<td>FUNDA��O</td>
				<td><input type="text" name="txtFundacao"></td>
			</tr>
			<tr>
				<td>CONTATO PRINCIPAL</td>
				<td><input type="text" name="txtContatoPrincipal" /></td>
			</tr>
			<tr>
				<td>EMAIL</td>
				<td><input type="text" name="txtEmail" /></td>
			</tr>
			<tr>
				<td>WEBSITE</td>
				<td><input type="text" name="txtWebsite" /></td>
			</tr>
			<tr>
				<td>TELEFONE</td>
				<td><input type="text" name="txtTelefone" /></td>
			</tr>

			<tr>
				<td>RAMO ATIVIDADE</td>
				<td><select name="txtRamoAtividade">
						<option value="0">----</option>
				</select></td>
			</tr>
			<!-- O insert da empresa nessa vers�o � feita at� o contato principal 
		Decidi colocar o endere�o da empresa em uma tabela diferente afim de controlar
		Filiais de uma mesma empresa e tamb�m hist�rico caso haja alguma mudan�a de endere�o
		 -->
			<tr>
				<td>LOGRADOURO</td>
				<td><input type="text" name="txtEnderecoLogradouro" /></td>
				<td>NUMERO</td>
				<td><input type="text" name="txtEnderecoNumero" /></td>
			</tr>
			<tr>
				<td>CIDADE</td>
				<td><select name="txtCidade">
						<option value="0">----</option>
				</select></td>
				<td>BAIRRO</td>
				<td><select name="txtBairro">
						<option value="0">----</option>
				</select></td>
			</tr>
			<tr>
				<td>CEP</td>
				<td><input type="text" name="txtCEP" /></td>
				<td>ESTADO</td>
				<td><select name="txtEstado">
						<option value="0">----</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="SALVAR"></td>
			</tr>
		</table>
	</form>
</body>
</html>