import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs TDLib that the user clicked Premium subscription button on the
/// Premium features screen
/// Returns [Ok]
@immutable
class ClickPremiumSubscriptionButton extends TdFunction {
  const ClickPremiumSubscriptionButton();

  static const String constructor = 'clickPremiumSubscriptionButton';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
