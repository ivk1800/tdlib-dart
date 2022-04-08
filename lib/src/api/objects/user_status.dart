import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the last time the user was online
@immutable
abstract class UserStatus extends TdObject {
  const UserStatus();

  static const String constructor = 'userStatus';

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

    switch (json['@type']) {
      case UserStatusEmpty.constructor:
        return UserStatusEmpty.fromJson(json);
      case UserStatusOnline.constructor:
        return UserStatusOnline.fromJson(json);
      case UserStatusOffline.constructor:
        return UserStatusOffline.fromJson(json);
      case UserStatusRecently.constructor:
        return UserStatusRecently.fromJson(json);
      case UserStatusLastWeek.constructor:
        return UserStatusLastWeek.fromJson(json);
      case UserStatusLastMonth.constructor:
        return UserStatusLastMonth.fromJson(json);
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
