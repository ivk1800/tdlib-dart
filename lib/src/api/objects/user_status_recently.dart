import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The user was online recently
class UserStatusRecently extends UserStatus {
  const UserStatusRecently();

  static const String CONSTRUCTOR = 'userStatusRecently';

  static UserStatusRecently? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserStatusRecently();
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
