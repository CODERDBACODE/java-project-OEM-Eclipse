<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>QuerySYSMAN</title>
</head>
<body>
<h2>Query Sysman Form </h2> <br>

<form name="QuerySysmanInputs" method="post" action="ShowSYSMANQueryResults.jsp">

Query to Run: <br>
<input type="text" name="query" style="width: 400px;"  style="height: 200px;"  style="top"><br><br>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="22%">&nbsp;</td>
    <td width="78%">&nbsp;</td>
  </tr>
  
  <tr>
    <td>Username </td>
    <td><input type="text" name="username"></td>
  </tr>
  
  <tr>
    <td>Password </td>
    <td><input type="password" name="password"></td>
  </tr>
  
  <tr>
    <td>OEM DB Host or Scan Name </td>
    <td><input type="text" name="oemDBHostOrScan" value="rclp16-scan"></td>
  </tr>
  
  <tr>
    <td>OEM DB Port Number </td>
    <td><input type="text" name="oemDBPort" value="1522"></td>
  </tr>
 
   <tr>
    <td>OEM DB Instance or Service </td>
    <td><input type="text" name="oemDBInstanceOrService" value="OEM12CP01"></td>
  </tr>
    
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" name="submit" value="Submit"></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
</table>
</form>

</body>
</html>