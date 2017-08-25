package br.com.webempresa.dal;
import java.sql.*;

public class moduloConexao {

	protected String tabela = "tbempresa";
	protected static String banco = "webempresa?useSSL=false";

	public static Connection conector() {
		java.sql.Connection conexao = null;
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/"+banco;
		String usr = "root";
		String pwd = "!!mysql";

		try {
			Class.forName(driver);
			conexao = DriverManager.getConnection(url, usr, pwd);
			return conexao;
		}catch (Exception e) {
			return null;
		}
	}


}
