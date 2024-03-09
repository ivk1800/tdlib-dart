import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a message sent in the chat
@immutable
class ChatStatisticsObjectTypeMessage extends ChatStatisticsObjectType {
  const ChatStatisticsObjectTypeMessage({
    required this.messageId,
  });

  /// [messageId] Message identifier
  final int messageId;

  static const String constructor = 'chatStatisticsObjectTypeMessage';

  static ChatStatisticsObjectTypeMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsObjectTypeMessage(
      messageId: json['message_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
