# Chat Knee 🍯💬
*A playful take on "chutney" – a Flutter-based real-time chat app.*

<img src="https://raw.githubusercontent.com/skwasimrazzak/Chat-Knee/master/images/display_logo.png" width="103" alt="Chat Knee Logo"/>

---

<a id="introduction"></a>
## 📖 Introduction
**Chat Knee** is a modern real-time chat application built using **Flutter** and powered by **Firebase**.  
It allows users to sign up, log in, and exchange messages instantly with smooth animations and responsive UI.

This project is a great starter template for learning how to integrate **Firebase Authentication** and **Cloud Firestore** with Flutter.

---

## 📑 Table of Contents
- [Introduction](#introduction)
- [File Structure](#file-structure)
- [Prerequisites](#prerequisites)
- [Setup Guide](#setup-guide)
- [Screenshots](#screenshots)
- [Special Things Tried](#special-things-tried)
- [Technologies & Features](#technologies-features)
- [Contributing](#contributing)

---

<a id="file-structure"></a>
## 📂 File Structure
```
Chat-Knee/
│
├── android/                # Native Android project files
├── ios/                    # Native iOS project files
├── lib/                    # Flutter application source code
│   ├── screens/            # All app screens (welcome, login, signup, chat)
│   ├── components/         # UI components
│   ├── services/           # Firebase services & authentication logic
│   └── main.dart           # App entry point
│
├── images/                 # App logos & screenshots
├── pubspec.yaml            # Flutter dependencies
└── README.md               # Project documentation
```

---

<a id="prerequisites"></a>
## 🛠 Prerequisites
Before running the app, ensure you have the following installed:

- [Git](https://git-scm.com/)
- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Android Studio](https://developer.android.com/studio) or [Visual Studio Code](https://code.visualstudio.com/) with Flutter extension
- A [Firebase account](https://firebase.google.com/)

---

<a id="setup-guide"></a>
## 🚀 Setup Guide

1. **Clone the repository**
   ```bash
   git clone https://github.com/skwasimrazzak/Chat-Knee.git
   cd Chat-Knee
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Configure Firebase**
    - Go to [Firebase Console](https://console.firebase.google.com/)
    - Create a new Firebase project
    - Register your app with a **unique `applicationId`**
    - Update the `applicationId` in `android/app/build.gradle.kts`
    - Download the `google-services.json` file and place it inside:
      ```
      android/app/
      ```

4. **Run the app**
   ```bash
   flutter run
   ```

---

<a id="screenshots"></a>
## 📸 Screenshots

### 🏠 Welcome Screen
The first screen that greets the user with smooth animations.  
<img src="https://raw.githubusercontent.com/skwasimrazzak/Chat-Knee/master/images/display_welcome.png" width="250" alt="Welcome Screen"/>

---

### 🔑 Login Screen
User login with Firebase Authentication.  
<img src="https://raw.githubusercontent.com/skwasimrazzak/Chat-Knee/master/images/display_login.png" width="250" alt="Login Screen"/>

---

### 📝 Signup Screen
New users can sign up securely with Firebase.  
<img src="https://raw.githubusercontent.com/skwasimrazzak/Chat-Knee/master/images/display_signup.png" width="250" alt="Signup Screen"/>

---

### 💬 Chat Screen
The heart of the app – real-time chat powered by Firestore.  
<img src="https://raw.githubusercontent.com/skwasimrazzak/Chat-Knee/master/images/display_chat.png" width="100%" alt="Chat Screen"/>

---

<a id="special-things-tried"></a>
## 🧪 Special Things Tried

- **Stream-based message rendering** using `StreamBuilder` for near real-time updates.
- **Animated transitions** with Flutter’s animation widgets and controllers.
- **Separation of concerns** – Firebase logic in `services/`, reusable UI in `components/`.
- **Authentication flow** – clean integration of Firebase Auth and Firestore user documents.
- **Extendable design** – structured so new features (media, reactions, etc.) can be added easily.

---

<a id="technologies-features"></a>
## ⚡ Technologies & Features

- **Firebase Authentication** – Secure user login & signup
- **Cloud Firestore** – Real-time database for messages
- **Animations** – Smooth transitions and UI interactions
- **Message Stream Builder** – Real-time chat updates using Firestore streams
- **Custom Widgets & Components** – Reusable Flutter UI elements
- **Extend Feature** – App architecture is designed to be easily extendable with new screens & features

---

<a id="contributing"></a>
## 🤝 Contributing
This project is open to collaboration and new ideas!

- Have a feature suggestion? Open an **issue**.
- Found a bug? Create a **pull request**.
- Want to improve the UI/UX or add integrations? Let’s collaborate.

---

### ⭐ If you like this project, don’t forget to give it a **star** on GitHub!

