import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents the type of a user. The following types are possible: regular
/// users, deleted users and bots
abstract class UserType extends TdObject {
  const UserType();

  static const String CONSTRUCTOR = 'userType';

  /// Inherited by:
  /// [UserTypeRegular]
  /// [UserTypeDeleted]
  /// [UserTypeBot]
  /// [UserTypeUnknown]
  static UserType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case UserTypeRegular.CONSTRUCTOR:
        return UserTypeRegular.fromJson(json);
      case UserTypeDeleted.CONSTRUCTOR:
        return UserTypeDeleted.fromJson(json);
      case UserTypeBot.CONSTRUCTOR:
        return UserTypeBot.fromJson(json);
      case UserTypeUnknown.CONSTRUCTOR:
        return UserTypeUnknown.fromJson(json);
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
