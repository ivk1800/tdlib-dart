import '../tdapi.dart';

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
}
