import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The list of chat filters or a chat filter has changed
class UpdateChatFilters extends Update {
  UpdateChatFilters({required this.chatFilters});

  /// [chatFilters] The new list of chat filters
  final List<ChatFilterInfo> chatFilters;

  static const String CONSTRUCTOR = 'updateChatFilters';

  static UpdateChatFilters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatFilters(
        chatFilters: List<ChatFilterInfo>.from((json['chat_filters'] ?? [])
            .map((item) => ChatFilterInfo.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_filters': chatFilters.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
