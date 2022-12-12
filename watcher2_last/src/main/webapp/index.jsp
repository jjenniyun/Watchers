<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!-- index 페이지는 html 태그내용 안만들고 그냥 boardList.jsp를
    	보내줄 수 있는 요청을 적어준다.
     -->
<% //response.sendRedirect("boardList.do");
	// 요청 앞에 /쓰지 않아도 됨
%>
<c:redirect url="home.do" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>