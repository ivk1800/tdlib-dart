import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message was deleted
@immutable
class ChatEventMessageDeleted extends ChatEventAction {
  const ChatEventMessageDeleted({
    required this.message,
  });

  /// [message] Deleted message
  final Message message;

  static const String constructor = 'chatEventMessageDeleted';

  static ChatEventMessageDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMessageDeleted(
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
