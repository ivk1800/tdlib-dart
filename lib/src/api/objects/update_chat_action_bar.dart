import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The chat action bar was changed
class UpdateChatActionBar extends Update {
  UpdateChatActionBar({required this.chatId, this.actionBar});

  /// [chatId] Chat identifier
  final int chatId;

  /// [actionBar] The new value of the action bar; may be null
  final ChatActionBar? actionBar;

  static const String CONSTRUCTOR = 'updateChatActionBar';

  static UpdateChatActionBar? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatActionBar(
        chatId: json['chat_id'],
        actionBar: ChatActionBar.fromJson(json['action_bar']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'action_bar': this.actionBar?.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
