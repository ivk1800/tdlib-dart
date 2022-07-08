import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs TDLib that the user viewed detailed information about a Premium
/// feature on the Premium features screen
/// Returns [Ok]
@immutable
class ViewPremiumFeature extends TdFunction {
  const ViewPremiumFeature({
    required this.feature,
  });

  /// [feature] The viewed premium feature
  final PremiumFeature feature;

  static const String constructor = 'viewPremiumFeature';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'feature': feature.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
