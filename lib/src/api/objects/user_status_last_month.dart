import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The user is offline, but was online last month
class UserStatusLastMonth extends UserStatus {
  const UserStatusLastMonth();

  static const String CONSTRUCTOR = 'userStatusLastMonth';

  static UserStatusLastMonth? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserStatusLastMonth();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
