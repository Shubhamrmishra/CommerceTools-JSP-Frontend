<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Categories</title>

    <!-- Bootstrap CSS -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
          <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-pzjw8Vkdot+2ApzC+VA2D1g4dPOm2wkTVRB+Q8D9EjakD1A9kPElyYheXEWNrWDL" crossorigin="anonymous">

    <style>
        .category-card {
            border: none;
            box-shadow: 0px 1px 4px rgba(0, 0, 0, 0.2);
            transition: box-shadow 0.3s;
        }

        .category-card:hover {
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        }

        .category-card img {
            object-fit: cover;
            height: 250px;
        }

        .category-card .card-body {
            padding: 1.5rem;
        }

        .category-card h5 {
            font-size: 1.4rem;
            font-weight: 500;
        }

        .category-card p {
            margin-bottom: 0;
            font-size: 1rem;
            color: #777;
        }

        .category-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            grid-gap: 1.5rem;
        }

        .category-grid .card {
            width: 100%;
        }
    </style>
</head>
<body class="bg-success-subtle">
    <div class="container mt-4">
        <h1 class="mb-4">Categories</h1>

        <div class="category-grid">
            <!-- Clothing Category -->
            <div class="card category-card">
                <a href="http://localhost:8088/women/clothing">
                    <h5 class="card-title">Clothing</h5>
                   <img src="https://m.media-amazon.com/images/I/51aJ8SHN0UL._AC_UL600_FMwebp_QL65_.jpg" alt="Clothing">
                   <img src="https://m.media-amazon.com/images/I/61fxQ1Gh5JL._AC_UL600_FMwebp_QL65_.jpg" alt="Clothing">
                   <img src="https://m.media-amazon.com/images/I/81KyspBa3mL._AC_UL600_FMwebp_QL65_.jpg" alt="Clothing">
                </a>
            </div>

            <!-- Shoes Category -->
            <div class="card category-card">
                <a href="http://localhost:8088/women/shoes">
                    <h5 class="card-title">Shoes</h5>
                    <img src="https://m.media-amazon.com/images/I/41KIP0AGUwL._AC_UL600_FMwebp_QL65_.jpg" alt="Shoes">
                    <img src="https://m.media-amazon.com/images/S/al-eu-726f4d26-7fdb/1a341c89-60b7-4225-8c55-6178d618795e._CR0,0,1200,628_SX810_QL70_.jpeg" alt="Shoes">

                </a>
            </div>

             <!-- bags Category -->
                        <div class="card category-card">
                            <a href="http://localhost:8088/women/bags">
                                <h5 class="card-title">Bags</h5>
                                <img src="https://m.media-amazon.com/images/S/al-eu-726f4d26-7fdb/b86b9416-847d-4f8e-b06e-8af6e6c53815._CR0,0,1200,628_SX810_QL70_.jpg" alt="Bags">
                                <img src="https://m.media-amazon.com/images/I/71b0xZHuZ7L._AC_UL600_FMwebp_QL65_.jpg" alt="Bags">
                            </a>
                        </div>

            <!-- Add more categories here -->
        </div>
    </div>

    <!-- Bootstrap JavaScript -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-pzjw8Vkdot+2ApzC+VA2D1g4dPOm2wkTVRB+Q8D9EjakD1A9kPElyYheXEWNrWDL" crossorigin="anonymous"></script>
</body>
</html>
