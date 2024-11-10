import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Cancels or reenables Telegram Star subscription to a channel
/// Returns [Ok]
@immutable
class EditStarSubscription extends TdFunction {
  const EditStarSubscription({
    required this.subscriptionId,
    required this.isCanceled,
  });

  /// [subscriptionId] Identifier of the subscription to change
  final String subscriptionId;

  /// [isCanceled] New value of is_canceled
  final bool isCanceled;

  static const String constructor = 'editStarSubscription';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'subscription_id': subscriptionId,
        'is_canceled': isCanceled,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
