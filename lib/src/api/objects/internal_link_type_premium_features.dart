import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to the Premium features screen of the application from
/// which the user can subscribe to Telegram Premium. Call getPremiumFeatures
/// with the given referrer to process the link
@immutable
class InternalLinkTypePremiumFeatures extends InternalLinkType {
  const InternalLinkTypePremiumFeatures({
    required this.referrer,
  });

  /// [referrer] Referrer specified in the link
  final String referrer;

  static const String constructor = 'internalLinkTypePremiumFeatures';

  static InternalLinkTypePremiumFeatures? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypePremiumFeatures(
      referrer: json['referrer'],
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
