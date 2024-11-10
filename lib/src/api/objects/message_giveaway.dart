import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A giveaway
@immutable
class MessageGiveaway extends MessageContent {
  const MessageGiveaway({
    required this.parameters,
    required this.winnerCount,
    required this.prize,
    this.sticker,
  });

  /// [parameters] Giveaway parameters
  final GiveawayParameters parameters;

  /// [winnerCount] Number of users which will receive Telegram Premium
  /// subscription gift codes
  final int winnerCount;

  /// [prize] Prize of the giveaway
  final GiveawayPrize prize;

  /// [sticker] A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;

  static const String constructor = 'messageGiveaway';

  static MessageGiveaway? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageGiveaway(
      parameters: GiveawayParameters.fromJson(
          json['parameters'] as Map<String, dynamic>?)!,
      winnerCount: json['winner_count'] as int,
      prize: GiveawayPrize.fromJson(json['prize'] as Map<String, dynamic>?)!,
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'parameters': parameters.toJson(),
        'winner_count': winnerCount,
        'prize': prize.toJson(),
        'sticker': sticker?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
