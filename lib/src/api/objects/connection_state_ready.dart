import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// There is a working connection to the Telegram servers
class ConnectionStateReady extends ConnectionState {
  const ConnectionStateReady();

  static const String CONSTRUCTOR = 'connectionStateReady';

  static ConnectionStateReady? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ConnectionStateReady();
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
