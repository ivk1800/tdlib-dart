import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about subscription to a channel chat, a bot, or a
/// business account that was paid in Telegram Stars
@immutable
class StarSubscription extends TdObject {
  const StarSubscription({
    required this.id,
    required this.chatId,
    required this.expirationDate,
    required this.isCanceled,
    required this.isExpiring,
    required this.pricing,
    required this.type,
  });

  /// [id] Unique identifier of the subscription
  final String id;

  /// [chatId] Identifier of the chat that is subscribed
  final int chatId;

  /// [expirationDate] Point in time (Unix timestamp) when the subscription will
  /// expire or expired
  final int expirationDate;

  /// [isCanceled] True, if the subscription was canceled
  final bool isCanceled;

  /// [isExpiring] True, if the subscription expires soon and there are no
  /// enough Telegram Stars on the user's balance to extend it
  final bool isExpiring;

  /// [pricing] The subscription plan
  final StarSubscriptionPricing pricing;

  /// [type] Type of the subscription
  final StarSubscriptionType type;

  static const String constructor = 'starSubscription';

  static StarSubscription? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarSubscription(
      id: json['id'] as String,
      chatId: json['chat_id'] as int,
      expirationDate: json['expiration_date'] as int,
      isCanceled: json['is_canceled'] as bool,
      isExpiring: json['is_expiring'] as bool,
      pricing: StarSubscriptionPricing.fromJson(
        json['pricing'] as Map<String, dynamic>?,
      )!,
      type: StarSubscriptionType.fromJson(
        json['type'] as Map<String, dynamic>?,
      )!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'chat_id': chatId,
    'expiration_date': expirationDate,
    'is_canceled': isCanceled,
    'is_expiring': isExpiring,
    'pricing': pricing.toJson(),
    'type': type.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
