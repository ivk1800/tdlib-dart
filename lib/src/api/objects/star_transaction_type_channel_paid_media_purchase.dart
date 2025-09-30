import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a purchase of paid media from a channel by the current
/// user; for regular users only
@immutable
class StarTransactionTypeChannelPaidMediaPurchase extends StarTransactionType {
  const StarTransactionTypeChannelPaidMediaPurchase({
    required this.chatId,
    required this.messageId,
    required this.media,
  });

  /// [chatId] Identifier of the channel chat that sent the paid media
  final int chatId;

  /// [messageId] Identifier of the corresponding message with paid media; can
  /// be 0 or an identifier of a deleted message
  final int messageId;

  /// [media] The bought media if the transaction wasn't refunded
  final List<PaidMedia> media;

  static const String constructor =
      'starTransactionTypeChannelPaidMediaPurchase';

  static StarTransactionTypeChannelPaidMediaPurchase? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeChannelPaidMediaPurchase(
      chatId: json['chat_id'] as int,
      messageId: json['message_id'] as int,
      media: List<PaidMedia>.from(
        ((json['media'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => PaidMedia.fromJson(item))
            .toList(),
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    'message_id': messageId,
    'media': media.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
