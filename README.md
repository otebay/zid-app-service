# ZID Service App

This Flutter project manages service requests for ZID residential complexes. It follows a simple clean architecture and relies on Firebase for authentication and data storage.

## Folder Structure

```
lib/
  core/               # routing and localization helpers
  features/           # application features
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

## Firestore Collections

### `jks`
Residential complexes are stored in the `jks` collection. A document example:

```json
{
  "name": "Sunrise Complex",
  "address": "1 Example Street"
}
```

### `users`
Users reference a residential complex via `zhksId`:

```json
{
  "email": "resident@example.com",
  "role": "resident",
  "zhksId": "<jks-document-id>"
}
```

### `requests`
Service requests belong to a complex and are created by a user:

```json
{
  "title": "Water leak",
  "description": "Leak in the kitchen",
  "zhksId": "<jks-document-id>",
  "creatorId": "<user-id>",
  "type": "resident",
  "status": "new",
  "createdAt": 1688166400
}
```
