import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes all pinned messages from a chat; requires can_pin_messages rights
/// in the group or can_edit_messages rights in the channel
/// Returns [Ok]
@immutable
class UnpinAllChatMessages extends TdFunction {
  const UnpinAllChatMessages({
    required this.chatId,
  });

  /// [chatId] Identifier of the chat
  final int chatId;

  static const String constructor = 'unpinAllChatMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
