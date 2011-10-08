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
			@import url(../style.css);
		    @import url(../css/shared/shared.css);
		    @import url(../css/third/jquery-ui.css);
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
				<div class="section">
					<div class="releses">
						<s:if test="lista.size() > 0">
							<div class="content">
								<table class="userTable form-list" cellspacing="0">
									<thead>
										<tr>
											<th>Código</th>
								            <th>Descrição</th>
								            <th>Causa</th>
								            <th>Cobrança</th>
											<th>#</th>
											<th>#</th>
										</tr>
									</thead>
									<s:iterator value="lista" status="processoStatus">
										<tr class="<s:if test="#despesaStatus.odd == true ">odd</s:if><s:else>even</s:else>">
											<td><s:property value="id" /></td>
							                <td><s:property value="descricao" /></td>
							                <td><s:property value="causa.descricao" /></td>
							                <td><s:property value="cobranca.descricao" /></td>
											<td>
												<s:url id="editURL" action="editarProcesso">
													<s:param name="id" value="%{id}"></s:param>
											    </s:url>
											    <s:a href="%{editURL}">Editar</s:a>
											</td>
											<td>
												<s:url id="deleteURL" action="excluirProcesso">
													<s:param name="id" value="%{id}"></s:param>
												</s:url>
												<s:a href="%{deleteURL}">Deletar</s:a>
											</td>
										</tr>
									</s:iterator>
								</table>
							</div>
						</s:if>
					</div>
				</div>
			</div>

			<br/>

			<p><a href="criarProcesso">Criar processo</a></p>

			<jsp:include page="../inc/footer.jsp" />
		</div>

		<script type="text/javascript" src="../js/third/jquery.js"></script>
		<script type="text/javascript" src="../js/third/jquery-ui.js"></script>
		<script type="text/javascript" src="../js/shared/shared.js"></script>
		<script type="text/javascript" src="../js/processos/default.js"></script>
	</body>
</html>