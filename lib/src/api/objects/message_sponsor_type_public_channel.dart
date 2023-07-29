import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The sponsor is a public channel chat
@immutable
class MessageSponsorTypePublicChannel extends MessageSponsorType {
  const MessageSponsorTypePublicChannel({
    required this.chatId,
    this.link,
  });

  /// [chatId] Sponsor chat identifier
  final int chatId;

  /// [link] An internal link to be opened when the sponsored message is
  /// clicked; may be null if the sponsor chat needs to be opened instead
  final InternalLinkType? link;

  static const String constructor = 'messageSponsorTypePublicChannel';

  static MessageSponsorTypePublicChannel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSponsorTypePublicChannel(
      chatId: json['chat_id'] as int,
      link: InternalLinkType.fromJson(json['link'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'link': link?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
