import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a chat shared with a bot
@immutable
class SharedChat extends TdObject {
  const SharedChat({
    required this.chatId,
    this.title,
    this.username,
    this.photo,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [title] Title of the chat; for bots only
  final String? title;

  /// [username] Username of the chat; for bots only
  final String? username;

  /// [photo] Photo of the chat; for bots only; may be null
  final Photo? photo;

  static const String constructor = 'sharedChat';

  static SharedChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SharedChat(
      chatId: json['chat_id'] as int,
      title: json['title'] as String?,
      username: json['username'] as String?,
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'title': title,
        'username': username,
        'photo': photo?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
