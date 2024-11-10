import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds the paid message reaction to a message. Use
/// getMessageAvailableReactions to check whether the reaction is available
/// for the message
/// Returns [Ok]
@immutable
class AddPendingPaidMessageReaction extends TdFunction {
  const AddPendingPaidMessageReaction({
    required this.chatId,
    required this.messageId,
    required this.starCount,
    required this.useDefaultIsAnonymous,
    required this.isAnonymous,
  });

  /// [chatId] Identifier of the chat to which the message belongs
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [starCount] Number of Telegram Stars to be used for the reaction. The
  /// total number of pending paid reactions must not exceed
  /// getOption("paid_reaction_star_count_max")
  final int starCount;

  /// [useDefaultIsAnonymous] Pass true if the user didn't choose anonymity
  /// explicitly, for example, the reaction is set from the message bubble
  final bool useDefaultIsAnonymous;

  /// [isAnonymous] Pass true to make paid reaction of the user on the message
  /// anonymous; pass false to make the user's profile visible among top
  /// reactors. Ignored if use_default_is_anonymous == true
  final bool isAnonymous;

  static const String constructor = 'addPendingPaidMessageReaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'star_count': starCount,
        'use_default_is_anonymous': useDefaultIsAnonymous,
        'is_anonymous': isAnonymous,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
