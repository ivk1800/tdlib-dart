import '../tdapi.dart';

/// The user is offline, but was online last week
class UserStatusLastWeek extends UserStatus {
  const UserStatusLastWeek();

  static const String CONSTRUCTOR = 'userStatusLastWeek';

  static UserStatusLastWeek? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserStatusLastWeek();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
