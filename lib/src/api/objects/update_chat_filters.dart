import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of chat filters or a chat filter has changed
@immutable
class UpdateChatFilters extends Update {
  const UpdateChatFilters({
    required this.chatFilters,
    required this.mainChatListPosition,
  });

  /// [chatFilters] The new list of chat filters
  final List<ChatFilterInfo> chatFilters;

  /// [mainChatListPosition] Position of the main chat list among chat filters,
  /// 0-based
  final int mainChatListPosition;

  static const String constructor = 'updateChatFilters';

  static UpdateChatFilters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatFilters(
      chatFilters: List<ChatFilterInfo>.from((json['chat_filters'] ?? [])
          .map((item) => ChatFilterInfo.fromJson(item))
          .toList()),
      mainChatListPosition: json['main_chat_list_position'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_filters': chatFilters.map((item) => item.toJson()).toList(),
        'main_chat_list_position': mainChatListPosition,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
