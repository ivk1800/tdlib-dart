import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the type of a session
@immutable
abstract class SessionType extends TdObject {
  const SessionType();

  static const String constructor = 'sessionType';

  /// Inherited by:
  /// [SessionTypeAndroid]
  /// [SessionTypeApple]
  /// [SessionTypeBrave]
  /// [SessionTypeChrome]
  /// [SessionTypeEdge]
  /// [SessionTypeFirefox]
  /// [SessionTypeIpad]
  /// [SessionTypeIphone]
  /// [SessionTypeLinux]
  /// [SessionTypeMac]
  /// [SessionTypeOpera]
  /// [SessionTypeSafari]
  /// [SessionTypeUbuntu]
  /// [SessionTypeUnknown]
  /// [SessionTypeVivaldi]
  /// [SessionTypeWindows]
  /// [SessionTypeXbox]
  static SessionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SessionTypeAndroid.constructor:
        return SessionTypeAndroid.fromJson(json);
      case SessionTypeApple.constructor:
        return SessionTypeApple.fromJson(json);
      case SessionTypeBrave.constructor:
        return SessionTypeBrave.fromJson(json);
      case SessionTypeChrome.constructor:
        return SessionTypeChrome.fromJson(json);
      case SessionTypeEdge.constructor:
        return SessionTypeEdge.fromJson(json);
      case SessionTypeFirefox.constructor:
        return SessionTypeFirefox.fromJson(json);
      case SessionTypeIpad.constructor:
        return SessionTypeIpad.fromJson(json);
      case SessionTypeIphone.constructor:
        return SessionTypeIphone.fromJson(json);
      case SessionTypeLinux.constructor:
        return SessionTypeLinux.fromJson(json);
      case SessionTypeMac.constructor:
        return SessionTypeMac.fromJson(json);
      case SessionTypeOpera.constructor:
        return SessionTypeOpera.fromJson(json);
      case SessionTypeSafari.constructor:
        return SessionTypeSafari.fromJson(json);
      case SessionTypeUbuntu.constructor:
        return SessionTypeUbuntu.fromJson(json);
      case SessionTypeUnknown.constructor:
        return SessionTypeUnknown.fromJson(json);
      case SessionTypeVivaldi.constructor:
        return SessionTypeVivaldi.fromJson(json);
      case SessionTypeWindows.constructor:
        return SessionTypeWindows.fromJson(json);
      case SessionTypeXbox.constructor:
        return SessionTypeXbox.fromJson(json);
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
