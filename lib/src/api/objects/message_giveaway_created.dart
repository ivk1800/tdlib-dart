import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A giveaway was created for the chat. Use
/// telegramPaymentPurposePremiumGiveaway, storePaymentPurposePremiumGiveaway,
/// telegramPaymentPurposeStarGiveaway, or storePaymentPurposeStarGiveaway to
/// create a giveaway
@immutable
class MessageGiveawayCreated extends MessageContent {
  const MessageGiveawayCreated({
    required this.starCount,
  });

  /// [starCount] Number of Telegram Stars that will be shared by winners of the
  /// giveaway; 0 for Telegram Premium giveaways
  final int starCount;

  static const String constructor = 'messageGiveawayCreated';

  static MessageGiveawayCreated? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGiveawayCreated(
      starCount: json['star_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
