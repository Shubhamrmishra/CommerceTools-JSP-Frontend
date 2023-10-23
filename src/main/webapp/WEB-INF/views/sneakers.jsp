<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Page</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
          <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }

        h1 {
            color: #333;
        }

        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            grid-gap: 20px;
        }

        .product-card {
            position: relative;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            background-color: #fff;
        }

        .product-image {
            text-align: center;
            margin-bottom: 10px;
            position: relative;
        }

        .product-image img {
            max-width: 100%;
            height: 100%;
        }

        .wishlist-btn {
            position: absolute;
            top: 5px;
            right: 5px;
            width: 32px;
            height: 32px;
            border: none;
            background-color: transparent;
            cursor: pointer;
            background-image: url("wishlist_icon.png");
            background-size: cover;
        }

        .product-name {
            font-weight: bold;
            margin-bottom: 5px;
        }

        .product-price {
            color: #555;
            font-size: 14px;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 10px;
        }

        .add-to-cart-btn {
            padding: 8px 16px;
            border-radius: 4px;
            border: none;
            cursor: pointer;
            font-weight: bold;
            background-color: #4caf50;
            color: #fff;
        }

        .wishlist-btn {
            padding: 8px 16px;
            border-radius: 4px;
            border: none;
            cursor: pointer;
            font-weight: bold;
            background-color: #ff9800;
            color: #fff;
        }
    </style>
</head>
<body class="bg-success-subtle">
    <h1>Product List</h1>

    <div class="product-grid">
        <c:forEach var="var" items="${sneakers.results}">

           <div class="product-card">
                           <div class="product-image">
                            <img src=${var.variants.get(0).images.get(0).url} alt="product image">
                               <button class="wishlist-btn"></button>
                           </div>
                           <div class="product-name"><a href="http://localhost:8088/product/${var.id}">${var.name.get("en")}</a></div>
                          <div class="button-container">
                            <a class="add-to-cart-btn" href="http://localhost:8088/addLineItem/${var.id}">Add to Cart</a>
                            </div>
                       </div>
        </c:forEach>
    </div>
</body>
</html>
