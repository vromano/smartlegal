package br.com.w2gdb.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="AM_TIPO_COBRANCA")
public class Cobranca {

	private Long id;
	private String descricao;
	private double juros;
	private double moraDiaria;
	
	@Id
	@GeneratedValue
	@Column(name="cd_cobranca")	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	@Column(name="ds_cobranca")
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	@Column(name="tx_juros")
	public double getJuros() {
		return juros;
	}
	public void setJuros(double juros) {
		this.juros = juros;
	}

	@Column(name="vl_mora_diaria")
	public double getMoraDiaria() {
		return moraDiaria;
	}
	public void setMoraDiaria(double moraDiaria) {
		this.moraDiaria = moraDiaria;
	}

}
