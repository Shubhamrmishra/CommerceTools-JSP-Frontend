<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Clothing Category</title>

    <!-- Bootstrap CSS -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
          <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-pzjw8Vkdot+2ApzC+VA2D1g4dPOm2wkTVRB+Q8D9EjakD1A9kPElyYheXEWNrWDL" crossorigin="anonymous">
    <style>
        .card {
            margin-bottom: 1rem;
        }

        .card-img-top {
            height: 200px;
            object-fit: cover;
        }

        .card-columns {
            column-count: 3; /* Adjust the number of columns as needed */
        }
    </style>
</head>
<body class="bg-success-subtle">
    <div class="container">
        <h1 class="mt-4">Clothing Category</h1>

        <h2 class="mt-4">Subcategories:</h2>

        <div class="card-columns mt-4">
            <div class="card">
                <a href="http://localhost:8088/women/clothing/jackets">
                    <img src="https://m.media-amazon.com/images/I/41JjA9ZfHoL._AC_UL600_FMwebp_QL65_.jpg" alt="Jackets" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Jackets</h5>
                    </div>
                </a>
            </div>
            <div class="card">
                <a href="http://localhost:8088/women/clothing/shirts">
                    <img src="https://m.media-amazon.com/images/I/41q21jl6lYL._AC_UL600_FMwebp_QL65_.jpg" alt="Shirts" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Shirts</h5>
                    </div>
                </a>
            </div>
            <div class="card">
                <a href="http://localhost:8088/women/clothing/trousers">
                    <img src="https://m.media-amazon.com/images/I/811Irfa3B0L._AC_UL600_FMwebp_QL65_.jpg" alt="Trousers" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Trousers</h5>
                    </div>
                </a>
            </div>
            <div class="card">
                <a href="http://localhost:8088/women/clothing/tops">
                    <img src="https://m.media-amazon.com/images/I/51-rDSFELyL._AC_UL600_FMwebp_QL65_.jpg" alt="Tops" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Tops</h5>
                    </div>
                </a>
            </div>
            <div class="card">
                <a href="http://localhost:8088/women/clothing/jeans">
                    <img src="https://m.media-amazon.com/images/I/818U5Y80TeL._AC_UL600_FMwebp_QL65_.jpg" alt="Jeans" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Jeans</h5>
                    </div>
                </a>
            </div>
            <div class="card">
                <a href="http://localhost:8088/women/clothing/skirts">
                    <img src="https://m.media-amazon.com/images/I/71akgWuFSvL._UX522_.jpg" alt="Blazer" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Skirts</h5>
                    </div>
                </a>
            </div>
            <div class="card">
                <a href="http://localhost:8088/women/clothing/tshirts">
                    <img src="https://m.media-amazon.com/images/I/71PlxXUj1qL._AC_UL600_FMwebp_QL65_.jpg" alt="T-Shirts" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">T-Shirts</h5>
                    </div>
                </a>
            </div>
            <div class="card">
                <a href="http://localhost:8088/women/clothing/dresses">
                    <img src="https://m.media-amazon.com/images/I/71CVccao4DL._AC_UL600_FMwebp_QL65_.jpg" alt="Suits" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Dresses</h5>
                    </div>
                </a>
            </div>
        </div>
    </div>

    <!-- Bootstrap JavaScript -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-pzjw8Vkdot+2ApzC+VA2D1g4dPOm2wkTVRB+Q8D9EjakD1A9kPElyYheXEWNrWDL" crossorigin="anonymous"></script>
</body>
</html>
