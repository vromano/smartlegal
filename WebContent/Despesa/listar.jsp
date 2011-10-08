<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

<s:if test="lista.size() > 0">
	<div class="content">
	<table class="userTable" cellpadding="5px">
		<tr class="even">
			<th>Id</th>
			<th>Descricao</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<s:iterator value="lista" status="despesaStatus">
			<tr
				class="<s:if test="#despesaStatus.odd == true ">odd</s:if><s:else>even</s:else>">
				<td><s:property value="id" /></td>
				<td><s:property value="descricao" /></td>
				<td><s:url id="editURL" action="editarDespesa">
					<s:param name="id" value="%{id}"></s:param>
				    </s:url> <s:a href="%{editURL}">Edit</s:a>
				</td>
				<td><s:url id="deleteURL" action="excluirDespesa">
					<s:param name="id" value="%{id}"></s:param>
				</s:url> <s:a href="%{deleteURL}">Delete</s:a></td>
			</tr>
		</s:iterator>
	</table>
	</div>
</s:if>

<br/>

<p><a href="criarDespesa">Criar despesa</a></p>


</body>
</html>