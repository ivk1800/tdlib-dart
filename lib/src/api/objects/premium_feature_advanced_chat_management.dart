import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Ability to change position of the main chat list, archive and mute all new
/// chats from non-contacts, and completely disable notifications about the
/// user's contacts joined Telegram
@immutable
class PremiumFeatureAdvancedChatManagement extends PremiumFeature {
  const PremiumFeatureAdvancedChatManagement();

  static const String constructor = 'premiumFeatureAdvancedChatManagement';

  static PremiumFeatureAdvancedChatManagement? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureAdvancedChatManagement();
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
