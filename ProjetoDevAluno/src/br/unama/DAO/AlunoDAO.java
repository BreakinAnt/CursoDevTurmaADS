package br.unama.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import br.unama.Modelo.Aluno;
import br.unama.Modelo.Livro;
import br.unama.Modelo.Usuario;

public class AlunoDAO {

	private DataSource datasource;
	private List<Aluno> listaAlunos;
	private List<Livro> listaLivros;
	private List<Usuario> listaUsuarios;
	
	public AlunoDAO(DataSource ds) {
		this.datasource = ds;
	}
	
	public List<Aluno> consultaAlunos(){
		listaAlunos = new ArrayList<Aluno>();
		Connection con = null;
		Statement st = null;
		ResultSet result = null;
		try {
			//Obter Conexão com banco
			con = datasource.getConnection();
			//Criar o SQL
			st = con.createStatement();
			String sql = "select * from aluno";
			//Executar o SQL
			result = st.executeQuery(sql);
			//Processar os dados retornados
			while(result.next()) {
				//exemplo:
				int id = result.getInt("idaluno");
				String primeiroNome = result.getString("primeiro_nome");
				String ultimoNome = result.getString("ultimo_nome");
				String email = result.getString("email");
				Aluno aluno = new Aluno(id, primeiroNome, ultimoNome, email);
				listaAlunos.add(aluno);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listaAlunos;
	}

//-------------------------------------------------------------------		
	public List<Livro> consultaLivros(){
		listaLivros = new ArrayList<Livro>();
		Connection con = null;
		Statement st = null;
		ResultSet result = null;
		try {
			//Obter Conexão com banco
			con = datasource.getConnection();
			//Criar o SQL
			st = con.createStatement();
			String sql = "select * from livro";
			//Executar o SQL
			result = st.executeQuery(sql);
			//Processar os dados retornados
			while(result.next()) {
				//livro:
				int idLivro = result.getInt("idlivro");
				String titulo = result.getString("titulo_livro");
				String autor = result.getString("autor_livro");
				String editora = result.getString("editora_livro");
				String areaAdvocacia = result.getString("area_advocacia");
				int numSerie = result.getInt("numero_serie");
				int matEmprestimo = result.getInt("mat_emprestimo");
				Livro livro = new Livro(idLivro, titulo, autor, editora, areaAdvocacia, numSerie, matEmprestimo);
				listaLivros.add(livro);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listaLivros;
	}

//-------------------------------------------------------------------------------------
	public List<Usuario> consultaUsuarios(){
		listaUsuarios = new ArrayList<Usuario>();
		Connection con = null;
		Statement st = null;
		ResultSet result = null;
		try {
			//Obter Conexão com banco
			con = datasource.getConnection();
			//Criar o SQL
			st = con.createStatement();
			String sql = "select * from usuario";
			//Executar o SQL
			result = st.executeQuery(sql);
			//Processar os dados retornados
			while(result.next()) {
				//exemplo:
				int matricula = result.getInt("matricula_usuario");
				String oab = result.getString("num_oab");
				String nome = result.getString("nome_usuario");
				String senha = result.getString("senha_usuario");
				Usuario usuario = new Usuario(matricula, oab, nome, senha);
				listaUsuarios.add(usuario);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listaUsuarios;
	}
	}
