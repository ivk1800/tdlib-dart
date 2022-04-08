import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the current state of the connection to Telegram servers
@immutable
abstract class ConnectionState extends TdObject {
  const ConnectionState();

  static const String constructor = 'connectionState';

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

    switch (json['@type']) {
      case ConnectionStateWaitingForNetwork.constructor:
        return ConnectionStateWaitingForNetwork.fromJson(json);
      case ConnectionStateConnectingToProxy.constructor:
        return ConnectionStateConnectingToProxy.fromJson(json);
      case ConnectionStateConnecting.constructor:
        return ConnectionStateConnecting.fromJson(json);
      case ConnectionStateUpdating.constructor:
        return ConnectionStateUpdating.fromJson(json);
      case ConnectionStateReady.constructor:
        return ConnectionStateReady.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
