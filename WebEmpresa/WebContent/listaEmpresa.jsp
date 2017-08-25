<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>::WebEmpresa</title>
</head>
<body>
	<%
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/webempresa?useSSL=false";
		String usr = "root";
		String pwd = "!!mysql";
		String tbl = "tbempresa";

		Class.forName(driver);
		String sql = "SELECT * FROM "+tbl;
		Connection conn = DriverManager.getConnection(url, usr, pwd);
		Statement stm = conn.createStatement();
		ResultSet rs = stm.executeQuery(sql);
	%>
	<table bgcolor="#6A5ACD" align="center">
		<tr bgcolor="#B0C4DE">
			<td><b>ID:</b></td>
			<td>CNPJ:</td>
			<td>NOME FANTASIA</td>
			<td>OPÇÕES</td>
		</tr>
		<%
		while(rs.next()){
			String view = "view.jsp?empresa="+rs.getInt("id");
			String edit = "edit.jsp?empresa="+rs.getInt("id");
		%>
		<tr bgcolor="#ADD8E6">
			<td><b><%=rs.getInt("id") %></b></td>
			<td><%=rs.getString("cnpj") %></td>
			<td><%=rs.getString("nome_fantasia") %></td>
			<td><a href="<%out.print(view);%>">Visualizar</a> <a href="<%out.print(edit);%>">Editar</a> </td>
		</tr>
		<%}%>
	</table>
</body>
</html>