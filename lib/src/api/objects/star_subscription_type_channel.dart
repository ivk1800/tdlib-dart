import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a subscription to a channel chat
@immutable
class StarSubscriptionTypeChannel extends StarSubscriptionType {
  const StarSubscriptionTypeChannel({
    required this.canReuse,
    required this.inviteLink,
  });

  /// [canReuse] True, if the subscription is active and the user can use the
  /// method reuseStarSubscription to join the subscribed chat again
  final bool canReuse;

  /// [inviteLink] The invite link that can be used to renew the subscription if
  /// it has been expired; may be empty, if the link isn't available anymore
  final String inviteLink;

  static const String constructor = 'starSubscriptionTypeChannel';

  static StarSubscriptionTypeChannel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarSubscriptionTypeChannel(
      canReuse: json['can_reuse'] as bool,
      inviteLink: json['invite_link'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'can_reuse': canReuse,
    'invite_link': inviteLink,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
