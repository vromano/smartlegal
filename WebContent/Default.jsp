<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Smart Legal</title>
	<style type="text/css">
	    @import url(css/shared/shared.css);
	    @import url(css/third/jquery-ui.css);
	    @import url(css/home/default.css);
	</style>
	<script type="text/javascript" src="js/third/jquery.js"></script>
	<script type="text/javascript" src="js/third/jquery-ui.js"></script>
	<script type="text/javascript" src="js/shared/shared.js"></script>
	<script type="text/javascript" src="js/home/default.js"></script>
</head>
<body>
	<div class="general">
		<jsp:include page="inc/header.jsp" />
		
		<div class="content">
			<div class="title">
				<div class="section">
					<h2>ética e Justiça andando lado a lado</h2>
					<span class="group">Equipe Smart Legal</span>
				</div>
			</div>
		</div>

		<div class="items">
			<div class="section">
				<div class="calendar">
				</div>
				<div class="releases">
					<div class="header"></div>
					<ul id="releasesFeed" class="feed">
						<li class="feed-item">Item 1</li>
						<li class="feed-item">Item 2</li>
						<li class="feed-item">Item 3</li>
						<li class="feed-item">Item 4</li>
					</ul>
					<div class="details-box">
						<a class="details" href="lancamento-despesa/Default.jsp">DETALHES</a>
					</div>
				</div>
				<div class="processes">
					<div class="header"></div>
					<ul id="processesFeed" class="feed">
						<li class="feed-item">Item 1</li>
						<li class="feed-item">Item 2</li>
						<li class="feed-item">Item 3</li>
						<li class="feed-item">Item 4</li>
					</ul>
					<div class="details-box">
						<a class="details" href="processos/Default.jsp">DETALHES</a>
					</div>
				</div>
				<div class="events last">
					<div class="header"></div>
					<ul id="eventsFeed" class="feed">
						<li class="feed-item">Item 1</li>
						<li class="feed-item">Item 2</li>
						<li class="feed-item">Item 3</li>
						<li class="feed-item">Item 4</li>
					</ul>
					<div class="details-box">
						<a class="details" href="agenda/Default.jsp">DETALHES</a>
					</div>
				</div>
			</div>
		</div>
		
		<jsp:include page="inc/footer.jsp" />
	</div>
</body>
</html>