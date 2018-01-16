<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Todo list</title>
</head>
<body>
	<h1>Todo List</h1>
	<div id="todoForm">
		<form:form method="post" modelAttribute="todo"
				action = "${pageContext.request.contextPath}/todo/update">
			<form:hidden path="id" />
			<form:hidden path="completed" />
			이름 : <form:input path="name" /><br/>
			내용 : <form:input path="comm" /><br/>
			<input type="submit" value="갱신" />
		</form:form>
		${result} <br/>
	</div>
	
	<ul>
		<style scoped = "scoped">
			.strike {
				text-decoration: line-through;
			}
		</style>
		<c:forEach var="todo" items="${list}">
			<li>
				<c:choose>
					<c:when test="${todo.completed}">
						<span class="strike">
							<a href="<c:url value="/todo/select?id=${todo.id}"/>"> 
								${todo.name} / ${todo.comm}
							</a>		
						</span>
					</c:when>
					<c:otherwise>
						<a href="<c:url value="/todo/select?id=${todo.id}"/>"> 
							${todo.name} / ${todo.comm}
						</a>
						<form:form method="POST" modelAttribute="todo" 
								action = "${pageContext.request.contextPath}/todo/complete"
								cssStyle="display: inline-block">
							<form:hidden path="id" value ="${todo.id}"/>
							<form:button>완료</form:button>							
						</form:form>
					</c:otherwise>
				</c:choose>
				<form:form method="POST" modelAttribute="todo" 
						action = "${pageContext.request.contextPath}/todo/delete"
						cssStyle="display: inline-block">
					<form:hidden path="id" value ="${todo.id}"/>
					<form:button>삭제</form:button>							
				</form:form>
			</li>
		</c:forEach>
	</ul>
</body>
</html>