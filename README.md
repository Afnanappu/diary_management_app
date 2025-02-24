# Dairy Management App

## Business Overview
A dairy operation unit that manages the production and distribution of dairy products within a shorter distance using a fleet of vehicles and dedicated salesmen/drivers. The workflow includes:
- Receiving milk supplies via milk tankers.
- Manufacturing dairy products.
- Storing byproducts in cold storage.
- Delivering products to retail stores using trucks.
- Salesmen delivering products to stores and returning leftover stock to cold storage.

## Features
### 1. Landing Page & Login Screen
- A welcoming **landing page** for the app.
- A **secure login screen** allowing users to enter their credentials and access the app.

### 2. Master Data Management
- **Manage Drivers (Salesmen)**:
  - Add, view, edit, and delete driver details.
- **Manage Retail Stores**:
  - Add, view, edit, and delete store details.
- **Grouping & Route Management**:
  - Group different stores into routes.
  - Assign routes to drivers for efficient delivery.

### 3. Navigation & Store Visit Tracking
- **Route Navigation**:
  - Once a driver logs in, the app provides a navigation guide to assigned stores.
  - Uses location coordinates to assist with directions.
- **Visit Tracking**:
  - Drivers can mark visits as **completed** with a timestamp for reference.
  
## Tech Stack
- **Frontend**: Flutter
- **Database**: Hive
- **Maps & Navigation**: flutter_map

## Installation & Setup
1. Clone the repository:
   ```sh
   git clone https://github.com/Afnanappu/diary_management_app
   cd dairy-management-app
   ```
2. Install dependencies:
   ```sh
   flutter pub get
   ```
3. Run the app:
   ```sh
   flutter run
   ```

## Contribution
Contributions are welcome! Feel free to submit a pull request.

## License
MIT License
