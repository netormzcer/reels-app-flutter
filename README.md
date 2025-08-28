# Flutter Social Reels Simulator

A **social media Reels/TikTok-style simulation app** built with **Flutter**.  
Supports local video playback, vertical scrolling between videos, volume control, and simulated interactions like likes.

---

## 📝 Key Features

- Play **local videos** seamlessly.  
- **Vertical scroll** to switch between videos.  
- **Volume control** for each video.  
- Simulated **likes** and other interactions.  
- Clean architecture using folders for better maintainability:  
  - `datasource/` → manages data sources like videos and likes.  
  - `infrastructure/` → services and low-level logic.

---

## 📂 Project Structure

│   main.dart
│
├───config
│   ├───helpers
│   │       human_formats.dart
│   │
│   └───theme
│           app_theme.dart
│
├───domain
│   ├───datasources
│   │       video_posts_datasource.dart
│   │
│   ├───entities
│   │       video_post.dart
│   │
│   └───repositories
│           video_posts_repository.dart
│
├───infraestructure
│   ├───datasources
│   │       local_video_datasource_impl.dart
│   │
│   ├───models
│   │       local_video_model.dart
│   │
│   └───repositories
│           video_posts_repository_impl.dart
│
├───presentation
│   ├───providers
│   │       discover_provider.dart
│   │
│   ├───screens
│   │   └───discover
│   │           discover_screen.dart
│   │
│   └───widgets
│       ├───shared
│       │       video_buttons.dart
│       │       video_scrollable_view.dart
│       │
│       └───video
│               fullscreen_player.dart
│               video_background.dart
│
└───shared
    └───data
            local_video_posts.dart



---

## ⚡ Functional Highlights

- **TikTok-style vertical scrolling** between videos.  
- **Automatic play/pause** when changing videos.  
- **Volume slider** for controlling audio.  
- **Simulated likes**, with real-time visual feedback.  
- Separation of concerns using **DataSource + Infrastructure** pattern.

---

## 🛠 Technologies & Packages

- Flutter 3.x  
- Dart 3.x  
- [video_player](https://pub.dev/packages/video_player) – for local video playback  
- [provider / riverpod] – state management (optional)  

---

## 🚀 How to Run

1. Clone the repository:
```bash
git clone https://github.com/your-username/tiktok.git
cd tiktok
