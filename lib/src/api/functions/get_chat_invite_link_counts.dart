import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the list of chat administrators with number of their invite links.
/// Requires owner privileges in the chat
/// Returns [ChatInviteLinkCounts]
@immutable
class GetChatInviteLinkCounts extends TdFunction {
  const GetChatInviteLinkCounts({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  static const String constructor = 'getChatInviteLinkCounts';

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
