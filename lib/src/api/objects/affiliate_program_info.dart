import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about an active affiliate program
@immutable
class AffiliateProgramInfo extends TdObject {
  const AffiliateProgramInfo({
    required this.parameters,
    required this.endDate,
    required this.dailyRevenuePerUserAmount,
  });

  /// [parameters] Parameters of the affiliate program
  final AffiliateProgramParameters parameters;

  /// [endDate] Point in time (Unix timestamp) when the affiliate program will
  /// be closed; 0 if the affiliate program isn't scheduled to be closed. If
  /// positive, then the program can't be connected using
  /// connectAffiliateProgram, but active connections will work until the date
  final int endDate;

  /// [dailyRevenuePerUserAmount] The amount of daily revenue per user in
  /// Telegram Stars of the bot that created the affiliate program
  final StarAmount dailyRevenuePerUserAmount;

  static const String constructor = 'affiliateProgramInfo';

  static AffiliateProgramInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AffiliateProgramInfo(
      parameters: AffiliateProgramParameters.fromJson(
        json['parameters'] as Map<String, dynamic>?,
      )!,
      endDate: json['end_date'] as int,
      dailyRevenuePerUserAmount: StarAmount.fromJson(
        json['daily_revenue_per_user_amount'] as Map<String, dynamic>?,
      )!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'parameters': parameters.toJson(),
    'end_date': endDate,
    'daily_revenue_per_user_amount': dailyRevenuePerUserAmount.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
