import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A poll in a message was stopped
@immutable
class ChatEventPollStopped extends ChatEventAction {
  const ChatEventPollStopped({
    required this.message,
  });

  /// [message] The message with the poll
  final Message message;

  static const String constructor = 'chatEventPollStopped';

  static ChatEventPollStopped? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventPollStopped(
      message: Message.fromJson(json['message'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
