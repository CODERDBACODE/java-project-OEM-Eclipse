<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


Parameter query: <%= request.getParameter("query") %> <br> <br>
Parameter username: <%= request.getParameter("username") %> <br>
Parameter password: <%= request.getParameter("password") %> <br>
Parameter oemDBHostOrScan: <%= request.getParameter("oemDBHostOrScan") %> <br>
Parameter oemDBPort: <%= request.getParameter("oemDBPort") %> <br>
Parameter oemDBInstanceOrService: <%= request.getParameter("oemDBInstanceOrService") %> <br>


</body>
</html>