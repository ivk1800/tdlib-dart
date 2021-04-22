import '../tdapi.dart';

/// A message was pinned
class ChatEventMessagePinned extends ChatEventAction {
  ChatEventMessagePinned({required this.message});

  /// [message] Pinned message
  final Message message;

  static const String CONSTRUCTOR = 'chatEventMessagePinned';

  static ChatEventMessagePinned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMessagePinned(message: Message.fromJson(json['message'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'message': this.message.toJson(), '@type': CONSTRUCTOR};
}
