import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A mobile roaming network
class NetworkTypeMobileRoaming extends NetworkType {
  const NetworkTypeMobileRoaming();

  static const String CONSTRUCTOR = 'networkTypeMobileRoaming';

  static NetworkTypeMobileRoaming? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NetworkTypeMobileRoaming();
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
