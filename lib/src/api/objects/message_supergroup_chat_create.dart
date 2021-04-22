import '../tdapi.dart';

/// A newly created supergroup or channel
class MessageSupergroupChatCreate extends MessageContent {
  MessageSupergroupChatCreate({required this.title});

  /// [title] Title of the supergroup or channel
  final String title;

  static const String CONSTRUCTOR = 'messageSupergroupChatCreate';

  static MessageSupergroupChatCreate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSupergroupChatCreate(title: json['title']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'title': this.title, '@type': CONSTRUCTOR};
}
