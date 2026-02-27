
---

# Sub7a – Flutter Tasbeeh App

A clean and minimal Flutter Tasbeeh application designed to help users track daily dhikr with a customizable goal system, smooth progress tracking, and persistent local storage.

---

## Features

* Customizable goal counter
* Smart increment system
* Auto reset when goal is reached
* Circular progress indicator
* Dynamic theme color switching
* Persistent local storage using SharedPreferences
* Total repetition calculation
* Clean and distraction-free UI
* Feature-based clean architecture

---

## How It Works

* User sets a goal (e.g. 33, 100, etc.)
* Each tap increases the counter
* When the goal is reached:

  * Counter resets to 1
  * Repeat cycle increases automatically
* The app calculates:

  * Total repetitions = (time × goal) + counter
* All data is stored locally and restored automatically on app restart

---

## Project Architecture

This project follows a **Feature-Based Clean Structure**:

```
lib/
│
├── core/
│   ├── constants/
│   ├── services/
│   └── widgets/
│
└── features/
    └── tasbeeh/
        ├── model/
        ├── controller/
        └── view/
```

### Core

Reusable components:

* App constants
* Local storage service
* Shared UI widgets

### Feature (Tasbeeh)

Contains:

* Model (data structure)
* Controller (business logic)
* Screen
* UI widgets

This structure makes the app:

* Scalable
* Clean
* Easy to maintain
* Easy to upgrade to Provider / Bloc later

---

## Tech Stack

* Flutter (Latest Stable)
* Dart
* SharedPreferences
* percent_indicator package
* RadioGroup (latest Flutter API)

---

## Packages Used

```yaml
shared_preferences
percent_indicator
```

---

## Getting Started

1. Clone the repository

```bash
git clone https://github.com/your-username/sub7a.git
```

2. Navigate to project folder

```bash
cd sub7a
```

3. Install dependencies

```bash
flutter pub get
```

4. Run the app

```bash
flutter run
```

---

## App Behavior

| Action            | Result                          |
| ----------------- | ------------------------------- |
| Tap center button | Counter increases               |
| Reach goal        | Time increases & counter resets |
| Change color      | Theme updates instantly         |
| Restart app       | Data is restored automatically  |
| Press reset       | Everything resets               |

---

## Why This Project?

This project demonstrates:

* Clean code structure
* Separation of concerns
* State management without over-engineering
* Proper local storage handling
* Modern Flutter API usage
* Scalable architecture

It is portfolio-ready and can be extended easily with:

* Multiple dhikr types
* Sound feedback
* Vibration
* Dark mode
* Cloud sync

---

## Developer

Built with Flutter by **Salah Hassan**

---

## License

This project is open-source and free to use.

---

