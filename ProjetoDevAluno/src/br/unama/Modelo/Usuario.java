package br.unama.Modelo;

public class Usuario {
	
	private int matricula;
	private String oab;
	private String nome;
	private String senha;

	public Usuario(int matricula, String oab,  String nome, String senha) {
		super();
		this.matricula = matricula;
		this.oab = oab;
		this.nome = nome;
		this.senha = senha;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getMatricula() {
		return matricula;
	}

	public void setMatricula(int matricula) {
		this.matricula = matricula;
	}

	public String getOab() {
		return oab;
	}

	public void setOab(String oab) {
		this.oab = oab;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	
}
