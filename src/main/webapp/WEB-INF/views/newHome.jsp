<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My Website</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.0.2/dist/tailwind.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gmaps.js/0.4.25/gmaps.min.js"></script>
  <style>
    /* Custom CSS Styling Here */
  </style>
</head>

<body>
  <!-- Header Section -->
  <header class="flex items-center justify-between p-4 bg-gray-200">
    <div class="flex items-center">
      <img class="w-8 h-8 mr-4" src="logoo.png" alt="Logo">
      <nav>
        <ul class="flex space-x-4">
          <li class="font-bold"><a href="#">Home</a></li>
          <li><a href="http://localhost:8088/women">Women</a></li>
          <li><a href="http://localhost:8088/men">Men</a></li>
          <li><a href="http://localhost:8088/women">New</a></li>
          <li><a href="http://localhost:8088/women">Accessories</a></li>
          <li><a href="http://localhost:8088/women">Sale</a></li>
        </ul>
      </nav>
    </div>
    <div>
      <ul class="flex space-x-4">
          <li><a href="http://localhost:8088/men"></li>
          <img class="w-6 h-5 mr-4" src="profile-logo.jpg" alt="Logo">
          <h6>Profile</h6>
          </a>

          <li><a href="http://localhost:8088/men"></li>
            <img class="w-6 h-5 mr-4" src="wishlist-logo.png" alt="Logo">
            <h6>Wishlist</h6>
            </a>

            <li><a href="http://localhost:8088/men"></li>
              <img class="w-6 h-5 mr-4" src="cart-logo.png" alt="Logo">
              <h6>Cart</h6>
              </a>
    </ul>
    </div>
  </header>

  <!-- Hero Section -->
  <section class="relative">
    <div class="absolute inset-0 bg-opacity-75 bg-cover bg-center"
      style="background-image: url('https://source.unsplash.com/featured/1280x720/?hero')">
    </div>
    <div
      class="flex flex-col items-center justify-center p-10 text-center text-white bg-black bg-opacity-60">
      <h1 class="text-4xl font-bold">Welcome to Our Store</h1>
      <p class="mt-4">Discover the latest collection of stylish products</p>
      <button class="mt-8 bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded">Shop Now</button>
    </div>
  </section>

  <!-- Feature Section -->
  <section class="py-10">
    <div class="max-w-6xl mx-auto">
      <div class="grid grid-cols-1 gap-10 md:grid-cols-3">
        <div class="flex flex-col items-center p-4 bg-white border border-gray-200 rounded-md">
          <i class="fas fa-gift text-4xl text-blue-500"></i>
          <h2 class="mt-4 text-xl font-bold">Free Shipping</h2>
          <p class="mt-2 text-center">Enjoy free shipping on all orders over $50</p>
        </div>
        <div class="flex flex-col items-center p-4 bg-white border border-gray-200 rounded-md">
          <i class="fas fa-headphones text-4xl text-blue-500"></i>
          <h2 class="mt-4 text-xl font-bold">24/7 Support</h2>
          <p class="mt-2 text-center">Our support team is available round the clock</p>
        </div>
        <div class="flex flex-col items-center p-4 bg-white border border-gray-200 rounded-md">
          <i class="fas fa-money-bill-wave text-4xl text-blue-500"></i>
          <h2 class="mt-4 text-xl font-bold">Money Back Guarantee</h2>
          <p class="mt-2 text-center">Return any product within 30 days for a full refund</p>
        </div>
      </div>
    </div>
  </section>

  <!-- Individual Feature Sections -->
  <section class="py-10 bg-gray-100">
    <div class="max-w-6xl mx-auto">
      <div class="grid grid-cols-1 gap-10 md:grid-cols-2">
        <div class="flex flex-col items-center p-4 bg-white border border-gray-200 rounded-md">
          <img class="w-48 h-48 mb-4 object-cover object-center" src="https://source.unsplash.com/featured/640x480/?feature1"
            alt="Feature 1">
          <h2 class="mt-4 text-xl font-bold">Feature 1</h2>
          <p class="mt-2 text-center">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          <button class="mt-4 bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded">Learn More</button>
        </div>
        <div class="flex flex-col items-center p-4 bg-white border border-gray-200 rounded-md">
          <h2 class="mt-4 text-xl font-bold">Feature 2</h2>
          <p class="mt-2 text-center">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
          <img class="w-48 h-48 mb-4 object-cover object-center" src="https://source.unsplash.com/featured/640x480/?feature2"
            alt="Feature 2">
          <button class="mt-4 bg-blue-500 hover:bg-blue-600 text-white px-4 py-2 rounded">Learn More</button>
        </div>
      </div>
    </div>
  </section>

  <!-- Testimonial Section -->
  <section class="py-10">
    <div class="max-w-6xl mx-auto">
      <div class="grid grid-cols-1 gap-10 md:grid-cols-2">
        <div class="flex flex-col items-center p-4 bg-white border border-gray-200 rounded-md animate__animated animate__fadeInLeft">
          <i class="fas fa-quote-left text-4xl text-blue-500"></i>
          <p class="mt-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce gravida lectus non
            velit
            auctor, in tempor orci congue.</p>
          <h4 class="mt-4 font-bold">John Doe</h4>
          <p class="italic">CEO, Lorem Ipsum Inc.</p>
        </div>
        <div class="flex flex-col items-center p-4 bg-white border border-gray-200 rounded-md animate__animated animate__fadeInRight">
          <i class="fas fa-quote-left text-4xl text-blue-500"></i>
          <p class="mt-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce gravida lectus non
            velit
            auctor, in tempor orci congue.</p>
          <h4 class="mt-4 font-bold">Jane Smith</h4>
          <p class="italic">Marketing Manager, Lorem Ipsum Inc.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- Footer Section -->
  <footer class="bg-gray-200 py-6 px-4">
    <div class="max-w-6xl mx-auto flex justify-center items-center space-x-6">
      <a href="#" class="text-gray-400 hover:text-blue-500">
        <i class="fab fa-facebook-f"></i>
      </a>
      <a href="#" class="text-gray-400 hover:text-blue-500">
        <i class="fab fa-twitter"></i>
      </a>
      <a href="#" class="text-gray-400 hover:text-blue-500">
        <i class="fab fa-instagram"></i>
      </a>
    </div>
    <div class="max-w-6xl mx-auto mt-4 text-center text-gray-500">
      <p>&copy; 2022 My Website. All rights reserved.</p>
    </div>
  </footer>

  <script>
    // Google Maps Initialization
    $(document).ready(function () {
      var map = new GMaps({
        div: '#map',
        lat: 37.7749,
        lng: -122.4194,
        zoom: 12
      });
      map.addMarker({
        lat: 37.7749,
        lng: -122.4194,
        title: 'Marker'
      });
    });
  </script>
</body>

</html>