import '../tdapi.dart';

/// The user is picking a location or venue to send
class ChatActionChoosingLocation extends ChatAction {
  const ChatActionChoosingLocation();

  static const String CONSTRUCTOR = 'chatActionChoosingLocation';

  static ChatActionChoosingLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatActionChoosingLocation();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
