<%@page import="gow.ora.dh.DataHandler"%>
<%@ page import="java.sql.ResultSet" import="java.sql.ResultSetMetaData"
	import="java.io.PrintWriter" import="java.lang.Exception"
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Query Results</title>
</head>

<body>

<h3>Query Results:</h3>

<jsp:useBean id="queryBean" class="gow.ora.dh.DataHandler" scope="session" />

<%

String query = request.getParameter("query");
String username = request.getParameter("username");
String password = request.getParameter("password");
String oemDBHostOrScan = request.getParameter("oemDBHostOrScan");
String oemDBPort = request.getParameter("oemDBPort");
String oemDBInstanceOrService = request.getParameter("oemDBInstanceOrService");

ResultSet resultSet;
resultSet = queryBean.queryResultSet(username, password, oemDBHostOrScan, oemDBPort, oemDBInstanceOrService, query);

%>

<table border="1">
<tr>

<% 
ResultSetMetaData rsMetadata 	= resultSet.getMetaData();
int columnCount 				= rsMetadata.getColumnCount();
int rownum = 0;

for (int i = 1; i <= columnCount; i++) {
	out.println ("<td>" + rsMetadata.getColumnName(i) + "</td>");
}
out.println("</tr>");

while (resultSet.next()) {

	rownum = rownum+1;

	out.println("<tr>");
	for (int i = 1; i <= columnCount; i++) {
		
		out.println ("<td>" + resultSet.getString(i) + "</td>");
	}
	out.println("</tr>");
}

%>
</table>

</body>
</html>