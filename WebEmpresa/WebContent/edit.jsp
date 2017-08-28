<%@page import="com.sun.crypto.provider.RSACipher"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>::WebEmpresa</title>
</head>
<body>
	<%
		if (request.getParameter("empresa") != null) {
			int id = Integer.parseInt(request.getParameter("empresa"));
			String driver = "com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/webempresa?useSSL=false";
			String usr = "root";
			String pwd = "";
			String tbl = "tbempresa";
			Class.forName(driver);
			String sql = "SELECT * FROM " + tbl + " WHERE id=" + id;
			Connection conn = DriverManager.getConnection(url, usr, pwd);
			Statement stm = conn.createStatement();
			ResultSet rs = stm.executeQuery(sql);
			while (rs.next()) {
	%>
	<table>
		<tr>
			<td>CNPJ</td>
			<td><input type="text" name="txtCnpj" value="<%=rs.getString("cnpj")%>"></td>
		</tr>
		<tr>
			<td>CPF</td>
			<td><input type="text" name="txtCpf" value="<%=rs.getString("cpf")%>"></td>
		</tr>
		<tr>
			<td>INSCRIÇÃO ESTADUAL</td>
			<td><input type="text" name="txtInscricaoEstadual" value="<%=rs.getString("inscricao_estadual")%>"></td>
		</tr>
		<tr>
			<td>INSCRIÇÃO MUNICIPAL</td>
			<td><input type="text" name="txtInscricaoMunicipal" value="<%=rs.getString("inscricao_municipal")%>"></td>
		</tr>
		<tr>
			<td>NOME FANTASIA</td>
			<td><input type="text" name="txtNomeFantasia" value="<%=rs.getString("nome_fantasia")%>"></td>
		</tr>
		<tr>
			<td>RAZÃO SOCIAL</td>
			<td><input type="text" name="txtRazaoSocial" value="<%=rs.getString("razao_social")%>"></td>
		</tr>
		<tr>
			<td>FUNDAÇÃO</td>
			<td><input type="text" name="txtFundacao" value="<%=rs.getString("fundacao")%>"></td>
		</tr>
		<tr>
			<td>CONTATO PRINCIPAL</td>
			<td><input type="text" name="txtContatoPrincipal" value="<%=rs.getString("contato_principal")%>"/></td>
		</tr>
		<tr>
			<td>EMAIL</td>
			<td><input type="text" name="txtEmail" value="<%=rs.getString("email")%>"/></td>
		</tr>
		<tr>
			<td>WEBSITE</td>
			<td><input type="text" name="txtWebsite" value="<%=rs.getString("website")%>"/></td>
		</tr>
		<tr>
			<td>TELEFONE</td>
			<td><input type="text" name="txtTelefone" value="<%=rs.getString("telefone")%>"/></td>
		</tr>

		<tr>
			<td>RAMO ATIVIDADE</td>
			<td><select name="txtRamoAtividade">
					<option value="0">----</option>
			</select></td>
		</tr>
		<!-- O insert da empresa nessa versão é feita até o contato principal 
		Decidi colocar o endereço da empresa em uma tabela diferente afim de controlar
		Filiais de uma mesma empresa e também histórico caso haja alguma mudança de endereço
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
	<%
		}
		}
	%>
</body>
</html>
