import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes the verification status of a user or a chat by an owned bot
/// Returns [Ok]
@immutable
class RemoveMessageSenderBotVerification extends TdFunction {
  const RemoveMessageSenderBotVerification({
    required this.botUserId,
    required this.verifiedId,
  });

  /// [botUserId] Identifier of the owned bot, which verified the user or the
  /// chat
  final int botUserId;

  /// [verifiedId] Identifier of the user or the supergroup or channel chat,
  /// which verification is removed
  final MessageSender verifiedId;

  static const String constructor = 'removeMessageSenderBotVerification';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_user_id': botUserId,
    'verified_id': verifiedId.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
