import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tdlib/td_api.dart' as td;
import 'package:tdlib/td_client.dart';

Future<void> main() async {
  runApp(
    const MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

int getApiId() {
  throw StateError('Obtain `api_id` at https://my.telegram.org');
}

String getApiHash() {
  throw StateError('Obtain `api_hash` at https://my.telegram.org');
}

const String _TestDCMessage = '''
Check User Authorization article https://core.telegram.org/api/auth#test-accounts

If you wish to emulate an application of a user associated with DC number X, it 
is sufficient to specify the phone number as 99966XYYYY, where YYYY are random 
numbers, when registering the user. A user like this would always get XXXXX as 
the login confirmation code (the DC number, repeated five times). 
''';

String getPhoneNumber() {
  throw StateError(_TestDCMessage);
}

String getCode() {
  throw StateError(_TestDCMessage);
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Client? _client;

  StreamSubscription<td.TdObject>? _eventsSubscription;

  td.TdObject? _lastEvent;
  td.AuthorizationState? _authorizationState;
  td.ConnectionState? _connectionState;

  @override
  void dispose() {
    _destroy();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          ListTile(
            title: const Text('last event'),
            subtitle: Text('${_lastEvent?.toJson()}'),
          ),
          ListTile(
            title: const Text('authorizationState'),
            subtitle: Text('${_authorizationState?.runtimeType}'),
          ),
          ListTile(
            title: const Text('connectionState'),
            subtitle: Text('${_connectionState?.runtimeType}'),
          ),
          const Divider(),
          ListTile(
            title: const Text('initialize'),
            onTap: _initialize,
          ),
          ListTile(
            title: const Text('destroy'),
            onTap: _destroy,
          ),
          const Divider(),
          ListTile(
            title: const Text('set network none'),
            onTap: () {
              _client?.send(
                const td.SetNetworkType(type: td.NetworkTypeNone()),
              );
            },
          ),
          ListTile(
            title: const Text('set network wifi'),
            onTap: () {
              _client?.send(
                const td.SetNetworkType(type: td.NetworkTypeWiFi()),
              );
            },
          ),
          ListTile(
            title: const Text('logout', style: TextStyle(color: Colors.red)),
            onTap: () {
              _client?.send(const td.LogOut());
            },
          ),
        ],
      ),
    );
  }

  Future<void> _onNewEvent(td.TdObject event) async {
    if (event is td.UpdateConnectionState) {
      setState(() {
        _connectionState = event.state;
      });
    }

    setState(() {
      _lastEvent = event;
    });
    if (event is td.UpdateAuthorizationState) {
      await _onAuthorizationState(event.authorizationState);
    }
  }

  Future<void> _onAuthorizationState(
    td.AuthorizationState authorizationState,
  ) async {
    setState(() {
      _authorizationState = authorizationState;
    });
    if (authorizationState is td.AuthorizationStateWaitTdlibParameters) {
      await _client?.send(
        td.SetTdlibParameters(
          parameters: td.TdlibParameters(
            systemVersion: '',
            useTestDc: true,
            useSecretChats: false,
            useMessageDatabase: true,
            useFileDatabase: true,
            useChatInfoDatabase: true,
            ignoreFileNames: true,
            enableStorageOptimizer: true,
            filesDirectory: await _getFilesDirectory(),
            databaseDirectory: await _getDatabaseDirectory(),
            systemLanguageCode: 'en',
            deviceModel: 'unknown',
            applicationVersion: '1.0.0',
            apiId: getApiId(),
            apiHash: getApiHash(),
          ),
        ),
      );
    } else if (authorizationState is td.AuthorizationStateWaitEncryptionKey) {
      await _client?.send(
        const td.CheckDatabaseEncryptionKey(encryptionKey: ''),
      );
    } else if (authorizationState is td.AuthorizationStateWaitPhoneNumber) {
      await _client?.send(
        td.SetAuthenticationPhoneNumber(phoneNumber: getPhoneNumber()),
      );
    } else if (authorizationState is td.AuthorizationStateWaitCode) {
      await _client?.send(td.CheckAuthenticationCode(code: getCode()));
    }
  }

  void _initialize() {
    if (_client != null) {
      return;
    }

    final Client newClient = Client.create();
    _client = newClient;
    _eventsSubscription?.cancel();
    _eventsSubscription = newClient.updates.listen(_onNewEvent);
    newClient.initialize();
  }

  void _destroy() {
    _client?.destroy();
    _eventsSubscription?.cancel();
    _client = null;

    setState(() {
      _connectionState = null;
      _lastEvent = null;
      _authorizationState = null;
    });
  }

  Future<String> _getFilesDirectory() async {
    if (kIsWeb) {
      return 'files';
    }
    final Directory applicationSupportDirectory =
        await getApplicationSupportDirectory();

    return '${applicationSupportDirectory.path}/files';
  }

  Future<String> _getDatabaseDirectory() async {
    if (kIsWeb) {
      return 'database';
    }
    final Directory applicationSupportDirectory =
        await getApplicationSupportDirectory();

    return '${applicationSupportDirectory.path}/database';
  }
}
