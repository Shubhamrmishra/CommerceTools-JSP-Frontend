<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Clothing Category</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
          <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">

    <!-- Bootstrap CSS -->
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
                <a href="http://localhost:8088/men/clothing/jackets">
                    <img src="https://images-cdn.ubuy.co.in/633ff15484e72731202caee3-junge-denim-jacket-men-fleece-jacket.jpg" alt="Jackets" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Jackets</h5>
                    </div>
                </a>
            </div>
            <div class="card">
                <a href="http://localhost:8088/men/clothing/shirts">
                    <img src="https://m.media-amazon.com/images/I/71On2XSPuRL._UL1500_.jpg" alt="Shirts" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Shirts</h5>
                    </div>
                </a>
            </div>
            <div class="card">
                <a href="http://localhost:8088/men/clothing/trousers">
                    <img src="https://m.media-amazon.com/images/I/71bJyw5k58L._UL1500_.jpg" alt="Trousers" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Trousers</h5>
                    </div>
                </a>
            </div>
            <div class="card">
                <a href="http://localhost:8088/men/clothing/tops">
                    <img src="https://m.media-amazon.com/images/I/61jGKcepq8L._UL1000_.jpg" alt="Tops" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Tops</h5>
                    </div>
                </a>
            </div>
            <div class="card">
                <a href="http://localhost:8088/men/clothing/jeans">
                    <img src="https://m.media-amazon.com/images/I/81-BXDBJQIL._UL1500_.jpg" alt="Jeans" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Jeans</h5>
                    </div>
                </a>
            </div>
            <div class="card">
                <a href="http://localhost:8088/men/clothing/blazer">
                    <img src="https://m.media-amazon.com/images/I/61NdRyw+G+L._UL1500_.jpg" alt="Blazer" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Blazer</h5>
                    </div>
                </a>
            </div>
            <div class="card">
                <a href="http://localhost:8088/men/clothing/tshirts">
                    <img src="https://m.media-amazon.com/images/I/71+RZzHylcL._UL1500_.jpg" alt="T-Shirts" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">T-Shirts</h5>
                    </div>
                </a>
            </div>
            <div class="card">
                <a href="http://localhost:8088/men/clothing/suits">
                    <img src="https://m.media-amazon.com/images/I/51kuHhj05iL._UY879_.jpg" alt="Suits" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Suits</h5>
                    </div>
                </a>
            </div>
        </div>
    </div>

    <!-- Bootstrap JavaScript -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-pzjw8Vkdot+2ApzC+VA2D1g4dPOm2wkTVRB+Q8D9EjakD1A9kPElyYheXEWNrWDL" crossorigin="anonymous"></script>
</body>
</html>
