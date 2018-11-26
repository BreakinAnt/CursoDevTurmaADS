<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="br.unama.Modelo.Aluno" %>
<%@ page import="br.unama.Modelo.Livro" %>
<%@ page import="br.unama.Modelo.Usuario" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <title>Cadastro de livros</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" crossorigin="anonymous">
        <link rel="stylesheet" href="css/boot.css">
        <link rel="stylesheet" href="css/style.css">
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
<body>


        <nav class="menu row">

            <div class="wrap-g">

                <h1><i class="fa fa-book-open"></i>SGBJ</h1>

            </div>

        </nav>

<!------------------------------------------ EXEMPLO -------------------------------------
<% List<Aluno> listaAlunos = (List<Aluno>) request.getAttribute("LISTA-ALUNOS"); %>
<h3>Teste:</h3>
<div class="ui container">
<table class="ui celled table">
<thead>
<tr>
	<th>Primeiro Nome</th>
	<th>Ultimo Nome</th>
	<th>Email</th>
</tr>
</thead>
<tbody>
<% for (Aluno aluno : listaAlunos) { %>
	<tr>
		<td data-label="PrimeiroNome"><%= aluno.getPrimeiroNome() %></td>
		<td data-label="UltimoNome"><%= aluno.getUltimoNome() %></td>
		<td data-label="Email"><%= aluno.getEmail() %></td>
	</tr>
<% } %>	
</tbody>

</table>
</div> -->
<!------------------------------------------ LIVRO TABELAS --------------------------------------->
<% List<Livro> listaLivros = (List<Livro>) request.getAttribute("LISTA-LIVROS"); %>
<h3>Livros:</h3>
<div class="ui container 2">
<table class="ui celled table 2">
<thead>
<tr>
	<th>Titulo</th>
	<th>Autor</th>
	<th>Editora</th>
	<th>Area da Advocacia</th>
	<th>Numero de Serie</th>
	<th>Matricula Emprestimo</th>
</tr>
</thead>
<tbody>
<% for (Livro livro : listaLivros) { %>
	<tr>
		<td data-label="LivroTitulo"><%= livro.getTitulo() %></td>
		<td data-label="LivroAutor"><%= livro.getAutor() %></td>
		<td data-label="LivroEditora"><%= livro.getEditora() %></td>
		<td data-label="LivroAreaAdvocacia"><%= livro.getAreaAdvocacia() %></td>	
		<td data-label="LivroNumSerie"><%= livro.getNumSerie() %></td>		
		<td data-label="MatEmprestimo"><%= livro.getMatEmprestimo() %></td>
	</tr>
<% } %>	
</tbody>

</table>
</div>

<!--  ---------------------------------------------------------------------->

<% List<Usuario> listaUsuarios = (List<Usuario>) request.getAttribute("LISTA-USUARIOS"); %>
<h3>Usuarios:</h3>
<div class="ui container 3">
<table class="ui celled table 3">
<thead>
<tr>
	<th>Nome</th>
	<th>N. OAB</th>
	<th>Matricula</th>
	<th>Senha</th>
</tr>
</thead>
<tbody>
<% for (Usuario usuario : listaUsuarios) { %>
	<tr>
		<td data-label="MatriculaUsuario"><%= usuario.getMatricula() %></td>
		<td data-label="OabUsuario"><%= usuario.getOab() %></td>
		<td data-label="NomeUsuario"><%= usuario.getNome() %></td>
		<td data-label="SenhaUsuario"><%= usuario.getSenha() %></td>

	</tr>
<% } %>	
</tbody>

</table>
</div> 


<a href='/ProjetoDevAluno/index.html'>Click here to go to login page</a>
</body>
</html>