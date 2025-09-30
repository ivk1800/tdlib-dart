import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a sale of paid media by the channel chat; for channel
/// chats only
@immutable
class StarTransactionTypeChannelPaidMediaSale extends StarTransactionType {
  const StarTransactionTypeChannelPaidMediaSale({
    required this.userId,
    required this.messageId,
    required this.media,
  });

  /// [userId] Identifier of the user that bought the media
  final int userId;

  /// [messageId] Identifier of the corresponding message with paid media; can
  /// be 0 or an identifier of a deleted message
  final int messageId;

  /// [media] The bought media
  final List<PaidMedia> media;

  static const String constructor = 'starTransactionTypeChannelPaidMediaSale';

  static StarTransactionTypeChannelPaidMediaSale? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return StarTransactionTypeChannelPaidMediaSale(
      userId: json['user_id'] as int,
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
    'user_id': userId,
    'message_id': messageId,
    'media': media.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
