<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Smart Legal</title>
	<style type="text/css">
	    @import url(../css/shared/shared.css);
	    @import url(../css/third/jquery-ui.css);
	    @import url(../css/home/default.css);
	</style>
	<script type="text/javascript" src="../js/third/jquery.js"></script>
	<script type="text/javascript" src="../js/third/jquery-ui.js"></script>
	<script type="text/javascript" src="../js/shared/shared.js"></script>
	<script type="text/javascript" src="../js/processos/default.js"></script>
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
				<table border="0" class="processos">
					<thead>
						<tr>
							<th>Número do processo</th>
							<th>Tipo de causa</th>
							<th>Tipo de cobrança</th>
							<th>Cliente</th>
							<th>Fórum</th>
							<th>Data da abertura</th>
							<th>Data de encerramento</th>
							<th>Taxa do contrato</th>
							<th>Status</th>
							<th>Ação</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>001</td>
							<td>Não sei</td>
							<td>Não sei</td>
							<td>Willians Pereira</td>
							<td>Vai saber</td>
							<td>02/02/2011</td>
							<td>02/02/2011</td>
							<td>R$200,00</td>
							<td>On</td>
							<td><a title="Deletar" href="Deletar.jsp" class="deletar">Deletar</a><a title="Editar" class="editar" href="Editar.jsp">Editar</a></td>
						</tr>
					</tbody>
				</table>
				
				<a href="Cadastrar.jsp" class="cadastrar">Cadastrar</a>
			</div>
			
		</div>
	</div>
	
	<jsp:include page="../inc/footer.jsp" />
	</div>
</body>
</html>