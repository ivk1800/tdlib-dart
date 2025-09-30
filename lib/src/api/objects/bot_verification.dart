import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes verification status provided by a bot
@immutable
class BotVerification extends TdObject {
  const BotVerification({
    required this.botUserId,
    required this.iconCustomEmojiId,
    required this.customDescription,
  });

  /// [botUserId] Identifier of the bot that provided the verification
  final int botUserId;

  /// [iconCustomEmojiId] Identifier of the custom emoji that is used as the
  /// verification sign
  final int iconCustomEmojiId;

  /// [customDescription] Custom description of verification reason set by the
  /// bot. Can contain only Mention, Hashtag, Cashtag, PhoneNumber,
  /// BankCardNumber, Url, and EmailAddress entities
  final FormattedText customDescription;

  static const String constructor = 'botVerification';

  static BotVerification? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotVerification(
      botUserId: json['bot_user_id'] as int,
      iconCustomEmojiId: int.tryParse(json['icon_custom_emoji_id']) ?? 0,
      customDescription: FormattedText.fromJson(
        json['custom_description'] as Map<String, dynamic>?,
      )!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_user_id': botUserId,
    'icon_custom_emoji_id': iconCustomEmojiId.toString(),
    'custom_description': customDescription.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
