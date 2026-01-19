Here is a **clean, professional `README.md`** you can copy-paste directly into your repository.
It explains the app, tech stack, features, setup, and screenshots section.

---

# 🐾 Pokémon Catcher (Flutter Pokédex)

A **Flutter-based Pokédex web application** built using the **PokeAPI**, featuring infinite scrolling, Pokémon details, capture functionality, and a favourites collection — designed with **clean architecture** and **production-ready practices**.

---

## 🚀 Features

* 📜 **Pokémon List** with lazy loading (20 Pokémon at a time)
* 🔍 **Pokémon Details Page**

  * Image
  * Height & Weight
  * Types
  * Abilities
  * Base Stats
  * Total Moves count
* ⭐ **Capture Pokémon**
* ❤️ **Favourites Page** (captured Pokémon)
* 🔄 Pull-to-refresh
* 🎨 Centralized theming (no hardcoded colors in widgets)
* 📱 Responsive layout (mobile, tablet, web)
* 🌐 Flutter Web support

---

## 🧱 Tech Stack

* **Flutter**
* **Dart**
* **PokeAPI** – [https://pokeapi.co](https://pokeapi.co)
* **Riverpod** – State management
* **go_router** – Navigation
* **Dio** – API networking
* **Cached Network Image** – Image caching

---

## 📁 Project Structure

```
lib/
├── app/                  # App & router
├── core/                 # Theme, network, utils
├── features/
│   ├── pokemon/
│   │   ├── data/         # Models, API, repository
│   │   ├── domain/       # Repository contracts
│   │   └── presentation/ # UI + controllers
│   └── favourites/       # Captured Pokémon
└── main.dart
```

This structure follows **clean architecture principles**:

* UI → Presentation
* Business logic → Controllers
* Data access → Repositories & API services

---

## 🖼️ Screens (Optional)

*Add screenshots here once available*

```
screenshots/
├── list.png
├── details.png
├── favourites.png
```

---

## ⚙️ Setup & Run

### 1️⃣ Clone the repository

```bash
git clone https://github.com/Geethika2506/pokemoncatcher.git
cd pokemoncatcher
```

### 2️⃣ Install dependencies

```bash
flutter pub get
```

### 3️⃣ Run on Web (Chrome)

```bash
flutter run -d chrome
```

---
▶️ Run the App
🌐 Web
flutter run -d chrome

🤖 Android Emulator (Recommended)

Use Pixel 5 – API 33 – Google APIs (x86_64)

flutter run -d emulator-5554 --profile --enable-software-rendering

🖥️ Windows Desktop
flutter run -d windows

⚙️ Android Emulator Recommendations

For best performance and stability:

Device: Pixel 5

API: 33 (Android 13)

System Image: Google APIs (NOT Play Store)

Architecture: x86_64

RAM: 4096 MB

VM Heap: 512 MB

Graphics: Software

Animations: Disabled

## 🌍 API Reference

* Pokémon List
  `https://pokeapi.co/api/v2/pokemon?limit=20&offset=0`

* Pokémon Details
  `https://pokeapi.co/api/v2/pokemon/{id}`

---

## 🧪 State Management

* **Riverpod**

  * `StateNotifierProvider` for list & favourites
  * `FutureProvider.family` for Pokémon details

---

## 🔮 Future Improvements

* 💾 Persist favourites using Hive / SharedPreferences
* 🌙 Dark mode
* 🔍 Search Pokémon by name
* 🧬 Evolution chain support
* 📝 Pokémon description (species API)
* 🧪 Unit & widget tests

---

## 👩‍💻 Author

**Geethika**
GitHub: [@Geethika2506](https://github.com/Geethika2506)

---

## 📜 License

This project is for **learning and educational purposes**.
Pokémon data belongs to **Nintendo / Game Freak**.
