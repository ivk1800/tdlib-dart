import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to the screen for gifting Telegram Premium
/// subscriptions to friends via inputInvoiceTelegram payments or in-store
/// purchases
@immutable
class InternalLinkTypePremiumGift extends InternalLinkType {
  const InternalLinkTypePremiumGift({
    required this.referrer,
  });

  /// [referrer] Referrer specified in the link
  final String referrer;

  static const String constructor = 'internalLinkTypePremiumGift';

  static InternalLinkTypePremiumGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypePremiumGift(
      referrer: json['referrer'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'referrer': referrer,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
