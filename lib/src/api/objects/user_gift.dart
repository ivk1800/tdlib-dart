import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a gift received by a user
@immutable
class UserGift extends TdObject {
  const UserGift({
    required this.senderUserId,
    required this.text,
    required this.isPrivate,
    required this.isSaved,
    required this.date,
    required this.gift,
    required this.messageId,
    required this.sellStarCount,
  });

  /// [senderUserId] Identifier of the user that sent the gift; 0 if unknown
  final int senderUserId;

  /// [text] Message added to the gift
  final FormattedText text;

  /// [isPrivate] True, if the sender and gift text are shown only to the gift
  /// receiver; otherwise, everyone are able to see them
  final bool isPrivate;

  /// [isSaved] True, if the gift is displayed on the user's profile page; may
  /// be false only for the receiver of the gift
  final bool isSaved;

  /// [date] Point in time (Unix timestamp) when the gift was sent
  final int date;

  /// [gift] The gift
  final Gift gift;

  /// [messageId] Identifier of the message with the gift in the chat with the
  /// sender of the gift; can be 0 or an identifier of a deleted message; only
  /// for the gift receiver
  final int messageId;

  /// [sellStarCount] Number of Telegram Stars that can be claimed by the
  /// receiver instead of the gift; only for the gift receiver
  final int sellStarCount;

  static const String constructor = 'userGift';

  static UserGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserGift(
      senderUserId: json['sender_user_id'] as int,
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      isPrivate: json['is_private'] as bool,
      isSaved: json['is_saved'] as bool,
      date: json['date'] as int,
      gift: Gift.fromJson(json['gift'] as Map<String, dynamic>?)!,
      messageId: json['message_id'] as int,
      sellStarCount: json['sell_star_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sender_user_id': senderUserId,
        'text': text.toJson(),
        'is_private': isPrivate,
        'is_saved': isSaved,
        'date': date,
        'gift': gift.toJson(),
        'message_id': messageId,
        'sell_star_count': sellStarCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
