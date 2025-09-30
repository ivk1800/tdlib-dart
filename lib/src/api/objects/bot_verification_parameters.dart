import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes parameters of verification that is provided by a bot
@immutable
class BotVerificationParameters extends TdObject {
  const BotVerificationParameters({
    required this.iconCustomEmojiId,
    required this.organizationName,
    this.defaultCustomDescription,
    required this.canSetCustomDescription,
  });

  /// [iconCustomEmojiId] Identifier of the custom emoji that is used as the
  /// verification sign
  final int iconCustomEmojiId;

  /// [organizationName] Name of the organization that provides verification
  final String organizationName;

  /// [defaultCustomDescription] Default custom description of verification
  /// reason to be used as placeholder in setMessageSenderBotVerification; may
  /// be null if none
  final FormattedText? defaultCustomDescription;

  /// [canSetCustomDescription] True, if the bot is allowed to provide custom
  /// description for verified entities
  final bool canSetCustomDescription;

  static const String constructor = 'botVerificationParameters';

  static BotVerificationParameters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotVerificationParameters(
      iconCustomEmojiId: int.tryParse(json['icon_custom_emoji_id']) ?? 0,
      organizationName: json['organization_name'] as String,
      defaultCustomDescription: FormattedText.fromJson(
        json['default_custom_description'] as Map<String, dynamic>?,
      ),
      canSetCustomDescription: json['can_set_custom_description'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'icon_custom_emoji_id': iconCustomEmojiId.toString(),
    'organization_name': organizationName,
    'default_custom_description': defaultCustomDescription?.toJson(),
    'can_set_custom_description': canSetCustomDescription,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
