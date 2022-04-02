import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Changes information about a chat. Available for basic groups, supergroups,
/// and channels. Requires can_change_info administrator right
/// Returns [Ok]
class SetChatDescription extends TdFunction {
  SetChatDescription({required this.chatId, required this.description});

  /// [chatId] Identifier of the chat
  final int chatId;

  /// param_[description] New chat description; 0-255 characters
  final String description;

  static const String CONSTRUCTOR = 'setChatDescription';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'description': this.description,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
