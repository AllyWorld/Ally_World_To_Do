<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.0/css/bootstrap.min.css" integrity="sha384-PDle/QlgIONtM1aqA2Qemk5gPOE7wFq8+Em+G/hmo5Iq0CCmYZLv3fVRDJ4MMwEA" crossorigin="anonymous">
<link href="css/style.css" media="screen" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Ally_World</title>
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: 50px;
  text-align: center;
  font-family: arial;
}
 
.title {
  color: grey;
  font-size: 18px;
}
 
button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}
 
 
button:hover, a:hover {
  opacity: 0.7;
}
.image {
    height:auto;
    padding-right: 50px;
    padding-left:50px;
}
</style>

<title>Ally_World</title>
</head>
<body>
<jsp:include page="navigation.jsp" />
 <div class="container-fluid">
        <div class="row">
            <div class="card">
                <spring:form action="updateProfile" modelAttribute="profile">
                    <h2 style="text-align: center">Profile Details</h2>
                    <div class="card">
                        <img class="image" src="images/ally.png" alt="John"
                            style="width: 100%">
                        <h1>${message.fullName}</h1>
                        <p class="title">Lives in ${message.currentAddress }</p>
                        <p>From ${message.permanentAddress }</p>
                        <p>Born on ${message.dateOfBirth }</p>
                        <p>Relationship status ${message.relationShipStatus}</p>
                        <p>
                            <button>Update Profile</button>
                        </p>
                    </div>
                </spring:form>
            </div>
            <div class="col-sm-20 col-md-15 col-lg-8" id="feed"
                style="background-color: white;">
                <spring:form action="updatePost" modelAttribure="post">
                <div>
                    <h4>${message.fullName}</h4>
                    <img class="image"alt="all" src="images/all.jpg" >
                    </div><br><hr>
                    <p>
                        <a href="postDetails"><button>Load More Posts</button></a>
                    </p>
                </spring:form>
            </div>
        </div>
    </div>

            
</body>
</html>
 
   