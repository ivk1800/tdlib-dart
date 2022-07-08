import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The maximum number of pinned chats in the archive chat list
@immutable
class PremiumLimitTypePinnedArchivedChatCount extends PremiumLimitType {
  const PremiumLimitTypePinnedArchivedChatCount();

  static const String constructor = 'premiumLimitTypePinnedArchivedChatCount';

  static PremiumLimitTypePinnedArchivedChatCount? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypePinnedArchivedChatCount();
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
