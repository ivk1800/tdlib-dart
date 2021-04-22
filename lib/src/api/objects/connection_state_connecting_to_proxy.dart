import '../tdapi.dart';

/// Currently establishing a connection with a proxy server
class ConnectionStateConnectingToProxy extends ConnectionState {
  const ConnectionStateConnectingToProxy();

  static const String CONSTRUCTOR = 'connectionStateConnectingToProxy';

  static ConnectionStateConnectingToProxy? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ConnectionStateConnectingToProxy();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
