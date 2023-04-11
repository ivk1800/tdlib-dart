import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat available reactions were changed
@immutable
class UpdateChatAvailableReactions extends Update {
  const UpdateChatAvailableReactions({
    required this.chatId,
    required this.availableReactions,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [availableReactions] The new reactions, available in the chat
  final ChatAvailableReactions availableReactions;

  static const String constructor = 'updateChatAvailableReactions';

  static UpdateChatAvailableReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatAvailableReactions(
      chatId: json['chat_id'] as int,
      availableReactions: ChatAvailableReactions.fromJson(
          json['available_reactions'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'available_reactions': availableReactions.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
