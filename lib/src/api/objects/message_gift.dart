import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A gift was received or sent by the current user
@immutable
class MessageGift extends MessageContent {
  const MessageGift({
    required this.gift,
    required this.text,
    required this.sellStarCount,
    required this.isPrivate,
    required this.isSaved,
    required this.wasConverted,
  });

  /// [gift] The gift
  final Gift gift;

  /// [text] Message added to the gift
  final FormattedText text;

  /// [sellStarCount] Number of Telegram Stars that can be claimed by the
  /// receiver instead of the gift
  final int sellStarCount;

  /// [isPrivate] True, if the sender and gift text are shown only to the gift
  /// receiver; otherwise, everyone will be able to see them
  final bool isPrivate;

  /// [isSaved] True, if the gift is displayed on the user's profile page; only
  /// for the receiver of the gift
  final bool isSaved;

  /// [wasConverted] True, if the gift was converted to Telegram Stars; only for
  /// the receiver of the gift
  final bool wasConverted;

  static const String constructor = 'messageGift';

  static MessageGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGift(
      gift: Gift.fromJson(json['gift'] as Map<String, dynamic>?)!,
      text: FormattedText.fromJson(json['text'] as Map<String, dynamic>?)!,
      sellStarCount: json['sell_star_count'] as int,
      isPrivate: json['is_private'] as bool,
      isSaved: json['is_saved'] as bool,
      wasConverted: json['was_converted'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift': gift.toJson(),
        'text': text.toJson(),
        'sell_star_count': sellStarCount,
        'is_private': isPrivate,
        'is_saved': isSaved,
        'was_converted': wasConverted,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
