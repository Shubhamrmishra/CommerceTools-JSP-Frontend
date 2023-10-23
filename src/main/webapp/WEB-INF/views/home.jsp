<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <title>Myntra-Copy - Online Fashion Store</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
      <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="styles.css">
  <style>
    /* Additional custom styles */
    body {
      font-family: Arial, sans-serif;
    }

    .header {
      background-color: #fff;
      padding: 10px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .navigation a {
      color: #333;
      font-weight: bold;
      text-decoration: none;
      margin-right: 15px;
      transition: color 0.3s;
    }

    .navigation a:hover {
      color: #f00;
    }

    .hero {
      background-image: url('hero-background.jpg');
      background-size: cover;
      background-position: center;
      height: 500px;
      display: flex;
      align-items: center;
      justify-content: center;
      text-align: center;
      color: #fff;
    }

    .hero h1 {
      font-size: 3rem;
      margin-bottom: 20px;
    }

    .hero p {
      font-size: 1.5rem;
      margin-bottom: 40px;
    }

    .btn-shop-now {
      padding: 12px 30px;
      background-color: #f00;
      color: #fff;
      font-size: 1.2rem;
      text-decoration: none;
      border-radius: 4px;
      transition: background-color 0.3s;
    }

    .btn-shop-now:hover {
      background-color: #c00;
    }

    .categories {
      padding: 50px 0;
      text-align: center;
    }

    .categories h2 {
      font-size: 2rem;
      margin-bottom: 40px;
    }

    .category-grid {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 20px;
    }

    .category-card {
      background-color: #f9f9f9;
      padding: 20px;
      border-radius: 4px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      text-align: center;
    }

    .category-card h3 {
      font-size: 1.5rem;
      margin-top: 20px;
    }

    .featured-products {
      padding: 50px 0;
      text-align: center;
    }

    .featured-products h2 {
      font-size: 2rem;
      margin-bottom: 40px;
    }

    .product-grid {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 20px;
    }

    .product-card {
      background-color: #f9f9f9;
      padding: 20px;
      border-radius: 4px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      text-align: center;
    }

    .product-card h4 {
      font-size: 1.2rem;
      margin-top: 20px;
    }

    .product-card p {
      margin-top: 10px;
      color: #888;
    }

    footer {
      background-color: #333;
      color: #fff;
      padding: 20px;
      text-align: center;
    }
    .custom-image {
        width: 300px;
        height: 200px;
      }
  </style>
</head>
<body class="bg-success-subtle">



  <!-- Header Section -->
  <header class="header bg-primary-subtle">
    <nav class="navigation">
      <div class="container">
        <div class="row">
         <div class="col-md-3" style="text-align: left;">
             <img src="/logoo.png" alt="logo" class="custom-image">
         </div>




          <div class="col-md-9">
            <ul class="nav">
              <li class="nav-item"><a href="http://localhost:8088/women">Women</a></li>
              <li class="nav-item"><a href="http://localhost:8088/men">Men</a></li>
              <li class="nav-item"><a href="http://localhost:8088/men">New</a></li>
              <li class="nav-item"><a href="http://localhost:8088/men">Accessories</a></li>
              <li class="nav-item"><a href="http://localhost:8088/men">Sale</a></li>
            </ul>
             <div class="col-md-9">
                        <div class="user-profile text-right">
                          <a href="http://localhost:8088/cart" class="nav-link">Cart</a>
                          <a href="#" class="nav-link">Wishlist</a>
                          <a href="http://localhost:8088/login" class="nav-link">My Account</a>
                        </div>
          </div>
        </div>
      </div>
    </nav>
  </header>

  <!-- Hero Section -->

        <div class="col-md-12">
          <h1>Discover Your Style</h1>
          <p>Shop the latest fashion trends</p>
          <a href="http://localhost:8088/products" class="btn btn-primary btn-shop-now"><center>Shop Now</center></a>
        </div>

  </section>

  <!-- Product Categories Section -->
 <!-- Product Categories Section -->
 <section class="categories">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <h2>Popular Categories</h2>
         <div class="category-grid">
           <div class="category-card">
             <a href="http://localhost:8088/women">
               <img src="https://m.media-amazon.com/images/G/31/img19/Fashion/WA19/MAX/FLY_OUT/Sub-Nav-Women-2._CB439603748_.jpg" style="width: 400px; height: 450px;"  alt="Women's Category">
               <h3>Women</h3>
             </a>
           </div>
           <div class="category-card">
             <a href="http://localhost:8088/men">
               <img src="https://m.media-amazon.com/images/G/31/img19/Fashion/WA19/MAX/FLY_OUT/Sub-Nav-men-2._CB439603748_.jpg" style="width: 400px; height: 450px;"  alt="Men's Category">
               <h3>Men</h3>
             </a>
           </div>
</div>
           <br>
            <div class="category-grid">
                      <div>
                        <a href="http://localhost:8088/women">
                          <img src="https://m.media-amazon.com/images/I/71qJXk3uRcL._AC_UL600_FMwebp_QL65_.jpg" style="width: 250px; height: 450px;"  alt="Women's Category">

                        </a>
                      </div>
                      <div>
                        <a href="http://localhost:8088/men">
                          <img src="https://m.media-amazon.com/images/I/81uLCajVboL._AC_UL600_FMwebp_QL65_.jpg" style="width: 250px; height: 450px;"  alt="Men's Category">

                        </a>
                      </div>

                       <div >
                             <a href="http://localhost:8088/men">
                               <img src="https://m.media-amazon.com/images/I/41J-eBF3T4L._SY395_SX395_.jpg" style="width: 250px; height: 450px;"  alt="Men's Category">

                                              </a>
                                            </div>

         </div>
       </div>
     </div>
   </div>
 </section>


  <!-- Featured Products Section -->
  <section class="featured-products">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2>Featured Products</h2>
          <div class="product-grid">
            <div class="product-card">
              <img src="https://m.media-amazon.com/images/S/al-eu-726f4d26-7fdb/b86b9416-847d-4f8e-b06e-8af6e6c53815._CR0,0,1200,628_SX810_QL70_.jpg" style="width: 350px; height: 350px;"  alt="Product 1">
              <h4>***</h4>
              <p>$49.99</p>
            </div>
            <div class="product-card">
              <img src="https://m.media-amazon.com/images/I/81KyspBa3mL._AC_UL600_FMwebp_QL65_.jpg" style="width: 350px; height: 350px;"  alt="Product 2">
              <h4>***</h4>
              <p>$29.99</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Footer Section -->
  <footer>
    <div class="container">

    </div>
  </footer>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
