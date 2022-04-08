import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// No information on the user besides the user identifier is available, yet
/// this user has not been deleted. This object is extremely rare and must be
/// handled like a deleted user. It is not possible to perform any actions on
/// users of this type
@immutable
class UserTypeUnknown extends UserType {
  const UserTypeUnknown();

  static const String constructor = 'userTypeUnknown';

  static UserTypeUnknown? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserTypeUnknown();
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
