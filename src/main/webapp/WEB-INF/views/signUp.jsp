<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- create_user.jsp -->
<!DOCTYPE html>
<html>
<head>
    <title>Create User</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
          <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
</head>
<body class="bg-success-subtle">
    <h1>Create User</h1>

    <form action="/customerInfo" method="post">
        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName"><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email"><br><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password"><br><br>

        <input type="submit" value="Create User">
    </form>
</body>
</html>
