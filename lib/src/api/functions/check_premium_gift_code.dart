import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Return information about a Telegram Premium gift code
/// Returns [PremiumGiftCodeInfo]
@immutable
class CheckPremiumGiftCode extends TdFunction {
  const CheckPremiumGiftCode({
    required this.code,
  });

  /// [code] The code to check
  final String code;

  static const String constructor = 'checkPremiumGiftCode';

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
