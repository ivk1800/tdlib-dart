import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a chat located nearby
@immutable
class ChatNearby extends TdObject {
  const ChatNearby({
    required this.chatId,
    required this.distance,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [distance] Distance to the chat location, in meters
  final int distance;

  static const String constructor = 'chatNearby';

  static ChatNearby? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatNearby(
      chatId: json['chat_id'] as int,
      distance: json['distance'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'distance': distance,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
