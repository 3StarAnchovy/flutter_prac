# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Flutter sample project for learning and experimenting with Flutter UI components. The project focuses on building simple UI examples, particularly around ListView and bottom navigation patterns.

## Common Commands

## Goal
 - Flutter와 Dart에 대한 학습
 - 코드 단순 복사/붙여넣기가 아닌 주도적인 학습
 - 클린 코드, 클린 아키텍처에 대한 학습

# Study Rule
 - output-style : Learning 일 때는 코드 바로 수정하지 말고 나한테 물어보기
 - 내 학습에 적극 협조해

## Notion Rule
 - 내 노션의 "플러터" 하위 페이지로 작성
 - **소제목 포맷 (필수):**
   - 볼드(Bold) 처리
   - 글자 크기 크게
   - 노란색 배경 길게 (Yellow background)
 - **내용 포맷:**
   - 들여쓰기(Indentation)를 통한 가독성 향상
   - 개조식으로 작성
   - 두괄식으로 간결하고 가독성있게 작성하기

### Development
```bash
# Get dependencies
flutter pub get

# Run the app (defaults to available device/emulator)
flutter run

# Run on specific device
flutter devices  # List available devices
flutter run -d <device-id>

# Hot reload: Press 'r' in terminal while app is running
# Hot restart: Press 'R' in terminal while app is running
```

### Testing
```bash
# Run all tests
flutter test

# Run a specific test file
flutter test test/widget_test.dart

# Run tests with coverage
flutter test --coverage
```

### Code Quality
```bash
# Analyze code for issues
flutter analyze

# Format Dart files
dart format .
dart format lib/  # Format only lib directory
```

### Building
```bash
# Build APK (Android)
flutter build apk

# Build iOS app
flutter build ios

# Build for web
flutter build web

# Clean build artifacts
flutter clean
```

## Project Structure

```
lib/
├── main.dart          # App entry point with main widget
└── sample/            # Sample UI components
    └── listview.dart  # ListView examples
```

## Code Architecture

### Main App Structure
The app uses a simple single-screen architecture:
- `MyApp` (lib/main.dart:7): Root widget with MaterialApp
- Main screen contains:
  - AppBar (blue background)
  - ListView with repeated Row items (Icon + Text)
  - Custom BottomAppBar via `BottomCustomBar` widget

### Custom Widgets
- `BottomCustomBar` (lib/main.dart:37): Reusable bottom navigation bar with evenly spaced icons
- `ShopItem` (lib/main.dart:57): Example widget component pattern

### Assets
- Images stored in `assets/` directory
- Configured in pubspec.yaml under `flutter.assets`

## Linting Configuration

The project uses `flutter_lints` with custom overrides (analysis_options.yaml:23-27):
- `prefer_const_constructors`: disabled (allows non-const constructors)
- `avoid_print`: disabled (allows print statements for debugging)
- `prefer_typing_uninitialized_variables`: disabled
- `prefer_const_constructors_in_immutables`: disabled

## Development Notes

### UI Layout Approach
The codebase includes comments (lib/main.dart:66-72) describing the recommended layout development process:
1. Prepare design mockup
2. Draw rectangles on the design
3. Convert outer rectangles to widgets first, working inward

### Performance Considerations
- Avoid extracting static UI to variables (lib/main.dart:51-54) - use const widget classes instead for better performance
- Unchanging UI elements should be const constructors when possible
