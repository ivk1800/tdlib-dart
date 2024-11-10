import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The giveaway sends Telegram Premium subscriptions to the winners
@immutable
class GiveawayPrizePremium extends GiveawayPrize {
  const GiveawayPrizePremium({
    required this.monthCount,
  });

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active after code activation
  final int monthCount;

  static const String constructor = 'giveawayPrizePremium';

  static GiveawayPrizePremium? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiveawayPrizePremium(
      monthCount: json['month_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'month_count': monthCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
