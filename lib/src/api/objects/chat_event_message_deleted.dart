import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A message was deleted
class ChatEventMessageDeleted extends ChatEventAction {
  ChatEventMessageDeleted({required this.message});

  /// [message] Deleted message
  final Message message;

  static const String CONSTRUCTOR = 'chatEventMessageDeleted';

  static ChatEventMessageDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMessageDeleted(message: Message.fromJson(json['message'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'message': this.message.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
