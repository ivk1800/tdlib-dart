import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Shares users after pressing a keyboardButtonTypeRequestUsers button with
/// the bot
/// Returns [Ok]
@immutable
class ShareUsersWithBot extends TdFunction {
  const ShareUsersWithBot({
    required this.chatId,
    required this.messageId,
    required this.buttonId,
    required this.sharedUserIds,
    required this.onlyCheck,
  });

  /// [chatId] Identifier of the chat with the bot
  final int chatId;

  /// [messageId] Identifier of the message with the button
  final int messageId;

  /// [buttonId] Identifier of the button
  final int buttonId;

  /// [sharedUserIds] Identifiers of the shared users
  final List<int> sharedUserIds;

  /// [onlyCheck] Pass true to check that the users can be shared by the button
  /// instead of actually sharing them
  final bool onlyCheck;

  static const String constructor = 'shareUsersWithBot';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'button_id': buttonId,
        'shared_user_ids': sharedUserIds.map((item) => item).toList(),
        'only_check': onlyCheck,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
