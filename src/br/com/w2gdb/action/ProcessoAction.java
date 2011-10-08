package br.com.w2gdb.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import br.com.w2gdb.dao.CausaDAO;
import br.com.w2gdb.dao.CausaDAOHibernate;
import br.com.w2gdb.dao.CobrancaDAO;
import br.com.w2gdb.dao.CobrancaDAOHibernate;
import br.com.w2gdb.dao.ProcessoDAO;
import br.com.w2gdb.dao.ProcessoDAOHibernate;
import br.com.w2gdb.domain.Causa;
import br.com.w2gdb.domain.Cobranca;
import br.com.w2gdb.domain.Processo;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ProcessoAction extends ActionSupport implements ModelDriven<Processo> {

	private static final long serialVersionUID = -659925652584240539L;

	private Processo processo = new Processo();
	private List<Processo> lista = new ArrayList<Processo>();
	private ProcessoDAO processoDAO = new ProcessoDAOHibernate();

	private List<Causa> causas = new ArrayList<Causa>();
	private CausaDAO causaDAO = new CausaDAOHibernate();
	
	private List<Cobranca> cobrancas = new ArrayList<Cobranca>();
	private CobrancaDAO cobrancaDAO = new CobrancaDAOHibernate();
	
	
	@Override
	public Processo getModel() {
		return processo;
	}
	
	public String salvar()
	{	
		processoDAO.salvar(processo);
		return SUCCESS;
	}
	
	public String criar()
	{	
		causas = causaDAO.listar();
		cobrancas = cobrancaDAO.listar();
		return SUCCESS;
	}
	
	public String listar()
	{
		lista = processoDAO.listar();
		return SUCCESS;
	}
	
	public String excluir()
	{
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		processoDAO.excluir(Long.parseLong(request.getParameter("id")));
		return SUCCESS;
	}
	
	public String editar()
	{
		HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
		processo = processoDAO.obterPorId(Long.parseLong(request.getParameter("id")));
		causas = causaDAO.listar();
		cobrancas = cobrancaDAO.listar();
		return SUCCESS;
	}
		
	public Processo getProcesso() {
		return processo;
	}
	public void setProcesso(Processo processo) {
		this.processo = processo;
	}
	public List<Processo> getLista() {
		return lista;
	}
	public void setLista(List<Processo> lista) {
		this.lista = lista;
	}
	
	public int getCausaId() {
		return processo.getCausaId();
	}
	public void setCausaId(int causaId) {
		processo.setCausaId(causaId);
	}
	public List<Causa> getCausas() {
		return causas;
	}
	public void setCausas(List<Causa> causas) {
		this.causas = causas;
	}
	
	public int getCobrancaId() {
		return processo.getCobrancaId();
	}
	public void setCobrancaId(int cobrancaId) {
		processo.setCobrancaId(cobrancaId);
	}
	public List<Cobranca> getCobrancas() {
		return cobrancas;
	}
	public void setCobrancas(List<Cobranca> cobrancas) {
		this.cobrancas = cobrancas;
	}
	

}
