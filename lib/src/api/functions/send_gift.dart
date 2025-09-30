import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends a gift to another user or channel chat. May return an error with a
/// message "STARGIFT_USAGE_LIMITED" if the gift was sold out
/// Returns [Ok]
@immutable
class SendGift extends TdFunction {
  const SendGift({
    required this.giftId,
    required this.ownerId,
    required this.text,
    required this.isPrivate,
    required this.payForUpgrade,
  });

  /// [giftId] Identifier of the gift to send
  final int giftId;

  /// [ownerId] Identifier of the user or the channel chat that will receive the
  /// gift
  final MessageSender ownerId;

  /// [text] Text to show along with the gift;
  /// 0-getOption("gift_text_length_max") characters. Only Bold, Italic,
  /// Underline, Strikethrough, Spoiler, and CustomEmoji entities are allowed.
  /// Must be empty if the receiver enabled paid messages
  final FormattedText text;

  /// [isPrivate] Pass true to show gift text and sender only to the gift
  /// receiver; otherwise, everyone will be able to see them
  final bool isPrivate;

  /// [payForUpgrade] Pass true to additionally pay for the gift upgrade and
  /// allow the receiver to upgrade it for free
  final bool payForUpgrade;

  static const String constructor = 'sendGift';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift_id': giftId,
    'owner_id': ownerId.toJson(),
    'text': text.toJson(),
    'is_private': isPrivate,
    'pay_for_upgrade': payForUpgrade,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
