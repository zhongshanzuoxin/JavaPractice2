<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List, java.util.ArrayList, model.dao.dto.TodoDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Todo List</title>
</head>
<body>

<% List<TodoDTO> todoList = (List) request.getAttribute("todoList"); %>

<% for(TodoDTO todo: todoList){ %>
  <h5><%=todo.getTodo() %></h5>
  <h6><%=todo.getTimeLimit() %></h6>
  <a href="update-servlet?todoId=<%=todo.getId() %>">todoを更新する</a>
  <a href="delete-servlet?todoId=<%=todo.getId() %>">todoを削除する</a>
<% } %>


<form action="insert-servlet" method="post">
  <label>Todo: </label><input type="text" name="todo"><br>
  <label>Limit: </label><input type="date" name="timeLimit"> <br>
  <input type="submit" value="Todoを登録する">
</form>

</body>
</html>