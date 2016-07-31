<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div class="masthead">
	<h3 class="muted">
		<spring:message code='header.message' />
	</h3>
</div>

<nav class="navbar navbar-default">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">AngularJS Sample App</a>
		</div>

		<div class="collapse navbar-collapse navbar-inner"
			id="bs-example-navbar-collapse-1">
			<div class="container">
				<ul class="nav navbar-nav" bs-active-link>
					<li><a href="<c:url value="/#/welcome"/>"
						title='<spring:message code="header.home"/>'>
							<p>
								<spring:message code="header.home" />
							</p>
					</a></li>

				</ul>

			</div>
		</div>
	</div>
</nav>