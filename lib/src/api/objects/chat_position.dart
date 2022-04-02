import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes a position of a chat in a chat list
class ChatPosition extends TdObject {
  ChatPosition(
      {required this.list,
      required this.order,
      required this.isPinned,
      this.source});

  /// [list] The chat list
  final ChatList list;

  /// [order] A parameter used to determine order of the chat in the chat list.
  /// Chats must be sorted by the pair (order, chat.id) in descending order
  final int order;

  /// [isPinned] True, if the chat is pinned in the chat list
  final bool isPinned;

  /// [source] Source of the chat in the chat list; may be null
  final ChatSource? source;

  static const String CONSTRUCTOR = 'chatPosition';

  static ChatPosition? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatPosition(
        list: ChatList.fromJson(json['list'])!,
        order: int.tryParse(json['order']) ?? 0,
        isPinned: json['is_pinned'],
        source: ChatSource.fromJson(json['source']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'list': this.list.toJson(),
        'order': this.order,
        'is_pinned': this.isPinned,
        'source': this.source?.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
