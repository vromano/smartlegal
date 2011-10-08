<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Smart Legal</title>
		<s:head />
		<style type="text/css">
		   @import url(../css/shared/shared.css);
		   @import url(../css/third/jquery.alerts.css);
		   @import url(../css/third/jquery-ui.css);
		   @import url(../form.css);
		</style>
	</head>
	<body>
		<div class="general">

			<jsp:include page="../inc/header.jsp" />

			<div class="title internal">
				<div class="section">
					<h3>Processos</h3>
					<span class="group-internal">Equipe Smart Legal</span>
				</div>
			</div>
			
			<div class="content internal">
				<div class="section" style="background-color: #FAFAFA; padding: 10px;">

					<s:form action="salvarProcesso" theme="simple">
							<s:push value="processo">
							
							    <h3>Novo processo</h3>
							    
							    <s:hidden name="id" />
				                <p>
				                    <label>Causa</label>
				                    <s:select name="causaId" list="causas" listKey="id" listValue="descricao" headerKey="0" headerValue="" cssStyle="width: 300px" />
				                </p>
				                <p>
				                    <label>Tipo de Cobrança</label>
				                    <s:select name="cobrancaId" list="cobrancas" listKey="id" listValue="descricao" headerKey="0" headerValue=""  cssStyle="width: 300px"  />
				                </p>
				                <p>
				                    <label>Descrição</label>
				                    <s:textarea name="descricao" cols="60" rows="10" />
				                </p>
				                
				                <h3>Advogados envolvidos</h3>
				                
				                <p>
				                    <label>&nbsp;</label>
				                    <input type="checkbox"/>Wagner Soares de Souza
				                </p>
				                <p>
				                    <label>&nbsp;</label>
				                    <input type="checkbox"/>Bruno Soares
				                </p>
				                <p>
				                    <label>&nbsp;</label>
				                    <input type="checkbox"/>Davi Ruiz
				                </p>
				                <p>
				                    <label>&nbsp;</label>
				                    <input type="checkbox"/>Gisele Fonseca
				                </p>
				                <p>
				                    <label>&nbsp;</label>
				                    <input type="checkbox"/>Vinicius Romano
				                </p>
				                <p>
				                    <label>&nbsp;</label>
				                    <input type="button" value="Adicionar"/>&nbsp;
				                    <input type="button" value="Agendar Compromisso"/>&nbsp;
				                    <input type="button" value="Remover"/>&nbsp;
				                </p>
				                
				                <h3>Cliente</h3>
				                
				                <p>
				                    <label></label>
				                    <a href="pesquisarCliente">Pesquisar</a>
				                </p>
				                
				                <p>
				                    <label>Nome</label>
				                    <s:textfield name="cliente.nome" cssStyle="width: 400px" />
				                </p>
				                
				                <p>
				                    <label>Razão Social</label>
				                    <s:textfield name="cliente.razaoSocial"  cssStyle="width: 400px" />
				                </p>
				                
				                <p>
				                    <label>CNPJ</label>
				                    <s:textfield name="cliente.cnpj" />
				                </p>
				                
				                <p>
				                    <label>E-mail</label>
				                    <s:textfield name="cliente.email"  cssStyle="width: 400px" />
				                </p>
				                
				                <p>
				                    <label>Senha</label>
				                    <s:textfield name="cliente.senha" />
				                </p>

								<div style="text-align: right;">
									<s:submit value="Salvar" /> ou <a href="listarProcesso">Listar processo</a>
								</div>
							</s:push>
						</s:form>
				</div>
			</div>

			<jsp:include page="../inc/footer.jsp" />

		</div>

		<script type="text/javascript" src="../static/js/third/jquery.js"></script>
		<script type="text/javascript" src="../static/js/shared/shared.js"></script>
		<script type="text/javascript" src="../static/js/third/jquery-ui.js"></script>
		<script type="text/javascript" src="../static/js/shared/sidebar.js"></script>
		<script type="text/javascript" src="../static/js/third/jquery.alerts.js"></script>
		<script type="text/javascript" src="../static/js/third/mask.js"></script>
		<script type="text/javascript" src="../static/js/processos/default.js"></script>
	</body>
</html>