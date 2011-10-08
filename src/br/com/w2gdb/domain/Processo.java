package br.com.w2gdb.domain;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;


@Entity
@Table(name="AM_PROCESSO")
public class Processo {
	
	private Long id;
	private String descricao;
	private int causaId;
	private Causa causa;
	private int cobrancaId;
	private Cobranca cobranca;
	private Cliente cliente;
	private AdvogadoProcesso[] advogados;
	
	@Id
	@GeneratedValue
	@Column(name="NR_PROCESSO")	
	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	
	@Column(name="DS_PROCESSO")	
	public String getDescricao() {
		return descricao;
	}
	
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	@Column(name="CD_CAUSA")	
	public int getCausaId() {
		return causaId;
	}
	
	public void setCausaId(int causaId) {
		this.causaId = causaId;
	}
	
	@ManyToOne
	@JoinColumn(name = "CD_CAUSA", insertable=false, updatable=false)
	public Causa getCausa() {
		return causa;
	}
	public void setCausa(Causa causa) {
		this.causa = causa;
	}
	
	@Column(name="CD_COBRANCA")	
	public int getCobrancaId() {
		return cobrancaId;
	}
	
	public void setCobrancaId(int cobrancaId) {
		this.cobrancaId = cobrancaId;
	}
	
	@ManyToOne
	@JoinColumn(name = "CD_COBRANCA", insertable=false, updatable=false)
	public Cobranca getCobranca() {
		return cobranca;
	}
	
	public void setCobranca(Cobranca cobranca) {
		this.cobranca = cobranca;
	}
	
	@ManyToOne(cascade = CascadeType.ALL)
	@NotFound(action=NotFoundAction.IGNORE)
	@JoinColumn(name = "CD_PESSOA_CLIENTE")
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	/*
	    
	@ManyToOne
	@JoinColumn(name="NR_PROCESSO")	
	@NotFound(action=NotFoundAction.IGNORE)
	public AdvogadoProcesso[] getAdvogados() {
		return advogados;
	}
	public void setAdvogados(AdvogadoProcesso[] advogados) {
		this.advogados = advogados;
	}
	
	*/
}


