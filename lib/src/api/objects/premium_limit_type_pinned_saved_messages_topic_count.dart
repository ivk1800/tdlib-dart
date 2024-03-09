import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The maximum number of pinned Saved Messages topics
@immutable
class PremiumLimitTypePinnedSavedMessagesTopicCount extends PremiumLimitType {
  const PremiumLimitTypePinnedSavedMessagesTopicCount();

  static const String constructor =
      'premiumLimitTypePinnedSavedMessagesTopicCount';

  static PremiumLimitTypePinnedSavedMessagesTopicCount? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypePinnedSavedMessagesTopicCount();
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
