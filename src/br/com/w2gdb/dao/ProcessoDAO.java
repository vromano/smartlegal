package br.com.w2gdb.dao;

import java.util.List;

import br.com.w2gdb.domain.Processo;

public interface ProcessoDAO {

	public void salvar(Processo entity);
	public List<Processo> listar();
	public Processo obterPorId(Long id);
	public void excluir(Long id);
}
