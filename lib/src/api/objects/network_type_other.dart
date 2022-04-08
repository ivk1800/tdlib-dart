import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A different network type (e.g., Ethernet network)
@immutable
class NetworkTypeOther extends NetworkType {
  const NetworkTypeOther();

  static const String constructor = 'networkTypeOther';

  static NetworkTypeOther? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NetworkTypeOther();
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
