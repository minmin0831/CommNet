<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="bean" class="user.UserBean" />
<jsp:useBean id="uMgr" class="user.UserMgr" />

<%
	String email = request.getParameter("email");
	String msg = "This email is available.";
	boolean result = uMgr.checkEmail(email);
	
	if(result){
		msg = "This email is not available.";
	}
%>

<script>
	alert("<%=msg %>");
	history.back();
</script>