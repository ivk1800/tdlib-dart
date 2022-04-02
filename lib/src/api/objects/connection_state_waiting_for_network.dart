import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Currently waiting for the network to become available. Use setNetworkType
/// to change the available network type
class ConnectionStateWaitingForNetwork extends ConnectionState {
  const ConnectionStateWaitingForNetwork();

  static const String CONSTRUCTOR = 'connectionStateWaitingForNetwork';

  static ConnectionStateWaitingForNetwork? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ConnectionStateWaitingForNetwork();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
