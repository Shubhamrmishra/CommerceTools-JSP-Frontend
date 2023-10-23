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
                <a href="http://localhost:8088/men/clothing">
                    <h5 class="card-title">Clothing</h5>
                    <img src="https://m.media-amazon.com/images/G/31/img21/MA2023/WRS/P0/brands_mfd/Lee_3._SX564_QL85_FMpng_.png" alt="Clothing">
                          <img src="https://m.media-amazon.com/images/G/31/img21/MA2023/WRS/P0/brands_mfd/USPA_14._SX846_QL85_FMpng_.png" alt="Clothing">
                   <img src="https://m.media-amazon.com/images/G/31/img21/MA2023/WRS/brandsinfocus/PUMA_29._SX846_QL85_FMpng_.png" alt="Clothing">


                    <div class="card-body">
                        <p class="card-text">Shop now</p>
                    </div>
                </a>
            </div>

            <!-- Shoes Category -->
            <div class="card category-card">
                <a href="http://localhost:8088/men/shoes">
                    <h5 class="card-title">Shoes</h5>
                    <img src="https://m.media-amazon.com/images/S/aplus-media/sc/1d16672a-c679-4c19-809b-624ef366b658.__CR0,0,300,300_PT0_SX300_V1___.jpg" alt="Shoes">
                   <img src="https://m.media-amazon.com/images/S/aplus-media/sc/f9f13415-e1c4-4b73-8357-46492af15b8b.__CR0,0,300,300_PT0_SX300_V1___.jpg" alt="Shoes">
                    <div class="card-body">
                        <p class="card-text">Shop now</p>
                    </div>
                </a>
            </div>

            <!-- Add more categories here -->
        </div>
    </div>

    <!-- Bootstrap JavaScript -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-pzjw8Vkdot+2ApzC+VA2D1g4dPOm2wkTVRB+Q8D9EjakD1A9kPElyYheXEWNrWDL" crossorigin="anonymous"></script>
</body>
</html>
