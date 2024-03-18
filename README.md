# BlogReader

BlogReader is a Flutter application that allows users to read blogs at any time. Users must log in to access the app's features, and they can sign up for a new account if they don't have one. The application supports multiple users, and it utilizes Supabase for database operations. Additionally, local storage is implemented to provide offline access when the internet connection is unavailable.

## Features

- User authentication: Users are required to log in to access the app.
- User registration: New users can sign up for an account.
- Reading blogs: Users can read blogs at any time.
- Offline access: Local storage is used to provide access to blogs even when the device is offline.

## Technologies Used

- Flutter: Flutter is used for building the cross-platform mobile application.
- State Management: The BLoC (Business Logic Component) pattern is employed for state management.
- Local Storage: Hive is used for local storage, ensuring data persistence.
- Database: Supabase is utilized as the database solution for storing user information and blogs.
- Architecture: The application follows the SOLID principles and maintains a clean architecture, including the repository pattern.
- REST API: The application interacts with a RESTful API to fetch blogs from external sources.

## Installation

To run the BlogReader application locally, follow these steps:

1. Clone this repository to your local machine.
2. Ensure you have Flutter installed. If not, follow the [Flutter installation guide](https://flutter.dev/docs/get-started/install).
3. Navigate to the project directory and run `flutter pub get` to install dependencies.
4. Run the application using `flutter run`.

## Usage

1. Upon launching the app, users will be prompted to log in or sign up.
2. After logging in, users can browse and read blogs.
3. If the internet connection is unavailable, users can still access previously downloaded blogs using local storage.
4. Users can log out from the app when they're done.
