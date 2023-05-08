import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The maximum number of invite links for a chat folder
@immutable
class PremiumLimitTypeChatFolderInviteLinkCount extends PremiumLimitType {
  const PremiumLimitTypeChatFolderInviteLinkCount();

  static const String constructor = 'premiumLimitTypeChatFolderInviteLinkCount';

  static PremiumLimitTypeChatFolderInviteLinkCount? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeChatFolderInviteLinkCount();
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
