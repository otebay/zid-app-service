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

## Setup

Clone the repository and run the following commands:

```bash
flutterfire configure   # connect the app to your Firebase project
flutter pub get         # install dependencies
flutter analyze         # optional: check for any static analysis issues
flutter run             # run the app on a connected device or emulator
```

## Role‑based navigation

The initial screen (`StartupPage`) determines the signed in user's role and directs them to the appropriate home page. After reading the user's profile from Firestore, it navigates to `/admin`, `/staff` or `/resident` so that administrators, staff members and residents each see the correct dashboard.

## Scripts

A simple helper script is provided to run the analyzer:

```bash
./scripts/analyze.sh
```

This wraps `flutter analyze` and helps ensure code quality.
