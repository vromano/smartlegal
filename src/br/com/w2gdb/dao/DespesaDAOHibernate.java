package br.com.w2gdb.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.w2gdb.domain.Despesa;

import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;


public class DespesaDAOHibernate implements DespesaDAO {
	
	@SessionTarget
	Session session;
	
	@TransactionTarget
	Transaction transaction;

	/**
	 * Used to save or update a user.
	 */
	@Override
	public void salvar(Despesa despesa) {
		try {
			session.saveOrUpdate(despesa);
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
			Despesa despesa = (Despesa) session.get(Despesa.class, id);
			session.delete(despesa);
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
	public List<Despesa> listar() {
		List<Despesa> despesas = null;
		try {
			despesas = session.createQuery("from Despesa").list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return despesas;
	}

	/**
	 * Used to list a single user by Id.
	 */
	@Override
	public Despesa obterPorId(Long id) {
		Despesa despesa = null;
		try {
			despesa = (Despesa) session.get(Despesa.class, id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return despesa;
	}

}
