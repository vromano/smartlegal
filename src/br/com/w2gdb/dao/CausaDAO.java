package br.com.w2gdb.dao;

import java.util.List;

import br.com.w2gdb.domain.Causa;

public interface CausaDAO {

	public void salvar(Causa entity);
	public List<Causa> listar();
	public Causa obterPorId(Long id);
	public void excluir(Long id);
}
