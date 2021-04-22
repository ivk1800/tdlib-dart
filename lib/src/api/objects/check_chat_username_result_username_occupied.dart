import '../tdapi.dart';

/// The username is occupied
class CheckChatUsernameResultUsernameOccupied extends CheckChatUsernameResult {
  const CheckChatUsernameResultUsernameOccupied();

  static const String CONSTRUCTOR = 'checkChatUsernameResultUsernameOccupied';

  static CheckChatUsernameResultUsernameOccupied? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CheckChatUsernameResultUsernameOccupied();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
