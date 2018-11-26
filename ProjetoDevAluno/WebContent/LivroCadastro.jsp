
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String titulo_livro=request.getParameter("titulo_livro");
String autor_livro=request.getParameter("autor_livro");
String editora_livro=request.getParameter("editora_livro");
String numero_serie=request.getParameter("numero_serie");
String area_advocacia=request.getParameter("area_advocacia");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alunos?serverTimezone=UTC", "root", "admin");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into livro(titulo_livro, autor_livro, editora_livro, numero_serie, area_advocacia)values('"+titulo_livro+"','"+autor_livro+"','"+editora_livro+"','"+numero_serie+"','"+area_advocacia+"')");
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