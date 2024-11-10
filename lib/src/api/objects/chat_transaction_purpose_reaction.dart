import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// User paid for a reaction
@immutable
class ChatTransactionPurposeReaction extends ChatTransactionPurpose {
  const ChatTransactionPurposeReaction({
    required this.messageId,
  });

  /// [messageId] Identifier of the reacted message; can be 0 or an identifier
  /// of a deleted message
  final int messageId;

  static const String constructor = 'chatTransactionPurposeReaction';

  static ChatTransactionPurposeReaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatTransactionPurposeReaction(
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
