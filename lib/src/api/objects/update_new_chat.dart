import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A new chat has been loaded/created. This update is guaranteed to come
/// before the chat identifier is returned to the application. The chat field
/// changes will be reported through separate updates
@immutable
class UpdateNewChat extends Update {
  const UpdateNewChat({
    required this.chat,
  });

  /// [chat] The chat
  final Chat chat;

  static const String constructor = 'updateNewChat';

  static UpdateNewChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewChat(
      chat: Chat.fromJson(json['chat'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat': chat.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
