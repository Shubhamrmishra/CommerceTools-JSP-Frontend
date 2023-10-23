<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Details</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
          <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
        }

        .product-details {
            display: grid;
            grid-template-columns: 1fr 1fr;
            grid-gap: 40px;
            margin-top: 40px;
        }

        .product-image {
            text-align: center;
        }

        .product-image img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .product-info {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .product-name {
            font-weight: bold;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .product-description {
            margin-bottom: 20px;
            color: #555;
        }

        .product-price {
            font-weight: bold;
            font-size: 20px;
            margin-bottom: 20px;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .add-to-cart-btn, .order-btn {
            padding: 12px 24px;
            border-radius: 4px;
            border: none;
            cursor: pointer;
            font-weight: bold;
            text-transform: uppercase;
        }

        .add-to-cart-btn {
            background-color: #4caf50;
            color: #fff;
            margin-right: 12px;
        }

        .order-btn {
            background-color: #2196f3;
            color: #fff;
        }
    </style>
</head>
<body class="bg-success-subtle">
    <h1>Product Details</h1>

    <div class="product-details">
        <div class="product-image">
            <img src="${productDetails.masterData.current.masterVariant.images.get(0).url}" alt="product image">
        </div>
        <div class="product-info">
            <div class="product-name">${productDetails.masterData.current.name.get("en")}</div>
            <div class="product-description">${productDetails.masterData.current.description.get("en")}</div>
            <div class="product-price">${productDetails.masterData.current.masterVariant.prices.get(0).value.centAmount}</div>
            <div class="button-container">
                <button class="add-to-cart-btn">Add to Cart</button>
                <button class="order-btn">Order</button>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
