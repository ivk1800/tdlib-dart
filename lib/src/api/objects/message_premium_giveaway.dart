import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Premium giveaway
@immutable
class MessagePremiumGiveaway extends MessageContent {
  const MessagePremiumGiveaway({
    required this.parameters,
    required this.winnerCount,
    required this.monthCount,
    this.sticker,
  });

  /// [parameters] Giveaway parameters
  final PremiumGiveawayParameters parameters;

  /// [winnerCount] Number of users which will receive Telegram Premium
  /// subscription gift codes
  final int winnerCount;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active after code activation
  final int monthCount;

  /// [sticker] A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;

  static const String constructor = 'messagePremiumGiveaway';

  static MessagePremiumGiveaway? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePremiumGiveaway(
      parameters: PremiumGiveawayParameters.fromJson(
          json['parameters'] as Map<String, dynamic>?)!,
      winnerCount: json['winner_count'] as int,
      monthCount: json['month_count'] as int,
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'parameters': parameters.toJson(),
        'winner_count': winnerCount,
        'month_count': monthCount,
        'sticker': sticker?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
