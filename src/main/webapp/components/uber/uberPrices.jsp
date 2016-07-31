 <!--  <div>
 
        <price-estimate-Header ng-repeat="price in priceEstimateList" price-estimate="price" />
</div>-->

<div class="listDisplay list-group">
	<div ng-repeat="price in priceEstimateList" price-estimate="price" >
 		<a href="" class="list-group-item ">
    	<h4 class="list-group-item-heading">{{price.displayName}}</h4>
    	<p class="list-group-item-text">{{price.estimate}}</p>
  		</a>
  	</div>
</div>