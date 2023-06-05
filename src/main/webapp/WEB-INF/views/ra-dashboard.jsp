<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles/ra-dashboard.css">
    <link rel="stylesheet" href="styles/new-request-page.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Nunito+Sans:wght@700&family=Poppins&family=Prompt&family=Source+Code+Pro:wght@600&family=Source+Sans+Pro&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Oxygen&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
</head>
<body>
    <script src="jQuery/jquery.js"></script>

    <script src="bootstrap/js/bootstrap.bundle.js"></script>
<nav class="navbar navbar-expand-lg navbar-style">
    <div class="container-fluid navbar-padding">
        <a class="navbar-brand navbar-font" href="#">DashBoard</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active navbar-font" aria-current="page" href="#">Users</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link navbar-font" href="#" onclick="newRequest();">New Request</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link navbar-font" href="#">Manage Requests</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link navbar-font" href="#">Approval Requests</a>
                </li>
            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn search-btn" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
</nav>
<div id="new-req-div">
</div>
<script type="text/javascript">
    function newRequest() {
       $.ajax({
       type: "POST",
       url: "new-request",
       success: function (data) {
            console.log('success');
            $("#new-req-div").html(data);
       },
       error:function(exception){alert('Exception:'+exception);}
       });
    }
    function fetchSubs(){
        var subsLoginId = $('#subsLoginId').val();
        console.log(subsLoginId);
        var jsonObj;
        $.ajax({
               type: "GET",
               dataType: "text",
               url: "fetchSubs",
               data: {"subsLoginId": subsLoginId},
               success: function(data) {
                    console.log('success2');
                    var subs = JSON.parse(data);
                    console.log(subs.name);
                    console.log(subs.emailId);
                    $("#name").val(subs.name);
                    $("#mobileNo").val(subs.mobileNo);
                    $("#emailId_").val(subs.emailId);
               },
        });
    }
   function captchaGenerate(){
        captcha = document.getElementById("image");
        var uniquechar = "";
        const randomchar ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        for (let i = 0; i < 5; i++) {
            uniquechar += randomchar.charAt(Math.random() * randomchar.length);
        }
        console.log(uniquechar);
        document.getElementById('captcha_').innerHTML = uniquechar;
}


</script>
</body>
</html>