import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes reactions, available in a chat. Available for basic groups,
/// supergroups, and channels. Requires can_change_info administrator right
/// Returns [Ok]
@immutable
class SetChatAvailableReactions extends TdFunction {
  const SetChatAvailableReactions({
    required this.chatId,
    required this.availableReactions,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  /// [availableReactions] Reactions available in the chat. All emoji reactions
  /// must be active
  final ChatAvailableReactions availableReactions;

  static const String constructor = 'setChatAvailableReactions';

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
