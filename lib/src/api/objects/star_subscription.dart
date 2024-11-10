import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about subscription to a channel chat paid in Telegram
/// Stars
@immutable
class StarSubscription extends TdObject {
  const StarSubscription({
    required this.id,
    required this.chatId,
    required this.expirationDate,
    required this.canReuse,
    required this.isCanceled,
    required this.isExpiring,
    required this.inviteLink,
    required this.pricing,
  });

  /// [id] Unique identifier of the subscription
  final String id;

  /// [chatId] Identifier of the channel chat that is subscribed
  final int chatId;

  /// [expirationDate] Point in time (Unix timestamp) when the subscription will
  /// expire or expired
  final int expirationDate;

  /// [canReuse] True, if the subscription is active and the user can use the
  /// method reuseStarSubscription to join the subscribed chat again
  final bool canReuse;

  /// [isCanceled] True, if the subscription was canceled
  final bool isCanceled;

  /// [isExpiring] True, if the subscription expires soon and there are no
  /// enough Telegram Stars on the user's balance to extend it
  final bool isExpiring;

  /// [inviteLink] The invite link that can be used to renew the subscription if
  /// it has been expired; may be empty, if the link isn't available anymore
  final String inviteLink;

  /// [pricing] The subscription plan
  final StarSubscriptionPricing pricing;

  static const String constructor = 'starSubscription';

  static StarSubscription? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarSubscription(
      id: json['id'] as String,
      chatId: json['chat_id'] as int,
      expirationDate: json['expiration_date'] as int,
      canReuse: json['can_reuse'] as bool,
      isCanceled: json['is_canceled'] as bool,
      isExpiring: json['is_expiring'] as bool,
      inviteLink: json['invite_link'] as String,
      pricing: StarSubscriptionPricing.fromJson(
          json['pricing'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'chat_id': chatId,
        'expiration_date': expirationDate,
        'can_reuse': canReuse,
        'is_canceled': isCanceled,
        'is_expiring': isExpiring,
        'invite_link': inviteLink,
        'pricing': pricing.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
