<%@ page import="org.osgi.framework.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	BundleContext ctx = (BundleContext) getServletContext().getAttribute("osgi-bundlecontext");
	ServiceReference ref = ctx.getServiceReference(com.programmervsworld.api.Greeter.class.getName());
	com.programmervsworld.api.Greeter greeter = (com.programmervsworld.api.Greeter) ctx.getService(ref);
%>
<html>
	<head>
		<title>JSP Test</title>
	</head>
	<body>
		<h1>Is anyone out there?</h1>
		<div>
			<%= greeter.greet() %>
		</div>
	</body>
</html>