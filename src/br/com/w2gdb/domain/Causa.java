package br.com.w2gdb.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="AM_TIPO_CAUSA")
public class Causa {

	private Long id;
	private String descricao;
	
	@Id
	@GeneratedValue
	@Column(name="CD_CAUSA")	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	@Column(name="DS_CAUSA")
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

}
