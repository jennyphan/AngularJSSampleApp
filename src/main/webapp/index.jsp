<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!doctype html>

<html lang="en" ng-app="MainApp">

<head>
<meta charset="utf-8" />
<title>AngularJS Samples</title>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/project_style.css" />
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">

</head>
<body>
	<jsp:include page="header.jsp" />	
	<div class="container">
	<div ng-view=""></div>	
	</div>
	<jsp:include page="footer.jsp" />
	
	<script type="text/javascript"
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDK0loNiScYyuJ4ncc5wOBUelrQN_Lqkso&libraries=places"></script>
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>

	<script type="text/javascript"
		src="../sampleApp/resources/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="../sampleApp/resources/bootstrap/js/angular.min.js"></script>
	<script type="text/javascript"
		src="../sampleApp/resources/bootstrap/js/ngAutoComplete.js"></script>
	<script type="text/javascript"
		src="../sampleApp/resources/bootstrap/js/angular-route.js"></script>
	<script type="text/javascript" src="../sampleApp/resources/app.js"></script>
	<script type="text/javascript"
		src="../sampleApp/components/login/loginController.js"></script>
	<script type="text/javascript"
		src="../sampleApp/components/login/login.js"></script>
	<script type="text/javascript"
		src="../sampleApp/components/main/mainController.js"></script>
	
	<script type="text/javascript"
		src="../sampleApp/components/todo/todoController.js"></script>
	<script type="text/javascript"
		src="../sampleApp/components/welcome/welcomeController.js"></script>

</body>
</html>