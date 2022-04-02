import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A deleted user or deleted bot. No information on the user besides the user
/// identifier is available. It is not possible to perform any active actions
/// on this type of user
class UserTypeDeleted extends UserType {
  const UserTypeDeleted();

  static const String CONSTRUCTOR = 'userTypeDeleted';

  static UserTypeDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserTypeDeleted();
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
