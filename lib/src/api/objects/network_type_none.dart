import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The network is not available
class NetworkTypeNone extends NetworkType {
  const NetworkTypeNone();

  static const String CONSTRUCTOR = 'networkTypeNone';

  static NetworkTypeNone? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NetworkTypeNone();
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
