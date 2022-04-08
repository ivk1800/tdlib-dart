import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user status was never changed
@immutable
class UserStatusEmpty extends UserStatus {
  const UserStatusEmpty();

  static const String constructor = 'userStatusEmpty';

  static UserStatusEmpty? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserStatusEmpty();
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
