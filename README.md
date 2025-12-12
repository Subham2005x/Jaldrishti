# Jaldrishti - Water Safety & Hazard Reporting System

Jaldrishti is a comprehensive water safety and hazard reporting platform that consists of both a web application and a mobile application. The project aims to help communities report and track water-related hazards, promoting safer water environments.

## 🌊 Project Overview

Jaldrishti combines modern web and mobile technologies to create an accessible platform for:
- Reporting water hazards and safety concerns
- Tracking reported incidents
- Providing safety information and guidelines
- Building community awareness about water safety

## 📁 Repository Structure

```
Jaldrishti/
├── Jaldrishti/          # Website application
├── flutter-app/         # Mobile application (Flutter)
└── README.md           # This file
```

## 🌐 Website Application

Located in the `Jaldrishti/` directory.

The web application provides a user-friendly interface for accessing Jaldrishti services through web browsers.

### Features
- Web-based hazard reporting
- Interactive dashboard
- Community safety resources
- Cross-platform accessibility

### Technologies
- Modern web technologies
- Responsive design for all devices

## 📱 Mobile Application

Located in the `flutter-app/` directory.

The mobile app is built with Flutter, providing native performance on both iOS and Android devices.

### Features
- 🚨 **Report Hazards**: Submit water-related hazard reports with photos and location data
- 📊 **My Reports**: Track your submitted reports and their status
- 🏠 **Home Dashboard**: View recent reports and safety alerts
- 👤 **User Profile**: Manage your account and preferences
- 🛡️ **Safety Information**: Access water safety guidelines and emergency contacts
- 🌍 **Offline Support**: SQLite database for offline functionality
- 🔔 **Push Notifications**: Stay informed about critical updates
- 🌐 **Multi-language Support**: Available in multiple Indian languages (English, Hindi, Bengali, Gujarati, Marathi, Tamil, Telugu, Malayalam)

### Technologies
- **Framework**: Flutter (Dart)
- **Backend**: Firebase (Firestore, Authentication, Storage)
- **Local Database**: SQLite
- **Authentication**: Multiple providers (Email, Google, Apple, GitHub)
- **Location Services**: GPS integration for precise hazard reporting
- **State Management**: Provider pattern

### Prerequisites
- Flutter SDK (latest stable version)
- Dart SDK
- Android Studio / Xcode (for mobile development)
- Firebase account (for backend services)

### Setup Instructions

1. **Clone the repository**
   ```bash
   git clone https://github.com/Subham2005x/Jaldrishti.git
   cd Jaldrishti/flutter-app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Firebase Configuration**
   - The app uses Firebase for backend services
   - Configuration files are already included:
     - `android/app/google-services.json` (Android)
     - `ios/Runner/GoogleService-Info.plist` (iOS)
   - Ensure your Firebase project is properly set up with:
     - Firestore Database
     - Firebase Authentication
     - Firebase Storage
     - Cloud Functions (optional)

4. **Run the app**
   ```bash
   # For Android
   flutter run

   # For iOS (macOS only)
   flutter run -d ios

   # For web
   flutter run -d chrome
   ```

### Project Structure

```
flutter-app/
├── lib/
│   ├── main.dart                    # App entry point
│   ├── app_state.dart              # Global app state
│   ├── authentication/             # Authentication screens
│   ├── home_page/                  # Home dashboard
│   ├── report_hazard/              # Hazard reporting feature
│   ├── my_reports/                 # User's reports view
│   ├── profile/                    # User profile
│   ├── safety/                     # Safety information
│   ├── landing_page/               # Landing/splash screen
│   ├── backend/
│   │   ├── firebase/              # Firebase configuration
│   │   ├── schema/                # Firestore data models
│   │   ├── sqlite/                # Local database
│   │   └── api_requests/          # API integrations
│   ├── components/                 # Reusable UI components
│   ├── flutter_flow/              # FlutterFlow generated utilities
│   ├── custom_code/               # Custom actions and widgets
│   └── auth/                      # Authentication logic
├── assets/                         # Images, fonts, animations
├── android/                        # Android-specific configuration
├── ios/                           # iOS-specific configuration
├── web/                           # Web-specific configuration
├── firebase/                       # Firebase functions and rules
└── pubspec.yaml                   # Dependencies configuration
```

## 🔑 Key Features in Detail

### Hazard Reporting
Users can report water-related hazards with:
- Photo uploads
- GPS location
- Hazard type categorization
- Severity level
- Detailed description

### User Authentication
Secure authentication with multiple providers:
- Email/Password
- Google Sign-In
- Apple Sign-In
- GitHub Authentication
- Anonymous mode

### Offline Functionality
The app works offline using SQLite to store:
- Draft reports
- Previously viewed data
- User preferences

### Multi-language Support
Interface available in:
- English (en)
- Hindi (hi)
- Bengali (bn)
- Gujarati (gu)
- Marathi (mr)
- Tamil (ta)
- Telugu (te)
- Malayalam (ml)

## 🚀 Development

### Building for Production

**Android (APK)**
```bash
flutter build apk --release
```

**Android (App Bundle)**
```bash
flutter build appbundle --release
```

**iOS**
```bash
flutter build ios --release
```

**Web**
```bash
flutter build web --release
```

## 📦 Dependencies

Key packages used in the mobile app:
- `firebase_core` & `cloud_firestore` - Backend services
- `firebase_auth` - User authentication
- `geolocator` - Location services
- `image_picker` - Camera/gallery access
- `sqflite` - Local database
- `provider` - State management
- `http` - API requests
- `lottie` - Animations

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is part of a water safety initiative. Please contact the repository owner for licensing information.

## 👥 Team

Project maintained by Subham and contributors.

## 📞 Support

For support, please open an issue in the GitHub repository or contact the development team.

## 🙏 Acknowledgments

- Built with Flutter and Firebase
- Generated with FlutterFlow for rapid development
- Icons and assets from various open-source resources

---

**Made with ❤️ for safer water environments**
