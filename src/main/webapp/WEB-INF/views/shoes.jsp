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
            column-count: 3;
        }
    </style>
</head>
<body class="bg-success-subtle">
    <div class="container">
        <h1 class="mt-4">Shoes Category</h1>

        <h2 class="mt-4">Subcategories:</h2>

        <div class="card-columns mt-4">
            <div class="card">
                <a href="http://localhost:8088/men/shoes/sneakers">
                    <img src="https://m.media-amazon.com/images/I/81pBwY2iKgL._UY695_.jpg" alt="Jackets" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Sneakers</h5>
                    </div>
                </a>
            </div>
            <div class="card">
                <a href="http://localhost:8088/men/shoes/loafers">
                    <img src="https://m.media-amazon.com/images/I/71TKCyer+XL._UY695_.jpg" alt="Shirts" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Loafers</h5>
                    </div>
                </a>
            </div>
            <div class="card">
                <a href="http://localhost:8088/men/shoes/laceUpShoes">
                    <img src="https://m.media-amazon.com/images/I/61cT7BlFYcL._UY695_.jpg" alt="Trousers" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Lace-up shoes</h5>
                    </div>
                </a>
            </div>
            <div class="card">
                <a href="http://localhost:8088/men/shoes/boots">
                    <img src="https://m.media-amazon.com/images/I/71ojIo4OcAL._UY695_.jpg" alt="Tops" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Boots</h5>
                    </div>
                </a>
            </div>
            <div class="card">
                <a href="http://localhost:8088/men/shoes/sandals">
                    <img src="https://m.media-amazon.com/images/I/71lXdhdYScL._AC_UL600_FMwebp_QL65_.jpg" alt="Jeans" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Sandals</h5>
                    </div>
                </a>
            </div>
        </div>
    </div>

    <!-- Bootstrap JavaScript -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-pzjw8Vkdot+2ApzC+VA2D1g4dPOm2wkTVRB+Q8D9EjakD1A9kPElyYheXEWNrWDL" crossorigin="anonymous"></script>
</body>
</html>
