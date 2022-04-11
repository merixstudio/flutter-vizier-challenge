# Vizier
Prototype of a financial mobile application.

![Vizier](https://cdn.dribbble.com/users/2041249/screenshots/16827492/media/986a5e3073542c34840e3cf8350961ab.jpg?compress=1&resize=1200x900&vertical=top)
## About
The main goal was to create an application with a custom UI without using external libraries.

We created all charts, animations, and custom widgets ourselves, using components provided by Flutter or even layers of canvas.

The application uses randomly generated data, but thanks to the architecture in which it was written, it allows you to easily connect an external provider(e.g. REST API) without changing views or cubits.

By making the project public, we can also show you how we work at Merixstudio, the application uses the standards developed by our developers.

## Features
- Smooth, beautiful animations
- Unique, made from scratch charts
- No external libraries for UI
- Bloc architecture with advantages of SOLID and clean architecture
- Randomly generated data
- Adaptive widgets to support iOS and Android platform differences
na
## Libraries used
- AutoRoute
- Bloc
- Freezed
- Injectable

## Screenshots
![Screen1](https://cdn.dribbble.com/users/2041249/screenshots/16233930/media/8470baa5a4b7cef8fc4d19321e67bffb.png?compress=1&resize=1200x900&vertical=top)
![Screen2](https://cdn.dribbble.com/users/3516795/screenshots/16448643/media/137557238a9bbad7eb472ce05a80bd52.png?compress=1&resize=1200x900&vertical=top)

## Prerequirements
Before starting, run in main project folder:

`flutter pub run build_runner build`

To generate all the necessary files
## Environment versions
- Dart 2.16+
- Flutter 2.10.3

## Links
- [Merixstudio Mobile](https://www.merixstudio.com/services/mobile-app-development/)
- [Dribbles](https://dribbble.com/Merixstudio/projects/5011721-Vizier)
- [Invision](https://projects.invisionapp.com/share/4A10C0E0W629#/screens)