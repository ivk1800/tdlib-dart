import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A regular user
class UserTypeRegular extends UserType {
  const UserTypeRegular();

  static const String CONSTRUCTOR = 'userTypeRegular';

  static UserTypeRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserTypeRegular();
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
