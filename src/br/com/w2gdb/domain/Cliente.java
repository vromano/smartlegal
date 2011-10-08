package br.com.w2gdb.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="AM_CLIENTE")
public class Cliente extends Pessoa {

	private String razaoSocial;
	private double cnpj;
	private double inscricaoEstadual;
	
	@Column(name="NM_RAZAO_SOCIAL")
	public String getRazaoSocial() {
		return razaoSocial;
	}
	
	public void setRazaoSocial(String razaoSocial) {
		this.razaoSocial = razaoSocial;
	}

	@Column(name="NR_CNPJ")
	public double getCnpj() {
		return cnpj;
	}
	
	public void setCnpj(double cnpj) {
		this.cnpj = cnpj;
	}

	@Column(name="NR_INSC_ESTADUAL")
	public double getInscricaoEstadual() {
		return inscricaoEstadual;
	}
	
	public void setInscricaoEstadual(double inscricaoEstadual) {
		this.inscricaoEstadual = inscricaoEstadual;
	}

}
