import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The title of a chat was changed
@immutable
class UpdateChatTitle extends Update {
  const UpdateChatTitle({
    required this.chatId,
    required this.title,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [title] The new chat title
  final String title;

  static const String constructor = 'updateChatTitle';

  static UpdateChatTitle? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatTitle(
      chatId: json['chat_id'],
      title: json['title'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'title': title,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
