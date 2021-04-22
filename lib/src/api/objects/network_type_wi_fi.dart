import '../tdapi.dart';

/// A Wi-Fi network
class NetworkTypeWiFi extends NetworkType {
  const NetworkTypeWiFi();

  static const String CONSTRUCTOR = 'networkTypeWiFi';

  static NetworkTypeWiFi? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NetworkTypeWiFi();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
