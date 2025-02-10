# Flutter Multi-Platform Code Compiler

## Overview
This project is a **Flutter-based multi-platform code editor and compiler** that allows users to write and compile code in multiple programming languages directly on **Android, iOS, and Web** devices. The application is designed with **Clean Architecture**, utilizing **Provider** for state management and **GoRouter** for navigation.

## Features
- **Supports Multiple Languages:**
    - C++
    - C#
    - Java
    - JavaScript
    - Python
    - Kotlin
    - Dart
    - Swift
    - Objective-C
    - Bash
    - Brainfuck
    - Go
    - Ruby
    - PHP
- **Code Editing:** Integrated code editor with syntax highlighting.
- **Real-time Compilation:** Compile and execute code on the device.
- **Cross-Platform:** Works on **Android, iOS, and Web**.
- **State Management:** Uses **Provider** for efficient state handling.
- **Navigation:** Managed with **GoRouter** for a seamless user experience.

## Technologies Used
- **Flutter** (Dart)
- **Provider** (State Management)
- **GoRouter** (Navigation)
- **WebAssembly (WASM)** for in-browser code execution
- **RESTful API** for remote code compilation

## Project Structure
The project follows **Clean Architecture**, ensuring a modular and scalable codebase:

```
lib/
│── core/              # Common utilities and helpers
│── data/              # Data layer (repositories, models, API clients)
│── domain/            # Business logic layer (use cases, entities)
│── presentation/      # UI layer (widgets, screens, state management)
│── main.dart          # Entry point of the application
```

## Installation
1. Clone the repository:
   ```sh
   git clone git@github.com:amirsalarrabaniha/flutter-code-compiler.git
   ```
2. Navigate to the project folder:
   ```sh
   cd flutter-code-compiler
   ```
3. Install dependencies:
   ```sh
   flutter pub get
   ```
4. Run the application:
   ```sh
   flutter run
   ```

## Usage
- Select a programming language from the dropdown.
- Write code in the editor.
- Click **Compile & Run** to execute the code.
- View the output in the console.

## Dependencies
```yaml
dependencies:
  flutter:
    sdk: flutter

  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^1.0.8
  flutter_code_editor: ^0.3.2
  http: ^1.2.2
  dropdown_button2: ^2.3.9
  provider: ^6.1.2
  go_router: ^14.3.0
  get_it: ^8.0.0
  freezed: ^2.5.7
  shared_preferences: ^2.3.2
  iconsax: ^0.0.8
```

## License
This project is licensed under the MIT License.

---
Feel free to modify this README to match your specific project details!

