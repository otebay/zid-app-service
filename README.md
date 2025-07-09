<<<<<<< HEAD
# ZID Service App

This repository contains the code for a Flutter application used to manage service requests for ZID residential complexes. The project is structured using a simple clean‑architecture approach and relies on Firebase for authentication and data storage.

## Folder Structure

```
lib/
  core/               # routing and localization helpers
  features/
    auth/             # login and user management
    home/             # role specific home pages
    requests/         # request creation and listing
    notifications/    # news and notifications
    settings/         # settings screens
    staff_management/ # admin specific tools
  models/             # plain data models
```

## Firebase

The app uses the following Firebase packages:

- `firebase_core`
- `firebase_auth`
- `cloud_firestore`
- `firebase_storage`

Ensure Firebase is initialized before running the app. Authentication is handled through `AuthService` which reads the user document from Firestore to determine the role (admin, staff or resident).

## Running

Install Flutter and run:

```bash
flutter pub get
flutter run
```

`main.dart` starts the app, initializes Firebase and displays the login screen. Based on the user role different home screens are shown with access to requests, notifications and settings.
=======
# zid_service_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
>>>>>>> fe881a8 (build gradle kts adding all project)
