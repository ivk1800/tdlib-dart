# tdlib-dart

A Dart wrapper for [tdlib](https://github.com/tdlib/td). Contains generated schema classes of [td_api.tl](https://github.com/tdlib/td/blob/master/td/generate/scheme/td_api.tl) and a client that interacts with lib through [ffi](https://dart.dev/guides/libraries/c-interop). 

| Version |                         tdlib commit                          |                                                                 td_api.tl revision |
|---------|:-------------------------------------------------------------:|-----------------------------------------------------------------------------------:|
| 1.8.29  |                          last commit                          |   [44b548c](https://github.com/tdlib/td/blob/44b548c/td/generate/scheme/td_api.tl) |
| 1.8.26  | [d7a31ad](https://github.com/ivk1800/tdlib-dart/tree/d7a31ad) |   [b1b33cf](https://github.com/tdlib/td/blob/b1b33cf/td/generate/scheme/td_api.tl) |
| 1.8.21  | [32d37d9](https://github.com/ivk1800/tdlib-dart/tree/32d37d9) |   [404761c](https://github.com/tdlib/td/blob/404761c/td/generate/scheme/td_api.tl) |
| 1.8.19  | [1a00bae](https://github.com/ivk1800/tdlib-dart/tree/1a00bae) |   [986f1ab](https://github.com/tdlib/td/blob/986f1ab/td/generate/scheme/td_api.tl) |
| 1.8.18  | [532fae5](https://github.com/ivk1800/tdlib-dart/tree/532fae5) |   [daf4801](https://github.com/tdlib/td/blob/daf4801/td/generate/scheme/td_api.tl) |
| 1.8.15  | [3f91948](https://github.com/ivk1800/tdlib-dart/tree/3f91948) |   [8893dc8](https://github.com/tdlib/td/blob/8893dc8/td/generate/scheme/td_api.tl) |
| 1.8.14  | [90171aa](https://github.com/ivk1800/tdlib-dart/tree/90171aa) |   [4041ecb](https://github.com/tdlib/td/blob/4041ecb/td/generate/scheme/td_api.tl) |
| 1.8.13  | [d5ed66a](https://github.com/ivk1800/tdlib-dart/tree/d5ed66a) |   [c95598e](https://github.com/tdlib/td/blob/c95598e/td/generate/scheme/td_api.tl) |
| 1.8.11  | [1b99276](https://github.com/ivk1800/tdlib-dart/tree/1b99276) |   [1543c41](https://github.com/tdlib/td/blob/1543c41/td/generate/scheme/td_api.tl) |
| 1.8.9   | [5b8706c](https://github.com/ivk1800/tdlib-dart/tree/5b8706c) |   [6cbe182](https://github.com/tdlib/td/blob/6cbe182/td/generate/scheme/td_api.tl) |
| 1.8.8   | [f069453](https://github.com/ivk1800/tdlib-dart/tree/f069453) |   [bbe37ee](https://github.com/tdlib/td/blob/bbe37ee/td/generate/scheme/td_api.tl) |
| 1.8.7   | [60c2975](https://github.com/ivk1800/tdlib-dart/tree/60c2975) |   [92f8093](https://github.com/tdlib/td/blob/92f8093/td/generate/scheme/td_api.tl) |
| 1.8.4   | [324fa2b](https://github.com/ivk1800/tdlib-dart/tree/324fa2b) |   [d489014](https://github.com/tdlib/td/blob/d489014/td/generate/scheme/td_api.tl) |
| 1.8.0   | [781d969](https://github.com/ivk1800/tdlib-dart/tree/781d969) | [c0385078](https://github.com/tdlib/td/blob/c0385078/td/generate/scheme/td_api.tl) |
| 1.7.9   | [2dec79f](https://github.com/ivk1800/tdlib-dart/tree/2dec79f) | [8d7bda00](https://github.com/tdlib/td/blob/8d7bda00/td/generate/scheme/td_api.tl) |
| 1.7.3   | [2a29b25](https://github.com/ivk1800/tdlib-dart/tree/2a29b25) |                                                                                  - |

### Table of Contents

- [Example](#example)
- [Getting started with flutter example](#getting-started-with-flutter-example)
- [Prebuilt binaries](#prebuilt-binaries)
  - [Android](#android)
  - [iOS and macOS](#ios-and-macos)
  - [Windows](#windows)
  - [Linux](#linux)
  - [Web](#web)

### Integration example
As an example of use, you can see the project [telegram-flutter](https://github.com/ivk1800/telegram-flutter).

### Example
```dart
import 'package:tdlib/td_client.dart';
import 'package:tdlib/td_api.dart' as td;

Future<void> main() async {
  final Client client = Client.create();

  client.updates.listen((td.TdObject event) async {
    print('update: ${event.toJson()}');
  });
  await client.initialize();

  td.Ok result = client.execute<td.Ok>(td.SetLogVerbosityLevel(newVerbosityLevel: 0));
  print('execute result: ${result.toJson()}');

  td.Updates sendResult = await client.send<td.Updates>(td.GetCurrentState());
  print('send result: ${sendResult.toJson()}');
}
```

### Getting started with flutter example
1. Obtain `api_id` and `api_hash` at https://my.telegram.org
2. Build tdlib for your operating system following the [instruction](https://github.com/tdlib/td#building) or download [prebuild](https://github.com/ivk1800/td-json-client-prebuilt/releases) binaries. Following the instraction below for setup tdlib.
3. Open `example/lib/main.dart` and place obtained `api_id` and `api_hash` to appropriate methods `getApiId` and `getApiHash`.
4. Specify phone number and code in `getPhoneNumber` and `getCode` methods. Attention, the phone number must be specified from the test DC. If you don't want to use the test DC and want to authenticate with your account, change `useTestDc` to `false` in `TdlibParameters`.
5. cd `<repo folder>/example`
6. `flutter run`

### Prebuilt binaries
The tdlib binaries is built automatically using github actions and published on the [releases page](https://github.com/ivk1800/td-json-client-prebuilt/releases/). Follow the instructions below for each platform to configure flutter project to use tdlib

### Android
Copy `.so` files from archive to `example/android/app/main/jniLibs`:
```
└── example 
    └── android 
        └── app 
            └── main 
                └── jniLibs 
                    └── arm64-v8a
                    │   └── libtdjsonandroid.so
                    └── armeabi-v7a
                    │   └── libtdjsonandroid.so
                    └── x86
                    │   └── libtdjsonandroid.so
                    └── x86_64
                        └── libtdjsonandroid.so
```
13. Open file `example/android/app/build.gradle`

replace
```groovy
sourceSets {
  main.java.srcDirs += 'src/main/kotlin'
}
```
by 
```groovy
sourceSets {
  main {
    java.srcDirs += 'src/main/kotlin'
    jniLibs.srcDirs = ['src/main/jniLibs']
  }
}
```

### iOS and macOS
1. Copy `libtdjson.dylib` from archive to `example/ios`
2. Copy `libtdjson.dylib` from archive to `example/macos`
```
└── example 
    └── ios 
    │   └── libtdjson.dylib
    └── macos
        └── libtdjson.dylib
```
3. Open `Runner.xcworkspace` in Xcode.
4. Add `.dylib` file to project.
5. Find `Frameworks, Libraries, and EmbeddedContent`.
6. Against `libtdjson.dylib` choose `Embed & Sign`.
7. Find `Signing & Capabilities`.
8. In Section `App Sandbox (Debug and Profile)` set true `Outgoing Connections (Client)`.

### Windows
1. Copy files from archive to `example/windows/tdlib`
```
└── example 
    └── windows 
        └── tdlib 
            └── libcrypto-1_1.dll
            └── libssl-1_1.dll
            └── tdjson.dll
            └── zlib1.dll
```
2. Open `example/windows/CMakeLists.txt`.
3. Add below line `set(INSTALL_BUNDLE_LIB_DIR "${CMAKE_INSTALL_PREFIX}")`:
```
# begin td
set(dll_path "${CMAKE_CURRENT_SOURCE_DIR}/tdlib")
install(FILES "${dll_path}/libcrypto-1_1.dll" DESTINATION "${INSTALL_BUNDLE_LIB_DIR}" COMPONENT Runtime)
install(FILES "${dll_path}/libssl-1_1.dll" DESTINATION "${INSTALL_BUNDLE_LIB_DIR}" COMPONENT Runtime)
install(FILES "${dll_path}/tdjson.dll" DESTINATION "${INSTALL_BUNDLE_LIB_DIR}" COMPONENT Runtime)
install(FILES "${dll_path}/zlib1.dll" DESTINATION "${INSTALL_BUNDLE_LIB_DIR}" COMPONENT Runtime)
# end td
```

### Linux
1. Copy file from archive to `example/linux/tdlib`
```
└── example 
    └── linux 
        └── tdlib 
            └── libtdjson.so
```
2. Open `example/linux/CMakeLists.txt`.
3. Add at the end of file:
```
# begin td
install(FILES "${CMAKE_CURRENT_SOURCE_DIR}/tdlib/libtdjson.so" DESTINATION "${INSTALL_BUNDLE_LIB_DIR}"
    COMPONENT Runtime)
# end td
```

### Web
TBD
