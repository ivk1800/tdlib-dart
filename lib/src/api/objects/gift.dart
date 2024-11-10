import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a gift that can be sent to another user
@immutable
class Gift extends TdObject {
  const Gift({
    required this.id,
    required this.sticker,
    required this.starCount,
    required this.defaultSellStarCount,
    required this.remainingCount,
    required this.totalCount,
    required this.firstSendDate,
    required this.lastSendDate,
  });

  /// [id] Unique identifier of the gift
  final int id;

  /// [sticker] The sticker representing the gift
  final Sticker sticker;

  /// [starCount] Number of Telegram Stars that must be paid for the gift
  final int starCount;

  /// [defaultSellStarCount] Number of Telegram Stars that can be claimed by the
  /// receiver instead of the gift by default. If the gift was paid with just
  /// bought Telegram Stars, then full value can be claimed
  final int defaultSellStarCount;

  /// [remainingCount] Number of remaining times the gift can be purchased by
  /// all users; 0 if not limited or the gift was sold out
  final int remainingCount;

  /// [totalCount] Number of total times the gift can be purchased by all users;
  /// 0 if not limited
  final int totalCount;

  /// [firstSendDate] Point in time (Unix timestamp) when the gift was send for
  /// the first time; for sold out gifts only
  final int firstSendDate;

  /// [lastSendDate] Point in time (Unix timestamp) when the gift was send for
  /// the last time; for sold out gifts only
  final int lastSendDate;

  static const String constructor = 'gift';

  static Gift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Gift(
      id: int.tryParse(json['id']) ?? 0,
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?)!,
      starCount: json['star_count'] as int,
      defaultSellStarCount: json['default_sell_star_count'] as int,
      remainingCount: json['remaining_count'] as int,
      totalCount: json['total_count'] as int,
      firstSendDate: json['first_send_date'] as int,
      lastSendDate: json['last_send_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'sticker': sticker.toJson(),
        'star_count': starCount,
        'default_sell_star_count': defaultSellStarCount,
        'remaining_count': remainingCount,
        'total_count': totalCount,
        'first_send_date': firstSendDate,
        'last_send_date': lastSendDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
