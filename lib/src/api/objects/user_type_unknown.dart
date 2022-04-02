import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// No information on the user besides the user identifier is available, yet
/// this user has not been deleted. This object is extremely rare and must be
/// handled like a deleted user. It is not possible to perform any actions on
/// users of this type
class UserTypeUnknown extends UserType {
  const UserTypeUnknown();

  static const String CONSTRUCTOR = 'userTypeUnknown';

  static UserTypeUnknown? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserTypeUnknown();
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
