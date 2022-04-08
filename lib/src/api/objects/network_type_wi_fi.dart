import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Wi-Fi network
@immutable
class NetworkTypeWiFi extends NetworkType {
  const NetworkTypeWiFi();

  static const String constructor = 'networkTypeWiFi';

  static NetworkTypeWiFi? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NetworkTypeWiFi();
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
