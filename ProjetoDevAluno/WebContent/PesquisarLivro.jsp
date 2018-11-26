<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
<%
  String numero_serie=request.getParameter("numero_serie");
  int v=Integer.parseInt(numero_serie);
  Class.forName("com.mysql.jdbc.Driver");
  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alunos?serverTimezone=UTC","root", "admin");
  Statement st=conn.createStatement();
  ResultSet rs = st.executeQuery("select * from livro where numero_serie='"+numero_serie+"'");
  if(rs.next()){
      %>
<table>
  <tr>
    <th>Titulo</th>
    <th>Autor</th>
    <th>Editora</th>
    <th>Area de Advocacia</th>
    <th>Serie de Numero</th>
    <th>Estado</th>
  </tr>
  <tr>
    <td><%=rs.getString("titulo_livro")%></td>
    <td><%=rs.getString("autor_livro")%></td>
    <td><%=rs.getString("editora_livro")%></td>
    <td><%=rs.getString("area_advocacia")%></td> 
    <td><%=rs.getString("numero_serie")%></td>
    <td>
 <%	if (rs.getInt("mat_emprestimo") == 0)	{
	 out.println("DISPONIVEL");
	 } else {
		 out.println("NÃO DISPONIVEL");
	 } 
%>
    
    </td>   
  </tr>  

        <%
  }
  %>
<body>

</body>
</html>