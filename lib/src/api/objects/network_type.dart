import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents the type of a network
abstract class NetworkType extends TdObject {
  const NetworkType();

  static const String CONSTRUCTOR = 'networkType';

  /// Inherited by:
  /// [NetworkTypeNone]
  /// [NetworkTypeMobile]
  /// [NetworkTypeMobileRoaming]
  /// [NetworkTypeWiFi]
  /// [NetworkTypeOther]
  static NetworkType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case NetworkTypeNone.CONSTRUCTOR:
        return NetworkTypeNone.fromJson(json);
      case NetworkTypeMobile.CONSTRUCTOR:
        return NetworkTypeMobile.fromJson(json);
      case NetworkTypeMobileRoaming.CONSTRUCTOR:
        return NetworkTypeMobileRoaming.fromJson(json);
      case NetworkTypeWiFi.CONSTRUCTOR:
        return NetworkTypeWiFi.fromJson(json);
      case NetworkTypeOther.CONSTRUCTOR:
        return NetworkTypeOther.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
