package br.com.w2gdb.dao;

import java.util.List;

import br.com.w2gdb.domain.Despesa;


public interface DespesaDAO {

	public void salvar(Despesa entity);
	public List<Despesa> listar();
	public Despesa obterPorId(Long id);
	public void excluir(Long id);
}
