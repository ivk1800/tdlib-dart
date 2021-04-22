import '../tdapi.dart';

/// Currently establishing a connection to the Telegram servers
class ConnectionStateConnecting extends ConnectionState {
  const ConnectionStateConnecting();

  static const String CONSTRUCTOR = 'connectionStateConnecting';

  static ConnectionStateConnecting? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ConnectionStateConnecting();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
