package br.com.w2gdb.dao;

import java.util.List;


import br.com.w2gdb.domain.Cobranca;

public interface CobrancaDAO {

	public void salvar(Cobranca entity);
	public List<Cobranca> listar();
	public Cobranca obterPorId(Long id);
	public void excluir(Long id);
}
