package br.unama.Modelo;

public class Livro {
	private int idLivro;
	private String titulo;
	private String autor;
	private String editora;
	private String areaAdvocacia;
	private int numSerie;
	private int matEmprestimo;
	

	public Livro(int idLivro, String titulo, String autor, String editora,String areaAdvocacia, int numSerie, int matEmprestimo) {
		super();
		this.idLivro = idLivro;
		this.titulo = titulo;
		this.autor = autor;
		this.editora = editora;
		this.areaAdvocacia = areaAdvocacia;
		this.numSerie = numSerie;
		this.matEmprestimo = matEmprestimo;
	}


	public int getIdLivro() {
		return idLivro;
	}


	public void setIdLivro(int idLivro) {
		this.idLivro = idLivro;
	}


	public String getTitulo() {
		return titulo;
	}


	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}


	public String getAutor() {
		return autor;
	}


	public void setAutor(String autor) {
		this.autor = autor;
	}


	public String getEditora() {
		return editora;
	}


	public void setEditora(String editora) {
		this.editora = editora;
	}


	public String getAreaAdvocacia() {
		return areaAdvocacia;
	}


	public void setAreaAdvocacia(String areaAdvocacia) {
		this.areaAdvocacia = areaAdvocacia;
	}


	public int getNumSerie() {
		return numSerie;
	}


	public void setNumSerie(int numSerie) {
		this.numSerie = numSerie;
	}
	
	public int getMatEmprestimo() {
		return matEmprestimo;
	}


	public void setMatEmprestimo(int matEmprestimo) {
		this.matEmprestimo = matEmprestimo;
	}
}
