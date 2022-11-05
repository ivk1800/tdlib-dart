# tdlib-dart

A Dart wrapper for [tdlib](https://github.com/tdlib/td). Contains generated schema classes of [td_api.tl](https://github.com/tdlib/td/blob/master/td/generate/scheme/td_api.tl) and a client that interacts with lib through [ffi](https://dart.dev/guides/libraries/c-interop). 

Actual version of tdlib: `1.8.8` [bbe37ee](https://github.com/tdlib/td/tree/bbe37ee)

### Table of Contents

- [Example](#example)
- [Getting started with flutter example](#getting-started-with-flutter-example)
- [Prebuilt binaries](#prebuilt-binaries)
  - [Android](#android)
  - [iOS and macOS](#ios-and-macos)
  - [Windows](#windows)
  - [Linux](#linux)
  - [Web](#web)

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
