import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes the last time the user was online
abstract class UserStatus extends TdObject {
  const UserStatus();

  static const String CONSTRUCTOR = 'userStatus';

  /// Inherited by:
  /// [UserStatusEmpty]
  /// [UserStatusOnline]
  /// [UserStatusOffline]
  /// [UserStatusRecently]
  /// [UserStatusLastWeek]
  /// [UserStatusLastMonth]
  static UserStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case UserStatusEmpty.CONSTRUCTOR:
        return UserStatusEmpty.fromJson(json);
      case UserStatusOnline.CONSTRUCTOR:
        return UserStatusOnline.fromJson(json);
      case UserStatusOffline.CONSTRUCTOR:
        return UserStatusOffline.fromJson(json);
      case UserStatusRecently.CONSTRUCTOR:
        return UserStatusRecently.fromJson(json);
      case UserStatusLastWeek.CONSTRUCTOR:
        return UserStatusLastWeek.fromJson(json);
      case UserStatusLastMonth.CONSTRUCTOR:
        return UserStatusLastMonth.fromJson(json);
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
