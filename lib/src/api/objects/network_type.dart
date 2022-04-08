import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the type of a network
@immutable
abstract class NetworkType extends TdObject {
  const NetworkType();

  static const String constructor = 'networkType';

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

    switch (json['@type']) {
      case NetworkTypeNone.constructor:
        return NetworkTypeNone.fromJson(json);
      case NetworkTypeMobile.constructor:
        return NetworkTypeMobile.fromJson(json);
      case NetworkTypeMobileRoaming.constructor:
        return NetworkTypeMobileRoaming.fromJson(json);
      case NetworkTypeWiFi.constructor:
        return NetworkTypeWiFi.fromJson(json);
      case NetworkTypeOther.constructor:
        return NetworkTypeOther.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
