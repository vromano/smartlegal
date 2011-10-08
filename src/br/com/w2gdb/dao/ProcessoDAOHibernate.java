package br.com.w2gdb.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.w2gdb.domain.Processo;

import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;


public class ProcessoDAOHibernate implements ProcessoDAO {
	
	@SessionTarget
	Session session;
	
	@TransactionTarget
	Transaction transaction;

	/**
	 * Used to save or update a user.
	 */
	@Override
	public void salvar(Processo processo) {
		try {
			session.saveOrUpdate(processo);
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		}
	}

	/**
	 * Used to delete a user.
	 */
	@Override
	public void excluir(Long id) {
		try {
			Processo processo = (Processo) session.get(Processo.class, id);
			session.delete(processo);
		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
		} 
	}
	
	/**
	 * Used to list all the users.
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Processo> listar() {
		List<Processo> processos = null;
		try {
			processos = session.createQuery("from Processo").list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return processos;
	}

	/**
	 * Used to list a single user by Id.
	 */
	@Override
	public Processo obterPorId(Long id) {
		Processo processo = null;
		try {
			processo = (Processo) session.get(Processo.class, id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return processo;
	}

}
