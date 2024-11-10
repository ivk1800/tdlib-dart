import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about subscription plan that must be paid by the user
/// to use a chat invite link
@immutable
class ChatInviteLinkSubscriptionInfo extends TdObject {
  const ChatInviteLinkSubscriptionInfo({
    required this.pricing,
    required this.canReuse,
    required this.formId,
  });

  /// [pricing] Information about subscription plan that must be paid by the
  /// user to use the link
  final StarSubscriptionPricing pricing;

  /// [canReuse] True, if the user has already paid for the subscription and can
  /// use joinChatByInviteLink to join the subscribed chat again
  final bool canReuse;

  /// [formId] Identifier of the payment form to use for subscription payment; 0
  /// if the subscription can't be paid
  final int formId;

  static const String constructor = 'chatInviteLinkSubscriptionInfo';

  static ChatInviteLinkSubscriptionInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatInviteLinkSubscriptionInfo(
      pricing: StarSubscriptionPricing.fromJson(
          json['pricing'] as Map<String, dynamic>?)!,
      canReuse: json['can_reuse'] as bool,
      formId: int.tryParse(json['form_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'pricing': pricing.toJson(),
        'can_reuse': canReuse,
        'form_id': formId.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
