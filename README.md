<p>
    <img src="https://github.com/deluxepter/maven/blob/master/metadata/en-US/images/phoneScreenshots/1.png?raw=true" width="200" />
    <img src="https://github.com/deluxepter/maven/blob/master/metadata/en-US/images/phoneScreenshots/2.png?raw=true" width="200" />
</p>

## Project Mobile App Course CS4153.O21.CTTT

Student:

1. Lê Trí Khoa - 20521466
2. Đỗ Công Trình - 20522058

###Build from source

1. Install [Flutter](https://docs.flutter.dev/get-started/install) and then setup an [editor](https://developer.android.com/studio).

2. Clone this repository.

```
git clone https://github.com/deluxepter/maven
```

3. Get packages.

```
flutter pub get
```

4. Generate database.

```
flutter packages pub run build_runner build
```

5. Generate localizations.

```
flutter pub run intl_utils:generate
```

6. Run the app.

```
flutter run
```

7. Run tests.

```
flutter test --coverage
```

8. Generate coverage report.

```
genhtml coverage/lcov.info -o coverage/html
```
