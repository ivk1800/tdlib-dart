import '../tdapi.dart';

/// The chat is sponsored by the user's MTProxy server
class ChatSourceMtprotoProxy extends ChatSource {
  const ChatSourceMtprotoProxy();

  static const String CONSTRUCTOR = 'chatSourceMtprotoProxy';

  static ChatSourceMtprotoProxy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatSourceMtprotoProxy();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
