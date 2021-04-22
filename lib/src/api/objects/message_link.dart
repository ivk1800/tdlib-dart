import '../tdapi.dart';

/// Contains an HTTPS link to a message in a supergroup or channel
class MessageLink extends TdObject {
  MessageLink({required this.link, required this.isPublic});

  /// [link] Message link
  final String link;

  /// [isPublic] True, if the link will work for non-members of the chat
  final bool isPublic;

  static const String CONSTRUCTOR = 'messageLink';

  static MessageLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageLink(link: json['link'], isPublic: json['is_public']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'link': this.link, 'is_public': this.isPublic, '@type': CONSTRUCTOR};
}
