# 🚀 Launch Screen Examples

A SwiftUI project showing how to configure a custom launch screen using `LaunchScreen.storyboard` and the `UILaunchScreen` Info.plist key — covering background color, centered logo, and animated transitions into the main app.

---

## 🤔 What this is

This project demonstrates both approaches to launch screens in iOS: the legacy `LaunchScreen.storyboard` with a centered `UIImageView` and background color, and the modern `UILaunchScreen` Info.plist dictionary for code-free configuration. It also shows how to extend the launch screen with a simple fade animation into the first SwiftUI view.

## ✅ Why you'd use it

- **LaunchScreen.storyboard** — legacy approach with full layout flexibility
- **UILaunchScreen plist** — modern no-storyboard launch screen configuration
- **Background color** — set a solid brand color that appears instantly
- **Centered logo** — position an image view without Auto Layout constraints
- **Transition** — smooth fade from launch screen into the first SwiftUI view

## 📺 Watch on YouTube

[![Watch on YouTube](https://img.shields.io/badge/YouTube-Watch%20the%20Tutorial-red?style=for-the-badge&logo=youtube)](https://youtube.com/watch?v=PLACEHOLDER)

> This project was built for the [NoahDoesCoding YouTube channel](https://www.youtube.com/@NoahDoesCoding97).

---

## 🚀 Getting Started

### 1. Clone the Repo
```bash
git clone https://github.com/NDCSwift/LaunchScreenExamples.git
cd LaunchScreenExamples
```

### 2. Open in Xcode
- Double-click `LaunchScreenExample.xcodeproj`

### 3. Set Your Development Team
In Xcode: **TARGET → Signing & Capabilities → Team**

### 4. Update the Bundle Identifier
Change `com.example.MyApp` to a unique identifier (e.g., `com.yourname.LaunchScreen`).

---

## 🛠️ Notes

- The launch screen only shows when the app cold-launches — use a real device or fresh simulator launch to test.
- If you see a code signing error, check that Team and Bundle ID are set.

## 📦 Requirements

- iOS 16+
- Xcode 15+
- Swift 5.9+

---

📺 [Watch the guide on YouTube](https://youtube.com/watch?v=PLACEHOLDER)
