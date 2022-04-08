import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user is offline, but was online last week
@immutable
class UserStatusLastWeek extends UserStatus {
  const UserStatusLastWeek();

  static const String constructor = 'userStatusLastWeek';

  static UserStatusLastWeek? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserStatusLastWeek();
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
