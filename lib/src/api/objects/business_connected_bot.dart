import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a bot connected to a business account
@immutable
class BusinessConnectedBot extends TdObject {
  const BusinessConnectedBot({
    required this.botUserId,
    required this.recipients,
    required this.rights,
  });

  /// [botUserId] User identifier of the bot
  final int botUserId;

  /// [recipients] Private chats that will be accessible to the bot
  final BusinessRecipients recipients;

  /// [rights] Rights of the bot
  final BusinessBotRights rights;

  static const String constructor = 'businessConnectedBot';

  static BusinessConnectedBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessConnectedBot(
      botUserId: json['bot_user_id'] as int,
      recipients: BusinessRecipients.fromJson(
        json['recipients'] as Map<String, dynamic>?,
      )!,
      rights: BusinessBotRights.fromJson(
        json['rights'] as Map<String, dynamic>?,
      )!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'bot_user_id': botUserId,
    'recipients': recipients.toJson(),
    'rights': rights.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
