import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The sponsor is a bot
@immutable
class MessageSponsorTypeBot extends MessageSponsorType {
  const MessageSponsorTypeBot({
    required this.botUserId,
    required this.link,
  });

  /// [botUserId] User identifier of the bot
  final int botUserId;

  /// [link] An internal link to be opened when the sponsored message is clicked
  final InternalLinkType link;

  static const String constructor = 'messageSponsorTypeBot';

  static MessageSponsorTypeBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSponsorTypeBot(
      botUserId: json['bot_user_id'] as int,
      link: InternalLinkType.fromJson(json['link'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'link': link.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
