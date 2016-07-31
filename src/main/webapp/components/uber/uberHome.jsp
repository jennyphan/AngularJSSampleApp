<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<form name="myForm">
<div class="form-group" >
			 <img src="../uberRates/resources/img/Uber_Logobit_Digital_black.png" height="128px" class="pull-right" style="margin-right: 327px;">
	<input
		required
		class="form-control ng-pristine ng-valid ng-not-empty ng-valid-required ng-touched inputAddress"
		ng-model="pickup" type="text" style="" placeholder="Starting Address"
		id="Autocomplete1" ng-model="autocompleteStart" ng-autocomplete
		options="options" details="detailsStart"> 
		
</div>
<div class="form-group">
	<input
		required
		class="form-control ng-pristine ng-valid ng-not-empty ng-valid-required ng-touched inputAddress"
		ng-model="dropoff" type="text" style="" placeholder="Destination"
		id="Autocomplete2" ng-model="autocompleteDest" ng-autocomplete
		options="options" details="detailsEnd">
</div>
<button class="btn btn-info" ng-disabled="myForm.$invalid" ng-click="getPrices()" type="button">Get
	Estimates</button>
</form>
<p><br>
<div class="text-left">
<p ><b>New to UBER? </p>
 <spring:message code="uber.promo" var="uberHomeURL"/>
 
 <a href='${uberHomeURL}' target="_blank"
                           		title="Uber Sign Up" class="uberColor"> Sign up </a> </b>
now to claim your free gift ($15 off first ride).  To get your free ride use the promo code, <b>jennyp364</b>.
<p>
<br>Free ride value amounts vary by city
</div>
