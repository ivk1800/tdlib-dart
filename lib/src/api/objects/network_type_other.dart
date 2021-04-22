import '../tdapi.dart';

/// A different network type (e.g., Ethernet network)
class NetworkTypeOther extends NetworkType {
  const NetworkTypeOther();

  static const String CONSTRUCTOR = 'networkTypeOther';

  static NetworkTypeOther? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NetworkTypeOther();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
