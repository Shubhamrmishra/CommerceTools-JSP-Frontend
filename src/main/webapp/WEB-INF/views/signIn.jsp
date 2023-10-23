<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <title>Customer Profile</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  </head>
  <body class="p-3 m-0 border-0 bd-example m-0 border-0 bg-success-subtle">

    <!-- Example Code -->
    <div class="p-3 mb-2 bg-primary-subtle text-white">
      <div class="p-3 text-primary-emphasis bg-primary-subtle border border-primary-subtle rounded-3">
        <p><b><u>Sign-In Here</u></b></p>

        <form action="/loggedIn" method="post">
          <div class="row mb-3">
            <label for="email" class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-10">
              <input type="email" class="form-control" id="email" name="email" required>
            </div>
          </div>
          <div class="row mb-3">
            <label for="password" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-10">
              <input type="password" class="form-control" id="password" name="password" required>
            </div>
          </div>
          <button type="submit" class="btn btn-primary">Sign in</button>
        </form>
        <a href="http://localhost:8088/signUp" class="nav-link">create Customer</a>
      </div>
    </div>

  </body>
</html>
