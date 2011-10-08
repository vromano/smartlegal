package br.com.w2gdb.domain;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

@Entity
@Table(name="AM_ADVOGADO")
public class Advogado extends Pessoa {

	private Advogado lider;
	private double oab;
	private double cpf;
	private String rg;
		
	@ManyToOne(cascade = CascadeType.ALL)
	@NotFound(action=NotFoundAction.IGNORE)
	@JoinColumn(name = "CD_PESSOA_LIDER")
	public Advogado getLider() {
		return lider;
	}
	
	public void setLider(Advogado lider) {
		this.lider = lider;
	}
	
	@Column(name="NR_OAB")
	public Double getOAB() {
		return oab;
	}
	public void setOAB(Double oab) {
		this.oab = oab;
	}

	@Column(name="NR_CPF")
	public Double getCPF() {
		return cpf;
	}
	public void setCPF(Double cpf) {
		this.cpf = cpf;
	}

	@Column(name="NR_RG")
	public String getRG() {
		return rg;
	}
	public void setRG(String rg) {
		this.rg = rg;
	}


}
