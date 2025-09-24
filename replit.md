# Overview

This is an Android application project for "Mexico TV" (mexicotv_nueva.apk), a mobile app that appears to be focused on live soccer/football streaming with the package name `com.mexicotv.futbolenvivoabierta`. The project is currently in development with version 1.0 and integrates with Firebase services for backend functionality. The application targets modern Android devices (API 21+) and is configured for Android 14 (API 34).

# User Preferences

Preferred communication style: Simple, everyday language.

# System Architecture

## Mobile Application Architecture
The project follows a standard Android application structure built using APK development tools. The application is designed as a native Android app targeting API levels 21-34, ensuring compatibility with Android 5.0 through Android 14.

## Build and Development Tools
The project utilizes Apktool (version 2.9.3) for APK manipulation and reverse engineering tasks. The build configuration shows a forced package ID of 127 and includes compression settings optimized for Android resource files (.arsc files are excluded from compression).

## Package Structure
The application uses the package name `com.mexicotv.futbolenvivoabierta`, indicating it's designed for live soccer/football streaming in Mexico. The APK is configured with standard Android framework dependencies and targets modern Android versions.

## Development Environment
Based on the attached build logs, the development environment appears to be mobile-based, using Apktool M on an Android device. The project shows some resource compilation issues that need to be resolved, including missing launcher icons, themes, and backup/data extraction rule configurations.

# External Dependencies

## Firebase Integration
- **Firebase Project**: ligamx-daf3d
- **Services**: Firebase Storage, App Invite Service
- **Storage Bucket**: ligamx-daf3d.firebasestorage.app
- **Purpose**: Backend services for the streaming application

## Android Framework
- **Target SDK**: Android 14 (API 34)
- **Minimum SDK**: Android 5.0 (API 21)
- **Framework Dependencies**: Standard Android framework (ID: 1)

## Development Tools
- **Apktool**: Version 2.9.3 for APK building and resource management
- **AAPT2**: Android Asset Packaging Tool for resource compilation
- **Google Services**: Firebase SDK integration for mobile services

## Missing Resources
The project currently has several missing resource dependencies that need to be addressed:
- App launcher icons
- Application themes (AppTheme, AppTheme.FullScreen)
- Data extraction and backup rule configurations
- XML resource files for Android compliance