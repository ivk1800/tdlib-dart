import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message was unpinned
@immutable
class ChatEventMessageUnpinned extends ChatEventAction {
  const ChatEventMessageUnpinned({
    required this.message,
  });

  /// [message] Unpinned message
  final Message message;

  static const String constructor = 'chatEventMessageUnpinned';

  static ChatEventMessageUnpinned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMessageUnpinned(
      message: Message.fromJson(json['message'] as Map<String, dynamic>?)!,
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
