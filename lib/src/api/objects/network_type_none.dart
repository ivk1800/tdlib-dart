import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The network is not available
@immutable
class NetworkTypeNone extends NetworkType {
  const NetworkTypeNone();

  static const String constructor = 'networkTypeNone';

  static NetworkTypeNone? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NetworkTypeNone();
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
