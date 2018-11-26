package br.unama.Controle;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import br.unama.DAO.AlunoDAO;
import br.unama.Modelo.Aluno;
import br.unama.Modelo.Livro;
import br.unama.Modelo.Usuario;

/**
 * Servlet implementation class AlunoControle
 */
@WebServlet("/AlunoControle")
public class AlunoControle extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Resource(name="jdbc/aluno")
	private DataSource datasource;
    private AlunoDAO alunoDao, livroDao, usuarioDao;   
	
	public void init(ServletConfig config) throws ServletException {
		alunoDao = new AlunoDAO(datasource);
		livroDao = new AlunoDAO(datasource);
		usuarioDao = new AlunoDAO(datasource);
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		List<Livro> livros = livroDao.consultaLivros();
		request.setAttribute("LISTA-LIVROS", livros);
		
		List<Aluno> alunos = alunoDao.consultaAlunos();
		request.setAttribute("LISTA-ALUNOS", alunos);

		List<Usuario> usuario = usuarioDao.consultaUsuarios();
		request.setAttribute("LISTA-USUARIOS", usuario);
		
		request.getRequestDispatcher("/ListaAlunos.jsp").forward(request, response);	
	}

}
