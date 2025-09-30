import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The affiliate is a channel chat where the current user has
/// can_post_messages administrator right
@immutable
class AffiliateTypeChannel extends AffiliateType {
  const AffiliateTypeChannel({required this.chatId});

  /// [chatId] Identifier of the channel chat
  final int chatId;

  static const String constructor = 'affiliateTypeChannel';

  static AffiliateTypeChannel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AffiliateTypeChannel(chatId: json['chat_id'] as int);
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'chat_id': chatId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
