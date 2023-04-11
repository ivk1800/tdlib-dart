import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A user opened an internal link of the type internalLinkTypePremiumFeatures
@immutable
class PremiumSourceLink extends PremiumSource {
  const PremiumSourceLink({
    required this.referrer,
  });

  /// [referrer] The referrer from the link
  final String referrer;

  static const String constructor = 'premiumSourceLink';

  static PremiumSourceLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumSourceLink(
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
