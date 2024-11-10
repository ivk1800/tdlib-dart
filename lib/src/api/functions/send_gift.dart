import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends a gift to another user. May return an error with a message
/// "STARGIFT_USAGE_LIMITED" if the gift was sold out
/// Returns [Ok]
@immutable
class SendGift extends TdFunction {
  const SendGift({
    required this.giftId,
    required this.userId,
    required this.text,
    required this.isPrivate,
  });

  /// [giftId] Identifier of the gift to send
  final int giftId;

  /// [userId] Identifier of the user that will receive the gift
  final int userId;

  /// [text] Text to show along with the gift;
  /// 0-getOption("gift_text_length_max") characters. Only Bold, Italic,
  /// Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed
  final FormattedText text;

  /// [isPrivate] Pass true to show the current user as sender and gift text
  /// only to the gift receiver; otherwise, everyone will be able to see them
  final bool isPrivate;

  static const String constructor = 'sendGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'gift_id': giftId,
        'user_id': userId,
        'text': text.toJson(),
        'is_private': isPrivate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
