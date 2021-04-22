import '../tdapi.dart';

/// Describes a chat located nearby
class ChatNearby extends TdObject {
  ChatNearby({required this.chatId, required this.distance});

  /// [chatId] Chat identifier
  final int chatId;

  /// [distance] Distance to the chat location, in meters
  final int distance;

  static const String CONSTRUCTOR = 'chatNearby';

  static ChatNearby? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatNearby(chatId: json['chat_id'], distance: json['distance']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, 'distance': this.distance, '@type': CONSTRUCTOR};
}
