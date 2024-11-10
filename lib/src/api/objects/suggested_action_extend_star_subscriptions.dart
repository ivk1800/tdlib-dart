import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Suggests the user to extend their expiring Telegram Star subscriptions.
/// Call getStarSubscriptions with only_expiring == true to get the number of
/// expiring subscriptions and the number of required to buy Telegram Stars
@immutable
class SuggestedActionExtendStarSubscriptions extends SuggestedAction {
  const SuggestedActionExtendStarSubscriptions();

  static const String constructor = 'suggestedActionExtendStarSubscriptions';

  static SuggestedActionExtendStarSubscriptions? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedActionExtendStarSubscriptions();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
