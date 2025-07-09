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

`main.dart` starts the app, initializes Firebase and displays the login screen. Based on the user role different home screens are shown with access to requests, notifications and settings. The app includes simple in-app localization supporting English, Russian and Kazakh selectable from the settings page. The default theme now uses the Roboto font from `assets/fonts` for a cleaner look.
