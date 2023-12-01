import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link with a Telegram Premium gift code. Call
/// checkPremiumGiftCode with the given code to process the link. If the code
/// is valid and the user wants to apply it, then call applyPremiumGiftCode
@immutable
class InternalLinkTypePremiumGiftCode extends InternalLinkType {
  const InternalLinkTypePremiumGiftCode({
    required this.code,
  });

  /// [code] The Telegram Premium gift code
  final String code;

  static const String constructor = 'internalLinkTypePremiumGiftCode';

  static InternalLinkTypePremiumGiftCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypePremiumGiftCode(
      code: json['code'] as String,
    );
  }

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
