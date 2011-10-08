package br.com.w2gdb.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import br.com.w2gdb.dao.DespesaDAO;
import br.com.w2gdb.dao.DespesaDAOHibernate;
import br.com.w2gdb.domain.Despesa;
import br.com.w2gdb.domain.Processo;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class DespesaAction extends ActionSupport implements ModelDriven<Despesa> {

	private static final long serialVersionUID = -6659925652584240539L;

	private Processo processo = new Processo();
	private Despesa despesa = new Despesa();

	private List<Despesa> lista = new ArrayList<Despesa>();
	private DespesaDAO despesaDAO = new DespesaDAOHibernate();
	
	@Override
	public Despesa getModel() {
		return despesa;
	}
	
	public String salvar()
	{	
		despesaDAO.salvar(despesa);
		return SUCCESS;
	}
	
	public String criar()
	{	
		return SUCCESS;
	}
	
	public String listar()
	{
		lista = despesaDAO.listar();
		return SUCCESS;
	}
	
	public String excluir()
	{
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		despesaDAO.excluir(Long.parseLong(request.getParameter("id")));
		return SUCCESS;
	}
	
	public String editar()
	{
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		despesa = despesaDAO.obterPorId(Long.parseLong(request.getParameter("id")));
		return SUCCESS;
	}
	
	
	public String lancar()
	{
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		despesa = despesaDAO.obterPorId(Long.parseLong(request.getParameter("id")));
		return SUCCESS;
	}
		
	public Processo getProcesso() {
		return processo;
	}
	public void setProcesso(Processo processo) {
		this.processo = processo;
	}
	
	public Despesa getDespesa() {
		return despesa;
	}
	public void setDespesa(Despesa despesa) {
		this.despesa = despesa;
	}

	public List<Despesa> getLista() {
		return lista;
	}
	public void setLista(List<Despesa> lista) {
		this.lista = lista;
	}

}
