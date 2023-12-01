import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Applies a Telegram Premium gift code
/// Returns [Ok]
@immutable
class ApplyPremiumGiftCode extends TdFunction {
  const ApplyPremiumGiftCode({
    required this.code,
  });

  /// [code] The code to apply
  final String code;

  static const String constructor = 'applyPremiumGiftCode';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'code': code,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
