import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A value with information about its recent changes
@immutable
class StatisticalValue extends TdObject {
  const StatisticalValue({
    required this.value,
    required this.previousValue,
    required this.growthRatePercentage,
  });

  /// [value] The current value
  final double value;

  /// [previousValue] The value for the previous day
  final double previousValue;

  /// [growthRatePercentage] The growth rate of the value, as a percentage
  final double growthRatePercentage;

  static const String constructor = 'statisticalValue';

  static StatisticalValue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StatisticalValue(
      value: (json['value'] as num).toDouble(),
      previousValue: (json['previous_value'] as num).toDouble(),
      growthRatePercentage: (json['growth_rate_percentage'] as num).toDouble(),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'value': value,
        'previous_value': previousValue,
        'growth_rate_percentage': growthRatePercentage,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
