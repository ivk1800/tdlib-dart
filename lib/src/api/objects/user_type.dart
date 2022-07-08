import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents the type of a user. The following types are possible: regular
/// users, deleted users and bots
@immutable
abstract class UserType extends TdObject {
  const UserType();

  static const String constructor = 'userType';

  /// Inherited by:
  /// [UserTypeBot]
  /// [UserTypeDeleted]
  /// [UserTypeRegular]
  /// [UserTypeUnknown]
  static UserType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case UserTypeBot.constructor:
        return UserTypeBot.fromJson(json);
      case UserTypeDeleted.constructor:
        return UserTypeDeleted.fromJson(json);
      case UserTypeRegular.constructor:
        return UserTypeRegular.fromJson(json);
      case UserTypeUnknown.constructor:
        return UserTypeUnknown.fromJson(json);
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
