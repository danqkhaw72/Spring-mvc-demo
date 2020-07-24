<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@  taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration Form</title>
</head>
<body>

	<form:form action="processForm" modelAttribute="student">
	
		First name: <form:input path="firstName" />
		
		<br><br>
		
		Last name: <form:input path="lastName" />
		
		<br><br>
		
		Country:
		<form:select path="country">
			
			<!--
			<form:option value="VietNam" label="VietNam" />
			<form:option value="France" label="France" />
			<form:option value="Japan" label="Japan" />
			<form:option value="India" label="India" />
			<form:option value="Germany" label="Germany" />
			-->
			<form:options items="${student.countryOptions}" />
		</form:select>
		
		<br><br>
		
		Favorite Language:
		
		Java <form:radiobutton path="favoriteLanguage" value="Java"/>
		C# <form:radiobutton path="favoriteLanguage" value="C"/>
		Python <form:radiobutton path="favoriteLanguage" value="Python"/>
		PHP <form:radiobutton path="favoriteLanguage" value="PHP"/>
		
		<br><br>
		
		Operating Systems:
		
		Linux <form:checkbox path="operatingSystem" value="Linux"/>
		Mac OS <form:checkbox path="operatingSystem" value="Mac OS"/>
		MS Windown <form:checkbox path="operatingSystem" value="MS Windown"/>
		
		<br><br>
		
		<input type="submit" value="Submit">
	
	</form:form>

</body>
</html>