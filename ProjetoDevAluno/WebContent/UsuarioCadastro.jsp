
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String nome_usuario=request.getParameter("nome_usuario");
String matricula_usuario=request.getParameter("matricula_usuario");
String num_oab=request.getParameter("num_oab");
String senha_usuario=request.getParameter("senha_usuario");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alunos?serverTimezone=UTC", "root", "admin");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into usuario(nome_usuario, matricula_usuario, num_oab, senha_usuario)values('"+nome_usuario+"','"+matricula_usuario+"','"+num_oab+"','"+senha_usuario+"')");
out.println("Livro inserido com sucesso!");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

%>

<%
    String redirectURL = "/ProjetoDevAluno/SISTEMA DO ADM.html";
    response.sendRedirect(redirectURL);
%>