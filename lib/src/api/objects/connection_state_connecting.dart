import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
