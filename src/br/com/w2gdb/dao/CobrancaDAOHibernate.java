package br.com.w2gdb.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.w2gdb.domain.Cobranca;

import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;


public class CobrancaDAOHibernate implements CobrancaDAO {
	
	@SessionTarget
	Session session;
	
	@TransactionTarget
	Transaction transaction;

	/**
	 * Used to save or update a user.
	 */
	@Override
	public void salvar(Cobranca cobranca) {
		try {
			session.saveOrUpdate(cobranca);
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
			Cobranca cobranca = (Cobranca) session.get(Cobranca.class, id);
			session.delete(cobranca);
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
	public List<Cobranca> listar() {
		List<Cobranca> cobrancas = null;
		try {
			cobrancas = session.createQuery("from Cobranca").list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cobrancas;
	}

	/**
	 * Used to list a single user by Id.
	 */
	@Override
	public Cobranca obterPorId(Long id) {
		Cobranca cobranca = null;
		try {
			cobranca = (Cobranca) session.get(Cobranca.class, id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cobranca;
	}

}
