import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Withdrawal succeeded
@immutable
class RevenueWithdrawalStateSucceeded extends RevenueWithdrawalState {
  const RevenueWithdrawalStateSucceeded({
    required this.date,
    required this.url,
  });

  /// [date] Point in time (Unix timestamp) when the withdrawal was completed
  final int date;

  /// [url] The URL where the withdrawal transaction can be viewed
  final String url;

  static const String constructor = 'revenueWithdrawalStateSucceeded';

  static RevenueWithdrawalStateSucceeded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RevenueWithdrawalStateSucceeded(
      date: json['date'] as int,
      url: json['url'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'date': date,
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
