import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Reuses an active subscription and joins the subscribed chat again
/// Returns [Ok]
@immutable
class ReuseStarSubscription extends TdFunction {
  const ReuseStarSubscription({
    required this.subscriptionId,
  });

  /// [subscriptionId] Identifier of the subscription
  final String subscriptionId;

  static const String constructor = 'reuseStarSubscription';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'subscription_id': subscriptionId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
