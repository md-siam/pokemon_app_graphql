<img src="screenshots/badges/built-with-love.svg" height="28px"/>&nbsp;&nbsp;
<img src="screenshots/badges/flutter-dart.svg" height="28px" />&nbsp;&nbsp;
<a href="https://choosealicense.com/licenses/mit/" target="_blank"><img src="screenshots/badges/license-MIT.svg" height="28px" /></a>&nbsp;&nbsp;
<img src="screenshots/badges/Flutter-3.svg" height="28px" />&nbsp;&nbsp;
<img src="screenshots/badges/dart-null_safety-blue.svg" height="28px"/>

# Pokémon

<img align="right" src="screenshots/app_icon/playstore.png" height="190"></img>
This application is a Pre-assessment for the Flutter Developer position. It's an open-source project, hence use of the source code is governed by an MIT-style license that can be found in the LICENSE file or at <a href = "https://choosealicense.com/licenses/mit/">MIT LICENSE Info.</a>

## Packages Used

This application is using one third-party package from the open-source community. Thanks to the developers of <a href = "https://pub.dev/packages/graphql_flutter">graphql_flutter: ^5.1.2 </a> for this amazing package. The purpose of using this package is to run GraphQL quartes in a flutter application.

```
  graphql_flutter: ^5.1.2   //For using graphQL API
```

## App Demo

<p align="center"><img src="screenshots/gif/demo.gif"></p>

## File Pattern Inside The `lib` Folder

```
lib
├── app
│   ├── graphql
│   │   └── queries.dart
│   ├── model
│   │   └── pokemon_model.dart
│   ├── pages
│   │   ├── detail_page.dart
│   │   └── home_page.dart
│   └── widgets
│       └── fetch_more_widget.dart
└── main.dart
```
