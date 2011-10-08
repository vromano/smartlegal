package br.com.w2gdb.domain;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

@Entity
@Table(name="AM_ADVOGADO_PROCESSO")
public class AdvogadoProcesso {
/*
	@Id
	private AdvogadoProcessoPK	primaryKey;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@NotFound(action=NotFoundAction.IGNORE)
	@JoinColumn(name = "NR_PROCESSO")
	private Processo processo;

	@ManyToOne(cascade = CascadeType.ALL)
	@NotFound(action=NotFoundAction.IGNORE)
	@JoinColumn(name = "CD_PESSOA")	
	private Advogado entidade;
	
	@Column(name="DT_INICIO_PARTICIPACAO")
	private Date inicioParticipacao;
		
	public Processo getProcesso() {
		return processo;
	}
	public void setProcesso(Processo processo) {
		this.processo = processo;
	}
	
	public Advogado getEntidade() {
		return entidade;
	}
	public void setEntidade(Advogado entidade) {
		this.entidade = entidade;
	}
	
	public Date getInicioParticipacao() {
		return inicioParticipacao;
	}
	public void setInicioParticipacao(Date inicioParticipacao) {
		this.inicioParticipacao = inicioParticipacao;
	}
	
	public AdvogadoProcessoPK getPrimaryKey() {
		return primaryKey;
	}
	public void setPrimaryKey(AdvogadoProcessoPK primaryKey) {
		this.primaryKey = primaryKey;
	}
	
	/*
}
