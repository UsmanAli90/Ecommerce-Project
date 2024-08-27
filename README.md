# eCommerce Website

This is a Ruby on Rails-based eCommerce website that provides users with an easy way to browse products, add them to their cart, and proceed with orders. It includes an authentication system, admin functionality, pagination, cart, order management, and a payment feature.

## Features

- **Authentication**: User registration and login using the Devise gem.
- **Admin Panel**: Admins can manage products, including adding, editing, and deleting items.
- **Pagination**: Efficiently browse products across multiple pages.
- **Order and Cart Management**: Users can add products to their cart, view their orders, and proceed to checkout.
- **Payment Integration**: Secure payment processing to complete orders.

## Getting Started

### Prerequisites

Make sure you have the following installed on your machine:

- Ruby (version 3.x.x recommended)
- Rails (version 7.x.x recommended)
- PostgreSQL or SQLite (depending on your configuration)
- Node.js
- Yarn

### Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/UsmanAli90/Ecommerce-Project.git
   cd Ecommerce-Project
   ```

2. **Install the required gems**:

   ```bash
   bundle install
   ```

3. **Set up the database**:

   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

   *Note: `db:seed` will populate your database with initial data if a seed file is provided.*


4. **Start the Rails server**:

   ```bash
   rails server
   ```

   Your application should now be running on `http://localhost:3000`.

### Usage

- **User Authentication**: Sign up or log in to start using the website.
- **Admin Access**: Admin users can access the admin panel to manage products.
- **Browse Products**: Users can browse available products with pagination support.
- **Cart and Orders**: Add items to your cart and proceed to checkout.
- **Payment**: Complete your order using the integrated payment system.

### Admin Access

To log in as an admin, use the following credentials:

- **Email**: `admin@example.com`
- **Password**: `password`

*You can modify these credentials in the `db/seeds.rb` file before running `db:seed`.*

### Contributing

If you'd like to contribute to this project, please fork the repository and submit a pull request.

### License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
