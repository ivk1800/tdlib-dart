import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Currently waiting for the network to become available. Use setNetworkType
/// to change the available network type
@immutable
class ConnectionStateWaitingForNetwork extends ConnectionState {
  const ConnectionStateWaitingForNetwork();

  static const String constructor = 'connectionStateWaitingForNetwork';

  static ConnectionStateWaitingForNetwork? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ConnectionStateWaitingForNetwork();
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
