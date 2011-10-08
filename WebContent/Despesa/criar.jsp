<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Registration Page</title>
		<s:head />
		<style type="text/css">
		   @import url(style.css);
		</style>
	</head>
	<body>
		<s:form action="salvarDespesa">
			<s:push value="despesa">
				<s:hidden name="id" />
				<s:textfield name="descricao" label="Descrição" />
				<s:submit />
			</s:push>
		</s:form>
	</body>
</html>