<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <title>JSP - Hello World</title>
</head>
<body>

    <div class="container mx-auto">
        <form action="LoginServ" method="post">
            <div class="mb-3">
                <label for="userName" class="form-label">User Name</label>
                <input type="text" class="form-control" id="userName" aria-describedby="emailHelp" name="userName">
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password">
            </div>
            <button type="submit" class="btn btn-primary">Log in</button>
        </form>
    </div>

<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>