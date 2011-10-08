<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Smart Legal</title>
	<link rel="stylesheet" href="../static/css/shared/shared.css" type="text/css" />
	<link rel="stylesheet" href="../static/css/third/jquery.alerts.css" type="text/css" />
	<link rel="stylesheet" href="../static/css/third/jquery-ui.css" type="text/css" />
	<script type="text/javascript" src="../static/js/third/jquery.js"></script>
	<script type="text/javascript" src="../static/js/shared/shared.js"></script>
	<script type="text/javascript" src="../static/js/third/jquery-ui.js"></script>
	<script type="text/javascript" src="../static/js/shared/sidebar.js"></script>
	<script type="text/javascript" src="../static/js/third/jquery.alerts.js"></script>
	<script type="text/javascript" src="../static/js/third/mask.js"></script>
	<script type="text/javascript" src="../static/js/processos/default.js"></script>
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
			<jsp:include page="../inc/sidebar.jsp" />
			
			<div class="cadastre">
				<h4>Casdastro</h4>
				
				<form>
					<fieldset>
						<label>
							Número do processo
							<input type="text" id="txtProcesso" />
						</label>
						<label>
							Tipo de causa
							<select id="slcTipo">
								<option value="0">Tipo 1</option>
								<option value="1">Tipo 2</option>
								<option value="2">Tipo 3</option>
							</select>
						</label>
						<label>
							Tipo de cobrança
							<select id="slcTipo">
								<option value="0">Tipo 1</option>
								<option value="1">Tipo 2</option>
								<option value="2">Tipo 3</option>
							</select>
						</label>
						<label>
							Cliente
							<input type="text" id="txtCliente" />
						</label>
						<label>
							Fórum
						<select id="slcForum">
								<option value="0">forum 1</option>
								<option value="1">forum 2</option>
								<option value="2">forum 3</option>
							</select>
						</label>
						<label>
							Data de abertura
							<input type="text" id="txtDataAbertura" />
						</label>
						<label>
							Data de encerramento
							<input type="text" id="txtDataEncerramento" />
						</label>
						<label>
							Taxa do contrato
							<input type="text" id="txtTaxa" alt="moeda" />
						</label>
						<label>
							status
							<select id="slcStatus">
								<option value="0">Status 1</option>
								<option value="1">Status 2</option>
								<option value="2">Status 3</option>
							</select>
						</label>
						<label>
							Observação
							<textarea rows="" cols="" id="txtObs"></textarea>
						</label>
						
						<label>
							<input type="submit" value="Salvar" id="btnSalvar" />
						</label>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
	
	<jsp:include page="../inc/footer.jsp" />
	</div>
</body>
</html>