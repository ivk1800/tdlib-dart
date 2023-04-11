import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a position of a chat in a chat list
@immutable
class ChatPosition extends TdObject {
  const ChatPosition({
    required this.list,
    required this.order,
    required this.isPinned,
    this.source,
  });

  /// [list] The chat list
  final ChatList list;

  /// [order] A parameter used to determine order of the chat in the chat list.
  /// Chats must be sorted by the pair (order, chat.id) in descending order
  final int order;

  /// [isPinned] True, if the chat is pinned in the chat list
  final bool isPinned;

  /// [source] Source of the chat in the chat list; may be null
  final ChatSource? source;

  static const String constructor = 'chatPosition';

  static ChatPosition? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatPosition(
      list: ChatList.fromJson(json['list'] as Map<String, dynamic>?)!,
      order: int.tryParse(json['order']) ?? 0,
      isPinned: json['is_pinned'] as bool,
      source: ChatSource.fromJson(json['source'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'list': list.toJson(),
        'order': order,
        'is_pinned': isPinned,
        'source': source?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
