import '../tdapi.dart';

/// Describes the current state of the connection to Telegram servers
abstract class ConnectionState extends TdObject {
  const ConnectionState();

  static const String CONSTRUCTOR = 'connectionState';

  /// Inherited by:
  /// [ConnectionStateWaitingForNetwork]
  /// [ConnectionStateConnectingToProxy]
  /// [ConnectionStateConnecting]
  /// [ConnectionStateUpdating]
  /// [ConnectionStateReady]
  static ConnectionState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case ConnectionStateWaitingForNetwork.CONSTRUCTOR:
        return ConnectionStateWaitingForNetwork.fromJson(json);
      case ConnectionStateConnectingToProxy.CONSTRUCTOR:
        return ConnectionStateConnectingToProxy.fromJson(json);
      case ConnectionStateConnecting.CONSTRUCTOR:
        return ConnectionStateConnecting.fromJson(json);
      case ConnectionStateUpdating.CONSTRUCTOR:
        return ConnectionStateUpdating.fromJson(json);
      case ConnectionStateReady.CONSTRUCTOR:
        return ConnectionStateReady.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
