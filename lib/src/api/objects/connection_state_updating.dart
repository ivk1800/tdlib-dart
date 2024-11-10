import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Downloading data expected to be received while the application was offline
@immutable
class ConnectionStateUpdating extends ConnectionState {
  const ConnectionStateUpdating();

  static const String constructor = 'connectionStateUpdating';

  static ConnectionStateUpdating? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ConnectionStateUpdating();
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
