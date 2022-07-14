# tdlib-dart

A Dart wrapper for [tdlib](https://github.com/tdlib/td). Contains generated schema classes of [td_api.tl](https://github.com/tdlib/td/blob/master/td/generate/scheme/td_api.tl) and a client that interacts with lib through [ffi](https://dart.dev/guides/libraries/c-interop). 

Actual version of tdlib: `1.8.4` [d489014](https://github.com/tdlib/td/tree/d489014)

### Table of Contents

- [Example](#example)
- [Getting started with flutter example](#getting-started-with-flutter-example)
- [Build tdlib](#build-tdlib)
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
2. Build tdlib for your operating system following the guide below.
3. Open `example/lib/main.dart` and place obtained `api_id` and `api_hash` to appropriate methods `getApiId` and `getApiHash`.
4. Specify phone number and code in `getPhoneNumber` and `getCode` methods. Attention, the phone number must be specified from the test DC. If you don't want to use the test DC and want to authenticate with your account, change `useTestDc` to `false` in `TdlibParameters`.
5. cd `<repo folder>/example`
6. `flutter run`

### Build tdlib
The official repository contains instructions on how to build tdlib. https://github.com/tdlib/td#building

1. git clone `git@github.com:tdlib/td.git`
2. git checkout `d489014`

### Android
Instruction: https://github.com/tdlib/td/issues/77#issuecomment-640719893

1. Download libtdjsonandroid.zip https://github.com/tdlib/td/issues/77#issuecomment-640719893
2. Unpack the archive to td/example directory.
3. Then download the latest OpenSSL 1.1.1 source code as a .tar.gz archive from OpenSSL 1.1.1 release page and place it in the third_party/crypto subfolder.
4. Edit `example/third_party/crypto/build.sh`. Set your ANDROID_NDK path, `export ANDROID_NDK=/Users/arseny30/Library/Android/sdk/ndk-bundle` replace by own path to ndk.
5. chmod +x `build.sh` and `build-all.sh` in `example/third_party/crypto/` folder.
6. chmod +x `export.sh` in `example`
7. Setup ANDROID_NDK path in `example/build.sh`. Replace `...=${ANDROID_SDK_ROOT}/ndk-bundle/...` by own path to ndk.
8. chmod +x `build.sh` and `build-all.sh` in `example/` folder.
9. Fix cmake path in `CMakeLists.txt`, replace `set(TD_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../..)` by `set(TD_DIR ${CMAKE_CURRENT_SOURCE_DIR}/..)`.
10. Run `example/third_party/crypto/build-all.sh`
11. Run `example/export.sh`
12. Copy `.so` files from `example/libs` to `example/android/app/main/jniLibs`:
```
└── example 
    └── android 
        └── app 
            └── main 
                └── jniLibs 
                    └── arm64-v8a
                    │   └── libtdjsonandroid.so
                    │   └── libtdjsonandroid.so.debug
                    └── armeabi-v7a
                    │   └── libtdjsonandroid.so
                    │   └── libtdjsonandroid.so.debug
                    └── x86
                    │   └── libtdjsonandroid.so
                    │   └── libtdjsonandroid.so.debug
                    └── x86_64
                        └── libtdjsonandroid.so
                        └── libtdjsonandroid.so.debug
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
Instruction: https://github.com/tdlib/td/tree/master/example/ios

1. Remove watchOS and tvOS in `example/ios/build-openssl.sh` and `example/ios/build.sh`: replace `platforms="macOS iOS watchOS tvOS"` by `platforms="macOS iOS"`.
2. Build following the guide.
3. Copy `example/ios/tdjson/iOS/lib/libtdjson.dylib` to `example/ios`
4. Copy `example/ios/tdjson/macOS/lib/libtdjson.dylib` to `example/macos`
```
└── example 
    └── ios 
    │   └── libtdjson.dylib
    └── macos
        └── libtdjson.dylib
```
6. Open `Runner.xcworkspace` in Xcode.
7. Add `.dylib` file to project.
8. Find `Frameworks, Libraries, and EmbeddedContent`.
9. Against `libtdjson.dylib` choose `Embed & Sign`.
10. Find `Signing & Capabilities`.
11. In Section `App Sandbox (Debug and Profile)` set true `Outgoing Connections (Client)`.

### Windows
Instruction: https://tdlib.github.io/td/build.html

1. Choose language `C++`
2. Choose operating system `Windows`
3. Build following the guide.
4. Copy files from `/tdlib/bin` to `example/windows/tdlib`
```
└── example 
    └── windows 
        └── tdlib 
            └── libcrypto-1_1.dll
            └── libssl-1_1.dll
            └── tdjson.dll
            └── zlib1.dll
```
5. Rename `libcrypto-1_1-(x64|x32).dll` to `libcrypto-1_1.dll` and `libssl-1_1-(x64|x32).dll` to `libssl-1_1.dll`
6. Open `example/windows/CMakeLists.txt`.
7. Add below line `set(INSTALL_BUNDLE_LIB_DIR "${CMAKE_INSTALL_PREFIX}")`:
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
Instruction: https://tdlib.github.io/td/build.html

1. Choose language `Dart`
2. Choose operating system `Linux`
3. Build following the guide.
4. Copy file `/tdlib/lib/libtdjson.so` to `example/linux/tdlib`
```
└── example 
    └── linux 
        └── tdlib 
            └── libtdjson.so
```
5. Open `example/linux/CMakeLists.txt`.
6. Add at the end of file:
```
# begin td
install(FILES "${CMAKE_CURRENT_SOURCE_DIR}/tdlib/libtdjson.so" DESTINATION "${INSTALL_BUNDLE_LIB_DIR}"
    COMPONENT Runtime)
# end td
```

### Web
TBD