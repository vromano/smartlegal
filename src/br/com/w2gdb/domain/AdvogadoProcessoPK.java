package br.com.w2gdb.domain;

import javax.persistence.Embeddable;
import javax.persistence.ManyToOne;

@Embeddable
public class AdvogadoProcessoPK {

	@ManyToOne
    private Processo processo;

    @ManyToOne
    private Advogado advogado;

	public Processo getProcesso() {
		return processo;
	}

	public void setProcesso(Processo processo) {
		this.processo = processo;
	}

	public Advogado getAdvogado() {
		return advogado;
	}

	public void setAdvogado(Advogado advogado) {
		this.advogado = advogado;
	}
    
    
    
}
