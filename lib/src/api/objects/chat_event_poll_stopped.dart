import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A poll in a message was stopped
class ChatEventPollStopped extends ChatEventAction {
  ChatEventPollStopped({required this.message});

  /// [message] The message with the poll
  final Message message;

  static const String CONSTRUCTOR = 'chatEventPollStopped';

  static ChatEventPollStopped? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventPollStopped(message: Message.fromJson(json['message'])!);
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
