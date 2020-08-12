<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>login action</title>
</head>
<body>
	<%
	String userID =null;
	if(session.getAttribute("userID") != null){
		userID =(String) session.getAttribute("userID");
	}
	if(userID != null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 로그인이 되어 있음')");
		script.println("location.href ='index.jsp'");
		script.println("</script>");
	}
	UserDAO userDAO = new UserDAO();
	int result = userDAO.login(user.getUserID(), user.getUserPassword());
	if (result ==1){
		session.setAttribute("userID", user.getUserID());
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('welcome')");
		script.println("location.href='index.jsp'");
		script.println("</script>");
	}
	else if (result==0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('password error')");
		script.println("history.back()");
		script.println("</script>");
	}
	else if (result==-1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('check your ID, please')");
		script.println("history.back()");
		script.println("</script>");
	}
	else if (result==-2) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('database error')");
		script.println("history.back()");
		script.println("</script>");
	}
	%>
</body>
</html>