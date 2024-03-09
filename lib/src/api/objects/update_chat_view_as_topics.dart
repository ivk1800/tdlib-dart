import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat default appearance has changed
@immutable
class UpdateChatViewAsTopics extends Update {
  const UpdateChatViewAsTopics({
    required this.chatId,
    required this.viewAsTopics,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [viewAsTopics] New value of view_as_topics
  final bool viewAsTopics;

  static const String constructor = 'updateChatViewAsTopics';

  static UpdateChatViewAsTopics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatViewAsTopics(
      chatId: json['chat_id'] as int,
      viewAsTopics: json['view_as_topics'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'view_as_topics': viewAsTopics,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
