import '../tdapi.dart';

/// A mobile network
class NetworkTypeMobile extends NetworkType {
  const NetworkTypeMobile();

  static const String CONSTRUCTOR = 'networkTypeMobile';

  static NetworkTypeMobile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NetworkTypeMobile();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
