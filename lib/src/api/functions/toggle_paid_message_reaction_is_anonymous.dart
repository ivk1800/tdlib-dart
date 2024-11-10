import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes whether the paid message reaction of the user to a message is
/// anonymous. The message must have paid reaction added by the user
/// Returns [Ok]
@immutable
class TogglePaidMessageReactionIsAnonymous extends TdFunction {
  const TogglePaidMessageReactionIsAnonymous({
    required this.chatId,
    required this.messageId,
    required this.isAnonymous,
  });

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [isAnonymous] Pass true to make paid reaction of the user on the message
  /// anonymous; pass false to make the user's profile visible among top
  /// reactors
  final bool isAnonymous;

  static const String constructor = 'togglePaidMessageReactionIsAnonymous';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'is_anonymous': isAnonymous,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
