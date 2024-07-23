# tdlib-dart

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

### Dart Example

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

### installation

add the following code to your dependencies section in pubspec.yaml

```yaml
dependencies:
  tdlib:
    git:
      url: "https://github.com/stellarNuke/tdlib-dart"
      ref: master
```

### Getting started with flutter example

1. Obtain `api_id` and `api_hash` at https://my.telegram.org
2. Build tdlib for your operating system following the [instruction](https://github.com/tdlib/td#building) or download ~~[prebuild](https://github.com/ivk1800/td-json-client-prebuilt/releases)~~
   for android downnload from here => [ v1.8.33 releases](https://github.com/stellarNuke/tdlib-dart/releases/tag/v1.8.33)
   binaries.
3. place the files in the desired platforms folder [instructions](### Prebuilt binaries)
4. import package

```dart
import 'package:tdlib/td_client.dart';
import 'package:tdlib/td_api.dart' as td;
```

5. create and initialize client

```dart
late final Client client;
client = Client.create();
await client.initialize();
```

6. listen for updates received from the client
   list of [All available update states](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_update.html)

```dart
client.updates.listen((tda.TdObject event) async {
        print('[EVENT] : ${event.toJson()}');
        var eventType = event.toJson()['@type'];

        if (eventType == 'updateAuthorizationState') {
          tda.UpdateAuthorizationState update = event as tda.UpdateAuthorizationState;
          tda.AuthorizationState authorizationState = update.authorizationState;

          //handle on different authorization states sent as update

        }
      }, onError: (object) => {print(object.toString())}, cancelOnError: false, onDone: () => {print('[===========DONE LISTENING=========]')});
```

**Note : The first authorization state received by the Application is always of the type authorizationStateWaitTdlibParameters. When it is received, the Application must provide parameters for TDLib initialization by calling the setTdlibParameters API method as mentioned below.**

7.  use an API method to send requests.
    [All available methods](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1_function.html)

```dart
var params = tda.SetTdlibParameters(
      apiHash: apiHash,
      apiId: int.parse(apikey),
      systemLanguageCode: 'en-US',
      deviceModel: 'device model',
      systemVersion: 'systemversion',
      applicationVersion: 'v1',
      useTestDc: false,
      databaseDirectory: 'path',
      filesDirectory: 'path',
      databaseEncryptionKey: 'testkey',
      useFileDatabase: true,
      useChatInfoDatabase: true,
      useMessageDatabase: true,
      useSecretChats: false,
    );
await client.send(params)

```

**_ Note : After call to `setTdlibParameters` in case of success Application will receive `updateAuthorizationState` with new state and just needs to handle that update.If user isn't authorized yet, then some of `authorizationStateWaitPhoneNumber, authorizationStateWaitEmailAddress, authorizationStateWaitEmailCode, authorizationStateWaitCode, authorizationStateWaitRegistration` and `authorizationStateWaitPassword `authorization states may be received. After completing these authorization steps, the Application will receive authorizationStateReady, meaning that authorization was successful and ordinary requests can be sent now. _**

for more info go [official tdlib getting started](https://core.telegram.org/tdlib/getting-started)

### Prebuilt binaries

The tdlib binaries is built automatically using github actions and published on the [releases page](https://github.com/ivk1800/td-json-client-prebuilt/releases/). For android downnload from here => [ v1.8.33 releases](https://github.com/stellarNuke/tdlib-dart/releases/tag/v1.8.33). Follow the instructions below for each platform to configure flutter project to use tdlib

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
