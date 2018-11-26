<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/alunos?serverTimezone=UTC";%>
<%!String user = "root";%>
<%!String psw = "admin";%>
<%
String numero_serie = request.getParameter("numero_serie");
String mat_emprestimo=request.getParameter("mat_emprestimo");

if(numero_serie != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(numero_serie);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update livro set mat_emprestimo = ? where numero_serie="+numero_serie;
ps = con.prepareStatement(sql);
ps.setString(1,mat_emprestimo);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Registro feito com sucesso.");
}
else
{
out.print("Ocorreu um problema no registro.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>

<%
    String redirectURL = "/ProjetoDevAluno/SISTEMA DO ADM.html";
    response.sendRedirect(redirectURL);
%>