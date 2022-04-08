import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// There is a working connection to the Telegram servers
@immutable
class ConnectionStateReady extends ConnectionState {
  const ConnectionStateReady();

  static const String constructor = 'connectionStateReady';

  static ConnectionStateReady? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ConnectionStateReady();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
