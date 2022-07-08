import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The maximum number of pinned chats in the main chat list
@immutable
class PremiumLimitTypePinnedChatCount extends PremiumLimitType {
  const PremiumLimitTypePinnedChatCount();

  static const String constructor = 'premiumLimitTypePinnedChatCount';

  static PremiumLimitTypePinnedChatCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypePinnedChatCount();
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
