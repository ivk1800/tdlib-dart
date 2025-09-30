import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The affiliate is a bot owned by the current user
@immutable
class AffiliateTypeBot extends AffiliateType {
  const AffiliateTypeBot({required this.userId});

  /// [userId] User identifier of the bot
  final int userId;

  static const String constructor = 'affiliateTypeBot';

  static AffiliateTypeBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AffiliateTypeBot(userId: json['user_id'] as int);
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'user_id': userId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
