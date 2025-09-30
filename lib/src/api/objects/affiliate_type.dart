import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of affiliate for an affiliate program
@immutable
abstract class AffiliateType extends TdObject {
  const AffiliateType();

  static const String constructor = 'affiliateType';

  /// Inherited by:
  /// [AffiliateTypeBot]
  /// [AffiliateTypeChannel]
  /// [AffiliateTypeCurrentUser]
  static AffiliateType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case AffiliateTypeBot.constructor:
        return AffiliateTypeBot.fromJson(json);
      case AffiliateTypeChannel.constructor:
        return AffiliateTypeChannel.fromJson(json);
      case AffiliateTypeCurrentUser.constructor:
        return AffiliateTypeCurrentUser.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
