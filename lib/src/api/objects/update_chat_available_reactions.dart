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

  /// [availableReactions] The new list of reactions, available in the chat
  final List<String> availableReactions;

  static const String constructor = 'updateChatAvailableReactions';

  static UpdateChatAvailableReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatAvailableReactions(
      chatId: json['chat_id'],
      availableReactions: List<String>.from(
          (json['available_reactions'] ?? []).map((item) => item).toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'available_reactions': availableReactions.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
