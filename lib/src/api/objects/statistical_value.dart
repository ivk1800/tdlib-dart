import '../tdapi.dart';

/// A value with information about its recent changes
class StatisticalValue extends TdObject {
  StatisticalValue(
      {required this.value,
      required this.previousValue,
      required this.growthRatePercentage});

  /// [value] The current value
  final double value;

  /// [previousValue] The value for the previous day
  final double previousValue;

  /// [growthRatePercentage] The growth rate of the value, as a percentage
  final double growthRatePercentage;

  static const String CONSTRUCTOR = 'statisticalValue';

  static StatisticalValue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StatisticalValue(
        value: json['value'],
        previousValue: json['previous_value'],
        growthRatePercentage: json['growth_rate_percentage']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'value': this.value,
        'previous_value': this.previousValue,
        'growth_rate_percentage': this.growthRatePercentage,
        '@type': CONSTRUCTOR
      };
}
