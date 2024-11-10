import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The giveaway sends Telegram Stars to the winners
@immutable
class GiveawayPrizeStars extends GiveawayPrize {
  const GiveawayPrizeStars({
    required this.starCount,
  });

  /// [starCount] Number of Telegram Stars that will be shared by all winners
  final int starCount;

  static const String constructor = 'giveawayPrizeStars';

  static GiveawayPrizeStars? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiveawayPrizeStars(
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
