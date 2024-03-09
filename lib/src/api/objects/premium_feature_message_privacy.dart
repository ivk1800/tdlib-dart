import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The ability to disallow incoming voice and video note messages in private
/// chats using setUserPrivacySettingRules with
/// userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages and to restrict
/// incoming messages from non-contacts using setNewChatPrivacySettings
@immutable
class PremiumFeatureMessagePrivacy extends PremiumFeature {
  const PremiumFeatureMessagePrivacy();

  static const String constructor = 'premiumFeatureMessagePrivacy';

  static PremiumFeatureMessagePrivacy? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumFeatureMessagePrivacy();
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
