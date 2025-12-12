# Jaldrishti - Water Safety & Hazard Reporting System

## 🏆 Smart India Hackathon (SIH) 2025 Project

Jaldrishti is a comprehensive water safety and hazard reporting platform developed as part of the **Smart India Hackathon 2025**. This innovative solution consists of both a web application and a mobile application, designed to help communities report and track water-related hazards, promoting safer water environments across India.

### Problem Statement Details
- **Problem Statement ID:** 25039
- **Title:** Integrated Platform for Crowdsourced Ocean Hazard Reporting and Social Media Analytics
- **Organization:** Ministry of Earth Sciences (MoES)
- **Department:** Indian National Centre for Ocean Information Services (INCOIS)
- **Category:** Software
- **Theme:** Disaster Management

### The Challenge
India's vast coastline is vulnerable to various ocean hazards such as tsunamis, storm surges, high waves, coastal currents, and abnormal sea behavior. While agencies like INCOIS provide early warnings based on satellite data and numerical models, real-time field reporting from citizens and local communities is often unavailable or delayed. This project addresses the need for a unified platform that enables citizens, coastal residents, volunteers, and disaster managers to report observations during hazardous ocean events and monitor public communication trends.

## 🌊 Project Overview

Jaldrishti addresses the problem statement from INCOIS by combining modern web and mobile technologies to create an accessible platform for:
- **Crowdsourced Reporting**: Citizens can report water hazards and safety concerns with geotagged data
- **Real-time Tracking**: Monitor and track reported incidents with location-based visualization
- **Community Awareness**: Provide safety information and guidelines to coastal communities
- **Emergency Response Support**: Help disaster management agencies understand the scale and urgency of hazard events
- **Multi-language Accessibility**: Support for multiple Indian regional languages for wider reach

### Key Requirements Addressed
✅ Geotagged hazard reporting with photos and location data  
✅ Role-based access for citizens and officials  
✅ Real-time data aggregation and visualization  
✅ Mobile and web platform support  
✅ Multilingual support for regional accessibility  
✅ Offline data collection capabilities (sync later)  
✅ User registration and authentication system  
✅ Map-based dashboard for live crowd reports  
✅ Backend database and API for data management

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
- 🚨 **Report Hazards**: Submit water-related hazard reports with photos and location data
- 📊 **My Reports**: Track your submitted reports and their status
- 🏠 **Home Dashboard**: View recent reports and safety alerts
- 👤 **User Profile**: Manage your account and preferences
- 🛡️ **Safety Information**: Access water safety guidelines and emergency contacts
- 🌍 **Offline Support**: SQLite database for offline functionality in remote coastal areas
- 🔔 **Push Notifications**: Stay informed about critical updates
- 🌐 **Multi-language Support**: Available in multiple Indian languages for regional accessibility
- 📍 **Geotagged Reporting**: Precise GPS location tracking for each hazard report
- 📸 **Media Upload**: Support for photos and videos to document hazards
- 🗺️ **Interactive Maps**: Visualize reports and hotspots geographically

### Hazard Types Covered
- Tsunamis and unusual tides
- Storm surges and high waves
- Swell surges and coastal currents
- Coastal flooding and damage
- Abnormal sea behavior
- Other water-related hazards

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

**Smart India Hackathon 2025 - Team Jaldrishti**

**Team Lead:** Subham

This project was developed to address the critical challenge of crowdsourced ocean hazard reporting for the Ministry of Earth Sciences and INCOIS. Our solution aims to bridge the gap between real-time citizen observations and official disaster management systems, potentially saving lives and protecting coastal communities across India.

**Project Status:** Prototype completed for SIH 2025

## 📞 Support

For support, please open an issue in the GitHub repository or contact the development team.

## 💡 Future Enhancements

Potential features for future development:
- Social media analytics integration (Twitter/X, Facebook, YouTube)
- NLP engine for hazard-related keyword detection
- Advanced sentiment analysis of public discussions
- Dynamic hotspot generation based on report density
- Integration with INCOIS early warning systems
- API for third-party disaster management tools
- Advanced data analytics and prediction models

## 🙏 Acknowledgments

- Developed for **Smart India Hackathon (SIH) 2025**
- Problem statement provided by **Indian National Centre for Ocean Information Services (INCOIS)** and **Ministry of Earth Sciences (MoES)**
- Built with Flutter and Firebase
- Generated with FlutterFlow for rapid prototyping
- Icons and assets from various open-source resources
- Special thanks to mentors, coastal communities, and all supporters

---

**Made with ❤️ for safer water environments | Smart India Hackathon 2025**  
*Protecting India's coastal communities through technology*
