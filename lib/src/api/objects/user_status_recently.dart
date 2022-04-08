import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user was online recently
@immutable
class UserStatusRecently extends UserStatus {
  const UserStatusRecently();

  static const String constructor = 'userStatusRecently';

  static UserStatusRecently? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserStatusRecently();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
