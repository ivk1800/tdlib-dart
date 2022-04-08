import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A privacy setting for managing whether a link to the user's account is
/// included in forwarded messages
@immutable
class UserPrivacySettingShowLinkInForwardedMessages extends UserPrivacySetting {
  const UserPrivacySettingShowLinkInForwardedMessages();

  static const String constructor =
      'userPrivacySettingShowLinkInForwardedMessages';

  static UserPrivacySettingShowLinkInForwardedMessages? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingShowLinkInForwardedMessages();
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
