<!DOCTYPE html>
<html>
  <head>
    <title><%= content_for(:title) || "Ecommerce App" %></title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <%= csrf_meta_tags %>
    <%= csp_meta_tag %>
    <%= yield :head %>
    <link rel="manifest" href="/manifest.json">
    <link rel="icon" href="/icon.png" type="image/png">
    <link rel="icon" href="/icon.svg" type="image/svg+xml">
    <link rel="apple-touch-icon" href="/icon.png">
    <%= stylesheet_link_tag "application", "data-turbo-track": "reload" %>
    <%= javascript_importmap_tags %>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <!-- Brand and Logo -->
        <a class="navbar-brand" href="#">
          <img src="<%= asset_path('logo.jpg') %>" alt="User" class="rounded-circle" style="height: 30px; width: 30px;">
        </a>
        <!-- Toggler Button for Mobile View -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <!-- Navbar Links and Content -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Products</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Categories</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About Us</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li>
          </ul>
          <!-- Search Form -->
          <form class="d-flex me-3">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>
          <!-- User Profile Icon with Dropdown -->
          <div class="dropdown me-3">
        <a class="nav-link dropdown-toggle" href="#" id="profileDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          <img src="path/to/user-profile-pic.jpg" alt="User" class="rounded-circle" style="height: 30px; width: 30px;">
        </a>
        <ul class="dropdown-menu" aria-labelledby="profileDropdown">
          <li><a class="dropdown-item" href="#">Profile</a></li>
          <li><a class="dropdown-item" href="#">Edit Profile</a></li>
          <li><a class="dropdown-item" href="#">Change Picture</a></li>
          <li><hr class="dropdown-divider"></li>
          <li><a class="dropdown-item" href="#">Logout</a></li>
        </ul>
      </div>
          <!-- Cart Icon -->
          <a class="nav-link" href="#">
            <i class="bi bi-cart" style="font-size: 24px;"></i> <!-- Bootstrap Icons Cart -->
            <span class="badge bg-primary">3</span> <!-- Example cart item count -->
          </a>
        </div>
      </div>
    </nav>
    <%= notice %>
    <%= alert %>
    <% if user_signed_in? %>
      <p>Welcome, <%= current_user.email %>!</p>
      <%= link_to 'Edit profile', edit_user_registration_path %> |
      <%= link_to 'Sign out', destroy_user_session_path, method: :delete %>
    <% else %>
      <%= link_to 'Sign up', new_user_registration_path %> |
      <%= link_to 'Sign in', new_user_session_path %>
    <% end %>
    <%= yield %>
  </body>
</html>
