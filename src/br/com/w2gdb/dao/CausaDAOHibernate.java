package br.com.w2gdb.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.w2gdb.domain.Causa;

import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;


public class CausaDAOHibernate implements CausaDAO {
	
	@SessionTarget
	Session session;
	
	@TransactionTarget
	Transaction transaction;

	/**
	 * Used to save or update a user.
	 */
	@Override
	public void salvar(Causa causa) {
		try {
			session.saveOrUpdate(causa);
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
			Causa causa = (Causa) session.get(Causa.class, id);
			session.delete(causa);
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
	public List<Causa> listar() {
		List<Causa> causas = null;
		try {
			causas = session.createQuery("from Causa").list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return causas;
	}

	/**
	 * Used to list a single user by Id.
	 */
	@Override
	public Causa obterPorId(Long id) {
		Causa causa = null;
		try {
			causa = (Causa) session.get(Causa.class, id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return causa;
	}

}
