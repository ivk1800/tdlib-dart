import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a gift that is available for purchase
@immutable
class AvailableGift extends TdObject {
  const AvailableGift({
    required this.gift,
    required this.resaleCount,
    required this.minResaleStarCount,
    required this.title,
  });

  /// [gift] The gift
  final Gift gift;

  /// [resaleCount] Number of gifts that are available for resale
  final int resaleCount;

  /// [minResaleStarCount] The minimum price for the gifts available for resale;
  /// 0 if there are no such gifts
  final int minResaleStarCount;

  /// [title] The title of the upgraded gift; empty if the gift isn't available
  /// for resale
  final String title;

  static const String constructor = 'availableGift';

  static AvailableGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AvailableGift(
      gift: Gift.fromJson(json['gift'] as Map<String, dynamic>?)!,
      resaleCount: json['resale_count'] as int,
      minResaleStarCount: json['min_resale_star_count'] as int,
      title: json['title'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'gift': gift.toJson(),
    'resale_count': resaleCount,
    'min_resale_star_count': minResaleStarCount,
    'title': title,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
