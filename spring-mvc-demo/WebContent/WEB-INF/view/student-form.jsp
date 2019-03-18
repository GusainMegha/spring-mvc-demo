<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>>

<!DOCTYPE html>

<html>

<head>

	<title>Student Register Form</title>

</head>

<body>
	
	<form:form action="processForm" modelAttribute="student">

	First Name : <form:input path="firstName" />

	<br><br>

	Last Name : <form:input path="lastName" />

	<br><br>
	
	Country : 
	
	<form:select path="country">
	
		<form:options items="${student.countryOptions}" />
	
	</form:select>
	
	<br><br>
	
	Favourite Language :
	
	<form:radiobuttons path="favouriteLanguage" items="${student.favouriteLanguageOptions}"/>
	
	<br><br>
	
	Operating Systems : 
	
	Linux <form:checkbox path="operatingSystems" value="Linux"/>
	Mac OS <form:checkbox path="operatingSystems" value="Mac OS"/>
	MS Windows <form:checkbox path="operatingSystems" value="MS Windows"/>

 	<br><br>
	
	<input type="Submit" value="Submit" />
		
	</form:form>

</body>

</html>