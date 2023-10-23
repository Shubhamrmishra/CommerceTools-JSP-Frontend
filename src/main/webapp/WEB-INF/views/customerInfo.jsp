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
  </head>
  <body class="p-3 m-0 border-0 bd-example m-0 border-0 bg-success-subtle" modelAttribute="signInResult">

    <!-- Profile Header -->
    <div class="container mt-4">
      <div class="row">
        <div class="col-12 text-center">

          <h2>Welcome, <span class="text-primary">${signInResult.customer.firstName}</span></h2>
          <p class="lead">Manage your profile information</p>
        </div>
      </div>
    </div>

    <!-- Profile Information -->
    <div class="container mt-4">
      <div class="row">
        <div class="col-md-6 offset-md-3">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Personal Information</h5>
              <div class="mb-3">
                <label for="name" class="form-label"></label>
                <input type="text" class="form-control" id="name" value="${signInResult.customer.firstName} ${signInResult.customer.lastName}" disabled>
              </div>
              <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" value="${signInResult.customer.email}" disabled>
              </div>
              <div class="mb-3">
                <label for="phone" class="form-label">Phone Number</label>
                <input type="text" class="form-control" id="phone" value="123-456-7890" disabled>
              </div>
              <div class="mb-3">
                <label for="address" class="form-label">Address</label>
                <textarea class="form-control" id="address" rows="3" disabled>123 Main St, City, Country</textarea>
              </div>
              <a href="#" class="btn btn-primary">Edit Profile</a>
            </div>
          </div>
        </div>
      </div>
    </div>

  </body>
</html>
