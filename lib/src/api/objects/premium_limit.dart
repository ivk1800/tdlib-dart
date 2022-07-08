import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a limit, increased for Premium users
@immutable
class PremiumLimit extends TdObject {
  const PremiumLimit({
    required this.type,
    required this.defaultValue,
    required this.premiumValue,
  });

  /// [type] The type of the limit
  final PremiumLimitType type;

  /// [defaultValue] Default value of the limit
  final int defaultValue;

  /// [premiumValue] Value of the limit for Premium users
  final int premiumValue;

  static const String constructor = 'premiumLimit';

  static PremiumLimit? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumLimit(
      type: PremiumLimitType.fromJson(json['type'])!,
      defaultValue: json['default_value'],
      premiumValue: json['premium_value'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        'default_value': defaultValue,
        'premium_value': premiumValue,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
