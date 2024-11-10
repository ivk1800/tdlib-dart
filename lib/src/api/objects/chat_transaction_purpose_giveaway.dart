import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// User received Telegram Stars from a giveaway
@immutable
class ChatTransactionPurposeGiveaway extends ChatTransactionPurpose {
  const ChatTransactionPurposeGiveaway({
    required this.giveawayMessageId,
  });

  /// [giveawayMessageId] Identifier of the message with giveaway; can be 0 or
  /// an identifier of a deleted message
  final int giveawayMessageId;

  static const String constructor = 'chatTransactionPurposeGiveaway';

  static ChatTransactionPurposeGiveaway? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatTransactionPurposeGiveaway(
      giveawayMessageId: json['giveaway_message_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'giveaway_message_id': giveawayMessageId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
