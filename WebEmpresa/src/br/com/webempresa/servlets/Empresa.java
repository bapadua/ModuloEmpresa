package br.com.webempresa.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.webempresa.dal.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Empresa
 */
@WebServlet("/Empresa")
public class Empresa extends HttpServlet {

	protected String tabela = "tbempresa";
	protected String banco = "webempresa";

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		Connection conexao = null;
		//======
		String cnpj = request.getParameter("txtCnpj");
		String cpf = request.getParameter("txtCpf");
		String ie = request.getParameter("txtInscricaoEstadual");
		String im = request.getParameter("txtInscricaoMunicipal");
		String nomeFantasia = request.getParameter("txtNomeFantasia");
		String razao = request.getParameter("txtRazaoSocial");
		String fundacao = request.getParameter("txtFundacao");
		String contatoPrincipal = request.getParameter("txtContatoPrincipal");
		String ramoAtividade = request.getParameter("txtRamoAtividade");
		String website = request.getParameter("txtWebsite");
		String email = request.getParameter("txtEmail");
		String telefone = request.getParameter("txtTelefone");
		//======
		if(request.getParameter("do")!= null) {
			switch(request.getParameter("do")){
			case "novo":
				try {
					conexao = moduloConexao.conector();
					String sql = "INSERT INTO "+tabela+"(cnpj, cpf, inscricao_estadual, inscricao_municipal, nome_fantasia, razao_social, "
							+ "fundacao, contato_principal, ramo_atividade, website, email, telefone)"
							+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

					PreparedStatement pstm = conexao.prepareStatement(sql);
					pstm.setString(1, cnpj);
					pstm.setString(2, cpf);
					pstm.setString(3, ie);
					pstm.setString(4, im);
					pstm.setString(5, nomeFantasia);
					pstm.setString(6, razao);
					pstm.setString(7, fundacao);
					pstm.setString(8, contatoPrincipal);
					pstm.setInt(9, Integer.parseInt(ramoAtividade));
					pstm.setString(10, website);
					pstm.setString(11, email);
					pstm.setString(12, telefone);
					pstm.execute();
					pstm.close();				
					conexao.close();

					response.sendRedirect("http://localhost:8081/WebEmpresa/listaEmpresa.jsp");
				} catch (SQLException e) {
					out.println(e.getMessage());
				} 
				break;

			case "altera":

				break;
			}
		}
	}
}

