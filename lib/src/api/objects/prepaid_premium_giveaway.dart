import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a prepaid Telegram Premium giveaway
@immutable
class PrepaidPremiumGiveaway extends TdObject {
  const PrepaidPremiumGiveaway({
    required this.id,
    required this.winnerCount,
    required this.monthCount,
    required this.paymentDate,
  });

  /// [id] Unique identifier of the prepaid giveaway
  final int id;

  /// [winnerCount] Number of users which will receive Telegram Premium
  /// subscription gift codes
  final int winnerCount;

  /// [monthCount] Number of month the Telegram Premium subscription will be
  /// active after code activation
  final int monthCount;

  /// [paymentDate] Point in time (Unix timestamp) when the giveaway was paid
  final int paymentDate;

  static const String constructor = 'prepaidPremiumGiveaway';

  static PrepaidPremiumGiveaway? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PrepaidPremiumGiveaway(
      id: int.tryParse(json['id']) ?? 0,
      winnerCount: json['winner_count'] as int,
      monthCount: json['month_count'] as int,
      paymentDate: json['payment_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id.toString(),
        'winner_count': winnerCount,
        'month_count': monthCount,
        'payment_date': paymentDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
