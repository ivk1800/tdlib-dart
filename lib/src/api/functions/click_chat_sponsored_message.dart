import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs TDLib that the user opened the sponsored chat via the button, the
/// name, the photo, or a mention in the sponsored message
/// Returns [Ok]
@immutable
class ClickChatSponsoredMessage extends TdFunction {
  const ClickChatSponsoredMessage({
    required this.chatId,
    required this.messageId,
  });

  /// [chatId] Chat identifier of the sponsored message
  final int chatId;

  /// [messageId] Identifier of the sponsored message
  final int messageId;

  static const String constructor = 'clickChatSponsoredMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
