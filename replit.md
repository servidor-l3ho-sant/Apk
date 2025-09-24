# Overview

This is an Android application project for "ULTRAGOL" by L3HO company, a modern soccer/football streaming app that was transformed from a previous Mexican TV app. The app features a contemporary design with carousels, real images, and sections similar to modern streaming platforms like Danz. The application targets modern Android devices (API 21+) and is configured for Android 14 (API 34). The project successfully builds without crashes and includes a modern UI with live matches, upcoming games, and league categories.

# User Preferences

Preferred communication style: Simple, everyday language.

# System Architecture

## Mobile Application Architecture
The project follows a standard Android application structure built using APK development tools. The application is designed as a native Android app targeting API levels 21-34, ensuring compatibility with Android 5.0 through Android 14.

## Build and Development Tools
The project utilizes Apktool (version 2.9.3) for APK manipulation and reverse engineering tasks. The build configuration shows a forced package ID of 127 and includes compression settings optimized for Android resource files (.arsc files are excluded from compression).

## Package Structure
The application uses the package name `com.mexicotv.futbolenvivoabierta` (maintained for compatibility) but has been rebranded as ULTRAGOL by L3HO company. The APK includes modern UI components, real soccer stadium images, and is configured with standard Android framework dependencies targeting modern Android versions. The app successfully builds to a 2.0MB APK with all resources included.

## Development Environment  
The development environment is now fully set up in Replit with APKTool 2.11.1 and Java installed. All resource compilation issues have been resolved, including:
- Created launcher icons and complete resource structure
- Implemented modern themes and styling for ULTRAGOL branding
- Added backup/data extraction rule configurations
- Fixed AndroidManifest.xml to prevent crashes
- Integrated real soccer stadium images for carousels
- Built automated build script (build_ultragol.sh) with workflow

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