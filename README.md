# Vizier
A prototype of a fintech mobile app for managing your finances.

![Vizier](https://cdn.dribbble.com/users/2041249/screenshots/16827492/media/986a5e3073542c34840e3cf8350961ab.jpg?compress=1&resize=1200x900&vertical=top)
## About
At Merixstudio, we believe that learning from practice is the most effective. To keep honing our mobile skills, we challenged ourselves to build an application with a custom UI without using external libraries. That’s how Vizier was born.

We created all charts, animations, and custom widgets ourselves, using components provided by Flutter or even layers of canvas. The application uses randomly generated data, but its architecture allows you to easily connect to an external provider (e.g. REST API) without changing views or cubits.

We approached Vizier like we would any other commercial project, so it shows the standards our mobile team follows. Now that it’s public, you can see for yourself the quality of work we deliver at Merixstudio.

## Charts
Due to the great interest in the graphs component, we created a separate public library. Vizier uses parts of it, but the entire implementation is in the library. 
[Check it here!](https://pub.dev/packages/mrx_charts)

## Features
- Smooth, beautiful animations
- Unique, made from scratch charts
- No external libraries for UI
- BLoC architecture following SOLID and clean architecture principles
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
- Dart 2.18+
- Flutter 3.3.1

## Links
- [Merixstudio Mobile](https://www.merixstudio.com/services/mobile-app-development/)
- [Dribbles](https://dribbble.com/Merixstudio/projects/5011721-Vizier)
- [Invision](https://projects.invisionapp.com/share/4A10C0E0W629#/screens)