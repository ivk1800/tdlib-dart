import '../tdapi.dart';

/// A supergroup has been created from a basic group
class MessageChatUpgradeFrom extends MessageContent {
  MessageChatUpgradeFrom({required this.title, required this.basicGroupId});

  /// [title] Title of the newly created supergroup
  final String title;

  /// [basicGroupId] The identifier of the original basic group
  final int basicGroupId;

  static const String CONSTRUCTOR = 'messageChatUpgradeFrom';

  static MessageChatUpgradeFrom? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatUpgradeFrom(
        title: json['title'], basicGroupId: json['basic_group_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'title': this.title,
        'basic_group_id': this.basicGroupId,
        '@type': CONSTRUCTOR
      };
}
