import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of chat lists
@immutable
class ChatLists extends TdObject {
  const ChatLists({
    required this.chatLists,
  });

  /// [chatLists] List of chat lists
  final List<ChatList> chatLists;

  static const String constructor = 'chatLists';

  static ChatLists? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatLists(
      chatLists: List<ChatList>.from(
          ((json['chat_lists'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatList.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_lists': chatLists.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
