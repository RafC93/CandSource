<!DOCTYPE html>
<html lang="en">
<head>
<title>My expenses</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://cand.com/functions" prefix="f"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script type="text/javascript"
	src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/moment.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/bootstrap-datetimepicker.min.js" />"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/dateTimePicker.js" />"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/dateTimePicker.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/tiles.css" />">
<style>
#btnDone {
	margin-top: 5px;
}
</style>
<script>
       
       function isNumberKey(evt)
       {
    	   var charCode = (evt.which) ? evt.which : evt.keyCode;
    	   if (charCode == 46 && evt.srcElement.value.split('.').length>1) 
    	   	return false; 
           if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57))
             return false;

          return true;
       }
       
       </script>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>

				</button>
				<a class="navbar-brand" href="#">C&S</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="${pageContext.request.contextPath}/">Home</a></li>
					<li><a href="${pageContext.request.contextPath}/profile/">My Profile</a></li>
					<li><a href="${pageContext.request.contextPath}/taskmgr/">Tasks</a></li>
					<li><a href="${pageContext.request.contextPath}/forum/">Forum</a></li>
					<li class="active"><a><span
							class="glyphicon glyphicon-usd"></span>Expenses</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>
							Sign Up</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
							Login</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<h3>Expenses</h3>
		<ul class="nav nav-tabs">
			<li ><a href="${pageContext.request.contextPath}/expenses/">New Receipt</a></li>
			<li class="active"><a href="${pageContext.request.contextPath}/expenses/view">Expenses view</a></li>
		</ul>
		<br>
		<form:form modelAttribute="expense" method="POST" action="${pageContext.request.contextPath}/expenses/view/edit/accepted">					
			<form:input path="id" type="hidden"></form:input>
			<div class="row">
				<div class="col-sm-3"></div>

				<div class="col-sm-6">
					<div class="well">
						<div class="row">


							<div class="col-sm-6">
								<p>Type:</p>
								<form:select path="type" class="selectpicker"
									data-style="btn-primary">
									<option>Food</option>
									<option>Clothes</option>
									<option>Transport</option>
									<option>Accommodation</option>
									<option>Relax</option>
									<option>Other</option>
								</form:select>
								<p>Price:</p>
								<form:input path="cost" type="number" class="form-control"
									maxlength="10" onkeypress="return isNumberKey(event)"></form:input>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<p>Description:</p>
								<form:textarea path="description" rows="3" class="form-control"
									maxlength="1000"></form:textarea>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<p>Date:</p>
								<div class="text-right">
									<div class="input-group">
										<form:input path="date" type="datetime"
											id="finishDateTimePicker"
											name="search_message[displayDateFrom]"
											placeholder="YYYY-MM-DD hh:mm:ss"
											class="input-sm form-control"></form:input>
										<div class="input-group-addon">
											<span class="glyphicon glyphicon-calendar"></span>
										</div>
									</div>
									<button id="btnDone" type="submit" name="clickBtn"
										value="addReceipt" class="btn btn-success">
										<span class="glyphicon glyphicon-ok"></span> Accept Update
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-2"></div>
			</div>

		</form:form>


	</div>




</body>
</html>
