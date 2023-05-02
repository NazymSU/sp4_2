
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
<%@include file="navbar.jsp"%>
<div class="container" style="min-height: 500px;">
    <div class="row mt-3">
        <div class="col-6 mx-auto">
                <%
                       String emailError = request.getParameter("emailerror");
                       if(emailError!=null){
                   %>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                Incorrect email, try again!
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
                <%
                       }
                   %>
                <%
                       String passwordError = request.getParameter("passworderror");
                       if(passwordError!=null){
                   %>

            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                Incorrect password, try again!
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
                <%
                       }
                   %>
            <form action="/login" method="post">
                <div class="card">
                    <div class="card-header">
                        Login Page
                    </div>
                    <div class="card-body">
                        <div class="mb-3 row">
                            <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="staticEmail"
                                       placeholder="Insert email..." name="email" required>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="inputPassword"
                                       placeholder="Insert password..."
                                       name="password" required>
                            </div>
                        </div>
                        <button class="btn btn-success">Login</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
